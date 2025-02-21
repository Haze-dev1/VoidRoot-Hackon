import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class cbtAi extends StatefulWidget {
  const cbtAi({super.key});

  @override
  _CbtAiState createState() => _CbtAiState();
}

class _CbtAiState extends State<cbtAi> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];

  // Replace with your API endpoint
  final String apiUrl = "http://192.168.213.209:3000/chat";

  // Function to send a message to the API
  Future<void> _sendMessage(String message) async {
    if (message.trim().isEmpty) return;

    // Add user message to the chat
    setState(() {
      _messages.add({"role": "user", "message": message});
    });

    // Clear the input field
    _controller.clear();

    try {
      // Send the message to the API
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({"message": message}),
      );

      if (response.statusCode == 200) {
        // Parse the API response
        final responseData = jsonDecode(response.body);
        final botMessage = responseData['response'];

        // Add bot message to the chat
        setState(() {
          _messages.add({"role": "bot", "message": botMessage});
        });
      } else {
        // Handle API errors
        setState(() {
          _messages.add({"role": "bot", "message": "Error: Unable to fetch response."});
        });
      }
    } catch (e) {
      // Handle network errors
      setState(() {
        _messages.add({"role": "bot", "message": "Error: $e"});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CBT-AI Chatbot'),
      ),
      body: Column(
        children: [
          // Chat messages
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return ChatBubble(
                  message: message['message']!,
                  isUser: message['role'] == 'user',
                );
              },
            ),
          ),
          // Input area
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () => _sendMessage(_controller.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Custom widget for chat bubbles
class ChatBubble extends StatelessWidget {
  final String message;
  final bool isUser;

  const ChatBubble({super.key, required this.message, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isUser ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: isUser ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}