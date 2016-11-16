.class public Lcom/android/internal/telephony/gsm/SmsCbHeader;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# static fields
.field static final FORMAT_ETWS_PRIMARY:I = 0x3

.field static final FORMAT_GSM:I = 0x1

.field static final FORMAT_UMTS:I = 0x2

.field private static final MESSAGE_TYPE_CBS_MESSAGE:I = 0x1

.field static final PDU_HEADER_LENGTH:I = 0x6

.field private static final PDU_LENGTH_ETWS:I = 0x38

.field private static final PDU_LENGTH_GSM:I = 0x58


# instance fields
.field private final mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final mDataCodingScheme:I

.field private final mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final mFormat:I

.field private final mGeographicalScope:I

.field private final mMessageIdentifier:I

.field private final mNrOfPages:I

.field private final mPageIndex:I

.field private final mSerialNumber:I


# direct methods
.method public constructor <init>([B)V
    .locals 18
    .param p1, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    if-eqz p1, :cond_0

    #@5
    move-object/from16 v0, p1

    #@7
    array-length v2, v0

    #@8
    const/4 v6, 0x6

    #@9
    if-ge v2, v6, :cond_1

    #@b
    .line 95
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v6, "Illegal PDU"

    #@10
    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2

    #@14
    .line 98
    :cond_1
    move-object/from16 v0, p1

    #@16
    array-length v2, v0

    #@17
    const/16 v6, 0x58

    #@19
    if-gt v2, v6, :cond_9

    #@1b
    .line 103
    const/4 v2, 0x0

    #@1c
    aget-byte v2, p1, v2

    #@1e
    and-int/lit16 v2, v2, 0xc0

    #@20
    ushr-int/lit8 v2, v2, 0x6

    #@22
    move-object/from16 v0, p0

    #@24
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    #@26
    .line 104
    const/4 v2, 0x0

    #@27
    aget-byte v2, p1, v2

    #@29
    and-int/lit16 v2, v2, 0xff

    #@2b
    shl-int/lit8 v2, v2, 0x8

    #@2d
    const/4 v6, 0x1

    #@2e
    aget-byte v6, p1, v6

    #@30
    and-int/lit16 v6, v6, 0xff

    #@32
    or-int/2addr v2, v6

    #@33
    move-object/from16 v0, p0

    #@35
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    #@37
    .line 105
    const/4 v2, 0x2

    #@38
    aget-byte v2, p1, v2

    #@3a
    and-int/lit16 v2, v2, 0xff

    #@3c
    shl-int/lit8 v2, v2, 0x8

    #@3e
    const/4 v6, 0x3

    #@3f
    aget-byte v6, p1, v6

    #@41
    and-int/lit16 v6, v6, 0xff

    #@43
    or-int/2addr v2, v6

    #@44
    move-object/from16 v0, p0

    #@46
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@48
    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_5

    #@4e
    move-object/from16 v0, p1

    #@50
    array-length v2, v0

    #@51
    const/16 v6, 0x38

    #@53
    if-gt v2, v6, :cond_5

    #@55
    .line 107
    const/4 v2, 0x3

    #@56
    move-object/from16 v0, p0

    #@58
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    #@5a
    .line 108
    const/4 v2, -0x1

    #@5b
    move-object/from16 v0, p0

    #@5d
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    #@5f
    .line 109
    const/4 v2, -0x1

    #@60
    move-object/from16 v0, p0

    #@62
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    #@64
    .line 110
    const/4 v2, -0x1

    #@65
    move-object/from16 v0, p0

    #@67
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    #@69
    .line 111
    const/4 v2, 0x4

    #@6a
    aget-byte v2, p1, v2

    #@6c
    and-int/lit8 v2, v2, 0x1

    #@6e
    if-eqz v2, :cond_2

    #@70
    const/4 v4, 0x1

    #@71
    .line 112
    .local v4, "emergencyUserAlert":Z
    :goto_0
    const/4 v2, 0x5

    #@72
    aget-byte v2, p1, v2

    #@74
    and-int/lit16 v2, v2, 0x80

    #@76
    if-eqz v2, :cond_3

    #@78
    const/4 v5, 0x1

    #@79
    .line 113
    .local v5, "activatePopup":Z
    :goto_1
    const/4 v2, 0x4

    #@7a
    aget-byte v2, p1, v2

    #@7c
    and-int/lit16 v2, v2, 0xfe

    #@7e
    ushr-int/lit8 v3, v2, 0x1

    #@80
    .line 116
    .local v3, "warningType":I
    move-object/from16 v0, p1

    #@82
    array-length v2, v0

    #@83
    const/4 v6, 0x6

    #@84
    if-le v2, v6, :cond_4

    #@86
    .line 117
    move-object/from16 v0, p1

    #@88
    array-length v2, v0

    #@89
    const/4 v6, 0x6

    #@8a
    move-object/from16 v0, p1

    #@8c
    invoke-static {v0, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@8f
    move-result-object v7

    #@90
    .line 121
    :goto_2
    new-instance v2, Landroid/telephony/SmsCbEtwsInfo;

    #@92
    .line 122
    const/4 v6, 0x1

    #@93
    .line 121
    invoke-direct/range {v2 .. v7}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    #@96
    move-object/from16 v0, p0

    #@98
    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    #@9a
    .line 123
    const/4 v2, 0x0

    #@9b
    move-object/from16 v0, p0

    #@9d
    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    #@9f
    .line 124
    return-void

    #@a0
    .line 111
    .end local v3    # "warningType":I
    .end local v4    # "emergencyUserAlert":Z
    .end local v5    # "activatePopup":Z
    :cond_2
    const/4 v4, 0x0

    #@a1
    .restart local v4    # "emergencyUserAlert":Z
    goto :goto_0

    #@a2
    .line 112
    :cond_3
    const/4 v5, 0x0

    #@a3
    .restart local v5    # "activatePopup":Z
    goto :goto_1

    #@a4
    .line 119
    .restart local v3    # "warningType":I
    :cond_4
    const/4 v7, 0x0

    #@a5
    .local v7, "warningSecurityInfo":[B
    goto :goto_2

    #@a6
    .line 127
    .end local v3    # "warningType":I
    .end local v4    # "emergencyUserAlert":Z
    .end local v5    # "activatePopup":Z
    .end local v7    # "warningSecurityInfo":[B
    :cond_5
    const/4 v2, 0x1

    #@a7
    move-object/from16 v0, p0

    #@a9
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    #@ab
    .line 128
    const/4 v2, 0x4

    #@ac
    aget-byte v2, p1, v2

    #@ae
    and-int/lit16 v2, v2, 0xff

    #@b0
    move-object/from16 v0, p0

    #@b2
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    #@b4
    .line 131
    const/4 v2, 0x5

    #@b5
    aget-byte v2, p1, v2

    #@b7
    and-int/lit16 v2, v2, 0xf0

    #@b9
    ushr-int/lit8 v17, v2, 0x4

    #@bb
    .line 132
    .local v17, "pageIndex":I
    const/4 v2, 0x5

    #@bc
    aget-byte v2, p1, v2

    #@be
    and-int/lit8 v16, v2, 0xf

    #@c0
    .line 134
    .local v16, "nrOfPages":I
    if-eqz v17, :cond_6

    #@c2
    if-nez v16, :cond_8

    #@c4
    .line 135
    :cond_6
    :goto_3
    const/16 v17, 0x1

    #@c6
    .line 136
    const/16 v16, 0x1

    #@c8
    .line 139
    :cond_7
    move/from16 v0, v17

    #@ca
    move-object/from16 v1, p0

    #@cc
    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    #@ce
    .line 140
    move/from16 v0, v16

    #@d0
    move-object/from16 v1, p0

    #@d2
    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    #@d4
    .line 165
    .end local v16    # "nrOfPages":I
    .end local v17    # "pageIndex":I
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    #@d7
    move-result v2

    #@d8
    if-eqz v2, :cond_b

    #@da
    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsEmergencyUserAlert()Z

    #@dd
    move-result v4

    #@de
    .line 167
    .local v4, "emergencyUserAlert":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPopupAlert()Z

    #@e1
    move-result v5

    #@e2
    .line 168
    .local v5, "activatePopup":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsWarningType()I

    #@e5
    move-result v3

    #@e6
    .line 169
    .restart local v3    # "warningType":I
    new-instance v8, Landroid/telephony/SmsCbEtwsInfo;

    #@e8
    .line 170
    const/4 v12, 0x0

    #@e9
    const/4 v13, 0x0

    #@ea
    move v9, v3

    #@eb
    move v10, v4

    #@ec
    move v11, v5

    #@ed
    .line 169
    invoke-direct/range {v8 .. v13}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    #@f0
    move-object/from16 v0, p0

    #@f2
    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    #@f4
    .line 171
    const/4 v2, 0x0

    #@f5
    move-object/from16 v0, p0

    #@f7
    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    #@f9
    .line 93
    .end local v3    # "warningType":I
    .end local v4    # "emergencyUserAlert":Z
    .end local v5    # "activatePopup":Z
    :goto_5
    return-void

    #@fa
    .line 134
    .restart local v16    # "nrOfPages":I
    .restart local v17    # "pageIndex":I
    :cond_8
    move/from16 v0, v17

    #@fc
    move/from16 v1, v16

    #@fe
    if-le v0, v1, :cond_7

    #@100
    goto :goto_3

    #@101
    .line 145
    .end local v16    # "nrOfPages":I
    .end local v17    # "pageIndex":I
    :cond_9
    const/4 v2, 0x2

    #@102
    move-object/from16 v0, p0

    #@104
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    #@106
    .line 147
    const/4 v2, 0x0

    #@107
    aget-byte v15, p1, v2

    #@109
    .line 149
    .local v15, "messageType":I
    const/4 v2, 0x1

    #@10a
    if-eq v15, v2, :cond_a

    #@10c
    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10e
    new-instance v6, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v8, "Unsupported message type "

    #@116
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v6

    #@11a
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v6

    #@11e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v6

    #@122
    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@125
    throw v2

    #@126
    .line 153
    :cond_a
    const/4 v2, 0x1

    #@127
    aget-byte v2, p1, v2

    #@129
    and-int/lit16 v2, v2, 0xff

    #@12b
    shl-int/lit8 v2, v2, 0x8

    #@12d
    const/4 v6, 0x2

    #@12e
    aget-byte v6, p1, v6

    #@130
    and-int/lit16 v6, v6, 0xff

    #@132
    or-int/2addr v2, v6

    #@133
    move-object/from16 v0, p0

    #@135
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@137
    .line 154
    const/4 v2, 0x3

    #@138
    aget-byte v2, p1, v2

    #@13a
    and-int/lit16 v2, v2, 0xc0

    #@13c
    ushr-int/lit8 v2, v2, 0x6

    #@13e
    move-object/from16 v0, p0

    #@140
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    #@142
    .line 155
    const/4 v2, 0x3

    #@143
    aget-byte v2, p1, v2

    #@145
    and-int/lit16 v2, v2, 0xff

    #@147
    shl-int/lit8 v2, v2, 0x8

    #@149
    const/4 v6, 0x4

    #@14a
    aget-byte v6, p1, v6

    #@14c
    and-int/lit16 v6, v6, 0xff

    #@14e
    or-int/2addr v2, v6

    #@14f
    move-object/from16 v0, p0

    #@151
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    #@153
    .line 156
    const/4 v2, 0x5

    #@154
    aget-byte v2, p1, v2

    #@156
    and-int/lit16 v2, v2, 0xff

    #@158
    move-object/from16 v0, p0

    #@15a
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    #@15c
    .line 161
    const/4 v2, 0x1

    #@15d
    move-object/from16 v0, p0

    #@15f
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    #@161
    .line 162
    const/4 v2, 0x1

    #@162
    move-object/from16 v0, p0

    #@164
    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    #@166
    goto/16 :goto_4

    #@168
    .line 172
    .end local v15    # "messageType":I
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isCmasMessage()Z

    #@16b
    move-result v2

    #@16c
    if-eqz v2, :cond_c

    #@16e
    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasMessageClass()I

    #@171
    move-result v9

    #@172
    .line 174
    .local v9, "messageClass":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasSeverity()I

    #@175
    move-result v12

    #@176
    .line 175
    .local v12, "severity":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasUrgency()I

    #@179
    move-result v13

    #@17a
    .line 176
    .local v13, "urgency":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasCertainty()I

    #@17d
    move-result v14

    #@17e
    .line 177
    .local v14, "certainty":I
    const/4 v2, 0x0

    #@17f
    move-object/from16 v0, p0

    #@181
    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    #@183
    .line 178
    new-instance v8, Landroid/telephony/SmsCbCmasInfo;

    #@185
    const/4 v10, -0x1

    #@186
    .line 179
    const/4 v11, -0x1

    #@187
    .line 178
    invoke-direct/range {v8 .. v14}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    #@18a
    move-object/from16 v0, p0

    #@18c
    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    #@18e
    goto/16 :goto_5

    #@190
    .line 181
    .end local v9    # "messageClass":I
    .end local v12    # "severity":I
    .end local v13    # "urgency":I
    .end local v14    # "certainty":I
    :cond_c
    const/4 v2, 0x0

    #@191
    move-object/from16 v0, p0

    #@193
    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    #@195
    .line 182
    const/4 v2, 0x0

    #@196
    move-object/from16 v0, p0

    #@198
    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    #@19a
    goto/16 :goto_5
.end method

.method private getCmasCertainty()I
    .locals 1

    #@0
    .prologue
    .line 416
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 438
    :pswitch_0
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 425
    :pswitch_1
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 435
    :pswitch_2
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 416
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCmasMessageClass()I
    .locals 1

    #@0
    .prologue
    .line 297
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 339
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 300
    :pswitch_0
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 306
    :pswitch_1
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 320
    :pswitch_2
    const/4 v0, 0x2

    #@c
    return v0

    #@d
    .line 324
    :pswitch_3
    const/4 v0, 0x3

    #@e
    return v0

    #@f
    .line 328
    :pswitch_4
    const/4 v0, 0x4

    #@10
    return v0

    #@11
    .line 332
    :pswitch_5
    const/4 v0, 0x5

    #@12
    return v0

    #@13
    .line 336
    :pswitch_6
    const/4 v0, 0x6

    #@14
    return v0

    #@15
    .line 297
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCmasSeverity()I
    .locals 1

    #@0
    .prologue
    .line 350
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 372
    :pswitch_0
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 359
    :pswitch_1
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 369
    :pswitch_2
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 350
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getCmasUrgency()I
    .locals 1

    #@0
    .prologue
    .line 383
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 405
    :pswitch_0
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 392
    :pswitch_1
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 402
    :pswitch_2
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 383
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getEtwsWarningType()I
    .locals 1

    #@0
    .prologue
    .line 288
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    add-int/lit16 v0, v0, -0x1100

    #@4
    return v0
.end method

.method private isCmasMessage()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 257
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@3
    const/16 v2, 0x1112

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 258
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@9
    const/16 v2, 0x112f

    #@b
    if-gt v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 257
    :cond_0
    return v0
.end method

.method private isEtwsEmergencyUserAlert()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 278
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    #@3
    and-int/lit16 v1, v1, 0x2000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private isEtwsMessage()Z
    .locals 2

    #@0
    .prologue
    .line 232
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    const v1, 0xfff8

    #@5
    and-int/2addr v0, v1

    #@6
    .line 233
    const/16 v1, 0x1100

    #@8
    .line 232
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private isEtwsPopupAlert()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 268
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    #@3
    and-int/lit16 v1, v1, 0x1000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method


# virtual methods
.method getCmasInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    #@2
    return-object v0
.end method

.method getDataCodingScheme()I
    .locals 1

    #@0
    .prologue
    .line 199
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    #@2
    return v0
.end method

.method getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    #@2
    return-object v0
.end method

.method getGeographicalScope()I
    .locals 1

    #@0
    .prologue
    .line 187
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    #@2
    return v0
.end method

.method getNumberOfPages()I
    .locals 1

    #@0
    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    #@2
    return v0
.end method

.method getPageIndex()I
    .locals 1

    #@0
    .prologue
    .line 203
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    #@2
    return v0
.end method

.method getSerialNumber()I
    .locals 1

    #@0
    .prologue
    .line 191
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    #@2
    return v0
.end method

.method getServiceCategory()I
    .locals 1

    #@0
    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    return v0
.end method

.method isEmergencyMessage()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 223
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@3
    const/16 v2, 0x1100

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 224
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@9
    const/16 v2, 0x18ff

    #@b
    if-gt v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 223
    :cond_0
    return v0
.end method

.method isEtwsPrimaryNotification()Z
    .locals 2

    #@0
    .prologue
    .line 241
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method isUmtsFormat()Z
    .locals 2

    #@0
    .prologue
    .line 249
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SmsCbHeader{GS="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", serialNumber=0x"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 445
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 446
    const-string/jumbo v1, ", messageIdentifier=0x"

    #@26
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 446
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 447
    const-string/jumbo v1, ", DCS=0x"

    #@37
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 447
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    #@3d
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 448
    const-string/jumbo v1, ", page "

    #@48
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 448
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    #@4e
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 448
    const-string/jumbo v1, " of "

    #@55
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 448
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    #@5b
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 448
    const/16 v1, 0x7d

    #@61
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    return-object v0
.end method
