package net.command
{
    import flash.utils.ByteArray;
    import net.server.LobbyServer;

    /**
     * サーバとのコマンドを管理するクラス
     * （自動生成される rake update_command）
     */

    public class LobbyCommand extends Command
    {
       private var server:LobbyServer;
       public function LobbyCommand(s:LobbyServer)
        {
            server =s;
            receiveCommands.push(negoCert);
            receiveCommands.push(loginCert);
            receiveCommands.push(loginFail);
            receiveCommands.push(scNews);
            receiveCommands.push(scAvatarInfo);
            receiveCommands.push(scCreateAvatarSuccess);
            receiveCommands.push(scCheckAvatarName);
            receiveCommands.push(scCreateDeckSuccess);
            receiveCommands.push(scDeleteDeckSuccess);
            receiveCommands.push(scUpdateCurrentDeckIndex);
            receiveCommands.push(scUpdateCardInventoryFailed);
            receiveCommands.push(scUpdateSlotCardInventoryFailed);
            receiveCommands.push(scCharaCardInventoryInfo);
            receiveCommands.push(scExchangebleInfo);
            receiveCommands.push(scExchangeResult);
            receiveCommands.push(scCombineResult);
            receiveCommands.push(scLoginBonus);
            receiveCommands.push(scEnergyInfo);
            receiveCommands.push(scUpdateEnergyMax);
            receiveCommands.push(scUpdateFriendMax);
            receiveCommands.push(scUpdatePartMax);
            receiveCommands.push(scGetExp);
            receiveCommands.push(scLevelUp);
            receiveCommands.push(scGetDeckExp);
            receiveCommands.push(scDeckLevelUp);
            receiveCommands.push(scUpdateGems);
            receiveCommands.push(scUpdateResult);
            receiveCommands.push(scGetItem);
            receiveCommands.push(scUseItem);
            receiveCommands.push(scUseCoin);
            receiveCommands.push(scGetSlotCard);
            receiveCommands.push(scGetCharaCard);
            receiveCommands.push(scShopInfo);
            receiveCommands.push(scRealMoneyItemInfo);
            receiveCommands.push(scErrorNo);
            receiveCommands.push(scKeepAlive);
            receiveCommands.push(scFriendApplySuccess);
            receiveCommands.push(scFriendConfirmSuccess);
            receiveCommands.push(scFriendDeleteSuccess);
            receiveCommands.push(scDrawRareCardSuccess);
            receiveCommands.push(scCopyCardSuccess);
            receiveCommands.push(scActivityFeed);
            receiveCommands.push(scFreeDuelCountInfo);
            receiveCommands.push(scEquipChangeSucc);
            receiveCommands.push(scGetPart);
            receiveCommands.push(scUpdateRecoveryInterval);
            receiveCommands.push(scUpdateQuestInvMax);
            receiveCommands.push(scUpdateExpPow);
            receiveCommands.push(scUpdateGemPow);
            receiveCommands.push(scUpdateQuestFindPow);
            receiveCommands.push(scVanishPart);
            receiveCommands.push(scAchievementClear);
            receiveCommands.push(scAddNewAchievement);
            receiveCommands.push(scDeleteAchievement);
            receiveCommands.push(scAddNotice);
            receiveCommands.push(scUpdateSaleRestTime);
            receiveCommands.push(scUpdateAchievementInfo);
            receiveCommands.push(scSerialCodeSuccess);
            receiveCommands.push(scInfectionCollaboSerialSuccess);
            receiveCommands.push(scClampsAppear);
            receiveCommands.push(scClampsClickSuccess);
            receiveCommands.push(scDropAchievement);
            receiveCommands.push(scFriendBlockSuccess);
            receiveCommands.push(scChangeFavoriteCharaId);
            receiveCommands.push(scLobbyCharaDialogue);
            receiveCommands.push(scLobbyCharaSelectPanel);
            receiveCommands.push(scUpdateCombineWeaponData);
            receiveCommands.push(scUpdateCardInventoryInfoFinish);
            receiveCommands.push(scUpdateSlotCardInventoryInfoFinish);
            receiveCommands.push(scInventoryUpdateCheck);
            receiveCommands.push(scDeckMaxCheckResult);

        }
// 送信コマンド

     public function negotiation(uid:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(0);
            cmd.writeInt(uid);

            return cmd;
        }

     public function login(ok:String, crypted_sign:String):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(1);
            cmd.writeUTF(ok);
            cmd.writeUTF(crypted_sign);

            return cmd;
        }

     public function logout():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(2);

            return cmd;
        }

     public function csKeepAlive():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(3);

            return cmd;
        }

     public function csRequestAvaterInfo():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(4);

            return cmd;
        }

     public function csUpdateCardInventoryInfo(inv_id:int, index:int, position:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(5);
            cmd.writeInt(inv_id);
            cmd.writeInt(index);
            cmd.writeInt(position);

            return cmd;
        }

     public function csUpdateSlotCardInventoryInfo(kind:int, inv_id:int, index:int, deck_position:int, card_position:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(6);
            cmd.writeByte(kind);
            cmd.writeInt(inv_id);
            cmd.writeByte(index);
            cmd.writeByte(deck_position);
            cmd.writeByte(card_position);

            return cmd;
        }

     public function csUpdateDeckName(index:int, name:String):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(7);
            cmd.writeInt(index);
            cmd.writeUTF(name);

            return cmd;
        }

     public function csCreateDeck():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(8);

            return cmd;
        }

     public function csDeleteDeck(index:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(9);
            cmd.writeInt(index);

            return cmd;
        }

     public function csCreateAvatar(name:String, parts:String, cards:String, invite_code:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(10);
            cmd.writeUTF(name);
            cmd.writeUTF(parts);
            cmd.writeUTF(cards);
            cmd.writeInt(invite_code);

            return cmd;
        }

     public function csCheckAvatarName(name:String):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(11);
            cmd.writeUTF(name);

            return cmd;
        }

     public function csUpdateCurrentDeckIndex(index:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(12);
            cmd.writeInt(index);

            return cmd;
        }

     public function csRequestFriendList():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(13);

            return cmd;
        }

     public function csRequestExchangeableInfo(id:int, c_id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(14);
            cmd.writeInt(id);
            cmd.writeInt(c_id);

            return cmd;
        }

     public function csRequestExchange(id:int, c_id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(15);
            cmd.writeInt(id);
            cmd.writeInt(c_id);

            return cmd;
        }

     public function csRequestCombine(inv_id_list:String):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(16);
            cmd.writeUTF(inv_id_list);

            return cmd;
        }

     public function csAvatarUpdateCheck():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(17);

            return cmd;
        }

     public function csAvatarUseItem(inv_id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(18);
            cmd.writeInt(inv_id);

            return cmd;
        }

     public function csRequestShopInfo(shop_type:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(19);
            cmd.writeInt(shop_type);

            return cmd;
        }

     public function csAvatarBuyItem(shop_id:int, inv_id:int, amount:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(20);
            cmd.writeInt(shop_id);
            cmd.writeInt(inv_id);
            cmd.writeInt(amount);

            return cmd;
        }

     public function csAvatarBuySlotCard(shop_id:int, kind:int, inv_id:int, amount:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(21);
            cmd.writeInt(shop_id);
            cmd.writeInt(kind);
            cmd.writeInt(inv_id);
            cmd.writeInt(amount);

            return cmd;
        }

     public function csAvatarBuyCharaCard(shop_id:int, inv_id:int, amount:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(22);
            cmd.writeInt(shop_id);
            cmd.writeInt(inv_id);
            cmd.writeInt(amount);

            return cmd;
        }

     public function csAvatarBuyPart(shop_id:int, inv_id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(23);
            cmd.writeInt(shop_id);
            cmd.writeInt(inv_id);

            return cmd;
        }

     public function csRequestRealMoneyItemInfo():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(24);

            return cmd;
        }

     public function csRealMoneyItemResultCheck(id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(25);
            cmd.writeInt(id);

            return cmd;
        }

     public function csRequestFriendInfo():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(26);

            return cmd;
        }

     public function csFriendApply(id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(27);
            cmd.writeInt(id);

            return cmd;
        }

     public function csFriendConfirm(id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(28);
            cmd.writeInt(id);

            return cmd;
        }

     public function csFriendDelete(id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(29);
            cmd.writeInt(id);

            return cmd;
        }

     public function csDrawLot(kind:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(30);
            cmd.writeByte(kind);

            return cmd;
        }

     public function csCopyCard(id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(31);
            cmd.writeInt(id);

            return cmd;
        }

     public function csSetAvatarPart(id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(32);
            cmd.writeInt(id);

            return cmd;
        }

     public function csPartsVanishCheck():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(33);

            return cmd;
        }

     public function csPartDrop(invID:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(34);
            cmd.writeInt(invID);

            return cmd;
        }

     public function csAchievementClearCheck(notice_check:Boolean):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(35);
            cmd.writeBoolean(notice_check);

            return cmd;
        }

     public function csAchievementSpecialClearCheck(number:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(36);
            cmd.writeInt(number);

            return cmd;
        }

     public function csNoticeClear(num:int, args:String):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(37);
            cmd.writeInt(num);
            cmd.writeUTF(args);

            return cmd;
        }

     public function csRequestSaleLimitInfo():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(38);

            return cmd;
        }

     public function csRequestAchievementInfo():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(39);

            return cmd;
        }

     public function csEventSerialCode(serial:String, pass:String):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(40);
            cmd.writeUTF(serial);
            cmd.writeUTF(pass);

            return cmd;
        }

     public function csBlockApply(id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(41);
            cmd.writeInt(id);

            return cmd;
        }

     public function csNewProfoundInventoryCheck():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(42);

            return cmd;
        }

     public function csChangeFavoriteCharaId(id:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(43);
            cmd.writeInt(id);

            return cmd;
        }

     public function csChangeResultImage(id:int, image_no:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(44);
            cmd.writeInt(id);
            cmd.writeInt(image_no);

            return cmd;
        }

     public function csLobbyCharaDialogueStart():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(45);

            return cmd;
        }

     public function csLobbyCharaDialogueUpdate():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(46);

            return cmd;
        }

     public function csLobbyCharaSelectPanel(index:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(47);
            cmd.writeByte(index);

            return cmd;
        }

     public function csInfectionCollaboSerialCode(serial:String):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(48);
            cmd.writeUTF(serial);

            return cmd;
        }

     public function csClampsClick():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(49);

            return cmd;
        }

     public function csClampsAppearCheck():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(50);

            return cmd;
        }

     public function csGetNoticeSelectableItem(args:String):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(51);
            cmd.writeUTF(args);

            return cmd;
        }

     public function csProfoundNoticeClear(num:int):ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(52);
            cmd.writeInt(num);

            return cmd;
        }

     public function csInventoryUpdateCheck():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(53);

            return cmd;
        }

     public function csDeckMaxCheck():ByteArray
     {
        var cmd:ByteArray = new ByteArray();
            cmd.writeShort(54);

            return cmd;
        }

