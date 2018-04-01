--[[#######################################################################
#  File     :  /units/Labos/REB7200/REB7200_script.lua
#  Author(s):  John Comes, David Tomandl
#  Summary  :  Special Earth Science Lab Script
#  -----------------------------
#  Modif.by :  Manimal
#  Mod.Date :  19 janvier 2010
#  -----------------------------
#  Revis.by :  Manimal
#  Rev.Date :  17 f�vrier 2010
#  -----------------------------
#  Revis.by :  Asdrubaelvect
#  Rev.Date :  27 f�vrier 2010
#  -----------------------------
#  Revis.by :  Manimal
#  Rev.Date :  02 mars 2010
#  -----------------------------
#  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#######################################################################]]--

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
local Game = import( '/lua/game.lua' )

# VARIABLE ''GLOBALE'' ( par Manimal )
local MyModPath = Game.MyModPath
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

local TLandResearchLabUnit = import( MyModPath .. '/hook/lua/terranunits.lua').TLandResearchLabUnit

REB7200 = Class( TLandResearchLabUnit ) {
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
		
		self.Effect9 = CreateAttachedEmitter(self,'Effect_09',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect9)
		self.Effect10 = CreateAttachedEmitter(self,'Effect_10',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect10)
		self.Effect11 = CreateAttachedEmitter(self,'Effect_11',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect11)
		self.Effect12 = CreateAttachedEmitter(self,'Effect_12',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect12)

		self.Effect13 = CreateAttachedEmitter(self,'Effect_13',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect9)
		self.Effect14 = CreateAttachedEmitter(self,'Effect_14',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect10)
		self.Effect15 = CreateAttachedEmitter(self,'Effect_15',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect11)
		self.Effect16 = CreateAttachedEmitter(self,'Effect_16',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
		self.Trash:Add(self.Effect12)
    end,
	
}

TypeClass = REB7200

