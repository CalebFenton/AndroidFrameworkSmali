.class public Lcom/android/ims/rcs/uce/eab/EabUtil;
.super Ljava/lang/Object;
.source "EabUtil.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EabUtil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/eab/EabUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCapabilityFromEab(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contact"    # Ljava/lang/String;

    .line 84
    const-string v0, "options_request_timestamp"

    const-string v1, "presence_request_timestamp"

    const-string v2, "phone_number"

    const-string v3, ","

    const-string v4, "_id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v5, "result":Ljava/lang/StringBuilder;
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/ims/rcs/uce/eab/EabProvider;->ALL_DATA_URI:Landroid/net/Uri;

    filled-new-array {v2, v4, v1, v4, v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "phone_number=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_83

    .line 94
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_7d

    :try_start_26
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 95
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6f
    .catchall {:try_start_26 .. :try_end_6f} :catchall_70

    goto :goto_7d

    .line 85
    :catchall_70
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_7c

    :try_start_74
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v0

    :try_start_79
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "result":Ljava/lang/StringBuilder;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "contact":Ljava/lang/String;
    :cond_7c
    :goto_7c
    throw v1

    .line 110
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "contact":Ljava/lang/String;
    :cond_7d
    :goto_7d
    if-eqz v6, :cond_82

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_82} :catch_83

    .line 112
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_82
    goto :goto_9c

    .line 110
    :catch_83
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/ims/rcs/uce/eab/EabUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapability exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9c
    sget-object v0, Lcom/android/ims/rcs/uce/eab/EabUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilityFromEab() result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getContactFromEab(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contact"    # Ljava/lang/String;

    .line 48
    const-string v0, "data_id"

    const-string v1, "contact_id"

    const-string v2, "raw_contact_id"

    const-string v3, "phone_number"

    const-string v4, ","

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v5, "result":Ljava/lang/StringBuilder;
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "phone_number=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_75

    .line 57
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6f

    :try_start_26
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 58
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_61
    .catchall {:try_start_26 .. :try_end_61} :catchall_62

    goto :goto_6f

    .line 49
    :catchall_62
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_6e

    :try_start_66
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception v0

    :try_start_6b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "result":Ljava/lang/StringBuilder;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "contact":Ljava/lang/String;
    :cond_6e
    :goto_6e
    throw v1

    .line 70
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "contact":Ljava/lang/String;
    :cond_6f
    :goto_6f
    if-eqz v6, :cond_74

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_75

    .line 72
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_74
    goto :goto_8e

    .line 70
    :catch_75
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/ims/rcs/uce/eab/EabUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEabContactId exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8e
    sget-object v0, Lcom/android/ims/rcs/uce/eab/EabUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactFromEab() result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getEabCommonId(ILandroid/content/Context;)I
    .registers 11
    .param p0, "contactId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    const-string v0, "_id"

    const/4 v1, -0x1

    .line 165
    .local v1, "commonId":I
    const/4 v2, 0x0

    .line 167
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "eab_contact_id=?"

    .line 171
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    .line 167
    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 172
    if-eqz v2, :cond_2f

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 173
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_37
    .catchall {:try_start_4 .. :try_end_2e} :catchall_35

    move v1, v0

    .line 178
    :cond_2f
    if-eqz v2, :cond_54

    .line 179
    :goto_31
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_54

    .line 178
    :catchall_35
    move-exception v0

    goto :goto_55

    .line 175
    :catch_37
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    :try_start_38
    sget-object v3, Lcom/android/ims/rcs/uce/eab/EabUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEabCommonId exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_35

    .line 178
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_54

    .line 179
    goto :goto_31

    .line 182
    :cond_54
    :goto_54
    return v1

    .line 178
    :goto_55
    if-eqz v2, :cond_5a

    .line 179
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_5a
    throw v0
.end method

.method private static blacklist getEabContactId(Ljava/lang/String;Landroid/content/Context;)I
    .registers 12
    .param p0, "contactNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    const-string v0, "_id"

    const/4 v1, -0x1

    .line 142
    .local v1, "contactId":I
    const/4 v2, 0x0

    .line 143
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-static {p1, p0}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;->formatNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "formattedNumber":Ljava/lang/String;
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "phone_number=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 150
    if-eqz v2, :cond_2f

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 151
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_37
    .catchall {:try_start_8 .. :try_end_2e} :catchall_35

    move v1, v0

    .line 156
    :cond_2f
    if-eqz v2, :cond_54

    .line 157
    :goto_31
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_54

    .line 156
    :catchall_35
    move-exception v0

    goto :goto_55

    .line 153
    :catch_37
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    :try_start_38
    sget-object v4, Lcom/android/ims/rcs/uce/eab/EabUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEabContactId exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_35

    .line 156
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_54

    .line 157
    goto :goto_31

    .line 160
    :cond_54
    :goto_54
    return v1

    .line 156
    :goto_55
    if-eqz v2, :cond_5a

    .line 157
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_5a
    throw v0
.end method

.method private static blacklist removeContactCapabilities(IILandroid/content/Context;)I
    .registers 8
    .param p0, "contactId"    # I
    .param p1, "commonId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "count":I
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->PRESENCE_URI:Landroid/net/Uri;

    .line 188
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 187
    const-string v4, "eab_common_id=?"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 189
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->OPTIONS_URI:Landroid/net/Uri;

    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->COMMON_URI:Landroid/net/Uri;

    .line 192
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 191
    const-string v4, "eab_contact_id=?"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    .line 194
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 193
    const-string v4, "_id=?"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    return v0
.end method

.method public static blacklist removeContactFromEab(ILjava/lang/String;Landroid/content/Context;)I
    .registers 11
    .param p0, "subId"    # I
    .param p1, "contacts"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 122
    return v1

    .line 124
    :cond_8
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 125
    .local v0, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_48

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_48

    .line 128
    :cond_25
    const/4 v2, 0x0

    .line 129
    .local v2, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 130
    .local v4, "contact":Ljava/lang/String;
    invoke-static {v4, p2}, Lcom/android/ims/rcs/uce/eab/EabUtil;->getEabContactId(Ljava/lang/String;Landroid/content/Context;)I

    move-result v5

    .line 131
    .local v5, "contactId":I
    if-ne v5, v1, :cond_3d

    .line 132
    goto :goto_2a

    .line 134
    :cond_3d
    invoke-static {v5, p2}, Lcom/android/ims/rcs/uce/eab/EabUtil;->getEabCommonId(ILandroid/content/Context;)I

    move-result v6

    .line 135
    .local v6, "commonId":I
    invoke-static {v5, v6, p2}, Lcom/android/ims/rcs/uce/eab/EabUtil;->removeContactCapabilities(IILandroid/content/Context;)I

    move-result v7

    add-int/2addr v2, v7

    .line 136
    .end local v4    # "contact":Ljava/lang/String;
    .end local v5    # "contactId":I
    .end local v6    # "commonId":I
    goto :goto_2a

    .line 137
    :cond_47
    return v2

    .line 126
    .end local v2    # "count":I
    :cond_48
    :goto_48
    return v1
.end method
