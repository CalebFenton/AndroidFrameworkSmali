.class public Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final PARTIAL_SEGMENT_EXPIRE_AGE:J = 0x9a7ec800L

.field private static final PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmsBroadcastUndelivered"

.field private static final sRawUri:Landroid/net/Uri;


# instance fields
.field private final mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 51
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 52
    const-string/jumbo v1, "pdu"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 53
    const-string/jumbo v1, "sequence"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 54
    const-string/jumbo v1, "destination_port"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 55
    const-string/jumbo v1, "date"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 56
    const-string/jumbo v1, "reference_number"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 57
    const-string/jumbo v1, "count"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 58
    const-string/jumbo v1, "address"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 59
    const-string/jumbo v1, "_id"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 51
    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    #@36
    .line 63
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    #@38
    const-string/jumbo v1, "raw"

    #@3b
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@3e
    move-result-object v0

    #@3f
    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    #@41
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    #@9
    .line 77
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@b
    .line 78
    iput-object p3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@d
    .line 75
    return-void
.end method

.method private broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    #@0
    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@8
    .line 180
    .local v0, "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :goto_0
    if-eqz v0, :cond_1

    #@a
    .line 181
    const/4 v1, 0x2

    #@b
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@e
    .line 173
    :goto_1
    return-void

    #@f
    .line 178
    .end local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@11
    .restart local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    goto :goto_0

    #@12
    .line 183
    :cond_1
    const-string/jumbo v1, "SmsBroadcastUndelivered"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "null handler for "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    const-string/jumbo v3, " format, can\'t deliver."

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    goto :goto_1
.end method

