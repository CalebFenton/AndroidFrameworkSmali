.class Lcom/android/internal/telephony/gsm/SmsCbHeader;
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
    .locals 14
    .param p1, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    if-eqz p1, :cond_0

    #@5
    array-length v0, p1

    #@6
    const/4 v2, 0x6

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "Illegal PDU"

    #@e
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 98
    :cond_1
    array-length v0, p1

    #@13
    const/16 v2, 0x58

    #@15
    if-gt v0, v2, :cond_9

    #@17
    .line 103
    const/4 v0, 0x0

    #@18
    aget-byte v0, p1, v0

    #@1a
    and-int/lit16 v0, v0, 0xc0

    #@1c
    ushr-int/lit8 v0, v0, 0x6

    #@1e
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    #@20
    .line 104
    const/4 v0, 0x0

    #@21
    aget-byte v0, p1, v0

    #@23
    and-int/lit16 v0, v0, 0xff

    #@25
    shl-int/lit8 v0, v0, 0x8

    #@27
    const/4 v2, 0x1

    #@28
    aget-byte v2, p1, v2

    #@2a
    and-int/lit16 v2, v2, 0xff

    #@2c
    or-int/2addr v0, v2

    #@2d
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    #@2f
    .line 105
    const/4 v0, 0x2

    #@30
    aget-byte v0, p1, v0

    #@32
    and-int/lit16 v0, v0, 0xff

    #@34
    shl-int/lit8 v0, v0, 0x8

    #@36
    const/4 v2, 0x3

    #@37
    aget-byte v2, p1, v2

    #@39
    and-int/lit16 v2, v2, 0xff

    #@3b
    or-int/2addr v0, v2

    #@3c
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@3e
    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_5

    #@44
    array-length v0, p1

    #@45
    const/16 v2, 0x38

    #@47
    if-gt v0, v2, :cond_5

    #@49
    .line 107
    const/4 v0, 0x3

    #@4a
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    #@4c
    .line 108
    const/4 v0, -0x1

    #@4d
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    #@4f
    .line 109
    const/4 v0, -0x1

    #@50
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    #@52
    .line 110
    const/4 v0, -0x1

    #@53
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    #@55
    .line 111
    const/4 v0, 0x4

    #@56
    aget-byte v0, p1, v0

    #@58
    and-int/lit8 v0, v0, 0x1

    #@5a
    if-eqz v0, :cond_2

    #@5c
    const/4 v8, 0x1

    #@5d
    .line 112
    .local v8, "emergencyUserAlert":Z
    :goto_0
    const/4 v0, 0x5

    #@5e
    aget-byte v0, p1, v0

    #@60
    and-int/lit16 v0, v0, 0x80

    #@62
    if-eqz v0, :cond_3

    #@64
    const/4 v7, 0x1

    #@65
    .line 113
    .local v7, "activatePopup":Z
    :goto_1
    const/4 v0, 0x4

    #@66
    aget-byte v0, p1, v0

    #@68
    and-int/lit16 v0, v0, 0xfe

    #@6a
    ushr-int/lit8 v13, v0, 0x1

    #@6c
    .line 116
    .local v13, "warningType":I
    array-length v0, p1

    #@6d
    const/4 v2, 0x6

    #@6e
    if-le v0, v2, :cond_4

    #@70
    .line 117
    array-length v0, p1

    #@71
    const/4 v2, 0x6

    #@72
    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@75
    move-result-object v12

    #@76
    .line 121
    :goto_2
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo;

    #@78
    invoke-direct {v0, v13, v8, v7, v12}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZ[B)V

    #@7b
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    #@7d
    .line 123
    const/4 v0, 0x0

    #@7e
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    #@80
    .line 124
    return-void

    #@81
    .line 111
    .end local v7    # "activatePopup":Z
    .end local v8    # "emergencyUserAlert":Z
    .end local v13    # "warningType":I
    :cond_2
    const/4 v8, 0x0

    #@82
    .restart local v8    # "emergencyUserAlert":Z
    goto :goto_0

    #@83
    .line 112
    :cond_3
    const/4 v7, 0x0

    #@84
    .restart local v7    # "activatePopup":Z
    goto :goto_1

    #@85
    .line 119
    .restart local v13    # "warningType":I
    :cond_4
    const/4 v12, 0x0

    #@86
    .local v12, "warningSecurityInfo":[B
    goto :goto_2

    #@87
    .line 127
    .end local v7    # "activatePopup":Z
    .end local v8    # "emergencyUserAlert":Z
    .end local v12    # "warningSecurityInfo":[B
    .end local v13    # "warningType":I
    :cond_5
    const/4 v0, 0x1

    #@88
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    #@8a
    .line 128
    const/4 v0, 0x4

    #@8b
    aget-byte v0, p1, v0

    #@8d
    and-int/lit16 v0, v0, 0xff

    #@8f
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    #@91
    .line 131
    const/4 v0, 0x5

    #@92
    aget-byte v0, p1, v0

    #@94
    and-int/lit16 v0, v0, 0xf0

    #@96
    ushr-int/lit8 v11, v0, 0x4

    #@98
    .line 132
    .local v11, "pageIndex":I
    const/4 v0, 0x5

    #@99
    aget-byte v0, p1, v0

    #@9b
    and-int/lit8 v10, v0, 0xf

    #@9d
    .line 134
    .local v10, "nrOfPages":I
    if-eqz v11, :cond_6

    #@9f
    if-nez v10, :cond_8

    #@a1
    .line 135
    :cond_6
    :goto_3
    const/4 v11, 0x1

    #@a2
    .line 136
    const/4 v10, 0x1

    #@a3
    .line 139
    :cond_7
    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    #@a5
    .line 140
    iput v10, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    #@a7
    .line 165
    .end local v10    # "nrOfPages":I
    .end local v11    # "pageIndex":I
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    #@aa
    move-result v0

    #@ab
    if-eqz v0, :cond_b

    #@ad
    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsEmergencyUserAlert()Z

    #@b0
    move-result v8

    #@b1
    .line 167
    .local v8, "emergencyUserAlert":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPopupAlert()Z

    #@b4
    move-result v7

    #@b5
    .line 168
    .local v7, "activatePopup":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsWarningType()I

    #@b8
    move-result v13

    #@b9
    .line 169
    .restart local v13    # "warningType":I
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo;

    #@bb
    const/4 v2, 0x0

    #@bc
    invoke-direct {v0, v13, v8, v7, v2}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZ[B)V

    #@bf
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    #@c1
    .line 170
    const/4 v0, 0x0

    #@c2
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    #@c4
    .line 93
    .end local v7    # "activatePopup":Z
    .end local v8    # "emergencyUserAlert":Z
    .end local v13    # "warningType":I
    :goto_5
    return-void

    #@c5
    .line 134
    .restart local v10    # "nrOfPages":I
    .restart local v11    # "pageIndex":I
    :cond_8
    if-le v11, v10, :cond_7

    #@c7
    goto :goto_3

    #@c8
    .line 145
    .end local v10    # "nrOfPages":I
    .end local v11    # "pageIndex":I
    :cond_9
    const/4 v0, 0x2

    #@c9
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    #@cb
    .line 147
    const/4 v0, 0x0

    #@cc
    aget-byte v9, p1, v0

    #@ce
    .line 149
    .local v9, "messageType":I
    const/4 v0, 0x1

    #@cf
    if-eq v9, v0, :cond_a

    #@d1
    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d3
    new-instance v2, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v3, "Unsupported message type "

    #@db
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v2

    #@df
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v2

    #@e3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v2

    #@e7
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ea
    throw v0

    #@eb
    .line 153
    :cond_a
    const/4 v0, 0x1

    #@ec
    aget-byte v0, p1, v0

    #@ee
    and-int/lit16 v0, v0, 0xff

    #@f0
    shl-int/lit8 v0, v0, 0x8

    #@f2
    const/4 v2, 0x2

    #@f3
    aget-byte v2, p1, v2

    #@f5
    and-int/lit16 v2, v2, 0xff

    #@f7
    or-int/2addr v0, v2

    #@f8
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@fa
    .line 154
    const/4 v0, 0x3

    #@fb
    aget-byte v0, p1, v0

    #@fd
    and-int/lit16 v0, v0, 0xc0

    #@ff
    ushr-int/lit8 v0, v0, 0x6

    #@101
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    #@103
    .line 155
    const/4 v0, 0x3

    #@104
    aget-byte v0, p1, v0

    #@106
    and-int/lit16 v0, v0, 0xff

    #@108
    shl-int/lit8 v0, v0, 0x8

    #@10a
    const/4 v2, 0x4

    #@10b
    aget-byte v2, p1, v2

    #@10d
    and-int/lit16 v2, v2, 0xff

    #@10f
    or-int/2addr v0, v2

    #@110
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    #@112
    .line 156
    const/4 v0, 0x5

    #@113
    aget-byte v0, p1, v0

    #@115
    and-int/lit16 v0, v0, 0xff

    #@117
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    #@119
    .line 161
    const/4 v0, 0x1

    #@11a
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    #@11c
    .line 162
    const/4 v0, 0x1

    #@11d
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    #@11f
    goto :goto_4

    #@120
    .line 171
    .end local v9    # "messageType":I
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isCmasMessage()Z

    #@123
    move-result v0

    #@124
    if-eqz v0, :cond_c

    #@126
    .line 172
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasMessageClass()I

    #@129
    move-result v1

    #@12a
    .line 173
    .local v1, "messageClass":I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasSeverity()I

    #@12d
    move-result v4

    #@12e
    .line 174
    .local v4, "severity":I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasUrgency()I

    #@131
    move-result v5

    #@132
    .line 175
    .local v5, "urgency":I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasCertainty()I

    #@135
    move-result v6

    #@136
    .line 176
    .local v6, "certainty":I
    const/4 v0, 0x0

    #@137
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    #@139
    .line 177
    new-instance v0, Landroid/telephony/SmsCbCmasInfo;

    #@13b
    const/4 v2, -0x1

    #@13c
    .line 178
    const/4 v3, -0x1

    #@13d
    .line 177
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    #@140
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    #@142
    goto :goto_5

    #@143
    .line 180
    .end local v1    # "messageClass":I
    .end local v4    # "severity":I
    .end local v5    # "urgency":I
    .end local v6    # "certainty":I
    :cond_c
    const/4 v0, 0x0

    #@144
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    #@146
    .line 181
    const/4 v0, 0x0

    #@147
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    #@149
    goto/16 :goto_5
.end method

.method private getCmasCertainty()I
    .locals 1

    #@0
    .prologue
    .line 386
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 400
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 391
    :pswitch_0
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 397
    :pswitch_1
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 386
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCmasMessageClass()I
    .locals 1

    #@0
    .prologue
    .line 296
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 325
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 298
    :pswitch_0
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 302
    :pswitch_1
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 310
    :pswitch_2
    const/4 v0, 0x2

    #@c
    return v0

    #@d
    .line 313
    :pswitch_3
    const/4 v0, 0x3

    #@e
    return v0

    #@f
    .line 316
    :pswitch_4
    const/4 v0, 0x4

    #@10
    return v0

    #@11
    .line 319
    :pswitch_5
    const/4 v0, 0x5

    #@12
    return v0

    #@13
    .line 322
    :pswitch_6
    const/4 v0, 0x6

    #@14
    return v0

    #@15
    .line 296
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
    .end packed-switch
.end method

.method private getCmasSeverity()I
    .locals 1

    #@0
    .prologue
    .line 336
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 350
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 341
    :pswitch_0
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 347
    :pswitch_1
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 336
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getCmasUrgency()I
    .locals 1

    #@0
    .prologue
    .line 361
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 375
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 366
    :pswitch_0
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 372
    :pswitch_1
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 361
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getEtwsWarningType()I
    .locals 1

    #@0
    .prologue
    .line 287
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
    .line 256
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@3
    const/16 v2, 0x1112

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 257
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@9
    const/16 v2, 0x112f

    #@b
    if-gt v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 256
    :cond_0
    return v0
.end method

.method private isEtwsEmergencyUserAlert()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 277
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
    .line 231
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2
    const v1, 0xfff8

    #@5
    and-int/2addr v0, v1

    #@6
    .line 232
    const/16 v1, 0x1100

    #@8
    .line 231
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
    .line 267
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
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    #@2
    return-object v0
.end method

.method getDataCodingScheme()I
    .locals 1

    #@0
    .prologue
    .line 198
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    #@2
    return v0
.end method

.method getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    #@2
    return-object v0
.end method

.method getGeographicalScope()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    #@2
    return v0
.end method

.method getNumberOfPages()I
    .locals 1

    #@0
    .prologue
    .line 206
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    #@2
    return v0
.end method

.method getPageIndex()I
    .locals 1

    #@0
    .prologue
    .line 202
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    #@2
    return v0
.end method

.method getSerialNumber()I
    .locals 1

    #@0
    .prologue
    .line 190
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    #@2
    return v0
.end method

.method getServiceCategory()I
    .locals 1

    #@0
    .prologue
    .line 194
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
    .line 222
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@3
    const/16 v2, 0x1100

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 223
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@9
    const/16 v2, 0x18ff

    #@b
    if-gt v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 222
    :cond_0
    return v0
.end method

.method isEtwsPrimaryNotification()Z
    .locals 2

    #@0
    .prologue
    .line 240
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
    .line 248
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
    .line 406
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
    .line 407
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 408
    const-string/jumbo v1, ", messageIdentifier=0x"

    #@26
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 408
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    #@2c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 409
    const-string/jumbo v1, ", DCS=0x"

    #@37
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 409
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    #@3d
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 410
    const-string/jumbo v1, ", page "

    #@48
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 410
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    #@4e
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 410
    const-string/jumbo v1, " of "

    #@55
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 410
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    #@5b
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 410
    const/16 v1, 0x7d

    #@61
    .line 406
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
