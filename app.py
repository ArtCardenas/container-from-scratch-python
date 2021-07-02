#!/usr/bin/env python
import click

# command line tool
@click.command()

# accepts a name as parameter, and prints the name as Hello World
@click.option("--name")  
def hello(name):
    click.echo(f'Hello {name}!')

if __name__ == '__main__':
    #pylint: disable=no-value-for-parameter
    hello()
