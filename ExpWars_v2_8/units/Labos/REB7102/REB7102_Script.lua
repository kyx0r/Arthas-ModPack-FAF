--[[#######################################################################
#  File     :  /units/Labos/REB7102/REB7102_script.lua
#  Author(s):  John Comes, David Tomandl
#  Summary  :  Special Earth Science Lab Script
#  -----------------------------
#  Modif.by :  Manimal
#  Rev.Date :  19 janvier 2010
#  Rev.Date :  17 f�vrier 2010
#  -----------------------------
#  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#######################################################################]]--

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
local Game = import( '/lua/game.lua' )

# VARIABLE ''GLOBALE'' ( par Manimal )
local MyModPath = Game.MyModPath
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

local TLandResearchLabUnit = import( MyModPath .. '/hook/lua/terranunits.lua').TLandResearchLabUnit

REB7102 = Class( TLandResearchLabUnit ) {
	SwitchAnims = true,
	
    OnStopBeingBuilt = function(self,builder,layer)
	TLandResearchLabUnit.OnStopBeingBuilt(self,builder,layer)
		self.Effect1 = CreateAttachedEmitter(self,'Effect_01',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect1)	
		self.Effect2 = CreateAttachedEmitter(self,'Effect_02',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect2)
		self.Effect3 = CreateAttachedEmitter(self,'Effect_03',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect3)
		self.Effect4 = CreateAttachedEmitter(self,'Effect_04',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect4)
		
		self.Effect5 = CreateAttachedEmitter(self,'Effect_05',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect5)	
		self.Effect6 = CreateAttachedEmitter(self,'Effect_06',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect6)
		self.Effect7 = CreateAttachedEmitter(self,'Effect_07',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect7)
		self.Effect8 = CreateAttachedEmitter(self,'Effect_08',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect8)
    end,	
	
	
}

TypeClass = REB7102

