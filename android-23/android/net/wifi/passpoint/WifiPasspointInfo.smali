.class public Landroid/net/wifi/passpoint/WifiPasspointInfo;
.super Ljava/lang/Object;
.source "WifiPasspointInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$1;
    }
.end annotation


# static fields
.field public static final ANQP_CAPABILITY:I = 0x1

.field public static final CELLULAR_NETWORK:I = 0x40

.field public static final CONNECTION_CAPABILITY:I = 0x800

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOMAIN_NAME:I = 0x80

.field public static final HOTSPOT_CAPABILITY:I = 0x100

.field public static final IP_ADDR_TYPE_AVAILABILITY:I = 0x10

.field public static final NAI_REALM:I = 0x20

.field public static final NETWORK_AUTH_TYPE:I = 0x4

.field public static final OPERATOR_FRIENDLY_NAME:I = 0x200

.field public static final OSU_PROVIDER:I = 0x1000

.field public static final PRESET_ALL:I = 0x1fff

.field public static final PRESET_CRED_MATCH:I = 0x1e1

.field public static final ROAMING_CONSORTIUM:I = 0x8

.field public static final VENUE_NAME:I = 0x2

.field public static final WAN_METRICS:I = 0x400


# instance fields
.field public bssid:Ljava/lang/String;

.field public cellularNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public connectionCapabilityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;",
            ">;"
        }
    .end annotation
.end field

.field public domainNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

.field public naiRealmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;",
            ">;"
        }
    .end annotation
.end field

.field public networkAuthTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;",
            ">;"
        }
    .end annotation
.end field

.field public operatorFriendlyName:Ljava/lang/String;

.field public osuProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;",
            ">;"
        }
    .end annotation
.end field

.field public roamingConsortiumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public venueName:Ljava/lang/String;

