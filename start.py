import pygame
import pygame.display as wnd_py_disp

pygame.init()
screen = wnd_py_disp.set_mode((800,600))
wnd_py_disp.set_caption("Testing Game")
icon = pygame.image.load("book.png")
wnd_py_disp.set_icon(icon)

running = True
while running:
    for event in pygame.event.get():
        if event.type==pygame.QUIT:
            running = False    
        screen.fill((120,0,0))
        wnd_py_disp.update()