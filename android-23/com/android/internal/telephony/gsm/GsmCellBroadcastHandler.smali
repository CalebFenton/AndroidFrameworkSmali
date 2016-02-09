.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final VDBG:Z


# instance fields
.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, "GsmCellBroadcastHandler"

    #@3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    #@6
    .line 44
    new-instance v0, Ljava/util/HashMap;

    #@8
    const/4 v1, 0x4

    #@9
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@c
    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    #@e
    .line 48
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x1

    #@15
    const/4 v3, 0x0

    #@16
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    #@19
    .line 46
    return-void
.end method

.method private handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;
    .locals 19
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 93
    :try_start_0
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4
    move-object/from16 v16, v0

    #@6
    check-cast v16, [B

    #@8
    .line 110
    .local v16, "receivedPdu":[B
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    #@a
    move-object/from16 v0, v16

    #@c
    invoke-direct {v7, v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    #@f
    .line 111
    .local v7, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    #@13
    move-object/from16 v17, v0

    #@15
    invoke-static/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@18
    move-result-object v17

    #@19
    .line 112
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1d
    move-object/from16 v18, v0

    #@1f
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@22
    move-result v18

    #@23
    .line 111
    invoke-virtual/range {v17 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@26
    move-result-object v15

    #@27
    .line 113
    .local v15, "plmn":Ljava/lang/String;
    const/4 v10, -0x1

    #@28
    .line 114
    .local v10, "lac":I
    const/4 v3, -0x1

    #@29
    .line 115
    .local v3, "cid":I
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2d
    move-object/from16 v17, v0

    #@2f
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    #@32
    move-result-object v4

    #@33
    .line 119
    .local v4, "cl":Landroid/telephony/CellLocation;
    instance-of v0, v4, Landroid/telephony/gsm/GsmCellLocation;

    #@35
    move/from16 v17, v0

    #@37
    if-eqz v17, :cond_0

    #@39
    .line 120
    move-object v0, v4

    #@3a
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    #@3c
    move-object v2, v0

    #@3d
    .line 121
    .local v2, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    #@40
    move-result v10

    #@41
    .line 122
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@44
    move-result v3

    #@45
    .line 126
    .end local v2    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    #@48
    move-result v17

    #@49
    packed-switch v17, :pswitch_data_0

    #@4c
    .line 138
    :pswitch_0
    new-instance v11, Landroid/telephony/SmsCbLocation;

    #@4e
    invoke-direct {v11, v15}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    #@51
    .line 143
    .local v11, "location":Landroid/telephony/SmsCbLocation;
    :goto_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    #@54
    move-result v12

    #@55
    .line 144
    .local v12, "pageCount":I
    const/16 v17, 0x1

    #@57
    move/from16 v0, v17

    #@59
    if-le v12, v0, :cond_5

    #@5b
    .line 146
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    #@5d
    invoke-direct {v5, v7, v11}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    #@60
    .line 149
    .local v5, "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    #@64
    move-object/from16 v17, v0

    #@66
    move-object/from16 v0, v17

    #@68
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    move-result-object v14

    #@6c
    check-cast v14, [[B

    #@6e
    .line 151
    .local v14, "pdus":[[B
    if-nez v14, :cond_1

    #@70
    .line 154
    new-array v14, v12, [[B

    #@72
    .line 156
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    #@76
    move-object/from16 v17, v0

    #@78
    move-object/from16 v0, v17

    #@7a
    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    .line 160
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    #@80
    move-result v17

    #@81
    add-int/lit8 v17, v17, -0x1

    #@83
    aput-object v16, v14, v17

    #@85
    .line 162
    const/16 v17, 0x0

    #@87
    array-length v0, v14

    #@88
    move/from16 v18, v0

    #@8a
    :goto_1
    move/from16 v0, v17

    #@8c
    move/from16 v1, v18

    #@8e
    if-ge v0, v1, :cond_3

    #@90
    aget-object v13, v14, v17

    #@92
    .line 163
    .local v13, "pdu":[B
    if-nez v13, :cond_2

    #@94
    .line 165
    const/16 v17, 0x0

    #@96
    return-object v17

    #@97
    .line 128
    .end local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v11    # "location":Landroid/telephony/SmsCbLocation;
    .end local v12    # "pageCount":I
    .end local v13    # "pdu":[B
    .end local v14    # "pdus":[[B
    :pswitch_1
    new-instance v11, Landroid/telephony/SmsCbLocation;

    #@99
    const/16 v17, -0x1

    #@9b
    move/from16 v0, v17

    #@9d
    invoke-direct {v11, v15, v10, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    #@a0
    .line 129
    .restart local v11    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    #@a1
    .line 133
    .end local v11    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v11, Landroid/telephony/SmsCbLocation;

    #@a3
    invoke-direct {v11, v15, v10, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    #@a6
    .line 134
    .restart local v11    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    #@a7
    .line 162
    .restart local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .restart local v12    # "pageCount":I
    .restart local v13    # "pdu":[B
    .restart local v14    # "pdus":[[B
    :cond_2
    add-int/lit8 v17, v17, 0x1

    #@a9
    goto :goto_1

    #@aa
    .line 170
    .end local v13    # "pdu":[B
    :cond_3
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    #@ae
    move-object/from16 v17, v0

    #@b0
    move-object/from16 v0, v17

    #@b2
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    .line 180
    .end local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    :goto_2
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    #@b9
    move-object/from16 v17, v0

    #@bb
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@be
    move-result-object v17

    #@bf
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c2
    move-result-object v9

    #@c3
    .line 182
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@c6
    move-result v17

    #@c7
    if-eqz v17, :cond_6

    #@c9
    .line 183
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@cc
    move-result-object v8

    #@cd
    check-cast v8, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    #@cf
    .line 185
    .local v8, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    invoke-virtual {v8, v15, v10, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    #@d2
    move-result v17

    #@d3
    if-nez v17, :cond_4

    #@d5
    .line 186
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@d8
    goto :goto_3

    #@d9
    .line 192
    .end local v3    # "cid":I
    .end local v4    # "cl":Landroid/telephony/CellLocation;
    .end local v7    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v8    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    .end local v10    # "lac":I
    .end local v11    # "location":Landroid/telephony/SmsCbLocation;
    .end local v12    # "pageCount":I
    .end local v14    # "pdus":[[B
    .end local v15    # "plmn":Ljava/lang/String;
    .end local v16    # "receivedPdu":[B
    :catch_0
    move-exception v6

    #@da
    .line 193
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v17, "Error in decoding SMS CB pdu"

    #@dd
    move-object/from16 v0, p0

    #@df
    move-object/from16 v1, v17

    #@e1
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e4
    .line 194
    const/16 v17, 0x0

    #@e6
    return-object v17

    #@e7
    .line 173
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "cid":I
    .restart local v4    # "cl":Landroid/telephony/CellLocation;
    .restart local v7    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v10    # "lac":I
    .restart local v11    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v12    # "pageCount":I
    .restart local v15    # "plmn":Ljava/lang/String;
    .restart local v16    # "receivedPdu":[B
    :cond_5
    const/16 v17, 0x1

    #@e9
    :try_start_1
    move/from16 v0, v17

    #@eb
    new-array v14, v0, [[B

    #@ed
    .line 174
    .restart local v14    # "pdus":[[B
    const/16 v17, 0x0

    #@ef
    aput-object v16, v14, v17

    #@f1
    goto :goto_2

    #@f2
    .line 190
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_6
    invoke-static {v7, v11, v14}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@f5
    move-result-object v17

    #@f6
    return-object v17

    #@f7
    .line 126
    nop

    #@f8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 64
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    #@5
    .line 65
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    #@8
    .line 66
    return-object v0
.end method


# virtual methods
.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 77
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    instance-of v1, v1, Landroid/os/AsyncResult;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 78
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v1, Landroid/os/AsyncResult;

    #@a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;

    #@d
    move-result-object v0

    #@e
    .line 79
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_0

    #@10
    .line 80
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    #@13
    .line 81
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 84
    .end local v0    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    #@18
    move-result v1

    #@19
    return v1
.end method

.method protected onQuitting()V
    .locals 2

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    #@b
    .line 54
    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    #@e
    .line 52
    return-void
.end method
