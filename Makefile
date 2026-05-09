.PHONY: install install-dev format lint test

install:
	uv sync --no-dev

install-dev:
	uv sync --group dev

format:
	uv run ruff check --select I --fix .

lint:
	uv run ruff check .

test:
	uv run pytest