.field public wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 454
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;-><init>()V

    #@5
    .line 453
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static toAnqpSubtypes(I)Ljava/lang/String;
    .locals 2
    .param p0, "mask"    # I

    #@0
    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 254
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 255
    const-string/jumbo v1, "257,"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 256
    :cond_0
    and-int/lit8 v1, p0, 0x2

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 257
    const-string/jumbo v1, "258,"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 258
    :cond_1
    and-int/lit8 v1, p0, 0x4

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 259
    const-string/jumbo v1, "260,"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 260
    :cond_2
    and-int/lit8 v1, p0, 0x8

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 261
    const-string/jumbo v1, "261,"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 262
    :cond_3
    and-int/lit8 v1, p0, 0x10

    #@2f
    if-eqz v1, :cond_4

    #@31
    .line 263
    const-string/jumbo v1, "262,"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 264
    :cond_4
    and-int/lit8 v1, p0, 0x20

    #@39
    if-eqz v1, :cond_5

    #@3b
    .line 265
    const-string/jumbo v1, "263,"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 266
    :cond_5
    and-int/lit8 v1, p0, 0x40

    #@43
    if-eqz v1, :cond_6

    #@45
    .line 267
    const-string/jumbo v1, "264,"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 268
    :cond_6
    and-int/lit16 v1, p0, 0x80

    #@4d
    if-eqz v1, :cond_7

    #@4f
    .line 269
    const-string/jumbo v1, "268,"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 270
    :cond_7
    and-int/lit16 v1, p0, 0x100

    #@57
    if-eqz v1, :cond_8

    #@59
    .line 271
    const-string/jumbo v1, "hs20:2,"

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 272
    :cond_8
    and-int/lit16 v1, p0, 0x200

    #@61
    if-eqz v1, :cond_9

    #@63
    .line 273
    const-string/jumbo v1, "hs20:3,"

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 274
    :cond_9
    and-int/lit16 v1, p0, 0x400

    #@6b
    if-eqz v1, :cond_a

    #@6d
    .line 275
    const-string/jumbo v1, "hs20:4,"

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 276
    :cond_a
    and-int/lit16 v1, p0, 0x800

    #@75
    if-eqz v1, :cond_b

    #@77
    .line 277
    const-string/jumbo v1, "hs20:5,"

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 278
    :cond_b
    and-int/lit16 v1, p0, 0x1000

    #@7f
    if-eqz v1, :cond_c

    #@81
    .line 279
    const-string/jumbo v1, "hs20:8,"

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 280
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@8a
    move-result v1

    #@8b
    if-lez v1, :cond_d

    #@8d
    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@90
    move-result v1

    #@91
    add-int/lit8 v1, v1, -0x1

    #@93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@96
    .line 282
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 449
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    #@0
    .prologue
    .line 287
    new-instance v15, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 289
    .local v15, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v16, "BSSID: "

    #@8
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v16

    #@c
    const-string/jumbo v17, "("

    #@f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    move-result-object v16

    #@13
    move-object/from16 v0, p0

    #@15
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    #@17
    move-object/from16 v17, v0

    #@19
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v16

    #@1d
    const-string/jumbo v17, ")"

    #@20
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 291
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    #@27
    move-object/from16 v16, v0

    #@29
    if-eqz v16, :cond_0

    #@2b
    .line 292
    const-string/jumbo v16, " venueName: "

    #@2e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    move-result-object v16

    #@32
    const-string/jumbo v17, "("

    #@35
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    move-result-object v16

    #@39
    .line 293
    move-object/from16 v0, p0

    #@3b
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    #@3d
    move-object/from16 v17, v0

    #@3f
    const-string/jumbo v18, "\n"

    #@42
    const-string/jumbo v19, "\\n"

    #@45
    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@48
    move-result-object v17

    #@49
    .line 292
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    move-result-object v16

    #@4d
    .line 293
    const-string/jumbo v17, ")"

    #@50
    .line 292
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    .line 295
    :cond_0
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    #@57
    move-object/from16 v16, v0

    #@59
    if-eqz v16, :cond_1

    #@5b
    .line 296
    const-string/jumbo v16, " networkAuthType: "

    #@5e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@61
    .line 297
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    #@65
    move-object/from16 v16, v0

    #@67
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v2

    #@6b
    .local v2, "auth$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v16

    #@6f
    if-eqz v16, :cond_1

    #@71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v1

    #@75
    check-cast v1, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;

    #@77
    .line 298
    .local v1, "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    const-string/jumbo v16, "("

    #@7a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7d
    move-result-object v16

    #@7e
    invoke-virtual {v1}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->toString()Ljava/lang/String;

    #@81
    move-result-object v17

    #@82
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@85
    move-result-object v16

    #@86
    const-string/jumbo v17, ")"

    #@89
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8c
    goto :goto_0

    #@8d
    .line 301
    .end local v1    # "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    .end local v2    # "auth$iterator":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    #@91
    move-object/from16 v16, v0

    #@93
    if-eqz v16, :cond_2

    #@95
    .line 302
    const-string/jumbo v16, " roamingConsortium: "

    #@98
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9b
    .line 303
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    #@9f
    move-object/from16 v16, v0

    #@a1
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a4
    move-result-object v8

    #@a5
    .local v8, "oi$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@a8
    move-result v16

    #@a9
    if-eqz v16, :cond_2

    #@ab
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ae
    move-result-object v7

    #@af
    check-cast v7, Ljava/lang/String;

    #@b1
    .line 304
    .local v7, "oi":Ljava/lang/String;
    const-string/jumbo v16, "("

    #@b4
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b7
    move-result-object v16

    #@b8
    move-object/from16 v0, v16

    #@ba
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@bd
    move-result-object v16

    #@be
    const-string/jumbo v17, ")"

    #@c1
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c4
    goto :goto_1

    #@c5
    .line 307
    .end local v7    # "oi":Ljava/lang/String;
    .end local v8    # "oi$iterator":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    #@c7
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    #@c9
    move-object/from16 v16, v0

    #@cb
    if-eqz v16, :cond_3

    #@cd
    .line 308
    const-string/jumbo v16, " ipAddrTypeAvaibility: "

    #@d0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d3
    move-result-object v16

    #@d4
    const-string/jumbo v17, "("

    #@d7
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@da
    move-result-object v16

    #@db
    .line 309
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    #@df
    move-object/from16 v17, v0

    #@e1
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->toString()Ljava/lang/String;

    #@e4
    move-result-object v17

    #@e5
    .line 308
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e8
    move-result-object v16

    #@e9
    .line 309
    const-string/jumbo v17, ")"

    #@ec
    .line 308
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ef
    .line 312
    :cond_3
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    #@f3
    move-object/from16 v16, v0

    #@f5
    if-eqz v16, :cond_4

    #@f7
    .line 313
    const-string/jumbo v16, " naiRealm: "

    #@fa
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@fd
    .line 314
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    #@101
    move-object/from16 v16, v0

    #@103
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@106
    move-result-object v14

    #@107
    .local v14, "realm$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@10a
    move-result v16

    #@10b
    if-eqz v16, :cond_4

    #@10d
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@110
    move-result-object v13

    #@111
    check-cast v13, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;

    #@113
    .line 315
    .local v13, "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    const-string/jumbo v16, "("

    #@116
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@119
    move-result-object v16

    #@11a
    invoke-virtual {v13}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->toString()Ljava/lang/String;

    #@11d
    move-result-object v17

    #@11e
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@121
    move-result-object v16

    #@122
    const-string/jumbo v17, ")"

    #@125
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@128
    goto :goto_2

    #@129
    .line 318
    .end local v13    # "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    .end local v14    # "realm$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    #@12d
    move-object/from16 v16, v0

    #@12f
    if-eqz v16, :cond_5

    #@131
    .line 319
    const-string/jumbo v16, " cellularNetwork: "

    #@134
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@137
    .line 320
    move-object/from16 v0, p0

    #@139
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    #@13b
    move-object/from16 v16, v0

    #@13d
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@140
    move-result-object v12

    #@141
    .local v12, "plmn$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@144
    move-result v16

    #@145
    if-eqz v16, :cond_5

    #@147
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14a
    move-result-object v11

    #@14b
    check-cast v11, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;

    #@14d
    .line 321
    .local v11, "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    const-string/jumbo v16, "("

    #@150
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@153
    move-result-object v16

    #@154
    invoke-virtual {v11}, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->toString()Ljava/lang/String;

    #@157
    move-result-object v17

    #@158
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15b
    move-result-object v16

    #@15c
    const-string/jumbo v17, ")"

    #@15f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@162
    goto :goto_3

    #@163
    .line 324
    .end local v11    # "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    .end local v12    # "plmn$iterator":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    #@165
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    #@167
    move-object/from16 v16, v0

    #@169
    if-eqz v16, :cond_6

    #@16b
    .line 325
    const-string/jumbo v16, " domainName: "

    #@16e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@171
    .line 326
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    #@175
    move-object/from16 v16, v0

    #@177
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17a
    move-result-object v4

    #@17b
    .local v4, "fqdn$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@17e
    move-result v16

    #@17f
    if-eqz v16, :cond_6

    #@181
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@184
    move-result-object v3

    #@185
    check-cast v3, Ljava/lang/String;

    #@187
    .line 327
    .local v3, "fqdn":Ljava/lang/String;
    const-string/jumbo v16, "("

    #@18a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18d
    move-result-object v16

    #@18e
    move-object/from16 v0, v16

    #@190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@193
    move-result-object v16

    #@194
    const-string/jumbo v17, ")"

    #@197
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19a
    goto :goto_4

    #@19b
    .line 330
    .end local v3    # "fqdn":Ljava/lang/String;
    .end local v4    # "fqdn$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    #@19f
    move-object/from16 v16, v0

    #@1a1
    if-eqz v16, :cond_7

    #@1a3
    .line 331
    const-string/jumbo v16, " operatorFriendlyName: "

    #@1a6
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a9
    move-result-object v16

    #@1aa
    const-string/jumbo v17, "("

    #@1ad
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b0
    move-result-object v16

    #@1b1
    .line 332
    move-object/from16 v0, p0

    #@1b3
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    #@1b5
    move-object/from16 v17, v0

    #@1b7
    .line 331
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ba
    move-result-object v16

    #@1bb
    .line 332
    const-string/jumbo v17, ")"

    #@1be
    .line 331
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c1
    .line 334
    :cond_7
    move-object/from16 v0, p0

    #@1c3
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@1c5
    move-object/from16 v16, v0

    #@1c7
    if-eqz v16, :cond_8

    #@1c9
    .line 335
    const-string/jumbo v16, " wanMetrics: "

    #@1cc
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1cf
    move-result-object v16

    #@1d0
    const-string/jumbo v17, "("

    #@1d3
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d6
    move-result-object v16

    #@1d7
    .line 336
    move-object/from16 v0, p0

    #@1d9
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@1db
    move-object/from16 v17, v0

    #@1dd
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->toString()Ljava/lang/String;

    #@1e0
    move-result-object v17

    #@1e1
    .line 335
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e4
    move-result-object v16

    #@1e5
    .line 336
    const-string/jumbo v17, ")"

    #@1e8
    .line 335
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1eb
    .line 338
    :cond_8
    move-object/from16 v0, p0

    #@1ed
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    #@1ef
    move-object/from16 v16, v0

    #@1f1
    if-eqz v16, :cond_9

    #@1f3
    .line 339
    const-string/jumbo v16, " connectionCapability: "

    #@1f6
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f9
    .line 340
    move-object/from16 v0, p0

    #@1fb
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    #@1fd
    move-object/from16 v16, v0

    #@1ff
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@202
    move-result-object v6

    #@203
    .local v6, "ip$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@206
    move-result v16

    #@207
    if-eqz v16, :cond_9

    #@209
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20c
    move-result-object v5

    #@20d
    check-cast v5, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;

    #@20f
    .line 341
    .local v5, "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    const-string/jumbo v16, "("

    #@212
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@215
    move-result-object v16

    #@216
    invoke-virtual {v5}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->toString()Ljava/lang/String;

    #@219
    move-result-object v17

    #@21a
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21d
    move-result-object v16

    #@21e
    const-string/jumbo v17, ")"

    #@221
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@224
    goto :goto_5

    #@225
    .line 344
    .end local v5    # "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    .end local v6    # "ip$iterator":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v0, p0

    #@227
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    #@229
    move-object/from16 v16, v0

    #@22b
    if-eqz v16, :cond_a

    #@22d
    .line 345
    const-string/jumbo v16, " osuProviderList: "

    #@230
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@233
    .line 346
    move-object/from16 v0, p0

    #@235
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    #@237
    move-object/from16 v16, v0

    #@239
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23c
    move-result-object v10

    #@23d
    .local v10, "osu$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@240
    move-result v16

    #@241
    if-eqz v16, :cond_a

    #@243
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@246
    move-result-object v9

    #@247
    check-cast v9, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    #@249
    .line 347
    .local v9, "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    const-string/jumbo v16, "("

    #@24c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24f
    move-result-object v16

    #@250
    invoke-virtual {v9}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->toString()Ljava/lang/String;

    #@253
    move-result-object v17

    #@254
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@257
    move-result-object v16

    #@258
    const-string/jumbo v17, ")"

    #@25b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25e
    goto :goto_6

    #@25f
    .line 350
    .end local v9    # "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    .end local v10    # "osu$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@262
    move-result-object v16

    #@263
    return-object v16
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 20
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 356
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    #@4
    move-object/from16 v18, v0

    #@6
    move-object/from16 v0, p1

    #@8
    move-object/from16 v1, v18

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 357
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    #@11
    move-object/from16 v18, v0

    #@13
    move-object/from16 v0, p1

    #@15
    move-object/from16 v1, v18

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 359
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    #@1e
    move-object/from16 v18, v0

    #@20
    if-nez v18, :cond_7

    #@22
    .line 360
    const/16 v18, 0x0

    #@24
    move-object/from16 v0, p1

    #@26
    move/from16 v1, v18

    #@28
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 369
    :cond_0
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    #@2f
    move-object/from16 v18, v0

    #@31
    if-nez v18, :cond_8

    #@33
    .line 370
    const/16 v18, 0x0

    #@35
    move-object/from16 v0, p1

    #@37
    move/from16 v1, v18

    #@39
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 377
    :cond_1
    move-object/from16 v0, p0

    #@3e
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    #@40
    move-object/from16 v18, v0

    #@42
    if-nez v18, :cond_9

    #@44
    .line 378
    const/16 v18, -0x1

    #@46
    move-object/from16 v0, p1

    #@48
    move/from16 v1, v18

    #@4a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 383
    :goto_0
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    #@51
    move-object/from16 v18, v0

    #@53
    if-nez v18, :cond_a

    #@55
    .line 384
    const/16 v18, 0x0

    #@57
    move-object/from16 v0, p1

    #@59
    move/from16 v1, v18

    #@5b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 393
    :cond_2
    move-object/from16 v0, p0

    #@60
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    #@62
    move-object/from16 v18, v0

    #@64
    if-nez v18, :cond_b

    #@66
    .line 394
    const/16 v18, 0x0

    #@68
    move-object/from16 v0, p1

    #@6a
    move/from16 v1, v18

    #@6c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 404
    :cond_3
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    #@73
    move-object/from16 v18, v0

    #@75
    if-nez v18, :cond_c

    #@77
    .line 405
    const/16 v18, 0x0

    #@79
    move-object/from16 v0, p1

    #@7b
    move/from16 v1, v18

    #@7d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    .line 412
    :cond_4
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    #@84
    move-object/from16 v18, v0

    #@86
    move-object/from16 v0, p1

    #@88
    move-object/from16 v1, v18

    #@8a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@8d
    .line 414
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@91
    move-object/from16 v18, v0

    #@93
    if-nez v18, :cond_d

    #@95
    .line 415
    const/16 v18, 0x0

    #@97
    move-object/from16 v0, p1

    #@99
    move/from16 v1, v18

    #@9b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9e
    .line 426
    :goto_1
    move-object/from16 v0, p0

    #@a0
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    #@a2
    move-object/from16 v18, v0

    #@a4
    if-nez v18, :cond_e

    #@a6
    .line 427
    const/16 v18, 0x0

    #@a8
    move-object/from16 v0, p1

    #@aa
    move/from16 v1, v18

    #@ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@af
    .line 437
    :cond_5
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    #@b3
    move-object/from16 v18, v0

    #@b5
    if-nez v18, :cond_f

    #@b7
    .line 438
    const/16 v18, 0x0

    #@b9
    move-object/from16 v0, p1

    #@bb
    move/from16 v1, v18

    #@bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c0
    .line 355
    :cond_6
    return-void

    #@c1
    .line 362
    :cond_7
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    #@c5
    move-object/from16 v18, v0

    #@c7
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@ca
    move-result v18

    #@cb
    move-object/from16 v0, p1

    #@cd
    move/from16 v1, v18

    #@cf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d2
    .line 363
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    #@d6
    move-object/from16 v18, v0

    #@d8
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@db
    move-result-object v5

    #@dc
    .local v5, "auth$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@df
    move-result v18

    #@e0
    if-eqz v18, :cond_0

    #@e2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e5
    move-result-object v4

    #@e6
    check-cast v4, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;

    #@e8
    .line 364
    .local v4, "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    iget v0, v4, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->type:I

    #@ea
    move/from16 v18, v0

    #@ec
    move-object/from16 v0, p1

    #@ee
    move/from16 v1, v18

    #@f0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f3
    .line 365
    iget-object v0, v4, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->redirectUrl:Ljava/lang/String;

    #@f5
    move-object/from16 v18, v0

    #@f7
    move-object/from16 v0, p1

    #@f9
    move-object/from16 v1, v18

    #@fb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@fe
    goto :goto_2

    #@ff
    .line 372
    .end local v4    # "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    .end local v5    # "auth$iterator":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    #@103
    move-object/from16 v18, v0

    #@105
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@108
    move-result v18

    #@109
    move-object/from16 v0, p1

    #@10b
    move/from16 v1, v18

    #@10d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@110
    .line 373
    move-object/from16 v0, p0

    #@112
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    #@114
    move-object/from16 v18, v0

    #@116
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@119
    move-result-object v11

    #@11a
    .local v11, "oi$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@11d
    move-result v18

    #@11e
    if-eqz v18, :cond_1

    #@120
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@123
    move-result-object v10

    #@124
    check-cast v10, Ljava/lang/String;

    #@126
    .line 374
    .local v10, "oi":Ljava/lang/String;
    move-object/from16 v0, p1

    #@128
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12b
    goto :goto_3

    #@12c
    .line 380
    .end local v10    # "oi":Ljava/lang/String;
    .end local v11    # "oi$iterator":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v0, p0

    #@12e
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    #@130
    move-object/from16 v18, v0

    #@132
    move-object/from16 v0, v18

    #@134
    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->availability:I

    #@136
    move/from16 v18, v0

    #@138
    move-object/from16 v0, p1

    #@13a
    move/from16 v1, v18

    #@13c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13f
    goto/16 :goto_0

    #@141
    .line 386
    :cond_a
    move-object/from16 v0, p0

    #@143
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    #@145
    move-object/from16 v18, v0

    #@147
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@14a
    move-result v18

    #@14b
    move-object/from16 v0, p1

    #@14d
    move/from16 v1, v18

    #@14f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@152
    .line 387
    move-object/from16 v0, p0

    #@154
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    #@156
    move-object/from16 v18, v0

    #@158
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15b
    move-result-object v17

    #@15c
    .local v17, "realm$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@15f
    move-result v18

    #@160
    if-eqz v18, :cond_2

    #@162
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@165
    move-result-object v16

    #@166
    check-cast v16, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;

    #@168
    .line 388
    .local v16, "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    move-object/from16 v0, v16

    #@16a
    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->encoding:I

    #@16c
    move/from16 v18, v0

    #@16e
    move-object/from16 v0, p1

    #@170
    move/from16 v1, v18

    #@172
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@175
    .line 389
    move-object/from16 v0, v16

    #@177
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->realm:Ljava/lang/String;

    #@179
    move-object/from16 v18, v0

    #@17b
    move-object/from16 v0, p1

    #@17d
    move-object/from16 v1, v18

    #@17f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@182
    goto :goto_4

    #@183
    .line 396
    .end local v16    # "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    .end local v17    # "realm$iterator":Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    #@187
    move-object/from16 v18, v0

    #@189
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@18c
    move-result v18

    #@18d
    move-object/from16 v0, p1

    #@18f
    move/from16 v1, v18

    #@191
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@194
    .line 397
    move-object/from16 v0, p0

    #@196
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    #@198
    move-object/from16 v18, v0

    #@19a
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19d
    move-result-object v15

    #@19e
    .local v15, "plmn$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@1a1
    move-result v18

    #@1a2
    if-eqz v18, :cond_3

    #@1a4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a7
    move-result-object v14

    #@1a8
    check-cast v14, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;

    #@1aa
    .line 398
    .local v14, "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    iget-object v0, v14, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mcc:Ljava/lang/String;

    #@1ac
    move-object/from16 v18, v0

    #@1ae
    move-object/from16 v0, p1

    #@1b0
    move-object/from16 v1, v18

    #@1b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b5
    .line 399
    iget-object v0, v14, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mnc:Ljava/lang/String;

    #@1b7
    move-object/from16 v18, v0

    #@1b9
    move-object/from16 v0, p1

    #@1bb
    move-object/from16 v1, v18

    #@1bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c0
    goto :goto_5

    #@1c1
    .line 407
    .end local v14    # "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    .end local v15    # "plmn$iterator":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    #@1c3
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    #@1c5
    move-object/from16 v18, v0

    #@1c7
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@1ca
    move-result v18

    #@1cb
    move-object/from16 v0, p1

    #@1cd
    move/from16 v1, v18

    #@1cf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d2
    .line 408
    move-object/from16 v0, p0

    #@1d4
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    #@1d6
    move-object/from16 v18, v0

    #@1d8
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1db
    move-result-object v7

    #@1dc
    .local v7, "fqdn$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1df
    move-result v18

    #@1e0
    if-eqz v18, :cond_4

    #@1e2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e5
    move-result-object v6

    #@1e6
    check-cast v6, Ljava/lang/String;

    #@1e8
    .line 409
    .local v6, "fqdn":Ljava/lang/String;
    move-object/from16 v0, p1

    #@1ea
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1ed
    goto :goto_6

    #@1ee
    .line 417
    .end local v6    # "fqdn":Ljava/lang/String;
    .end local v7    # "fqdn$iterator":Ljava/util/Iterator;
    :cond_d
    const/16 v18, 0x1

    #@1f0
    move-object/from16 v0, p1

    #@1f2
    move/from16 v1, v18

    #@1f4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f7
    .line 418
    move-object/from16 v0, p0

    #@1f9
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@1fb
    move-object/from16 v18, v0

    #@1fd
    move-object/from16 v0, v18

    #@1ff
    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->wanInfo:I

    #@201
    move/from16 v18, v0

    #@203
    move-object/from16 v0, p1

    #@205
    move/from16 v1, v18

    #@207
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@20a
    .line 419
    move-object/from16 v0, p0

    #@20c
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@20e
    move-object/from16 v18, v0

    #@210
    move-object/from16 v0, v18

    #@212
    iget-wide v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkSpeed:J

    #@214
    move-wide/from16 v18, v0

    #@216
    move-object/from16 v0, p1

    #@218
    move-wide/from16 v1, v18

    #@21a
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@21d
    .line 420
    move-object/from16 v0, p0

    #@21f
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@221
    move-object/from16 v18, v0

    #@223
    move-object/from16 v0, v18

    #@225
    iget-wide v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkSpeed:J

    #@227
    move-wide/from16 v18, v0

    #@229
    move-object/from16 v0, p1

    #@22b
    move-wide/from16 v1, v18

    #@22d
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@230
    .line 421
    move-object/from16 v0, p0

    #@232
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@234
    move-object/from16 v18, v0

    #@236
    move-object/from16 v0, v18

    #@238
    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkLoad:I

    #@23a
    move/from16 v18, v0

    #@23c
    move-object/from16 v0, p1

    #@23e
    move/from16 v1, v18

    #@240
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@243
    .line 422
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@247
    move-object/from16 v18, v0

    #@249
    move-object/from16 v0, v18

    #@24b
    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkLoad:I

    #@24d
    move/from16 v18, v0

    #@24f
    move-object/from16 v0, p1

    #@251
    move/from16 v1, v18

    #@253
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@256
    .line 423
    move-object/from16 v0, p0

    #@258
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    #@25a
    move-object/from16 v18, v0

    #@25c
    move-object/from16 v0, v18

    #@25e
    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->lmd:I

    #@260
    move/from16 v18, v0

    #@262
    move-object/from16 v0, p1

    #@264
    move/from16 v1, v18

    #@266
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@269
    goto/16 :goto_1

    #@26b
    .line 429
    :cond_e
    move-object/from16 v0, p0

    #@26d
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    #@26f
    move-object/from16 v18, v0

    #@271
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@274
    move-result v18

    #@275
    move-object/from16 v0, p1

    #@277
    move/from16 v1, v18

    #@279
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27c
    .line 430
    move-object/from16 v0, p0

    #@27e
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    #@280
    move-object/from16 v18, v0

    #@282
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@285
    move-result-object v9

    #@286
    .local v9, "ip$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@289
    move-result v18

    #@28a
    if-eqz v18, :cond_5

    #@28c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28f
    move-result-object v8

    #@290
    check-cast v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;

    #@292
    .line 431
    .local v8, "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    iget v0, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->proto:I

    #@294
    move/from16 v18, v0

    #@296
    move-object/from16 v0, p1

    #@298
    move/from16 v1, v18

    #@29a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29d
    .line 432
    iget v0, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->port:I

    #@29f
    move/from16 v18, v0

    #@2a1
    move-object/from16 v0, p1

    #@2a3
    move/from16 v1, v18

    #@2a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2a8
    .line 433
    iget v0, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->status:I

    #@2aa
    move/from16 v18, v0

    #@2ac
    move-object/from16 v0, p1

    #@2ae
    move/from16 v1, v18

    #@2b0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2b3
    goto :goto_7

    #@2b4
    .line 440
    .end local v8    # "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    .end local v9    # "ip$iterator":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    #@2b6
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    #@2b8
    move-object/from16 v18, v0

    #@2ba
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@2bd
    move-result v18

    #@2be
    move-object/from16 v0, p1

    #@2c0
    move/from16 v1, v18

    #@2c2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2c5
    .line 441
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    #@2c9
    move-object/from16 v18, v0

    #@2cb
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2ce
    move-result-object v13

    #@2cf
    .local v13, "osu$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@2d2
    move-result v18

    #@2d3
    if-eqz v18, :cond_6

    #@2d5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d8
    move-result-object v12

    #@2d9
    check-cast v12, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    #@2db
    .line 442
    .local v12, "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    move-object/from16 v0, p1

    #@2dd
    move/from16 v1, p2

    #@2df
    invoke-virtual {v12, v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e2
    goto :goto_8
.end method