// 受信コマンド

     private function negoCert(ba:ByteArray):void
     {
            var crypted_sign_length:int;
            crypted_sign_length = ba.readUnsignedInt();
            var crypted_sign:String;
            crypted_sign = ba.readUTFBytes(crypted_sign_length);
            var ok_length:int;
            ok_length = ba.readUnsignedInt();
            var ok:String;
            ok = ba.readUTFBytes(ok_length);
            server.negoCert(crypted_sign, ok);
      }


     private function loginCert(ba:ByteArray):void
     {
            var msg_length:int;
            msg_length = ba.readUnsignedInt();
            var msg:String;
            msg = ba.readUTFBytes(msg_length);
            var hash_key_length:int;
            hash_key_length = ba.readUnsignedInt();
            var hash_key:String;
            hash_key = ba.readUTFBytes(hash_key_length);
            server.loginCert(msg, hash_key);
      }


     private function loginFail(ba:ByteArray):void
     {
            server.loginFail();
      }


     private function scNews(ba:ByteArray):void
     {
            var news_length:int;
            news_length = ba.readUnsignedInt();
            var news:String;
            news = ba.readUTFBytes(news_length);
            server.scNews(news);
      }


     private function scAvatarInfo(ba:ByteArray):void
     {
            ba.uncompress();
            var id:int;
            id = ba.readInt();
            var name_length:int;
            name_length = ba.readUnsignedInt();
            var name:String;
            name = ba.readUTFBytes(name_length);
            var gems:int;
            gems = ba.readInt();
            var exp:int;
            exp = ba.readInt();
            var level:int;
            level = ba.readInt();
            var energy:int;
            energy = ba.readInt();
            var energy_max:int;
            energy_max = ba.readInt();
            var recov_inter:int;
            recov_inter = ba.readInt();
            var remain_time:int;
            remain_time = ba.readInt();
            var point:int;
            point = ba.readInt();
            var win:int;
            win = ba.readInt();
            var lose:int;
            lose = ba.readInt();
            var draw:int;
            draw = ba.readInt();
            var part_num:int;
            part_num = ba.readInt();
            var part_inv_id_length:int;
            part_inv_id_length = ba.readUnsignedInt();
            var part_inv_id:String;
            part_inv_id = ba.readUTFBytes(part_inv_id_length);
            var part_array_length:int;
            part_array_length = ba.readUnsignedInt();
            var part_array:String;
            part_array = ba.readUTFBytes(part_array_length);
            var part_used_length:int;
            part_used_length = ba.readUnsignedInt();
            var part_used:String;
            part_used = ba.readUTFBytes(part_used_length);
            var part_end_at_length:int;
            part_end_at_length = ba.readUnsignedInt();
            var part_end_at:String;
            part_end_at = ba.readUTFBytes(part_end_at_length);
            var item_num:int;
            item_num = ba.readInt();
            var item_inv_id_length:int;
            item_inv_id_length = ba.readUnsignedInt();
            var item_inv_id:String;
            item_inv_id = ba.readUTFBytes(item_inv_id_length);
            var item_array_length:int;
            item_array_length = ba.readUnsignedInt();
            var item_array:String;
            item_array = ba.readUTFBytes(item_array_length);
            var item_state_array_length:int;
            item_state_array_length = ba.readUnsignedInt();
            var item_state_array:String;
            item_state_array = ba.readUTFBytes(item_state_array_length);
            var deck_num:int;
            deck_num = ba.readInt();
            var deck_name_length:int;
            deck_name_length = ba.readUnsignedInt();
            var deck_name:String;
            deck_name = ba.readUTFBytes(deck_name_length);
            var deck_kind_length:int;
            deck_kind_length = ba.readUnsignedInt();
            var deck_kind:String;
            deck_kind = ba.readUTFBytes(deck_kind_length);
            var deck_level_length:int;
            deck_level_length = ba.readUnsignedInt();
            var deck_level:String;
            deck_level = ba.readUTFBytes(deck_level_length);
            var deck_exp_length:int;
            deck_exp_length = ba.readUnsignedInt();
            var deck_exp:String;
            deck_exp = ba.readUTFBytes(deck_exp_length);
            var deck_status_length:int;
            deck_status_length = ba.readUnsignedInt();
            var deck_status:String;
            deck_status = ba.readUTFBytes(deck_status_length);
            var deck_cost_length:int;
            deck_cost_length = ba.readUnsignedInt();
            var deck_cost:String;
            deck_cost = ba.readUTFBytes(deck_cost_length);
            var deck_max_cost_length:int;
            deck_max_cost_length = ba.readUnsignedInt();
            var deck_max_cost:String;
            deck_max_cost = ba.readUTFBytes(deck_max_cost_length);
            var card_num:int;
            card_num = ba.readInt();
            var card_inv_id_length:int;
            card_inv_id_length = ba.readUnsignedInt();
            var card_inv_id:String;
            card_inv_id = ba.readUTFBytes(card_inv_id_length);
            var card_array_length:int;
            card_array_length = ba.readUnsignedInt();
            var card_array:String;
            card_array = ba.readUTFBytes(card_array_length);
            var deck_index_length:int;
            deck_index_length = ba.readUnsignedInt();
            var deck_index:String;
            deck_index = ba.readUTFBytes(deck_index_length);
            var deck_position_length:int;
            deck_position_length = ba.readUnsignedInt();
            var deck_position:String;
            deck_position = ba.readUTFBytes(deck_position_length);
            var slots_num:int;
            slots_num = ba.readInt();
            var slot_inv_id_length:int;
            slot_inv_id_length = ba.readUnsignedInt();
            var slot_inv_id:String;
            slot_inv_id = ba.readUTFBytes(slot_inv_id_length);
            var slot_array_length:int;
            slot_array_length = ba.readUnsignedInt();
            var slot_array:String;
            slot_array = ba.readUTFBytes(slot_array_length);
            var slot_type_length:int;
            slot_type_length = ba.readUnsignedInt();
            var slot_type:String;
            slot_type = ba.readUTFBytes(slot_type_length);
            var slot_combined_length:int;
            slot_combined_length = ba.readUnsignedInt();
            var slot_combined:String;
            slot_combined = ba.readUTFBytes(slot_combined_length);
            var slot_combine_data_length:int;
            slot_combine_data_length = ba.readUnsignedInt();
            var slot_combine_data:String;
            slot_combine_data = ba.readUTFBytes(slot_combine_data_length);
            var slot_deck_index_length:int;
            slot_deck_index_length = ba.readUnsignedInt();
            var slot_deck_index:String;
            slot_deck_index = ba.readUTFBytes(slot_deck_index_length);
            var slot_deck_position_length:int;
            slot_deck_position_length = ba.readUnsignedInt();
            var slot_deck_position:String;
            slot_deck_position = ba.readUTFBytes(slot_deck_position_length);
            var slot_card_position_length:int;
            slot_card_position_length = ba.readUnsignedInt();
            var slot_card_position:String;
            slot_card_position = ba.readUTFBytes(slot_card_position_length);
            var quest_max:int;
            quest_max = ba.readByte();
            var quest_num:int;
            quest_num = ba.readByte();
            var quest_inv_id_length:int;
            quest_inv_id_length = ba.readUnsignedInt();
            var quest_inv_id:String;
            quest_inv_id = ba.readUTFBytes(quest_inv_id_length);
            var quest_array_length:int;
            quest_array_length = ba.readUnsignedInt();
            var quest_array:String;
            quest_array = ba.readUTFBytes(quest_array_length);
            var quest_status_length:int;
            quest_status_length = ba.readUnsignedInt();
            var quest_status:String;
            quest_status = ba.readUTFBytes(quest_status_length);
            var quest_find_time_length:int;
            quest_find_time_length = ba.readUnsignedInt();
            var quest_find_time:String;
            quest_find_time = ba.readUTFBytes(quest_find_time_length);
            var quest_ba_name_length:int;
            quest_ba_name_length = ba.readUnsignedInt();
            var quest_ba_name:String;
            quest_ba_name = ba.readUTFBytes(quest_ba_name_length);
            var quest_flag:int;
            quest_flag = ba.readInt();
            var quest_clear_num:int;
            quest_clear_num = ba.readInt();
            var friend_max:int;
            friend_max = ba.readInt();
            var part_max:int;
            part_max = ba.readInt();
            var free_duel_count:int;
            free_duel_count = ba.readByte();
            var exp_pow:int;
            exp_pow = ba.readInt();
            var gem_pow:int;
            gem_pow = ba.readInt();
            var quest_find_pow:int;
            quest_find_pow = ba.readInt();
            var current_deck:int;
            current_deck = ba.readByte();
            var sale_type:int;
            sale_type = ba.readByte();
            var sale_limit_rest_time:int;
            sale_limit_rest_time = ba.readInt();
            var favorite_chara_id:int;
            favorite_chara_id = ba.readInt();
            var floor_count:int;
            floor_count = ba.readInt();
            var event_quest_flag:int;
            event_quest_flag = ba.readInt();
            var event_quest_clear_num:int;
            event_quest_clear_num = ba.readInt();
            var tutorial_quest_flag:int;
            tutorial_quest_flag = ba.readInt();
            var tutorial_quest_clear_num:int;
            tutorial_quest_clear_num = ba.readInt();
            var chara_vote_quest_flag:int;
            chara_vote_quest_flag = ba.readInt();
            var chara_vote_quest_clear_num:int;
            chara_vote_quest_clear_num = ba.readInt();
            server.scAvatarInfo(id, name, gems, exp, level, energy, energy_max, recov_inter, remain_time, point, win, lose, draw, part_num, part_inv_id, part_array, part_used, part_end_at, item_num, item_inv_id, item_array, item_state_array, deck_num, deck_name, deck_kind, deck_level, deck_exp, deck_status, deck_cost, deck_max_cost, card_num, card_inv_id, card_array, deck_index, deck_position, slots_num, slot_inv_id, slot_array, slot_type, slot_combined, slot_combine_data, slot_deck_index, slot_deck_position, slot_card_position, quest_max, quest_num, quest_inv_id, quest_array, quest_status, quest_find_time, quest_ba_name, quest_flag, quest_clear_num, friend_max, part_max, free_duel_count, exp_pow, gem_pow, quest_find_pow, current_deck, sale_type, sale_limit_rest_time, favorite_chara_id, floor_count, event_quest_flag, event_quest_clear_num, tutorial_quest_flag, tutorial_quest_clear_num, chara_vote_quest_flag, chara_vote_quest_clear_num);
      }


     private function scCreateAvatarSuccess(ba:ByteArray):void
     {
            var success:Boolean;
            success = ba.readBoolean();
            server.scCreateAvatarSuccess(success);
      }


     private function scCheckAvatarName(ba:ByteArray):void
     {
            var code:int;
            code = ba.readInt();
            server.scCheckAvatarName(code);
      }


     private function scCreateDeckSuccess(ba:ByteArray):void
     {
            var deck_name_length:int;
            deck_name_length = ba.readUnsignedInt();
            var deck_name:String;
            deck_name = ba.readUTFBytes(deck_name_length);
            var deck_kind:int;
            deck_kind = ba.readInt();
            var deck_level:int;
            deck_level = ba.readInt();
            var deck_exp:int;
            deck_exp = ba.readInt();
            var deck_status:int;
            deck_status = ba.readInt();
            var deck_cost:int;
            deck_cost = ba.readInt();
            var deck_max_cost:int;
            deck_max_cost = ba.readInt();
            var card_set_length:int;
            card_set_length = ba.readUnsignedInt();
            var card_set:String;
            card_set = ba.readUTFBytes(card_set_length);
            server.scCreateDeckSuccess(deck_name, deck_kind, deck_level, deck_exp, deck_status, deck_cost, deck_max_cost, card_set);
      }


     private function scDeleteDeckSuccess(ba:ByteArray):void
     {
            var index:int;
            index = ba.readInt();
            server.scDeleteDeckSuccess(index);
      }


     private function scUpdateCurrentDeckIndex(ba:ByteArray):void
     {
            var index:int;
            index = ba.readInt();
            server.scUpdateCurrentDeckIndex(index);
      }


     private function scUpdateCardInventoryFailed(ba:ByteArray):void
     {
            var error_no:int;
            error_no = ba.readInt();
            var inv_id:int;
            inv_id = ba.readInt();
            var index:int;
            index = ba.readByte();
            var position:int;
            position = ba.readByte();
            server.scUpdateCardInventoryFailed(error_no, inv_id, index, position);
      }


     private function scUpdateSlotCardInventoryFailed(ba:ByteArray):void
     {
            var kind:int;
            kind = ba.readByte();
            var error_no:int;
            error_no = ba.readInt();
            var inv_id:int;
            inv_id = ba.readInt();
            var index:int;
            index = ba.readByte();
            var card_position:int;
            card_position = ba.readByte();
            var deck_position:int;
            deck_position = ba.readByte();
            server.scUpdateSlotCardInventoryFailed(kind, error_no, inv_id, index, card_position, deck_position);
      }


     private function scCharaCardInventoryInfo(ba:ByteArray):void
     {
            var inv_id_length:int;
            inv_id_length = ba.readUnsignedInt();
            var inv_id:String;
            inv_id = ba.readUTFBytes(inv_id_length);
            var card_id_length:int;
            card_id_length = ba.readUnsignedInt();
            var card_id:String;
            card_id = ba.readUTFBytes(card_id_length);
            server.scCharaCardInventoryInfo(inv_id, card_id);
      }


     private function scExchangebleInfo(ba:ByteArray):void
     {
            var id:int;
            id = ba.readInt();
            var exchageble:Boolean;
            exchageble = ba.readBoolean();
            server.scExchangebleInfo(id, exchageble);
      }


     private function scExchangeResult(ba:ByteArray):void
     {
            var success:Boolean;
            success = ba.readBoolean();
            var id:int;
            id = ba.readInt();
            var new_inv_id:int;
            new_inv_id = ba.readInt();
            var lost_inv_id_length:int;
            lost_inv_id_length = ba.readUnsignedInt();
            var lost_inv_id:String;
            lost_inv_id = ba.readUTFBytes(lost_inv_id_length);
            server.scExchangeResult(success, id, new_inv_id, lost_inv_id);
      }


     private function scCombineResult(ba:ByteArray):void
     {
            var success:Boolean;
            success = ba.readBoolean();
            var id:int;
            id = ba.readInt();
            var new_inv_id:int;
            new_inv_id = ba.readInt();
            server.scCombineResult(success, id, new_inv_id);
      }


     private function scLoginBonus(ba:ByteArray):void
     {
            var type:int;
            type = ba.readInt();
            var slot:int;
            slot = ba.readInt();
            var id:int;
            id = ba.readInt();
            var value:int;
            value = ba.readInt();
            server.scLoginBonus(type, slot, id, value);
      }


     private function scEnergyInfo(ba:ByteArray):void
     {
            var energy:int;
            energy = ba.readInt();
            var remainTime:int;
            remainTime = ba.readInt();
            server.scEnergyInfo(energy, remainTime);
      }


     private function scUpdateEnergyMax(ba:ByteArray):void
     {
            var energy_max:int;
            energy_max = ba.readInt();
            server.scUpdateEnergyMax(energy_max);
      }


     private function scUpdateFriendMax(ba:ByteArray):void
     {
            var friend_max:int;
            friend_max = ba.readInt();
            server.scUpdateFriendMax(friend_max);
      }


     private function scUpdatePartMax(ba:ByteArray):void
     {
            var part_max:int;
            part_max = ba.readInt();
            server.scUpdatePartMax(part_max);
      }


     private function scGetExp(ba:ByteArray):void
     {
            var exp:int;
            exp = ba.readInt();
            server.scGetExp(exp);
      }


     private function scLevelUp(ba:ByteArray):void
     {
            var level:int;
            level = ba.readInt();
            server.scLevelUp(level);
      }


     private function scGetDeckExp(ba:ByteArray):void
     {
            var deck_exp:int;
            deck_exp = ba.readInt();
            server.scGetDeckExp(deck_exp);
      }


     private function scDeckLevelUp(ba:ByteArray):void
     {
            var deck_level:int;
            deck_level = ba.readInt();
            server.scDeckLevelUp(deck_level);
      }


     private function scUpdateGems(ba:ByteArray):void
     {
            var gems:int;
            gems = ba.readInt();
            server.scUpdateGems(gems);
      }


     private function scUpdateResult(ba:ByteArray):void
     {
            var point:int;
            point = ba.readInt();
            var win:int;
            win = ba.readInt();
            var lose:int;
            lose = ba.readInt();
            var draw:int;
            draw = ba.readInt();
            server.scUpdateResult(point, win, lose, draw);
      }


     private function scGetItem(ba:ByteArray):void
     {
            var inv_id:int;
            inv_id = ba.readInt();
            var item_id:int;
            item_id = ba.readInt();
            server.scGetItem(inv_id, item_id);
      }


     private function scUseItem(ba:ByteArray):void
     {
            var inv_id:int;
            inv_id = ba.readInt();
            server.scUseItem(inv_id);
      }


     private function scUseCoin(ba:ByteArray):void
     {
            var inv_ids_length:int;
            inv_ids_length = ba.readUnsignedInt();
            var inv_ids:String;
            inv_ids = ba.readUTFBytes(inv_ids_length);
            server.scUseCoin(inv_ids);
      }


     private function scGetSlotCard(ba:ByteArray):void
     {
            var inv_id:int;
            inv_id = ba.readInt();
            var kind:int;
            kind = ba.readInt();
            var card_id:int;
            card_id = ba.readInt();
            server.scGetSlotCard(inv_id, kind, card_id);
      }


     private function scGetCharaCard(ba:ByteArray):void
     {
            var inv_id:int;
            inv_id = ba.readInt();
            var card_id:int;
            card_id = ba.readInt();
            server.scGetCharaCard(inv_id, card_id);
      }


     private function scShopInfo(ba:ByteArray):void
     {
            var shop_type:int;
            shop_type = ba.readInt();
            var sale_list_length:int;
            sale_list_length = ba.readUnsignedInt();
            var sale_list:String;
            sale_list = ba.readUTFBytes(sale_list_length);
            server.scShopInfo(shop_type, sale_list);
      }


     private function scRealMoneyItemInfo(ba:ByteArray):void
     {
            var size:int;
            size = ba.readByte();
            var sale_list_length:int;
            sale_list_length = ba.readUnsignedInt();
            var sale_list:String;
            sale_list = ba.readUTFBytes(sale_list_length);
            server.scRealMoneyItemInfo(size, sale_list);
      }


     private function scErrorNo(ba:ByteArray):void
     {
            var error_type:int;
            error_type = ba.readInt();
            server.scErrorNo(error_type);
      }


     private function scKeepAlive(ba:ByteArray):void
     {
            server.scKeepAlive();
      }


     private function scFriendApplySuccess(ba:ByteArray):void
     {
            var id:int;
            id = ba.readInt();
            server.scFriendApplySuccess(id);
      }


     private function scFriendConfirmSuccess(ba:ByteArray):void
     {
            var id:int;
            id = ba.readInt();
            server.scFriendConfirmSuccess(id);
      }


     private function scFriendDeleteSuccess(ba:ByteArray):void
     {
            var id:int;
            id = ba.readInt();
            server.scFriendDeleteSuccess(id);
      }


     private function scDrawRareCardSuccess(ba:ByteArray):void
     {
            var got_card_kind:int;
            got_card_kind = ba.readByte();
            var got_id:int;
            got_id = ba.readInt();
            var got_card_num:int;
            got_card_num = ba.readByte();
            var blank_card_kind1:int;
            blank_card_kind1 = ba.readByte();
            var blank1_id:int;
            blank1_id = ba.readInt();
            var blank1_card_num:int;
            blank1_card_num = ba.readByte();
            var blank_card_kind2:int;
            blank_card_kind2 = ba.readByte();
            var blank2_id:int;
            blank2_id = ba.readInt();
            var blank2_card_num:int;
            blank2_card_num = ba.readByte();
            server.scDrawRareCardSuccess(got_card_kind, got_id, got_card_num, blank_card_kind1, blank1_id, blank1_card_num, blank_card_kind2, blank2_id, blank2_card_num);
      }


     private function scCopyCardSuccess(ba:ByteArray):void
     {
            var id:int;
            id = ba.readInt();
            server.scCopyCardSuccess(id);
      }


     private function scActivityFeed(ba:ByteArray):void
     {
            var type:int;
            type = ba.readByte();
            server.scActivityFeed(type);
      }


     private function scFreeDuelCountInfo(ba:ByteArray):void
     {
            var fdc:int;
            fdc = ba.readByte();
            server.scFreeDuelCountInfo(fdc);
      }


     private function scEquipChangeSucc(ba:ByteArray):void
     {
            var id:int;
            id = ba.readInt();
            var unuse_api_length:int;
            unuse_api_length = ba.readUnsignedInt();
            var unuse_api:String;
            unuse_api = ba.readUTFBytes(unuse_api_length);
            var end_at:int;
            end_at = ba.readInt();
            var status:int;
            status = ba.readByte();
            server.scEquipChangeSucc(id, unuse_api, end_at, status);
      }


     private function scGetPart(ba:ByteArray):void
     {
            var inv_id:int;
            inv_id = ba.readInt();
            var part_id:int;
            part_id = ba.readInt();
            server.scGetPart(inv_id, part_id);
      }


     private function scUpdateRecoveryInterval(ba:ByteArray):void
     {
            var rec_time:int;
            rec_time = ba.readInt();
            server.scUpdateRecoveryInterval(rec_time);
      }


     private function scUpdateQuestInvMax(ba:ByteArray):void
     {
            var inv_max:int;
            inv_max = ba.readInt();
            server.scUpdateQuestInvMax(inv_max);
      }


     private function scUpdateExpPow(ba:ByteArray):void
     {
            var exp_pow:int;
            exp_pow = ba.readInt();
            server.scUpdateExpPow(exp_pow);
      }


     private function scUpdateGemPow(ba:ByteArray):void
     {
            var gem_pow:int;
            gem_pow = ba.readInt();
            server.scUpdateGemPow(gem_pow);
      }


     private function scUpdateQuestFindPow(ba:ByteArray):void
     {
            var quest_f_pow:int;
            quest_f_pow = ba.readInt();
            server.scUpdateQuestFindPow(quest_f_pow);
      }


     private function scVanishPart(ba:ByteArray):void
     {
            var inv_id:int;
            inv_id = ba.readInt();
            var alert:Boolean;
            alert = ba.readBoolean();
            server.scVanishPart(inv_id, alert);
      }


     private function scAchievementClear(ba:ByteArray):void
     {
            var achi_id:int;
            achi_id = ba.readInt();
            var item_type:int;
            item_type = ba.readInt();
            var item_id:int;
            item_id = ba.readInt();
            var item_num:int;
            item_num = ba.readInt();
            var slot_type:int;
            slot_type = ba.readInt();
            server.scAchievementClear(achi_id, item_type, item_id, item_num, slot_type);
      }


     private function scAddNewAchievement(ba:ByteArray):void
     {
            var achi_id:int;
            achi_id = ba.readInt();
            server.scAddNewAchievement(achi_id);
      }


     private function scDeleteAchievement(ba:ByteArray):void
     {
            var achi_id:int;
            achi_id = ba.readInt();
            server.scDeleteAchievement(achi_id);
      }


     private function scAddNotice(ba:ByteArray):void
     {
            var body_length:int;
            body_length = ba.readUnsignedInt();
            var body:String;
            body = ba.readUTFBytes(body_length);
            server.scAddNotice(body);
      }


     private function scUpdateSaleRestTime(ba:ByteArray):void
     {
            var sale_type:int;
            sale_type = ba.readByte();
            var rest_time:int;
            rest_time = ba.readInt();
            server.scUpdateSaleRestTime(sale_type, rest_time);
      }


     private function scUpdateAchievementInfo(ba:ByteArray):void
     {
            var achievements_length:int;
            achievements_length = ba.readUnsignedInt();
            var achievements:String;
            achievements = ba.readUTFBytes(achievements_length);
            var achievements_state_length:int;
            achievements_state_length = ba.readUnsignedInt();
            var achievements_state:String;
            achievements_state = ba.readUTFBytes(achievements_state_length);
            var achievements_progress_length:int;
            achievements_progress_length = ba.readUnsignedInt();
            var achievements_progress:String;
            achievements_progress = ba.readUTFBytes(achievements_progress_length);
            var achievements_end_at_length:int;
            achievements_end_at_length = ba.readUnsignedInt();
            var achievements_end_at:String;
            achievements_end_at = ba.readUTFBytes(achievements_end_at_length);
            var achievements_code_length:int;
            achievements_code_length = ba.readUnsignedInt();
            var achievements_code:String;
            achievements_code = ba.readUTFBytes(achievements_code_length);
            server.scUpdateAchievementInfo(achievements, achievements_state, achievements_progress, achievements_end_at, achievements_code);
      }


     private function scSerialCodeSuccess(ba:ByteArray):void
     {
            var getted_itm_length:int;
            getted_itm_length = ba.readUnsignedInt();
            var getted_itm:String;
            getted_itm = ba.readUTFBytes(getted_itm_length);
            server.scSerialCodeSuccess(getted_itm);
      }


     private function scInfectionCollaboSerialSuccess(ba:ByteArray):void
     {
            var getted_itm_length:int;
            getted_itm_length = ba.readUnsignedInt();
            var getted_itm:String;
            getted_itm = ba.readUTFBytes(getted_itm_length);
            server.scInfectionCollaboSerialSuccess(getted_itm);
      }


     private function scClampsAppear(ba:ByteArray):void
     {
            server.scClampsAppear();
      }


     private function scClampsClickSuccess(ba:ByteArray):void
     {
            var getted_itm_length:int;
            getted_itm_length = ba.readUnsignedInt();
            var getted_itm:String;
            getted_itm = ba.readUTFBytes(getted_itm_length);
            server.scClampsClickSuccess(getted_itm);
      }


     private function scDropAchievement(ba:ByteArray):void
     {
            var achi_id:int;
            achi_id = ba.readInt();
            server.scDropAchievement(achi_id);
      }


     private function scFriendBlockSuccess(ba:ByteArray):void
     {
            var id:int;
            id = ba.readInt();
            server.scFriendBlockSuccess(id);
      }


     private function scChangeFavoriteCharaId(ba:ByteArray):void
     {
            var chara_id:int;
            chara_id = ba.readInt();
            server.scChangeFavoriteCharaId(chara_id);
      }


     private function scLobbyCharaDialogue(ba:ByteArray):void
     {
            var lines_length:int;
            lines_length = ba.readUnsignedInt();
            var lines:String;
            lines = ba.readUTFBytes(lines_length);
            server.scLobbyCharaDialogue(lines);
      }


     private function scLobbyCharaSelectPanel(ba:ByteArray):void
     {
            var choices_length:int;
            choices_length = ba.readUnsignedInt();
            var choices:String;
            choices = ba.readUTFBytes(choices_length);
            server.scLobbyCharaSelectPanel(choices);
      }


     private function scUpdateCombineWeaponData(ba:ByteArray):void
     {
            ba.uncompress();
            var inv_id:int;
            inv_id = ba.readInt();
            var card_id:int;
            card_id = ba.readInt();
            var base_sap:int;
            base_sap = ba.readByte();
            var base_sdp:int;
            base_sdp = ba.readByte();
            var base_aap:int;
            base_aap = ba.readByte();
            var base_adp:int;
            base_adp = ba.readByte();
            var base_max:int;
            base_max = ba.readInt();
            var add_sap:int;
            add_sap = ba.readByte();
            var add_sdp:int;
            add_sdp = ba.readByte();
            var add_aap:int;
            add_aap = ba.readByte();
            var add_adp:int;
            add_adp = ba.readByte();
            var add_max:int;
            add_max = ba.readInt();
            var passive_id_length:int;
            passive_id_length = ba.readUnsignedInt();
            var passive_id:String;
            passive_id = ba.readUTFBytes(passive_id_length);
            var restriction_length:int;
            restriction_length = ba.readUnsignedInt();
            var restriction:String;
            restriction = ba.readUTFBytes(restriction_length);
            var count_str_length:int;
            count_str_length = ba.readUnsignedInt();
            var count_str:String;
            count_str = ba.readUTFBytes(count_str_length);
            var count_max_str_length:int;
            count_max_str_length = ba.readUnsignedInt();
            var count_max_str:String;
            count_max_str = ba.readUTFBytes(count_max_str_length);
            var level:int;
            level = ba.readInt();
            var exp:int;
            exp = ba.readInt();
            var psv_num_max:int;
            psv_num_max = ba.readByte();
            var psv_pass_set_length:int;
            psv_pass_set_length = ba.readUnsignedInt();
            var psv_pass_set:String;
            psv_pass_set = ba.readUTFBytes(psv_pass_set_length);
            var vani_psv_ids_length:int;
            vani_psv_ids_length = ba.readUnsignedInt();
            var vani_psv_ids:String;
            vani_psv_ids = ba.readUTFBytes(vani_psv_ids_length);
            server.scUpdateCombineWeaponData(inv_id, card_id, base_sap, base_sdp, base_aap, base_adp, base_max, add_sap, add_sdp, add_aap, add_adp, add_max, passive_id, restriction, count_str, count_max_str, level, exp, psv_num_max, psv_pass_set, vani_psv_ids);
      }


     private function scUpdateCardInventoryInfoFinish(ba:ByteArray):void
     {
            server.scUpdateCardInventoryInfoFinish();
      }


     private function scUpdateSlotCardInventoryInfoFinish(ba:ByteArray):void
     {
            server.scUpdateSlotCardInventoryInfoFinish();
      }


     private function scInventoryUpdateCheck(ba:ByteArray):void
     {
            var chara_card_inv_info:Boolean;
            chara_card_inv_info = ba.readBoolean();
            var slot_card_inv_info:Boolean;
            slot_card_inv_info = ba.readBoolean();
            server.scInventoryUpdateCheck(chara_card_inv_info, slot_card_inv_info);
      }


     private function scDeckMaxCheckResult(ba:ByteArray):void
     {
            var ok:Boolean;
            ok = ba.readBoolean();
            server.scDeckMaxCheckResult(ok);
      }


    }
}
