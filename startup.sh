#!/bin/bash
 
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x7000000E0},{"HIDKeyboardModifierMappingSrc":0x7000000E0,"HIDKeyboardModifierMappingDst":0x700000039}]}'

mkdir $HOME/Library/KeyBindings
ln -i KeyBindings/DefaultKeyBinding.dict  ~/Library/KeyBindings/DefaultKeyBinding.dict