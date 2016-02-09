.class public Lcom/android/internal/telephony/dataconnection/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# static fields
.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"

.field static final V3_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV3\\]\\s*"


# instance fields
.field public final apn:Ljava/lang/String;

.field public final authType:I

.field private final bearer:I

.field public final bearerBitmask:I

.field public final carrier:Ljava/lang/String;

.field public final carrierEnabled:Z

.field public final id:I

.field public final maxConns:I

.field public final maxConnsTime:I

.field public final mmsPort:Ljava/lang/String;

.field public final mmsProxy:Ljava/lang/String;

.field public final mmsc:Ljava/lang/String;

.field public final modemCognitive:Z

.field public final mtu:I

.field public final mvnoMatchData:Ljava/lang/String;

.field public final mvnoType:Ljava/lang/String;

.field public final numeric:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:Ljava/lang/String;

.field public final profileId:I

.field public final protocol:Ljava/lang/String;

.field public final proxy:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public final types:[Ljava/lang/String;

.field public final user:Ljava/lang/String;

.field public final waitTime:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I
    .param p18, "bearerBitmask"    # I
    .param p19, "profileId"    # I
    .param p20, "modemCognitive"    # Z
    .param p21, "maxConns"    # I
    .param p22, "waitTime"    # I
    .param p23, "maxConnsTime"    # I
    .param p24, "mtu"    # I
    .param p25, "mvnoType"    # Ljava/lang/String;
    .param p26, "mvnoMatchData"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@5
    .line 106
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@7
    .line 107
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    #@9
    .line 108
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@b
    .line 109
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@d
    .line 110
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@f
    .line 111
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@11
    .line 112
    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@13
    .line 113
    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@15
    .line 114
    iput-object p10, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@17
    .line 115
    move-object/from16 v0, p11

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@1b
    .line 116
    move/from16 v0, p12

    #@1d
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@1f
    .line 117
    move-object/from16 v0, p13

    #@21
    array-length v2, v0

    #@22
    new-array v2, v2, [Ljava/lang/String;

    #@24
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@26
    .line 118
    const/4 v1, 0x0

    #@27
    .local v1, "i":I
    :goto_0
    move-object/from16 v0, p13

    #@29
    array-length v2, v0

    #@2a
    if-ge v1, v2, :cond_0

    #@2c
    .line 119
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@2e
    aget-object v3, p13, v1

    #@30
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    aput-object v3, v2, v1

    #@38
    .line 118
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 121
    :cond_0
    move-object/from16 v0, p14

    #@3d
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@3f
    .line 122
    move-object/from16 v0, p15

    #@41
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@43
    .line 123
    move/from16 v0, p16

    #@45
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@47
    .line 124
    move/from16 v0, p17

    #@49
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    #@4b
    .line 125
    invoke-static/range {p17 .. p17}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    #@4e
    move-result v2

    #@4f
    or-int v2, v2, p18

    #@51
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@53
    .line 126
    move/from16 v0, p19

    #@55
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@57
    .line 127
    move/from16 v0, p20

    #@59
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@5b
    .line 128
    move/from16 v0, p21

    #@5d
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    #@5f
    .line 129
    move/from16 v0, p22

    #@61
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    #@63
    .line 130
    move/from16 v0, p23

    #@65
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    #@67
    .line 131
    move/from16 v0, p24

    #@69
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@6b
    .line 132
    move-object/from16 v0, p25

    #@6d
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@6f
    .line 133
    move-object/from16 v0, p26

    #@71
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@73
    .line 104
    return-void
.end method

.method public static arrayFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 258
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 259
    .local v3, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 260
    return-object v3

    #@c
    .line 262
    :cond_0
    const-string/jumbo v4, "\\s*;\\s*"

    #@f
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 263
    .local v2, "apnStrings":[Ljava/lang/String;
    const/4 v4, 0x0

    #@14
    array-length v5, v2

    #@15
    :goto_0
    if-ge v4, v5, :cond_2

    #@17
    aget-object v1, v2, v4

    #@19
    .line 264
    .local v1, "apnString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1c
    move-result-object v0

    #@1d
    .line 265
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_1

    #@1f
    .line 266
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 263
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 269
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "apnString":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 31
    .param p0, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    if-nez p0, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 170
    :cond_0
    const-string/jumbo v1, "^\\[ApnSettingV3\\]\\s*.*"

    #@7
    move-object/from16 v0, p0

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 171
    const/16 v30, 0x3

    #@11
    .line 172
    .local v30, "version":I
    const-string/jumbo v1, "^\\[ApnSettingV3\\]\\s*"

    #@14
    const-string/jumbo v2, ""

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object p0

    #@1d
    .line 180
    :goto_0
    const-string/jumbo v1, "\\s*,\\s*"

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@25
    move-result-object v28

    #@26
    .line 181
    .local v28, "a":[Ljava/lang/String;
    move-object/from16 v0, v28

    #@28
    array-length v1, v0

    #@29
    const/16 v2, 0xe

    #@2b
    if-ge v1, v2, :cond_3

    #@2d
    .line 182
    const/4 v1, 0x0

    #@2e
    return-object v1

    #@2f
    .line 173
    .end local v28    # "a":[Ljava/lang/String;
    .end local v30    # "version":I
    :cond_1
    const-string/jumbo v1, "^\\[ApnSettingV2\\]\\s*.*"

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_2

    #@3a
    .line 174
    const/16 v30, 0x2

    #@3c
    .line 175
    .restart local v30    # "version":I
    const-string/jumbo v1, "^\\[ApnSettingV2\\]\\s*"

    #@3f
    const-string/jumbo v2, ""

    #@42
    move-object/from16 v0, p0

    #@44
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object p0

    #@48
    goto :goto_0

    #@49
    .line 177
    .end local v30    # "version":I
    :cond_2
    const/16 v30, 0x1

    #@4b
    .restart local v30    # "version":I
    goto :goto_0

    #@4c
    .line 187
    .restart local v28    # "a":[Ljava/lang/String;
    :cond_3
    const/16 v1, 0xc

    #@4e
    :try_start_0
    aget-object v1, v28, v1

    #@50
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    move-result v13

    #@54
    .line 195
    .local v13, "authType":I
    :goto_1
    const/16 v19, 0x0

    #@56
    .line 196
    .local v19, "bearerBitmask":I
    const/16 v20, 0x0

    #@58
    .line 197
    .local v20, "profileId":I
    const/16 v21, 0x0

    #@5a
    .line 198
    .local v21, "modemCognitive":Z
    const/16 v22, 0x0

    #@5c
    .line 199
    .local v22, "maxConns":I
    const/16 v23, 0x0

    #@5e
    .line 200
    .local v23, "waitTime":I
    const/16 v24, 0x0

    #@60
    .line 201
    .local v24, "maxConnsTime":I
    const/16 v25, 0x0

    #@62
    .line 202
    .local v25, "mtu":I
    const-string/jumbo v26, ""

    #@65
    .line 203
    .local v26, "mvnoType":Ljava/lang/String;
    const-string/jumbo v27, ""

    #@68
    .line 204
    .local v27, "mvnoMatchData":Ljava/lang/String;
    const/4 v1, 0x1

    #@69
    move/from16 v0, v30

    #@6b
    if-ne v0, v1, :cond_5

    #@6d
    .line 205
    move-object/from16 v0, v28

    #@6f
    array-length v1, v0

    #@70
    add-int/lit8 v1, v1, -0xd

    #@72
    new-array v14, v1, [Ljava/lang/String;

    #@74
    .line 206
    .local v14, "typeArray":[Ljava/lang/String;
    move-object/from16 v0, v28

    #@76
    array-length v1, v0

    #@77
    add-int/lit8 v1, v1, -0xd

    #@79
    const/16 v2, 0xd

    #@7b
    const/4 v3, 0x0

    #@7c
    move-object/from16 v0, v28

    #@7e
    invoke-static {v0, v2, v14, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@81
    .line 207
    const-string/jumbo v15, "IP"

    #@84
    .line 208
    .local v15, "protocol":Ljava/lang/String;
    const-string/jumbo v16, "IP"

    #@87
    .line 209
    .local v16, "roamingProtocol":Ljava/lang/String;
    const/16 v17, 0x1

    #@89
    .line 243
    .end local v21    # "modemCognitive":Z
    :cond_4
    :goto_2
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@8b
    new-instance v2, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const/16 v3, 0xa

    #@92
    aget-object v3, v28, v3

    #@94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v2

    #@98
    const/16 v3, 0xb

    #@9a
    aget-object v3, v28, v3

    #@9c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v3

    #@a4
    const/4 v2, 0x0

    #@a5
    aget-object v4, v28, v2

    #@a7
    const/4 v2, 0x1

    #@a8
    aget-object v5, v28, v2

    #@aa
    const/4 v2, 0x2

    #@ab
    aget-object v6, v28, v2

    #@ad
    const/4 v2, 0x3

    #@ae
    aget-object v7, v28, v2

    #@b0
    const/4 v2, 0x7

    #@b1
    aget-object v8, v28, v2

    #@b3
    const/16 v2, 0x8

    #@b5
    aget-object v9, v28, v2

    #@b7
    .line 244
    const/16 v2, 0x9

    #@b9
    aget-object v10, v28, v2

    #@bb
    const/4 v2, 0x4

    #@bc
    aget-object v11, v28, v2

    #@be
    const/4 v2, 0x5

    #@bf
    aget-object v12, v28, v2

    #@c1
    .line 243
    const/4 v2, -0x1

    #@c2
    .line 244
    const/16 v18, 0x0

    #@c4
    .line 243
    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    #@c7
    return-object v1

    #@c8
    .line 188
    .end local v13    # "authType":I
    .end local v14    # "typeArray":[Ljava/lang/String;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "roamingProtocol":Ljava/lang/String;
    .end local v19    # "bearerBitmask":I
    .end local v20    # "profileId":I
    .end local v22    # "maxConns":I
    .end local v23    # "waitTime":I
    .end local v24    # "maxConnsTime":I
    .end local v25    # "mtu":I
    .end local v26    # "mvnoType":Ljava/lang/String;
    .end local v27    # "mvnoMatchData":Ljava/lang/String;
    :catch_0
    move-exception v29

    #@c9
    .line 189
    .local v29, "e":Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    #@ca
    .restart local v13    # "authType":I
    goto :goto_1

    #@cb
    .line 211
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "bearerBitmask":I
    .restart local v20    # "profileId":I
    .restart local v21    # "modemCognitive":Z
    .restart local v22    # "maxConns":I
    .restart local v23    # "waitTime":I
    .restart local v24    # "maxConnsTime":I
    .restart local v25    # "mtu":I
    .restart local v26    # "mvnoType":Ljava/lang/String;
    .restart local v27    # "mvnoMatchData":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v28

    #@cd
    array-length v1, v0

    #@ce
    const/16 v2, 0x12

    #@d0
    if-ge v1, v2, :cond_6

    #@d2
    .line 212
    const/4 v1, 0x0

    #@d3
    return-object v1

    #@d4
    .line 214
    :cond_6
    const/16 v1, 0xd

    #@d6
    aget-object v1, v28, v1

    #@d8
    const-string/jumbo v2, "\\s*\\|\\s*"

    #@db
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@de
    move-result-object v14

    #@df
    .line 215
    .restart local v14    # "typeArray":[Ljava/lang/String;
    const/16 v1, 0xe

    #@e1
    aget-object v15, v28, v1

    #@e3
    .line 216
    .restart local v15    # "protocol":Ljava/lang/String;
    const/16 v1, 0xf

    #@e5
    aget-object v16, v28, v1

    #@e7
    .line 217
    .restart local v16    # "roamingProtocol":Ljava/lang/String;
    const/16 v1, 0x10

    #@e9
    aget-object v1, v28, v1

    #@eb
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@ee
    move-result v17

    #@ef
    .line 219
    .local v17, "carrierEnabled":Z
    const/16 v1, 0x11

    #@f1
    aget-object v1, v28, v1

    #@f3
    invoke-static {v1}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    #@f6
    move-result v19

    #@f7
    .line 221
    move-object/from16 v0, v28

    #@f9
    array-length v1, v0

    #@fa
    const/16 v2, 0x16

    #@fc
    if-le v1, v2, :cond_7

    #@fe
    .line 222
    const/16 v1, 0x13

    #@100
    aget-object v1, v28, v1

    #@102
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@105
    move-result v21

    #@106
    .line 224
    .local v21, "modemCognitive":Z
    const/16 v1, 0x12

    #@108
    :try_start_1
    aget-object v1, v28, v1

    #@10a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10d
    move-result v20

    #@10e
    .line 225
    const/16 v1, 0x14

    #@110
    aget-object v1, v28, v1

    #@112
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@115
    move-result v22

    #@116
    .line 226
    const/16 v1, 0x15

    #@118
    aget-object v1, v28, v1

    #@11a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@11d
    move-result v23

    #@11e
    .line 227
    const/16 v1, 0x16

    #@120
    aget-object v1, v28, v1

    #@122
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    #@125
    move-result v24

    #@126
    .line 231
    .end local v21    # "modemCognitive":Z
    :cond_7
    :goto_3
    move-object/from16 v0, v28

    #@128
    array-length v1, v0

    #@129
    const/16 v2, 0x17

    #@12b
    if-le v1, v2, :cond_8

    #@12d
    .line 233
    const/16 v1, 0x17

    #@12f
    :try_start_2
    aget-object v1, v28, v1

    #@131
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    #@134
    move-result v25

    #@135
    .line 237
    :cond_8
    :goto_4
    move-object/from16 v0, v28

    #@137
    array-length v1, v0

    #@138
    const/16 v2, 0x19

    #@13a
    if-le v1, v2, :cond_4

    #@13c
    .line 238
    const/16 v1, 0x18

    #@13e
    aget-object v26, v28, v1

    #@140
    .line 239
    const/16 v1, 0x19

    #@142
    aget-object v27, v28, v1

    #@144
    goto/16 :goto_2

    #@146
    .line 234
    :catch_1
    move-exception v29

    #@147
    .restart local v29    # "e":Ljava/lang/NumberFormatException;
    goto :goto_4

    #@148
    .line 228
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "modemCognitive":Z
    :catch_2
    move-exception v29

    #@149
    .restart local v29    # "e":Ljava/lang/NumberFormatException;
    goto :goto_3
.end method

.method private static imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "imsiDB"    # Ljava/lang/String;
    .param p1, "imsiSIM"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    .line 337
    .local v3, "len":I
    const/4 v2, 0x0

    #@6
    .line 339
    .local v2, "idxCompare":I
    if-gtz v3, :cond_0

    #@8
    return v5

    #@9
    .line 340
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v4

    #@d
    if-le v3, v4, :cond_1

    #@f
    return v5

    #@10
    .line 342
    :cond_1
    const/4 v1, 0x0

    #@11
    .local v1, "idx":I
    :goto_0
    if-ge v1, v3, :cond_4

    #@13
    .line 343
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 344
    .local v0, "c":C
    const/16 v4, 0x78

    #@19
    if-eq v0, v4, :cond_2

    #@1b
    const/16 v4, 0x58

    #@1d
    if-ne v0, v4, :cond_3

    #@1f
    .line 342
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 344
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v4

    #@26
    if-eq v0, v4, :cond_2

    #@28
    .line 347
    return v5

    #@29
    .line 350
    .end local v0    # "c":C
    :cond_4
    const/4 v4, 0x1

    #@2a
    return v4
.end method

.method public static mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p1, "mvnoType"    # Ljava/lang/String;
    .param p2, "mvnoMatchData"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 354
    const-string/jumbo v3, "spn"

    #@5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 355
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v3

    #@19
    .line 355
    if-eqz v3, :cond_2

    #@1b
    .line 357
    return v4

    #@1c
    .line 359
    :cond_0
    const-string/jumbo v3, "imsi"

    #@1f
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 360
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 361
    .local v1, "imsiSIM":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@2b
    invoke-static {p2, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_2

    #@31
    .line 362
    return v4

    #@32
    .line 364
    .end local v1    # "imsiSIM":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "gid"

    #@35
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_2

    #@3b
    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .line 366
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@42
    move-result v2

    #@43
    .line 367
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_2

    #@45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@48
    move-result v3

    #@49
    if-lt v3, v2, :cond_2

    #@4b
    .line 368
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@52
    move-result v3

    #@53
    .line 367
    if-eqz v3, :cond_2

    #@55
    .line 369
    return v4

    #@56
    .line 372
    .end local v0    # "gid1":Ljava/lang/String;
    .end local v2    # "mvno_match_data_length":I
    :cond_2
    return v5
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 316
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    return v2

    #@6
    .line 317
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@8
    array-length v4, v3

    #@9
    move v1, v2

    #@a
    :goto_0
    if-ge v1, v4, :cond_3

    #@c
    aget-object v0, v3, v1

    #@e
    .line 319
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v5

    #@12
    if-nez v5, :cond_1

    #@14
    .line 320
    const-string/jumbo v5, "*"

    #@17
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1a
    move-result v5

    #@1b
    .line 319
    if-nez v5, :cond_1

    #@1d
    .line 321
    const-string/jumbo v5, "default"

    #@20
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2

    #@26
    .line 322
    const-string/jumbo v5, "hipri"

    #@29
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2c
    move-result v5

    #@2d
    .line 319
    if-eqz v5, :cond_2

    #@2f
    .line 323
    :cond_1
    const/4 v1, 0x1

    #@30
    return v1

    #@31
    .line 317
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 326
    .end local v0    # "t":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 379
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public hasMvnoParams()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 312
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 275
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[ApnSettingV3] "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    .line 276
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    #@e
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    .line 277
    const-string/jumbo v3, ", "

    #@15
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 277
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@1b
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 278
    const-string/jumbo v3, ", "

    #@22
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 278
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@28
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 279
    const-string/jumbo v3, ", "

    #@2f
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 279
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@35
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 280
    const-string/jumbo v3, ", "

    #@3c
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    .line 280
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@42
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    .line 281
    const-string/jumbo v3, ", "

    #@49
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 281
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@4f
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    .line 282
    const-string/jumbo v3, ", "

    #@56
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    .line 282
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@5c
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 283
    const-string/jumbo v3, ", "

    #@63
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    .line 283
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@69
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    .line 284
    const-string/jumbo v3, ", "

    #@70
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    .line 284
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@76
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    .line 285
    const-string/jumbo v3, ", "

    #@7d
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    .line 285
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@83
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    .line 285
    const-string/jumbo v3, ", "

    #@8a
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    .line 286
    const/4 v0, 0x0

    #@8e
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@90
    array-length v2, v2

    #@91
    if-ge v0, v2, :cond_1

    #@93
    .line 287
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@95
    aget-object v2, v2, v0

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    .line 288
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@9c
    array-length v2, v2

    #@9d
    add-int/lit8 v2, v2, -0x1

    #@9f
    if-ge v0, v2, :cond_0

    #@a1
    .line 289
    const-string/jumbo v2, " | "

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    .line 286
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@a9
    goto :goto_0

    #@aa
    .line 292
    :cond_1
    const-string/jumbo v2, ", "

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@b3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    .line 293
    const-string/jumbo v2, ", "

    #@b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@bf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    .line 294
    const-string/jumbo v2, ", "

    #@c5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v2

    #@c9
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@cb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ce
    .line 295
    const-string/jumbo v2, ", "

    #@d1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v2

    #@d5
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    #@d7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@da
    .line 296
    const-string/jumbo v2, ", "

    #@dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v2

    #@e1
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@e3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e6
    .line 297
    const-string/jumbo v2, ", "

    #@e9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v2

    #@ed
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@ef
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f2
    .line 298
    const-string/jumbo v2, ", "

    #@f5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v2

    #@f9
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@fb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@fe
    .line 299
    const-string/jumbo v2, ", "

    #@101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v2

    #@105
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    #@107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10a
    .line 300
    const-string/jumbo v2, ", "

    #@10d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v2

    #@111
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    #@113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@116
    .line 301
    const-string/jumbo v2, ", "

    #@119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v2

    #@11d
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    #@11f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@122
    .line 302
    const-string/jumbo v2, ", "

    #@125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v2

    #@129
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@12b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12e
    .line 303
    const-string/jumbo v2, ", "

    #@131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v2

    #@135
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    .line 304
    const-string/jumbo v2, ", "

    #@13d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v2

    #@141
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v2

    #@14a
    return-object v2
.end method
