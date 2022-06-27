import 'package:flutter_component_go_router/pages/book_page.dart';
import 'package:flutter_component_go_router/pages/favorite_page.dart';
import 'package:flutter_component_go_router/pages/part_page.dart';
import 'package:flutter_component_go_router/pages/question_page.dart';
import 'package:flutter_component_go_router/pages/search_page.dart';
import 'package:flutter_component_go_router/pages/settings_page.dart';
import 'package:flutter_component_go_router/pages/test_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/book/10',
  routes: [
    GoRoute(
      path: '/book/:bid',
      builder: (context, state) => BookPage(id: state.params['bid']!),
      routes: [
        GoRoute(
            path: 'test/:tid',
            builder: (context, state) => TestPage(id: state.params['tid']!),
            routes: [
              GoRoute(
                  path: 'part/:pid',
                  builder: (context, state) =>
                      PartPage(id: state.params['pid']!),
                  routes: [
                    GoRoute(
                        path: 'question/:qid',
                        builder: (context, state) =>
                            QuestionPage(id: state.params['qid']!),
                        routes: [
                          GoRoute(
                            path: 'search',
                            builder: (context, state) =>
                                SearchPage(id: state.queryParams['query']!),
                          ),
                        ]),
                  ]),
            ]),
      ],
    ),
    GoRoute(
      path: '/favorite/:fid',
      builder: (context, state) => FavoritePage(id: state.params['fid']!),
    ),
    GoRoute(
      path: '/settings/:sid',
      builder: (context, state) => SettingsPage(id: state.params['sid']!),
    ),
  ],
);
