.class public Lcom/android/internal/telephony/dataconnection/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# static fields
.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "ApnSetting"

.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"

.field static final V3_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV3\\]\\s*"

.field private static sMeteredApnTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sMeteredRoamingApnTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


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

.field public permanentFailed:Z

.field public final port:Ljava/lang/String;

.field public final profileId:I

.field public final protocol:Ljava/lang/String;

.field public final proxy:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public final types:[Ljava/lang/String;

.field public final user:Ljava/lang/String;

.field public final waitTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 119
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->sMeteredApnTypes:Ljava/util/HashMap;

    #@7
    .line 125
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->sMeteredRoamingApnTypes:Ljava/util/HashMap;

    #@e
    .line 40
    return-void
.end method

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
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    const/4 v2, 0x0

    #@4
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    #@6
    .line 134
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@8
    .line 135
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@a
    .line 136
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    #@c
    .line 137
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@e
    .line 138
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@10
    .line 139
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@12
    .line 140
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@14
    .line 141
    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@16
    .line 142
    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@18
    .line 143
    iput-object p10, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@1a
    .line 144
    move-object/from16 v0, p11

    #@1c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@1e
    .line 145
    move/from16 v0, p12

    #@20
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@22
    .line 146
    move-object/from16 v0, p13

    #@24
    array-length v2, v0

    #@25
    new-array v2, v2, [Ljava/lang/String;

    #@27
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@29
    .line 147
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    move-object/from16 v0, p13

    #@2c
    array-length v2, v0

    #@2d
    if-ge v1, v2, :cond_0

    #@2f
    .line 148
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@31
    aget-object v3, p13, v1

    #@33
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    aput-object v3, v2, v1

    #@3b
    .line 147
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 150
    :cond_0
    move-object/from16 v0, p14

    #@40
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@42
    .line 151
    move-object/from16 v0, p15

    #@44
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@46
    .line 152
    move/from16 v0, p16

    #@48
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@4a
    .line 153
    move/from16 v0, p17

    #@4c
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    #@4e
    .line 154
    invoke-static/range {p17 .. p17}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    #@51
    move-result v2

    #@52
    or-int v2, v2, p18

    #@54
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@56
    .line 155
    move/from16 v0, p19

    #@58
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@5a
    .line 156
    move/from16 v0, p20

    #@5c
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@5e
    .line 157
    move/from16 v0, p21

    #@60
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    #@62
    .line 158
    move/from16 v0, p22

    #@64
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    #@66
    .line 159
    move/from16 v0, p23

    #@68
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    #@6a
    .line 160
    move/from16 v0, p24

    #@6c
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@6e
    .line 161
    move-object/from16 v0, p25

    #@70
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@72
    .line 162
    move-object/from16 v0, p26

    #@74
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@76
    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 28
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    .line 167
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@4
    move-object/from16 v0, p1

    #@6
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@8
    move-object/from16 v0, p1

    #@a
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    #@c
    move-object/from16 v0, p1

    #@e
    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@10
    move-object/from16 v0, p1

    #@12
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@14
    move-object/from16 v0, p1

    #@16
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@18
    move-object/from16 v0, p1

    #@1a
    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@1c
    move-object/from16 v0, p1

    #@1e
    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@20
    .line 168
    move-object/from16 v0, p1

    #@22
    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@24
    move-object/from16 v0, p1

    #@26
    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@28
    move-object/from16 v0, p1

    #@2a
    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@2c
    move-object/from16 v0, p1

    #@2e
    iget v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@30
    move-object/from16 v0, p1

    #@32
    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@34
    move-object/from16 v0, p1

    #@36
    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@38
    .line 169
    move-object/from16 v0, p1

    #@3a
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@3c
    move-object/from16 v16, v0

    #@3e
    move-object/from16 v0, p1

    #@40
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@42
    move/from16 v17, v0

    #@44
    move-object/from16 v0, p1

    #@46
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    #@48
    move/from16 v18, v0

    #@4a
    move-object/from16 v0, p1

    #@4c
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@4e
    move/from16 v19, v0

    #@50
    .line 170
    move-object/from16 v0, p1

    #@52
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@54
    move/from16 v20, v0

    #@56
    move-object/from16 v0, p1

    #@58
    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@5a
    move/from16 v21, v0

    #@5c
    move-object/from16 v0, p1

    #@5e
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    #@60
    move/from16 v22, v0

    #@62
    move-object/from16 v0, p1

    #@64
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    #@66
    move/from16 v23, v0

    #@68
    move-object/from16 v0, p1

    #@6a
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    #@6c
    move/from16 v24, v0

    #@6e
    .line 171
    move-object/from16 v0, p1

    #@70
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@72
    move/from16 v25, v0

    #@74
    move-object/from16 v0, p1

    #@76
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@78
    move-object/from16 v26, v0

    #@7a
    move-object/from16 v0, p1

    #@7c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@7e
    move-object/from16 v27, v0

    #@80
    move-object/from16 v1, p0

    #@82
    .line 167
    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    #@85
    .line 166
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
    .line 295
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 296
    .local v3, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 297
    return-object v3

    #@c
    .line 299
    :cond_0
    const-string/jumbo v4, "\\s*;\\s*"

    #@f
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 300
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
    .line 301
    .local v1, "apnString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1c
    move-result-object v0

    #@1d
    .line 302
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_1

    #@1f
    .line 303
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 300
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_0

    #@25
    .line 306
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
    .line 203
    if-nez p0, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 207
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
    .line 208
    const/16 v30, 0x3

    #@11
    .line 209
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
    .line 217
    :goto_0
    const-string/jumbo v1, "\\s*,\\s*"

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@25
    move-result-object v28

    #@26
    .line 218
    .local v28, "a":[Ljava/lang/String;
    move-object/from16 v0, v28

    #@28
    array-length v1, v0

    #@29
    const/16 v2, 0xe

    #@2b
    if-ge v1, v2, :cond_3

    #@2d
    .line 219
    const/4 v1, 0x0

    #@2e
    return-object v1

    #@2f
    .line 210
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
    .line 211
    const/16 v30, 0x2

    #@3c
    .line 212
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
    .line 214
    .end local v30    # "version":I
    :cond_2
    const/16 v30, 0x1

    #@4b
    .restart local v30    # "version":I
    goto :goto_0

    #@4c
    .line 224
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
    .line 232
    .local v13, "authType":I
    :goto_1
    const/16 v19, 0x0

    #@56
    .line 233
    .local v19, "bearerBitmask":I
    const/16 v20, 0x0

    #@58
    .line 234
    .local v20, "profileId":I
    const/16 v21, 0x0

    #@5a
    .line 235
    .local v21, "modemCognitive":Z
    const/16 v22, 0x0

    #@5c
    .line 236
    .local v22, "maxConns":I
    const/16 v23, 0x0

    #@5e
    .line 237
    .local v23, "waitTime":I
    const/16 v24, 0x0

    #@60
    .line 238
    .local v24, "maxConnsTime":I
    const/16 v25, 0x0

    #@62
    .line 239
    .local v25, "mtu":I
    const-string/jumbo v26, ""

    #@65
    .line 240
    .local v26, "mvnoType":Ljava/lang/String;
    const-string/jumbo v27, ""

    #@68
    .line 241
    .local v27, "mvnoMatchData":Ljava/lang/String;
    const/4 v1, 0x1

    #@69
    move/from16 v0, v30

    #@6b
    if-ne v0, v1, :cond_5

    #@6d
    .line 242
    move-object/from16 v0, v28

    #@6f
    array-length v1, v0

    #@70
    add-int/lit8 v1, v1, -0xd

    #@72
    new-array v14, v1, [Ljava/lang/String;

    #@74
    .line 243
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
    .line 244
    const-string/jumbo v15, "IP"

    #@84
    .line 245
    .local v15, "protocol":Ljava/lang/String;
    const-string/jumbo v16, "IP"

    #@87
    .line 246
    .local v16, "roamingProtocol":Ljava/lang/String;
    const/16 v17, 0x1

    #@89
    .line 280
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
    .line 281
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
    .line 280
    const/4 v2, -0x1

    #@c2
    .line 281
    const/16 v18, 0x0

    #@c4
    .line 280
    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    #@c7
    return-object v1

    #@c8
    .line 225
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
    .line 226
    .local v29, "e":Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    #@ca
    .restart local v13    # "authType":I
    goto :goto_1

    #@cb
    .line 248
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
    .line 249
    const/4 v1, 0x0

    #@d3
    return-object v1

    #@d4
    .line 251
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
    .line 252
    .restart local v14    # "typeArray":[Ljava/lang/String;
    const/16 v1, 0xe

    #@e1
    aget-object v15, v28, v1

    #@e3
    .line 253
    .restart local v15    # "protocol":Ljava/lang/String;
    const/16 v1, 0xf

    #@e5
    aget-object v16, v28, v1

    #@e7
    .line 254
    .restart local v16    # "roamingProtocol":Ljava/lang/String;
    const/16 v1, 0x10

    #@e9
    aget-object v1, v28, v1

    #@eb
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@ee
    move-result v17

    #@ef
    .line 256
    .local v17, "carrierEnabled":Z
    const/16 v1, 0x11

    #@f1
    aget-object v1, v28, v1

    #@f3
    invoke-static {v1}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    #@f6
    move-result v19

    #@f7
    .line 258
    move-object/from16 v0, v28

    #@f9
    array-length v1, v0

    #@fa
    const/16 v2, 0x16

    #@fc
    if-le v1, v2, :cond_7

    #@fe
    .line 259
    const/16 v1, 0x13

    #@100
    aget-object v1, v28, v1

    #@102
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@105
    move-result v21

    #@106
    .line 261
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
    .line 262
    const/16 v1, 0x14

    #@110
    aget-object v1, v28, v1

    #@112
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@115
    move-result v22

    #@116
    .line 263
    const/16 v1, 0x15

    #@118
    aget-object v1, v28, v1

    #@11a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@11d
    move-result v23

    #@11e
    .line 264
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
    .line 268
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
    .line 270
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
    .line 274
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
    .line 275
    const/16 v1, 0x18

    #@13e
    aget-object v26, v28, v1

    #@140
    .line 276
    const/16 v1, 0x19

    #@142
    aget-object v27, v28, v1

    #@144
    goto/16 :goto_2

    #@146
    .line 271
    :catch_1
    move-exception v29

    #@147
    .restart local v29    # "e":Ljava/lang/NumberFormatException;
    goto :goto_4

    #@148
    .line 265
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
    .line 374
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    .line 375
    .local v3, "len":I
    const/4 v2, 0x0

    #@6
    .line 377
    .local v2, "idxCompare":I
    if-gtz v3, :cond_0

    #@8
    return v5

    #@9
    .line 378
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v4

    #@d
    if-le v3, v4, :cond_1

    #@f
    return v5

    #@10
    .line 380
    :cond_1
    const/4 v1, 0x0

    #@11
    .local v1, "idx":I
    :goto_0
    if-ge v1, v3, :cond_4

    #@13
    .line 381
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 382
    .local v0, "c":C
    const/16 v4, 0x78

    #@19
    if-eq v0, v4, :cond_2

    #@1b
    const/16 v4, 0x58

    #@1d
    if-ne v0, v4, :cond_3

    #@1f
    .line 380
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 382
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v4

    #@26
    if-eq v0, v4, :cond_2

    #@28
    .line 385
    return v5

    #@29
    .line 388
    .end local v0    # "c":C
    :cond_4
    const/4 v4, 0x1

    #@2a
    return v4
.end method

.method public static isMeteredApnType(Ljava/lang/String;Landroid/content/Context;IZ)Z
    .locals 10
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "isRoaming"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 416
    if-eqz p3, :cond_0

    #@4
    .line 417
    sget-object v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->sMeteredApnTypes:Ljava/util/HashMap;

    #@6
    .line 418
    .local v5, "meteredApnTypesCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :goto_0
    if-eqz p3, :cond_1

    #@8
    .line 419
    const-string/jumbo v1, "carrier_metered_roaming_apn_types_strings"

    #@b
    .line 422
    .local v1, "carrierConfig":Ljava/lang/String;
    :goto_1
    monitor-enter v5

    #@c
    .line 423
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Ljava/util/HashSet;

    #@16
    .line 426
    .local v3, "meteredApnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v3, :cond_5

    #@18
    .line 429
    const-string/jumbo v6, "carrier_config"

    #@1b
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    .line 428
    check-cast v2, Landroid/telephony/CarrierConfigManager;

    #@21
    .line 430
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v2, :cond_2

    #@23
    .line 431
    const-string/jumbo v6, "ApnSetting"

    #@26
    const-string/jumbo v7, "Carrier config service is not available"

    #@29
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v5

    #@2d
    .line 432
    return v9

    #@2e
    .line 417
    .end local v1    # "carrierConfig":Ljava/lang/String;
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v3    # "meteredApnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "meteredApnTypesCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->sMeteredRoamingApnTypes:Ljava/util/HashMap;

    #@30
    .restart local v5    # "meteredApnTypesCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    goto :goto_0

    #@31
    .line 420
    :cond_1
    const-string/jumbo v1, "carrier_metered_apn_types_strings"

    #@34
    .restart local v1    # "carrierConfig":Ljava/lang/String;
    goto :goto_1

    #@35
    .line 435
    .restart local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v3    # "meteredApnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@38
    move-result-object v0

    #@39
    .line 436
    .local v0, "b":Landroid/os/PersistableBundle;
    if-nez v0, :cond_3

    #@3b
    .line 437
    const-string/jumbo v6, "ApnSetting"

    #@3e
    new-instance v7, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v8, "Can\'t get the config. subId = "

    #@46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    monitor-exit v5

    #@56
    .line 438
    return v9

    #@57
    .line 441
    :cond_3
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    .line 442
    .local v4, "meteredApnTypes":[Ljava/lang/String;
    if-nez v4, :cond_4

    #@5d
    .line 443
    const-string/jumbo v6, "ApnSetting"

    #@60
    new-instance v7, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v7

    #@69
    const-string/jumbo v8, " is not available. "

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    const-string/jumbo v8, "subId = "

    #@73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v7

    #@7f
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@82
    monitor-exit v5

    #@83
    .line 444
    return v9

    #@84
    .line 447
    :cond_4
    :try_start_3
    new-instance v3, Ljava/util/HashSet;

    #@86
    .end local v3    # "meteredApnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@89
    move-result-object v6

    #@8a
    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@8d
    .line 448
    .restart local v3    # "meteredApnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@90
    move-result-object v6

    #@91
    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    .line 456
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v4    # "meteredApnTypes":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "*"

    #@97
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9a
    move-result v6

    #@9b
    if-eqz v6, :cond_6

    #@9d
    monitor-exit v5

    #@9e
    .line 458
    return v9

    #@9f
    .line 461
    :cond_6
    :try_start_4
    invoke-virtual {v3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a2
    move-result v6

    #@a3
    if-eqz v6, :cond_7

    #@a5
    monitor-exit v5

    #@a6
    .line 463
    return v9

    #@a7
    .line 464
    :cond_7
    :try_start_5
    const-string/jumbo v6, "*"

    #@aa
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v6

    #@ae
    if-eqz v6, :cond_8

    #@b0
    .line 467
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b3
    move-result v6

    #@b4
    if-lez v6, :cond_8

    #@b6
    monitor-exit v5

    #@b7
    .line 470
    return v9

    #@b8
    :cond_8
    monitor-exit v5

    #@b9
    .line 475
    return v7

    #@ba
    .line 422
    .end local v3    # "meteredApnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    #@bb
    monitor-exit v5

    #@bc
    throw v6
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
    .line 392
    const-string/jumbo v3, "spn"

    #@5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 393
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 394
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v3

    #@19
    .line 393
    if-eqz v3, :cond_2

    #@1b
    .line 395
    return v4

    #@1c
    .line 397
    :cond_0
    const-string/jumbo v3, "imsi"

    #@1f
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 398
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 399
    .local v1, "imsiSIM":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@2b
    invoke-static {p2, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_2

    #@31
    .line 400
    return v4

    #@32
    .line 402
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
    .line 403
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .line 404
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@42
    move-result v2

    #@43
    .line 405
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_2

    #@45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@48
    move-result v3

    #@49
    if-lt v3, v2, :cond_2

    #@4b
    .line 406
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@52
    move-result v3

    #@53
    .line 405
    if-eqz v3, :cond_2

    #@55
    .line 407
    return v4

    #@56
    .line 410
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
    .line 354
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    return v2

    #@6
    .line 355
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
    .line 357
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v5

    #@12
    if-nez v5, :cond_1

    #@14
    .line 358
    const-string/jumbo v5, "*"

    #@17
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1a
    move-result v5

    #@1b
    .line 357
    if-nez v5, :cond_1

    #@1d
    .line 359
    const-string/jumbo v5, "default"

    #@20
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2

    #@26
    .line 360
    const-string/jumbo v5, "hipri"

    #@29
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2c
    move-result v5

    #@2d
    .line 357
    if-eqz v5, :cond_2

    #@2f
    .line 361
    :cond_1
    const/4 v1, 0x1

    #@30
    return v1

    #@31
    .line 355
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 364
    .end local v0    # "t":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 495
    instance-of v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 496
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 499
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@9
    .line 501
    .local v0, "other":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    #@b
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 502
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@15
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@17
    if-ne v2, v3, :cond_1

    #@19
    .line 503
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@1b
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    .line 501
    if-eqz v2, :cond_1

    #@23
    .line 504
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@25
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    .line 501
    if-eqz v2, :cond_1

    #@2d
    .line 505
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@2f
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    .line 501
    if-eqz v2, :cond_1

    #@37
    .line 506
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@39
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v2

    #@3f
    .line 501
    if-eqz v2, :cond_1

    #@41
    .line 507
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@43
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v2

    #@49
    .line 501
    if-eqz v2, :cond_1

    #@4b
    .line 508
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@4d
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v2

    #@53
    .line 501
    if-eqz v2, :cond_1

    #@55
    .line 509
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@57
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@59
    if-ne v2, v3, :cond_1

    #@5b
    .line 510
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@5d
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@5f
    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@62
    move-result v2

    #@63
    .line 501
    if-eqz v2, :cond_1

    #@65
    .line 511
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@67
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v2

    #@6d
    .line 501
    if-eqz v2, :cond_1

    #@6f
    .line 512
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@71
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v2

    #@77
    .line 501
    if-eqz v2, :cond_1

    #@79
    .line 513
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@7b
    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@7d
    if-ne v2, v3, :cond_1

    #@7f
    .line 514
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    #@81
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    #@83
    if-ne v2, v3, :cond_1

    #@85
    .line 515
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@87
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@89
    if-ne v2, v3, :cond_1

    #@8b
    .line 516
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@8d
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@8f
    if-ne v2, v3, :cond_1

    #@91
    .line 517
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@93
    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    #@95
    if-ne v2, v3, :cond_1

    #@97
    .line 518
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    #@99
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    #@9b
    if-ne v2, v3, :cond_1

    #@9d
    .line 519
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    #@9f
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    #@a1
    if-ne v2, v3, :cond_1

    #@a3
    .line 520
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    #@a5
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    #@a7
    if-ne v2, v3, :cond_1

    #@a9
    .line 521
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@ab
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@ad
    if-ne v2, v3, :cond_1

    #@af
    .line 522
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@b1
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    #@b3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b6
    move-result v2

    #@b7
    .line 501
    if-eqz v2, :cond_1

    #@b9
    .line 523
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@bb
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    #@bd
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v1

    #@c1
    .line 501
    :cond_1
    return v1
.end method

.method public hasMvnoParams()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 350
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

.method public isMetered(Landroid/content/Context;IZ)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "isRoaming"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 479
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@3
    array-length v4, v3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v4, :cond_1

    #@7
    aget-object v0, v3, v1

    #@9
    .line 481
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMeteredApnType(Ljava/lang/String;Landroid/content/Context;IZ)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 484
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 479
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 488
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 312
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[ApnSettingV3] "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    .line 313
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    #@e
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    .line 314
    const-string/jumbo v3, ", "

    #@15
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 314
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    #@1b
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 315
    const-string/jumbo v3, ", "

    #@22
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 315
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    #@28
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 316
    const-string/jumbo v3, ", "

    #@2f
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 316
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@35
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 317
    const-string/jumbo v3, ", "

    #@3c
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    .line 317
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@42
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    .line 318
    const-string/jumbo v3, ", "

    #@49
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 318
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    #@4f
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    .line 319
    const-string/jumbo v3, ", "

    #@56
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    .line 319
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@5c
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 320
    const-string/jumbo v3, ", "

    #@63
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    .line 320
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    #@69
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    .line 321
    const-string/jumbo v3, ", "

    #@70
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    .line 321
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@76
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    .line 322
    const-string/jumbo v3, ", "

    #@7d
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    .line 322
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@83
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    .line 322
    const-string/jumbo v3, ", "

    #@8a
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    .line 323
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
    .line 324
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@95
    aget-object v2, v2, v0

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    .line 325
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@9c
    array-length v2, v2

    #@9d
    add-int/lit8 v2, v2, -0x1

    #@9f
    if-ge v0, v2, :cond_0

    #@a1
    .line 326
    const-string/jumbo v2, " | "

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@a9
    goto :goto_0

    #@aa
    .line 329
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
    .line 330
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
    .line 331
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
    .line 332
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
    .line 333
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
    .line 334
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
    .line 335
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
    .line 336
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
    .line 337
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
    .line 338
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
    .line 339
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
    .line 340
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
    .line 341
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
    .line 342
    const-string/jumbo v2, ", "

    #@149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v2

    #@14d
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    #@14f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@152
    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v2

    #@156
    return-object v2
.end method
