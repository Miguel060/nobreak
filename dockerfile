FROM ghcr.io/astral-sh/uv:python3.13-trixie-slim

WORKDIR /app

COPY pyproject.toml uv.lock README.md ./
COPY src ./src

RUN uv sync --frozen

CMD ["uv", "run", "python", "src/nobreak/backend/data/dataengineering/parser/parserToParquet.py"]