.method private scanRawTable()V
    .locals 26

    #@0
    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v20

    #@4
    .line 100
    .local v20, "startTime":J
    new-instance v14, Ljava/util/HashMap;

    #@6
    const/4 v2, 0x4

    #@7
    invoke-direct {v14, v2}, Ljava/util/HashMap;-><init>(I)V

    #@a
    .line 101
    .local v14, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/HashSet;

    #@c
    const/4 v2, 0x4

    #@d
    move-object/from16 v0, v16

    #@f
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    #@12
    .line 102
    .local v16, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;>;"
    const/4 v8, 0x0

    #@13
    .line 104
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    #@15
    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    #@17
    sget-object v3, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    #@19
    sget-object v4, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    #@1b
    const/4 v5, 0x0

    #@1c
    const/4 v6, 0x0

    #@1d
    const/4 v7, 0x0

    #@1e
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@21
    move-result-object v8

    #@22
    .line 105
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    #@24
    .line 106
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@27
    const-string/jumbo v3, "error getting pending message cursor"

    #@2a
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 162
    if-eqz v8, :cond_0

    #@2f
    .line 163
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@32
    .line 165
    :cond_0
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@35
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v4, "finished scanning raw table in "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    .line 166
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@44
    move-result-wide v4

    #@45
    sub-long v4, v4, v20

    #@47
    const-wide/32 v6, 0xf4240

    #@4a
    div-long/2addr v4, v6

    #@4b
    .line 165
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    .line 166
    const-string/jumbo v4, " ms"

    #@52
    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 107
    return-void

    #@5e
    .line 110
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->isCurrentFormat3gpp2()Z

    #@61
    move-result v11

    #@62
    .line 111
    .local v11, "isCurrentFormat3gpp2":Z
    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_8

    #@68
    .line 114
    :try_start_2
    new-instance v22, Lcom/android/internal/telephony/InboundSmsTracker;

    #@6a
    move-object/from16 v0, v22

    #@6c
    invoke-direct {v0, v8, v11}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/database/Cursor;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6f
    .line 120
    .local v22, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@72
    move-result v2

    #@73
    const/4 v3, 0x1

    #@74
    if-ne v2, v3, :cond_5

    #@76
    .line 122
    move-object/from16 v0, p0

    #@78
    move-object/from16 v1, v22

    #@7a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7d
    goto :goto_0

    #@7e
    .line 159
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "isCurrentFormat3gpp2":Z
    .end local v22    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :catch_0
    move-exception v9

    #@7f
    .line 160
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@82
    const-string/jumbo v3, "error reading pending SMS messages"

    #@85
    invoke-static {v2, v3, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@88
    .line 162
    if-eqz v8, :cond_3

    #@8a
    .line 163
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@8d
    .line 165
    :cond_3
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@90
    new-instance v3, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v4, "finished scanning raw table in "

    #@98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    .line 166
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@9f
    move-result-wide v4

    #@a0
    sub-long v4, v4, v20

    #@a2
    const-wide/32 v6, 0xf4240

    #@a5
    div-long/2addr v4, v6

    #@a6
    .line 165
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v3

    #@aa
    .line 166
    const-string/jumbo v4, " ms"

    #@ad
    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v3

    #@b5
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 97
    .end local v9    # "e":Landroid/database/SQLException;
    :goto_1
    return-void

    #@b9
    .line 115
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "isCurrentFormat3gpp2":Z
    :catch_1
    move-exception v10

    #@ba
    .line 116
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@bd
    new-instance v3, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v4, "error loading SmsTracker: "

    #@c5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v3

    #@c9
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v3

    #@cd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@d4
    goto :goto_0

    #@d5
    .line 161
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "isCurrentFormat3gpp2":Z
    :catchall_0
    move-exception v2

    #@d6
    .line 162
    if-eqz v8, :cond_4

    #@d8
    .line 163
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@db
    .line 165
    :cond_4
    const-string/jumbo v3, "SmsBroadcastUndelivered"

    #@de
    new-instance v4, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v5, "finished scanning raw table in "

    #@e6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v4

    #@ea
    .line 166
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@ed
    move-result-wide v6

    #@ee
    sub-long v6, v6, v20

    #@f0
    const-wide/32 v24, 0xf4240

    #@f3
    div-long v6, v6, v24

    #@f5
    .line 165
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v4

    #@f9
    .line 166
    const-string/jumbo v5, " ms"

    #@fc
    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v4

    #@100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v4

    #@104
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@107
    .line 161
    throw v2

    #@108
    .line 124
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "isCurrentFormat3gpp2":Z
    .restart local v22    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_5
    :try_start_6
    new-instance v18, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    #@10a
    move-object/from16 v0, v18

    #@10c
    move-object/from16 v1, v22

    #@10e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/android/internal/telephony/InboundSmsTracker;)V

    #@111
    .line 125
    .local v18, "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    move-object/from16 v0, v18

    #@113
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@116
    move-result-object v17

    #@117
    check-cast v17, Ljava/lang/Integer;

    #@119
    .line 126
    .local v17, "receivedCount":Ljava/lang/Integer;
    if-nez v17, :cond_6

    #@11b
    .line 127
    const/4 v2, 0x1

    #@11c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11f
    move-result-object v2

    #@120
    move-object/from16 v0, v18

    #@122
    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@125
    .line 128
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    #@128
    move-result-wide v2

    #@129
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12c
    move-result-wide v4

    #@12d
    const-wide v6, 0x9a7ec800L

    #@132
    sub-long/2addr v4, v6

    #@133
    .line 128
    cmp-long v2, v2, v4

    #@135
    if-gez v2, :cond_2

    #@137
    .line 131
    move-object/from16 v0, v16

    #@139
    move-object/from16 v1, v18

    #@13b
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@13e
    goto/16 :goto_0

    #@140
    .line 134
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@143
    move-result v2

    #@144
    add-int/lit8 v15, v2, 0x1

    #@146
    .line 135
    .local v15, "newCount":I
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@149
    move-result v2

    #@14a
    if-ne v15, v2, :cond_7

    #@14c
    .line 138
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@14f
    const-string/jumbo v3, "found complete multi-part message"

    #@152
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@155
    .line 139
    move-object/from16 v0, p0

    #@157
    move-object/from16 v1, v22

    #@159
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    #@15c
    .line 141
    move-object/from16 v0, v16

    #@15e
    move-object/from16 v1, v18

    #@160
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@163
    goto/16 :goto_0

    #@165
    .line 143
    :cond_7
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@168
    move-result-object v2

    #@169
    move-object/from16 v0, v18

    #@16b
    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16e
    goto/16 :goto_0

    #@170
    .line 149
    .end local v15    # "newCount":I
    .end local v17    # "receivedCount":Ljava/lang/Integer;
    .end local v18    # "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v22    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@173
    move-result-object v13

    #@174
    .local v13, "message$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@177
    move-result v2

    #@178
    if-eqz v2, :cond_a

    #@17a
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17d
    move-result-object v12

    #@17e
    check-cast v12, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    #@180
    .line 150
    .local v12, "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    move-object/from16 v0, p0

    #@182
    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    #@184
    sget-object v3, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->sRawUri:Landroid/net/Uri;

    #@186
    const-string/jumbo v4, "address=? AND reference_number=? AND count=?"

    #@189
    .line 151
    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhereArgs()[Ljava/lang/String;

    #@18c
    move-result-object v5

    #@18d
    .line 150
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@190
    move-result v19

    #@191
    .line 152
    .local v19, "rows":I
    if-nez v19, :cond_9

    #@193
    .line 153
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@196
    const-string/jumbo v3, "No rows were deleted from raw table!"

    #@199
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19c
    goto :goto_2

    #@19d
    .line 155
    :cond_9
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@1a0
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a5
    const-string/jumbo v4, "Deleted "

    #@1a8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v3

    #@1ac
    move/from16 v0, v19

    #@1ae
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v3

    #@1b2
    const-string/jumbo v4, " rows from raw table for incomplete "

    #@1b5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v3

    #@1b9
    .line 156
    iget v4, v12, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    #@1bb
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v3

    #@1bf
    .line 156
    const-string/jumbo v4, " part message"

    #@1c2
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v3

    #@1c6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c9
    move-result-object v3

    #@1ca
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1cd
    goto :goto_2

    #@1ce
    .line 162
    .end local v12    # "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v19    # "rows":I
    :cond_a
    if-eqz v8, :cond_b

    #@1d0
    .line 163
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@1d3
    .line 165
    :cond_b
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@1d6
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1db
    const-string/jumbo v4, "finished scanning raw table in "

    #@1de
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v3

    #@1e2
    .line 166
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1e5
    move-result-wide v4

    #@1e6
    sub-long v4, v4, v20

    #@1e8
    const-wide/32 v6, 0xf4240

    #@1eb
    div-long/2addr v4, v6

    #@1ec
    .line 165
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v3

    #@1f0
    .line 166
    const-string/jumbo v4, " ms"

    #@1f3
    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v3

    #@1f7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fa
    move-result-object v3

    #@1fb
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1fe
    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x6

    #@1
    .line 83
    const-string/jumbo v0, "SmsBroadcastUndelivered"

    #@4
    const-string/jumbo v1, "scanning raw table for undelivered messages"

    #@7
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable()V

    #@d
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@13
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(I)V

    #@16
    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@1c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(I)V

    #@1f
    .line 82
    :cond_1
    return-void
.end method
