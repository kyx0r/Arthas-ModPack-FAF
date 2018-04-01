#****************************************************************************
#**
#**  File     :  /cdimage/units/UAB1108/UAB1108_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  Aeon Mass Extractor Script
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
local Game = import( '/lua/game.lua' )

# VARIABLE ''GLOBALE'' ( par Manimal )
local MyModPath = Game.MyModPath
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

local AMassCollectionUnit = import( MyModPath .. '/hook/lua/aeonunits.lua' ).AMassCollectionUnit

UAB1108 = Class( AMassCollectionUnit ) {

    OnStartBuild = function(self, unitBeingBuilt, order)
        AMassCollectionUnit.OnStartBuild(self, unitBeingBuilt, order)
        if not self.AnimationManipulator then return end
        self.AnimationManipulator:SetRate(0)
        self.AnimationManipulator:Destroy()
        self.AnimationManipulator = nil
    end,

    PlayActiveAnimation = function(self)
        AMassCollectionUnit.PlayActiveAnimation(self)
        if not self.AnimationManipulator then
            self.AnimationManipulator = CreateAnimator(self)
            self.Trash:Add(self.AnimationManipulator)
        end
        self.AnimationManipulator:PlayAnim(self:GetBlueprint().Display.AnimationActivate, true)
    end,

    OnProductionPaused = function(self)
        AMassCollectionUnit.OnProductionPaused(self)
        if not self.AnimationManipulator then return end
        self.AnimationManipulator:SetRate(0)
    end,

    OnProductionUnpaused = function(self)
        AMassCollectionUnit.OnProductionUnpaused(self)
        if not self.AnimationManipulator then return end
        self.AnimationManipulator:SetRate(1)
    end,
}


TypeClass = UAB1108