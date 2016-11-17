.class public Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;,
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;,
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final PARTIAL_SEGMENT_EXPIRE_AGE:J = 0x9a7ec800L

.field private static final PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmsBroadcastUndelivered"

.field private static instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 54
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 55
    const-string/jumbo v1, "pdu"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 56
    const-string/jumbo v1, "sequence"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 57
    const-string/jumbo v1, "destination_port"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 58
    const-string/jumbo v1, "date"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 59
    const-string/jumbo v1, "reference_number"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 60
    const-string/jumbo v1, "count"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 61
    const-string/jumbo v1, "address"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 62
    const-string/jumbo v1, "_id"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 63
    const-string/jumbo v1, "message_body"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 54
    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    #@3d
    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    new-instance v2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;

    #@5
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    #@8
    iput-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@a
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object v2

    #@e
    iput-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    #@10
    .line 125
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@12
    .line 126
    iput-object p3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@14
    .line 128
    const-string/jumbo v2, "user"

    #@17
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/os/UserManager;

    #@1d
    .line 130
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 131
    new-instance v2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;

    #@25
    const/4 v3, 0x0

    #@26
    invoke-direct {v2, p0, p1, v3}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;)V

    #@29
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->start()V

    #@2c
    .line 123
    :goto_0
    return-void

    #@2d
    .line 133
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    #@2f
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@32
    .line 134
    .local v0, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    #@35
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@38
    .line 135
    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@3a
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3d
    goto :goto_0
.end method

.method private broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    #@0
    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@8
    .line 231
    .local v0, "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :goto_0
    if-eqz v0, :cond_1

    #@a
    .line 232
    const/4 v1, 0x2

    #@b
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@e
    .line 224
    :goto_1
    return-void

    #@f
    .line 229
    .end local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    #@11
    .restart local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    goto :goto_0

    #@12
    .line 234
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

.method public static initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p2, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@0
    .prologue
    const/4 v1, 0x6

    #@1
    .line 106
    sget-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 107
    new-instance v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    #@7
    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    #@a
    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    #@c
    .line 114
    :cond_0
    if-eqz p1, :cond_1

    #@e
    .line 115
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(I)V

    #@11
    .line 117
    :cond_1
    if-eqz p2, :cond_2

    #@13
    .line 118
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(I)V

    #@16
    .line 105
    :cond_2
    return-void
.end method

