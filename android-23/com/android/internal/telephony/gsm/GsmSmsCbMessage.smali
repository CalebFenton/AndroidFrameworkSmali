.class public Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;
.super Ljava/lang/Object;
.source "GsmSmsCbMessage.java"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

.field private static final PDU_BODY_PAGE_LENGTH:I = 0x52


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    .line 37
    const/16 v0, 0x10

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    .line 38
    const-string/jumbo v1, "de"

    #@c
    aput-object v1, v0, v4

    #@e
    const-string/jumbo v1, "en"

    #@11
    aput-object v1, v0, v5

    #@13
    const-string/jumbo v1, "it"

    #@16
    aput-object v1, v0, v6

    #@18
    const-string/jumbo v1, "fr"

    #@1b
    aput-object v1, v0, v7

    #@1d
    const-string/jumbo v1, "es"

    #@20
    const/4 v2, 0x4

    #@21
    aput-object v1, v0, v2

    #@23
    const-string/jumbo v1, "nl"

    #@26
    const/4 v2, 0x5

    #@27
    aput-object v1, v0, v2

    #@29
    const-string/jumbo v1, "sv"

    #@2c
    const/4 v2, 0x6

    #@2d
    aput-object v1, v0, v2

    #@2f
    const-string/jumbo v1, "da"

    #@32
    const/4 v2, 0x7

    #@33
    aput-object v1, v0, v2

    #@35
    const-string/jumbo v1, "pt"

    #@38
    const/16 v2, 0x8

    #@3a
    aput-object v1, v0, v2

    #@3c
    const-string/jumbo v1, "fi"

    #@3f
    const/16 v2, 0x9

    #@41
    aput-object v1, v0, v2

    #@43
    const-string/jumbo v1, "no"

    #@46
    const/16 v2, 0xa

    #@48
    aput-object v1, v0, v2

    #@4a
    const-string/jumbo v1, "el"

    #@4d
    const/16 v2, 0xb

    #@4f
    aput-object v1, v0, v2

    #@51
    const-string/jumbo v1, "tr"

    #@54
    const/16 v2, 0xc

    #@56
    aput-object v1, v0, v2

    #@58
    const-string/jumbo v1, "hu"

    #@5b
    const/16 v2, 0xd

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 39
    const-string/jumbo v1, "pl"

    #@62
    const/16 v2, 0xe

    #@64
    aput-object v1, v0, v2

    #@66
    const/16 v1, 0xf

    #@68
    aput-object v3, v0, v1

    #@6a
    .line 37
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    #@6c
    .line 45
    const/16 v0, 0x10

    #@6e
    new-array v0, v0, [Ljava/lang/String;

    #@70
    .line 46
    const-string/jumbo v1, "cs"

    #@73
    aput-object v1, v0, v4

    #@75
    const-string/jumbo v1, "he"

    #@78
    aput-object v1, v0, v5

    #@7a
    const-string/jumbo v1, "ar"

    #@7d
    aput-object v1, v0, v6

    #@7f
    const-string/jumbo v1, "ru"

    #@82
    aput-object v1, v0, v7

    #@84
    const-string/jumbo v1, "is"

    #@87
    const/4 v2, 0x4

    #@88
    aput-object v1, v0, v2

    #@8a
    const/4 v1, 0x5

    #@8b
    aput-object v3, v0, v1

    #@8d
    const/4 v1, 0x6

    #@8e
    aput-object v3, v0, v1

    #@90
    const/4 v1, 0x7

    #@91
    aput-object v3, v0, v1

    #@93
    const/16 v1, 0x8

    #@95
    aput-object v3, v0, v1

    #@97
    const/16 v1, 0x9

    #@99
    aput-object v3, v0, v1

    #@9b
    const/16 v1, 0xa

    #@9d
    aput-object v3, v0, v1

    #@9f
    const/16 v1, 0xb

    #@a1
    aput-object v3, v0, v1

    #@a3
    const/16 v1, 0xc

    #@a5
    aput-object v3, v0, v1

    #@a7
    const/16 v1, 0xd

    #@a9
    aput-object v3, v0, v1

    #@ab
    .line 47
    const/16 v1, 0xe

    #@ad
    aput-object v3, v0, v1

    #@af
    const/16 v1, 0xf

    #@b1
    aput-object v3, v0, v1

    #@b3
    .line 45
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    #@b5
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createSmsCbMessage(Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 2
    .param p0, "location"    # Landroid/telephony/SmsCbLocation;
    .param p1, "pdus"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v1, p1, v1

    #@5
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    #@8
    .line 98
    .local v0, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method static createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 15
    .param p0, "header"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .param p1, "location"    # Landroid/telephony/SmsCbLocation;
    .param p2, "pdus"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 65
    new-instance v1, Landroid/telephony/SmsCbMessage;

    #@8
    .line 66
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    #@b
    move-result v3

    #@c
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    #@f
    move-result v4

    #@10
    .line 67
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    #@13
    move-result v6

    #@14
    .line 68
    const-string/jumbo v8, "ETWS"

    #@17
    .line 69
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    #@1a
    move-result-object v10

    #@1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    #@1e
    move-result-object v11

    #@1f
    .line 65
    const/4 v2, 0x1

    #@20
    .line 68
    const/4 v7, 0x0

    #@21
    const/4 v9, 0x3

    #@22
    move-object/from16 v5, p1

    #@24
    .line 65
    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    #@27
    return-object v1

    #@28
    .line 71
    :cond_0
    const/4 v7, 0x0

    #@29
    .line 72
    .local v7, "language":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    .line 73
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@2f
    move-object/from16 v0, p2

    #@31
    array-length v3, v0

    #@32
    move v2, v1

    #@33
    .end local v7    # "language":Ljava/lang/String;
    :goto_0
    if-ge v2, v3, :cond_1

    #@35
    aget-object v13, p2, v2

    #@37
    .line 74
    .local v13, "pdu":[B
    invoke-static {p0, v13}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    #@3a
    move-result-object v12

    #@3b
    .line 75
    .local v12, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3d
    check-cast v7, Ljava/lang/String;

    #@3f
    .line 76
    .local v7, "language":Ljava/lang/String;
    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@41
    check-cast v1, Ljava/lang/String;

    #@43
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 73
    add-int/lit8 v1, v2, 0x1

    #@48
    move v2, v1

    #@49
    goto :goto_0

    #@4a
    .line 78
    .end local v7    # "language":Ljava/lang/String;
    .end local v12    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "pdu":[B
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_2

    #@50
    const/4 v9, 0x3

    #@51
    .line 81
    .local v9, "priority":I
    :goto_1
    new-instance v1, Landroid/telephony/SmsCbMessage;

    #@53
    .line 82
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    #@56
    move-result v3

    #@57
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    #@5a
    move-result v4

    #@5b
    .line 83
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    #@5e
    move-result v6

    #@5f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v8

    #@63
    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    #@66
    move-result-object v10

    #@67
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    #@6a
    move-result-object v11

    #@6b
    .line 81
    const/4 v2, 0x1

    #@6c
    move-object/from16 v5, p1

    #@6e
    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    #@71
    return-object v1

    #@72
    .line 79
    .end local v9    # "priority":I
    :cond_2
    const/4 v9, 0x0

    #@73
    .restart local v9    # "priority":I
    goto :goto_1
.end method

.method private static parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;
    .locals 14
    .param p0, "header"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .param p1, "pdu"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            "[B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/16 v13, 0x52

    #@2
    const/4 v11, 0x1

    #@3
    .line 112
    const/4 v5, 0x0

    #@4
    .line 113
    .local v5, "language":Ljava/lang/String;
    const/4 v4, 0x0

    #@5
    .line 114
    .local v4, "hasLanguageIndicator":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getDataCodingScheme()I

    #@8
    move-result v6

    #@9
    .line 118
    .local v6, "dataCodingScheme":I
    and-int/lit16 v0, v6, 0xf0

    #@b
    shr-int/lit8 v0, v0, 0x4

    #@d
    packed-switch v0, :pswitch_data_0

    #@10
    .line 180
    :pswitch_0
    const/4 v1, 0x1

    #@11
    .line 184
    .end local v5    # "language":Ljava/lang/String;
    .local v1, "encoding":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_5

    #@17
    .line 186
    const/4 v0, 0x6

    #@18
    aget-byte v8, p1, v0

    #@1a
    .line 188
    .local v8, "nrPages":I
    array-length v0, p1

    #@1b
    mul-int/lit8 v11, v8, 0x53

    #@1d
    add-int/lit8 v11, v11, 0x7

    #@1f
    if-ge v0, v11, :cond_2

    #@21
    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v11, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v12, "Pdu length "

    #@2b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v11

    #@2f
    array-length v12, p1

    #@30
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v11

    #@34
    const-string/jumbo v12, " does not match "

    #@37
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v11

    #@3b
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v11

    #@3f
    .line 191
    const-string/jumbo v12, " pages"

    #@42
    .line 190
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v11

    #@46
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v11

    #@4a
    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 120
    .end local v1    # "encoding":I
    .end local v8    # "nrPages":I
    .restart local v5    # "language":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x1

    #@4f
    .line 121
    .restart local v1    # "encoding":I
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    #@51
    and-int/lit8 v11, v6, 0xf

    #@53
    aget-object v5, v0, v11

    #@55
    .local v5, "language":Ljava/lang/String;
    goto :goto_0

    #@56
    .line 125
    .end local v1    # "encoding":I
    .local v5, "language":Ljava/lang/String;
    :pswitch_2
    const/4 v4, 0x1

    #@57
    .line 126
    and-int/lit8 v0, v6, 0xf

    #@59
    if-ne v0, v11, :cond_0

    #@5b
    .line 127
    const/4 v1, 0x3

    #@5c
    .restart local v1    # "encoding":I
    goto :goto_0

    #@5d
    .line 129
    .end local v1    # "encoding":I
    :cond_0
    const/4 v1, 0x1

    #@5e
    .restart local v1    # "encoding":I
    goto :goto_0

    #@5f
    .line 134
    .end local v1    # "encoding":I
    :pswitch_3
    const/4 v1, 0x1

    #@60
    .line 135
    .restart local v1    # "encoding":I
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    #@62
    and-int/lit8 v11, v6, 0xf

    #@64
    aget-object v5, v0, v11

    #@66
    .local v5, "language":Ljava/lang/String;
    goto :goto_0

    #@67
    .line 139
    .end local v1    # "encoding":I
    .local v5, "language":Ljava/lang/String;
    :pswitch_4
    const/4 v1, 0x1

    #@68
    .line 140
    .restart local v1    # "encoding":I
    goto :goto_0

    #@69
    .line 144
    .end local v1    # "encoding":I
    :pswitch_5
    and-int/lit8 v0, v6, 0xc

    #@6b
    shr-int/lit8 v0, v0, 0x2

    #@6d
    packed-switch v0, :pswitch_data_1

    #@70
    .line 155
    const/4 v1, 0x1

    #@71
    .line 156
    .restart local v1    # "encoding":I
    goto :goto_0

    #@72
    .line 146
    .end local v1    # "encoding":I
    :pswitch_6
    const/4 v1, 0x2

    #@73
    .line 147
    .restart local v1    # "encoding":I
    goto :goto_0

    #@74
    .line 150
    .end local v1    # "encoding":I
    :pswitch_7
    const/4 v1, 0x3

    #@75
    .line 151
    .restart local v1    # "encoding":I
    goto :goto_0

    #@76
    .line 167
    .end local v1    # "encoding":I
    :pswitch_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@78
    new-instance v11, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v12, "Unsupported GSM dataCodingScheme "

    #@80
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v11

    #@84
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v11

    #@88
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v11

    #@8c
    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v0

    #@90
    .line 171
    :pswitch_9
    and-int/lit8 v0, v6, 0x4

    #@92
    shr-int/lit8 v0, v0, 0x2

    #@94
    if-ne v0, v11, :cond_1

    #@96
    .line 172
    const/4 v1, 0x2

    #@97
    .restart local v1    # "encoding":I
    goto/16 :goto_0

    #@99
    .line 174
    .end local v1    # "encoding":I
    :cond_1
    const/4 v1, 0x1

    #@9a
    .restart local v1    # "encoding":I
    goto/16 :goto_0

    #@9c
    .line 194
    .end local v5    # "language":Ljava/lang/String;
    .restart local v8    # "nrPages":I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    .line 196
    .local v10, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    #@a2
    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_4

    #@a4
    .line 199
    mul-int/lit8 v0, v7, 0x53

    #@a6
    add-int/lit8 v2, v0, 0x7

    #@a8
    .line 200
    .local v2, "offset":I
    add-int/lit8 v0, v2, 0x52

    #@aa
    aget-byte v3, p1, v0

    #@ac
    .line 202
    .local v3, "length":I
    if-le v3, v13, :cond_3

    #@ae
    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b0
    new-instance v11, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v12, "Page length "

    #@b8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v11

    #@bc
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v11

    #@c0
    .line 204
    const-string/jumbo v12, " exceeds maximum value "

    #@c3
    .line 203
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v11

    #@c7
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v11

    #@cb
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v11

    #@cf
    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d2
    throw v0

    #@d3
    :cond_3
    move-object v0, p1

    #@d4
    .line 207
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    #@d7
    move-result-object v9

    #@d8
    .line 209
    .local v9, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@da
    check-cast v5, Ljava/lang/String;

    #@dc
    .line 210
    .local v5, "language":Ljava/lang/String;
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@de
    check-cast v0, Ljava/lang/String;

    #@e0
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    .line 196
    add-int/lit8 v7, v7, 0x1

    #@e5
    goto :goto_1

    #@e6
    .line 212
    .end local v2    # "offset":I
    .end local v3    # "length":I
    .end local v5    # "language":Ljava/lang/String;
    .end local v9    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Landroid/util/Pair;

    #@e8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v11

    #@ec
    invoke-direct {v0, v5, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@ef
    return-object v0

    #@f0
    .line 215
    .end local v7    # "i":I
    .end local v8    # "nrPages":I
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v2, 0x6

    #@f1
    .line 216
    .restart local v2    # "offset":I
    array-length v0, p1

    #@f2
    add-int/lit8 v3, v0, -0x6

    #@f4
    .restart local v3    # "length":I
    move-object v0, p1

    #@f5
    .line 218
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    #@f8
    move-result-object v0

    #@f9
    return-object v0

    #@fa
    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    #@11e
    .line 144
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;
    .locals 7
    .param p0, "pdu"    # [B
    .param p1, "encoding"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "hasLanguageIndicator"    # Z
    .param p5, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIZ",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x0

    #@2
    .line 238
    const/4 v0, 0x0

    #@3
    .line 240
    .local v0, "body":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    #@6
    .line 273
    .end local v0    # "body":Ljava/lang/String;
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_4

    #@8
    .line 275
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b
    move-result v3

    #@c
    add-int/lit8 v2, v3, -0x1

    #@e
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    #@10
    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v3

    #@14
    const/16 v4, 0xd

    #@16
    if-eq v3, v4, :cond_3

    #@18
    .line 277
    add-int/lit8 v3, v2, 0x1

    #@1a
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 285
    .end local v2    # "i":I
    :cond_1
    :goto_2
    new-instance v3, Landroid/util/Pair;

    #@20
    invoke-direct {v3, p5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@23
    return-object v3

    #@24
    .line 242
    .restart local v0    # "body":Ljava/lang/String;
    :pswitch_1
    mul-int/lit8 v3, p3, 0x8

    #@26
    div-int/lit8 v3, v3, 0x7

    #@28
    invoke-static {p0, p2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 244
    .local v0, "body":Ljava/lang/String;
    if-eqz p4, :cond_0

    #@2e
    if-eqz v0, :cond_0

    #@30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@33
    move-result v3

    #@34
    if-le v3, v6, :cond_0

    #@36
    .line 247
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@39
    move-result-object p5

    #@3a
    .line 248
    const/4 v3, 0x3

    #@3b
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    goto :goto_0

    #@40
    .line 253
    .local v0, "body":Ljava/lang/String;
    :pswitch_2
    if-eqz p4, :cond_2

    #@42
    array-length v3, p0

    #@43
    add-int/lit8 v4, p2, 0x2

    #@45
    if-lt v3, v4, :cond_2

    #@47
    .line 256
    invoke-static {p0, p2, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    #@4a
    move-result-object p5

    #@4b
    .line 257
    add-int/lit8 p2, p2, 0x2

    #@4d
    .line 258
    add-int/lit8 p3, p3, -0x2

    #@4f
    .line 262
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    #@51
    .end local v0    # "body":Ljava/lang/String;
    const v3, 0xfffe

    #@54
    and-int/2addr v3, p3

    #@55
    const-string/jumbo v4, "utf-16"

    #@58
    invoke-direct {v0, p0, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    .local v0, "body":Ljava/lang/String;
    goto :goto_0

    #@5c
    .line 263
    .end local v0    # "body":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@5d
    .line 265
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5f
    const-string/jumbo v4, "Error decoding UTF-16 message"

    #@62
    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@65
    throw v3

    #@66
    .line 275
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    #@68
    goto :goto_1

    #@69
    .line 282
    .end local v2    # "i":I
    :cond_4
    const-string/jumbo v0, ""

    #@6c
    .restart local v0    # "body":Ljava/lang/String;
    goto :goto_2

    #@6d
    .line 240
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
