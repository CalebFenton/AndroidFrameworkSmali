.class public Lcom/android/internal/telephony/CarrierInfoManager;
.super Ljava/lang/Object;
.source "CarrierInfoManager.java"


# instance fields
.field private blacklist mLastAccessResetCarrierKey:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierInfoManager;->mLastAccessResetCarrierKey:J

    return-void
.end method

.method public static blacklist deleteAllCarrierKeysForImsiEncryption(Landroid/content/Context;)V
    .registers 4

    .line 374
    const-string v0, "deleting ALL carrier keys from db"

    const-string v1, "CarrierInfoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 377
    :try_start_b
    sget-object v0, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist deleteCarrierInfoForImsiEncryption(Landroid/content/Context;II)V
    .registers 4

    const/4 v0, 0x0

    .line 325
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/CarrierInfoManager;->deleteCarrierInfoForImsiEncryption(Landroid/content/Context;IILjava/lang/String;)V

    return-void
.end method

.method public static blacklist deleteCarrierInfoForImsiEncryption(Landroid/content/Context;IILjava/lang/String;)V
    .registers 6

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleting carrier key from db for subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierInfoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 343
    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    .line 345
    invoke-virtual {p3, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p3

    .line 348
    :cond_2c
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_83

    const/4 p1, 0x0

    const/4 v0, 0x3

    .line 349
    invoke-virtual {p3, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 355
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 358
    :try_start_44
    const-string v0, "mcc=? and mnc=? and carrier_id=?"

    .line 359
    filled-new-array {p1, p3, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 360
    sget-object p3, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p3, v0, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Deleting the number of entries = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "   for carrierId = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6c} :catch_6d

    return-void

    :catch_6d
    move-exception p0

    .line 365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Delete failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 352
    :cond_83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid networkOperator: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist getCarrierInfoForImsiEncryption(ILandroid/content/Context;Ljava/lang/String;IZI)Landroid/telephony/ImsiEncryptionInfo;
    .registers 22

    move/from16 v3, p0

    move-object/from16 v0, p2

    move/from16 v1, p5

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v8, 0x0

    const-string v9, "CarrierInfoManager"

    if-nez v2, :cond_1eb

    const/4 v2, 0x0

    const/4 v4, 0x3

    .line 79
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "using values for mcc, mnc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_35
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 91
    const-string v5, "public_key"

    const-string v6, "expiration_time"

    const-string v7, "key_identifier"

    const-string v11, "carrier_id"

    filled-new-array {v5, v6, v7, v11}, [Ljava/lang/String;

    move-result-object v12

    .line 95
    sget-object v11, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "mcc=? and mnc=? and key_type=?"

    .line 97
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v0, v5}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    .line 95
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_56} :catch_1b0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_56} :catch_1ad
    .catchall {:try_start_35 .. :try_end_56} :catchall_1ab

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v10, :cond_60

    .line 98
    :try_start_5a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_63

    :cond_60
    move/from16 v7, p3

    goto :goto_c5

    .line 149
    :cond_63
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v5, :cond_ae

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "More than 1 row found for the keyType: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_7d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 154
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8f

    move v1, v6

    goto :goto_93

    .line 156
    :cond_8f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_93
    move/from16 v7, p3

    if-eq v1, v6, :cond_7d

    if-ne v1, v7, :cond_7d

    .line 160
    invoke-static {v10, v2, v0, v3, v1}, Lcom/android/internal/telephony/CarrierInfoManager;->getImsiEncryptionInfo(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;II)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v0
    :try_end_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_9d} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_9d} :catch_a5
    .catchall {:try_start_5a .. :try_end_9d} :catchall_a1

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_a1
    move-exception v0

    move-object v8, v10

    goto/16 :goto_1e5

    :catch_a5
    move-exception v0

    goto/16 :goto_1b3

    :catch_a8
    move-exception v0

    goto/16 :goto_1cd

    .line 164
    :cond_ab
    :try_start_ab
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    :cond_ae
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b9

    goto :goto_bd

    .line 168
    :cond_b9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 169
    :goto_bd
    invoke-static {v10, v2, v0, v3, v6}, Lcom/android/internal/telephony/CarrierInfoManager;->getImsiEncryptionInfo(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;II)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v0
    :try_end_c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ab .. :try_end_c1} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c1} :catch_a5
    .catchall {:try_start_ab .. :try_end_c1} :catchall_a1

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 99
    :goto_c5
    :try_start_c5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No rows found for keyType: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_e6

    .line 101
    const-string v0, "Skipping fallback logic"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c5 .. :try_end_e0} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_e0} :catch_a5
    .catchall {:try_start_c5 .. :try_end_e0} :catchall_a1

    if-eqz v10, :cond_e5

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e5
    return-object v8

    .line 105
    :cond_e6
    :try_start_e6
    const-string v4, "carrier_config"

    move-object/from16 v11, p1

    .line 106
    invoke-virtual {v11, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    if-nez v4, :cond_fd

    .line 108
    const-string v0, "Could not get CarrierConfigManager for backup key"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e6 .. :try_end_f7} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f7} :catch_a5
    .catchall {:try_start_e6 .. :try_end_f7} :catchall_a1

    if-eqz v10, :cond_fc

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_fc
    return-object v8

    :cond_fd
    if-ne v1, v6, :cond_10a

    .line 112
    :try_start_ff
    const-string v0, "Could not get carrier config with invalid subId"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ff .. :try_end_104} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_104} :catch_a5
    .catchall {:try_start_ff .. :try_end_104} :catchall_a1

    if-eqz v10, :cond_109

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_109
    return-object v8

    .line 115
    :cond_10a
    :try_start_10a
    invoke-virtual {v4, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-nez v1, :cond_11b

    .line 117
    const-string v0, "Could not get carrier config bundle for backup key"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10a .. :try_end_115} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_115} :catch_a5
    .catchall {:try_start_10a .. :try_end_115} :catchall_a1

    if-eqz v10, :cond_11a

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11a
    return-object v8

    .line 120
    :cond_11b
    :try_start_11b
    const-string v4, "imsi_key_availability_int"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 122
    invoke-static {v3, v4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isKeyEnabled(II)Z

    move-result v6

    if-nez v6, :cond_149

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Backup key does not have matching keyType. keyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " keyAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11b .. :try_end_143} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_143} :catch_a5
    .catchall {:try_start_11b .. :try_end_143} :catchall_a1

    if-eqz v10, :cond_148

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_148
    return-object v8

    :cond_149
    if-ne v3, v5, :cond_154

    .line 130
    :try_start_14b
    const-string v4, "imsi_carrier_public_key_epdg_string"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v4, "backup_key_from_carrier_config_epdg"

    goto :goto_162

    :cond_154
    const/4 v4, 0x2

    if-ne v3, v4, :cond_160

    .line 134
    const-string v4, "imsi_carrier_public_key_wlan_string"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v4, "backup_key_from_carrier_config_wlan"

    goto :goto_162

    :cond_160
    move-object v1, v8

    move-object v4, v1

    .line 138
    :goto_162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_182

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get carrier config key string for backup key. keyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14b .. :try_end_17c} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_17c} :catch_a5
    .catchall {:try_start_14b .. :try_end_17c} :catchall_a1

    if-eqz v10, :cond_181

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_181
    return-object v8

    .line 145
    :cond_182
    :try_start_182
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getKeyInformation([B)Landroid/util/Pair;

    move-result-object v1

    move-object v5, v2

    move-object v2, v0

    .line 146
    new-instance v0, Landroid/telephony/ImsiEncryptionInfo;

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/security/PublicKey;

    move-object v11, v5

    move-object v5, v6

    new-instance v6, Ljava/util/Date;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 147
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object v1, v11

    invoke-direct/range {v0 .. v7}, Landroid/telephony/ImsiEncryptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/security/PublicKey;Ljava/util/Date;I)V
    :try_end_1a5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_182 .. :try_end_1a5} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_1a5} :catch_a5
    .catchall {:try_start_182 .. :try_end_1a5} :catchall_a1

    if-eqz v10, :cond_1aa

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1aa
    return-object v0

    :catchall_1ab
    move-exception v0

    goto :goto_1e5

    :catch_1ad
    move-exception v0

    move-object v10, v8

    goto :goto_1b3

    :catch_1b0
    move-exception v0

    move-object v10, v8

    goto :goto_1cd

    .line 173
    :goto_1b3
    :try_start_1b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c7
    .catchall {:try_start_1b3 .. :try_end_1c7} :catchall_a1

    if-eqz v10, :cond_1e4

    .line 176
    :goto_1c9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1e4

    .line 171
    :goto_1cd
    :try_start_1cd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad arguments:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catchall {:try_start_1cd .. :try_end_1e1} :catchall_a1

    if-eqz v10, :cond_1e4

    goto :goto_1c9

    :cond_1e4
    :goto_1e4
    return-object v8

    :goto_1e5
    if-eqz v8, :cond_1ea

    .line 176
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_1ea
    throw v0

    .line 83
    :cond_1eb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid networkOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method private static blacklist getImsiEncryptionInfo(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;II)Landroid/telephony/ImsiEncryptionInfo;
    .registers 14

    const/4 v0, 0x0

    .line 184
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 185
    new-instance v7, Ljava/util/Date;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    const/4 v0, 0x2

    .line 186
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 189
    :try_start_14
    new-instance v1, Landroid/telephony/ImsiEncryptionInfo;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/telephony/ImsiEncryptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/util/Date;I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_1e

    return-object v1

    :catch_1e
    move-exception v0

    move-object p0, v0

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarrierInfoManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V
    .registers 5

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inserting carrier key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierInfoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CarrierInfoManager;->updateOrInsertCarrierKey(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V

    return-void
.end method

.method public static blacklist updateOrInsertCarrierKey(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V
    .registers 15

    .line 205
    const-string v0, "Error updating values:"

    const-string v1, "CarrierInfoManager"

    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 207
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    .line 210
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 211
    const-string v5, "mcc"

    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v5, "mnc"

    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getCarrierId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "carrier_id"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 214
    const-string v6, "key_type"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 216
    const-string v6, "key_identifier"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v5, "public_key"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 220
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 219
    const-string v8, "expiration_time"

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 223
    :try_start_66
    const-string v10, "Inserting imsiEncryptionInfo into db"

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v10, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v10, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_70
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_66 .. :try_end_70} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_70} :catch_7b
    .catchall {:try_start_66 .. :try_end_70} :catchall_78

    .line 253
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result p0

    invoke-virtual {v3, p2, p0, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierKeyEvent(IIZ)V

    return-void

    :catchall_78
    move-exception p1

    goto/16 :goto_113

    :catch_7b
    move-exception p1

    .line 250
    :try_start_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error inserting/updating values:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_7c .. :try_end_93} :catchall_78

    .line 253
    :goto_93
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result p0

    invoke-virtual {v3, p2, p0, v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierKeyEvent(IIZ)V

    goto/16 :goto_112

    .line 226
    :catch_9c
    :try_start_9c
    const-string v4, "Insert failed, updating imsiEncryptionInfo into db"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 228
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 230
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 229
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_9c .. :try_end_bf} :catchall_78

    .line 234
    :try_start_bf
    sget-object v2, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "mcc=? and mnc=? and key_type=? and carrier_id=?"

    .line 237
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v6

    .line 238
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v8

    .line 239
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 240
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getCarrierId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v6, v8, v10, v11}, [Ljava/lang/String;

    move-result-object v6

    .line 234
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_fa

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_f7} :catch_f8
    .catchall {:try_start_bf .. :try_end_f7} :catchall_78

    goto :goto_93

    :catch_f8
    move-exception p1

    goto :goto_fc

    :cond_fa
    move v7, v9

    goto :goto_93

    .line 246
    :goto_fc
    :try_start_fc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_fc .. :try_end_111} :catchall_78

    goto :goto_93

    :goto_112
    return-void

    .line 253
    :goto_113
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result p0

    invoke-virtual {v3, p2, p0, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierKeyEvent(IIZ)V

    .line 254
    throw p1
.end method


# virtual methods
.method public blacklist resetCarrierKeysForImsiEncryption(Landroid/content/Context;IZ)V
    .registers 12

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetting carrier key, forceResetAll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierInfoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-nez p3, :cond_2f

    .line 289
    iget-wide v4, p0, Lcom/android/internal/telephony/CarrierInfoManager;->mLastAccessResetCarrierKey:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x2932e00

    cmp-long p3, v4, v6

    if-gez p3, :cond_2d

    .line 290
    const-string p0, "resetCarrierKeysForImsiEncryption: Access rate exceeded"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 293
    :cond_2d
    iput-wide v2, p0, Lcom/android/internal/telephony/CarrierInfoManager;->mLastAccessResetCarrierKey:J

    .line 296
    :cond_2f
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p0

    .line 297
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p3

    if-nez p3, :cond_4e

    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not reset carrier keys, subscription for mPhoneId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 302
    :cond_4e
    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    .line 303
    invoke-virtual {p3, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p3

    .line 304
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v0

    .line 306
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p3

    .line 307
    invoke-static {p1, p0, v0, p3}, Lcom/android/internal/telephony/CarrierInfoManager;->deleteCarrierInfoForImsiEncryption(Landroid/content/Context;IILjava/lang/String;)V

    .line 311
    new-instance p0, Landroid/content/Intent;

    const-string p3, "com.android.internal.telephony.ACTION_CARRIER_CERTIFICATE_DOWNLOAD"

    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-static {p0, p2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 313
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