.method private scanRawTable()V
    .locals 26

    #@0
    .prologue
    .line 143
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@3
    const-string/jumbo v3, "scanning raw table for undelivered messages"

    #@6
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 144
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@c
    move-result-wide v20

    #@d
    .line 146
    .local v20, "startTime":J
    new-instance v14, Ljava/util/HashMap;

    #@f
    const/4 v2, 0x4

    #@10
    invoke-direct {v14, v2}, Ljava/util/HashMap;-><init>(I)V

    #@13
    .line 147
    .local v14, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/HashSet;

    #@15
    const/4 v2, 0x4

    #@16
    move-object/from16 v0, v16

    #@18
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    #@1b
    .line 148
    .local v16, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;>;"
    const/4 v8, 0x0

    #@1c
    .line 151
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    #@20
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@22
    sget-object v4, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    #@24
    .line 152
    const-string/jumbo v5, "deleted = 0"

    #@27
    const/4 v6, 0x0

    #@28
    .line 153
    const/4 v7, 0x0

    #@29
    .line 151
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@2c
    move-result-object v8

    #@2d
    .line 154
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    #@2f
    .line 155
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@32
    const-string/jumbo v3, "error getting pending message cursor"

    #@35
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 213
    if-eqz v8, :cond_0

    #@3a
    .line 214
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3d
    .line 216
    :cond_0
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@40
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "finished scanning raw table in "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    .line 217
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@4f
    move-result-wide v4

    #@50
    sub-long v4, v4, v20

    #@52
    const-wide/32 v6, 0xf4240

    #@55
    div-long/2addr v4, v6

    #@56
    .line 216
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    .line 217
    const-string/jumbo v4, " ms"

    #@5d
    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 156
    return-void

    #@69
    .line 159
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->isCurrentFormat3gpp2()Z

    #@6c
    move-result v11

    #@6d
    .line 160
    .local v11, "isCurrentFormat3gpp2":Z
    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@70
    move-result v2

    #@71
    if-eqz v2, :cond_8

    #@73
    .line 163
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2, v8, v11}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7a
    move-result-object v22

    #@7b
    .line 170
    .local v22, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@7e
    move-result v2

    #@7f
    const/4 v3, 0x1

    #@80
    if-ne v2, v3, :cond_5

    #@82
    .line 172
    move-object/from16 v0, p0

    #@84
    move-object/from16 v1, v22

    #@86
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@89
    goto :goto_0

    #@8a
    .line 210
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "isCurrentFormat3gpp2":Z
    .end local v22    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :catch_0
    move-exception v9

    #@8b
    .line 211
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@8e
    const-string/jumbo v3, "error reading pending SMS messages"

    #@91
    invoke-static {v2, v3, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@94
    .line 213
    if-eqz v8, :cond_3

    #@96
    .line 214
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@99
    .line 216
    :cond_3
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@9c
    new-instance v3, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v4, "finished scanning raw table in "

    #@a4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    .line 217
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@ab
    move-result-wide v4

    #@ac
    sub-long v4, v4, v20

    #@ae
    const-wide/32 v6, 0xf4240

    #@b1
    div-long/2addr v4, v6

    #@b2
    .line 216
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    .line 217
    const-string/jumbo v4, " ms"

    #@b9
    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v3

    #@bd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v3

    #@c1
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    .line 142
    .end local v9    # "e":Landroid/database/SQLException;
    :goto_1
    return-void

    #@c5
    .line 165
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "isCurrentFormat3gpp2":Z
    :catch_1
    move-exception v10

    #@c6
    .line 166
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@c9
    new-instance v3, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v4, "error loading SmsTracker: "

    #@d1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v3

    #@d5
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v3

    #@d9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v3

    #@dd
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@e0
    goto :goto_0

    #@e1
    .line 212
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "isCurrentFormat3gpp2":Z
    :catchall_0
    move-exception v2

    #@e2
    .line 213
    if-eqz v8, :cond_4

    #@e4
    .line 214
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@e7
    .line 216
    :cond_4
    const-string/jumbo v3, "SmsBroadcastUndelivered"

    #@ea
    new-instance v4, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v5, "finished scanning raw table in "

    #@f2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v4

    #@f6
    .line 217
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@f9
    move-result-wide v6

    #@fa
    sub-long v6, v6, v20

    #@fc
    const-wide/32 v24, 0xf4240

    #@ff
    div-long v6, v6, v24

    #@101
    .line 216
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@104
    move-result-object v4

    #@105
    .line 217
    const-string/jumbo v5, " ms"

    #@108
    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v4

    #@10c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v4

    #@110
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    .line 212
    throw v2

    #@114
    .line 174
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "isCurrentFormat3gpp2":Z
    .restart local v22    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_5
    :try_start_6
    new-instance v18, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    #@116
    move-object/from16 v0, v18

    #@118
    move-object/from16 v1, v22

    #@11a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/android/internal/telephony/InboundSmsTracker;)V

    #@11d
    .line 175
    .local v18, "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    move-object/from16 v0, v18

    #@11f
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@122
    move-result-object v17

    #@123
    check-cast v17, Ljava/lang/Integer;

    #@125
    .line 176
    .local v17, "receivedCount":Ljava/lang/Integer;
    if-nez v17, :cond_6

    #@127
    .line 177
    const/4 v2, 0x1

    #@128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12b
    move-result-object v2

    #@12c
    move-object/from16 v0, v18

    #@12e
    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@131
    .line 178
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    #@134
    move-result-wide v2

    #@135
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@138
    move-result-wide v4

    #@139
    const-wide v6, 0x9a7ec800L

    #@13e
    sub-long/2addr v4, v6

    #@13f
    .line 178
    cmp-long v2, v2, v4

    #@141
    if-gez v2, :cond_2

    #@143
    .line 181
    move-object/from16 v0, v16

    #@145
    move-object/from16 v1, v18

    #@147
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14a
    goto/16 :goto_0

    #@14c
    .line 184
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@14f
    move-result v2

    #@150
    add-int/lit8 v15, v2, 0x1

    #@152
    .line 185
    .local v15, "newCount":I
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@155
    move-result v2

    #@156
    if-ne v15, v2, :cond_7

    #@158
    .line 188
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@15b
    const-string/jumbo v3, "found complete multi-part message"

    #@15e
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@161
    .line 189
    move-object/from16 v0, p0

    #@163
    move-object/from16 v1, v22

    #@165
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    #@168
    .line 191
    move-object/from16 v0, v16

    #@16a
    move-object/from16 v1, v18

    #@16c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@16f
    goto/16 :goto_0

    #@171
    .line 193
    :cond_7
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@174
    move-result-object v2

    #@175
    move-object/from16 v0, v18

    #@177
    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17a
    goto/16 :goto_0

    #@17c
    .line 199
    .end local v15    # "newCount":I
    .end local v17    # "receivedCount":Ljava/lang/Integer;
    .end local v18    # "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v22    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17f
    move-result-object v13

    #@180
    .local v13, "message$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@183
    move-result v2

    #@184
    if-eqz v2, :cond_a

    #@186
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@189
    move-result-object v12

    #@18a
    check-cast v12, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    #@18c
    .line 201
    .local v12, "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    move-object/from16 v0, p0

    #@18e
    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    #@190
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    #@192
    .line 202
    const-string/jumbo v4, "address=? AND reference_number=? AND count=? AND deleted=0"

    #@195
    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhereArgs()[Ljava/lang/String;

    #@198
    move-result-object v5

    #@199
    .line 201
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@19c
    move-result v19

    #@19d
    .line 203
    .local v19, "rows":I
    if-nez v19, :cond_9

    #@19f
    .line 204
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@1a2
    const-string/jumbo v3, "No rows were deleted from raw table!"

    #@1a5
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a8
    goto :goto_2

    #@1a9
    .line 206
    :cond_9
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@1ac
    new-instance v3, Ljava/lang/StringBuilder;

    #@1ae
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b1
    const-string/jumbo v4, "Deleted "

    #@1b4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v3

    #@1b8
    move/from16 v0, v19

    #@1ba
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v3

    #@1be
    const-string/jumbo v4, " rows from raw table for incomplete "

    #@1c1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v3

    #@1c5
    .line 207
    iget v4, v12, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    #@1c7
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v3

    #@1cb
    .line 207
    const-string/jumbo v4, " part message"

    #@1ce
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v3

    #@1d2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d5
    move-result-object v3

    #@1d6
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1d9
    goto :goto_2

    #@1da
    .line 213
    .end local v12    # "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v19    # "rows":I
    :cond_a
    if-eqz v8, :cond_b

    #@1dc
    .line 214
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@1df
    .line 216
    :cond_b
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    #@1e2
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e7
    const-string/jumbo v4, "finished scanning raw table in "

    #@1ea
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ed
    move-result-object v3

    #@1ee
    .line 217
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@1f1
    move-result-wide v4

    #@1f2
    sub-long v4, v4, v20

    #@1f4
    const-wide/32 v6, 0xf4240

    #@1f7
    div-long/2addr v4, v6

    #@1f8
    .line 216
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v3

    #@1fc
    .line 217
    const-string/jumbo v4, " ms"

    #@1ff
    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v3

    #@203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@206
    move-result-object v3

    #@207
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20a
    goto/16 :goto_1
.end method
