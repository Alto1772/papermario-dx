#include "common.h"

static ApiStatus func_80240814_97BE44(ScriptInstance* script, s32 isInitialCall) {
    Npc* npc = get_npc_safe(script->owner2.npcID);

    npc->unk_AB = npc->collisionHeight;
    npc->pos.y -= (f32) npc->collisionHeight;

    return ApiStatus_DONE2;
}

static ApiStatus AwaitPlayerNearNpc(ScriptInstance* script, s32 isInitialCall) {
    PlayerStatus* playerStatus = PLAYER_STATUS;
    Npc* npc = get_npc_safe(script->owner2.npcID);

    if (dist2D(npc->pos.x, npc->pos.z, playerStatus->position.x, playerStatus->position.z) < 50.0f) {
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}

static ApiStatus func_802408B4_97BEE4(ScriptInstance* script, s32 isInitialCall) {
    EncounterStatus* currentEncounter = &gCurrentEncounter;
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_safe(script->owner2.npcID);

    if (isInitialCall != 0) {
        npc->unk_AB = 0;
    }

    if (npc->flags & 0x1000) {
        currentEncounter->enounterList[enemy->encounterIndex]->battle = (u16) enemy->varTable[0];
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
