#!/bin/bash
sqlite3 ../db "DROP VIEW IF EXISTS game_view"
sqlite3 ../db "DROP TABLE IF EXISTS game_state"
sqlite3 ../db "DROP TABLE IF EXISTS game_notes"
sqlite3 ../db "DROP TABLE IF EXISTS game_chat"
sqlite3 ../db "DROP VIEW IF EXISTS game_chat_view"
sqlite3 ../db "DROP VIEW IF EXISTS game_full_view"
sqlite3 ../db "DROP TABLE IF EXISTS game_replay"
sqlite3 ../db "DROP TABLE IF EXISTS game_snap"
sqlite3 ../db "DROP TABLE IF EXISTS games"

sqlite3 ../db < ../schema.sql

echo "Done."