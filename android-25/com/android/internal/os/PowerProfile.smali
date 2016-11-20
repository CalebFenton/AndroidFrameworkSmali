.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerProfile$CpuClusterKey;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final POWER_AUDIO:Ljava/lang/String; = "dsp.audio"

.field public static final POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_BLUETOOTH_CONTROLLER_IDLE:Ljava/lang/String; = "bluetooth.controller.idle"

.field public static final POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "bluetooth.controller.voltage"

.field public static final POWER_BLUETOOTH_CONTROLLER_RX:Ljava/lang/String; = "bluetooth.controller.rx"

.field public static final POWER_BLUETOOTH_CONTROLLER_TX:Ljava/lang/String; = "bluetooth.controller.tx"

.field public static final POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_CAMERA:Ljava/lang/String; = "camera.avg"

.field public static final POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_CPU_AWAKE:Ljava/lang/String; = "cpu.awake"

.field private static final POWER_CPU_CLUSTER_ACTIVE_PREFIX:Ljava/lang/String; = "cpu.active.cluster"

.field private static final POWER_CPU_CLUSTER_CORE_COUNT:Ljava/lang/String; = "cpu.clusters.cores"

.field private static final POWER_CPU_CLUSTER_SPEED_PREFIX:Ljava/lang/String; = "cpu.speeds.cluster"

.field public static final POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final POWER_CPU_SPEEDS:Ljava/lang/String; = "cpu.speeds"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final POWER_MODEM_CONTROLLER_IDLE:Ljava/lang/String; = "modem.controller.idle"

.field public static final POWER_MODEM_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "modem.controller.voltage"

.field public static final POWER_MODEM_CONTROLLER_RX:Ljava/lang/String; = "modem.controller.rx"

.field public static final POWER_MODEM_CONTROLLER_TX:Ljava/lang/String; = "modem.controller.tx"

.field public static final POWER_NONE:Ljava/lang/String; = "none"

.field public static final POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"

.field public static final POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"

.field public static final POWER_VIDEO:Ljava/lang/String; = "dsp.video"

.field public static final POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final POWER_WIFI_BATCHED_SCAN:Ljava/lang/String; = "wifi.batchedscan"

.field public static final POWER_WIFI_CONTROLLER_IDLE:Ljava/lang/String; = "wifi.controller.idle"

.field public static final POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "wifi.controller.voltage"

.field public static final POWER_WIFI_CONTROLLER_RX:Ljava/lang/String; = "wifi.controller.rx"

.field public static final POWER_WIFI_CONTROLLER_TX:Ljava/lang/String; = "wifi.controller.tx"

.field public static final POWER_WIFI_CONTROLLER_TX_LEVELS:Ljava/lang/String; = "wifi.controller.tx_levels"

.field public static final POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field static final sPowerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 195
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@7
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 206
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 207
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;)V

    #@e
    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuClusters()V

    #@11
    .line 203
    return-void
.end method

.method private initCpuClusters()V
    .locals 10

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 313
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@4
    const-string/jumbo v5, "cpu.clusters.cores"

    #@7
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    .line 314
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@d
    instance-of v4, v3, [Ljava/lang/Double;

    #@f
    if-eqz v4, :cond_0

    #@11
    move-object v0, v3

    #@12
    .line 320
    check-cast v0, [Ljava/lang/Double;

    #@14
    .line 321
    .local v0, "array":[Ljava/lang/Double;
    array-length v4, v0

    #@15
    new-array v4, v4, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@17
    iput-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@19
    .line 322
    const/4 v1, 0x0

    #@1a
    .local v1, "cluster":I
    :goto_0
    array-length v4, v0

    #@1b
    if-ge v1, v4, :cond_1

    #@1d
    .line 323
    aget-object v4, v0, v1

    #@1f
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    #@22
    move-result-wide v4

    #@23
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    #@26
    move-result-wide v4

    #@27
    long-to-int v2, v4

    #@28
    .line 324
    .local v2, "numCpusInCluster":I
    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@2a
    new-instance v5, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@2c
    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v7, "cpu.speeds.cluster"

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v8, "cpu.active.cluster"

    #@48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    .line 324
    invoke-direct {v5, v6, v7, v2, v9}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey;)V

    #@57
    aput-object v5, v4, v1

    #@59
    .line 322
    add-int/lit8 v1, v1, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 316
    .end local v0    # "array":[Ljava/lang/Double;
    .end local v1    # "cluster":I
    .end local v2    # "numCpusInCluster":I
    :cond_0
    new-array v4, v8, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@5e
    iput-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@60
    .line 317
    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@62
    new-instance v5, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@64
    const-string/jumbo v6, "cpu.speeds"

    #@67
    const-string/jumbo v7, "cpu.active"

    #@6a
    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey;)V

    #@6d
    const/4 v6, 0x0

    #@6e
    aput-object v5, v4, v6

    #@70
    .line 311
    :cond_1
    return-void
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 213
    const v10, 0x111000f

    #@3
    .line 214
    .local v10, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v17

    #@7
    .line 215
    .local v17, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, v17

    #@9
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@c
    move-result-object v14

    #@d
    .line 216
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v15, 0x0

    #@e
    .line 217
    .local v15, "parsingArray":Z
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 218
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v3, 0x0

    #@14
    .line 221
    .local v3, "arrayName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v21, "device"

    #@17
    move-object/from16 v0, v21

    #@19
    invoke-static {v14, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@1c
    .line 224
    .end local v3    # "arrayName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1f
    .line 226
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    .line 227
    .local v8, "element":Ljava/lang/String;
    if-nez v8, :cond_3

    #@25
    .line 256
    if-eqz v15, :cond_1

    #@27
    .line 257
    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v22

    #@2d
    move/from16 v0, v22

    #@2f
    new-array v0, v0, [Ljava/lang/Double;

    #@31
    move-object/from16 v22, v0

    #@33
    move-object/from16 v0, v22

    #@35
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@38
    move-result-object v22

    #@39
    move-object/from16 v0, v21

    #@3b
    move-object/from16 v1, v22

    #@3d
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 264
    :cond_1
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    #@43
    .line 268
    const/16 v21, 0x8

    #@45
    move/from16 v0, v21

    #@47
    new-array v5, v0, [I

    #@49
    .local v5, "configResIds":[I
    fill-array-data v5, :array_0

    #@4c
    .line 279
    const/16 v21, 0x8

    #@4e
    move/from16 v0, v21

    #@50
    new-array v4, v0, [Ljava/lang/String;

    #@52
    .line 280
    const-string/jumbo v21, "bluetooth.controller.idle"

    #@55
    const/16 v22, 0x0

    #@57
    aput-object v21, v4, v22

    #@59
    .line 281
    const-string/jumbo v21, "bluetooth.controller.rx"

    #@5c
    const/16 v22, 0x1

    #@5e
    aput-object v21, v4, v22

    #@60
    .line 282
    const-string/jumbo v21, "bluetooth.controller.tx"

    #@63
    const/16 v22, 0x2

    #@65
    aput-object v21, v4, v22

    #@67
    .line 283
    const-string/jumbo v21, "bluetooth.controller.voltage"

    #@6a
    const/16 v22, 0x3

    #@6c
    aput-object v21, v4, v22

    #@6e
    .line 284
    const-string/jumbo v21, "wifi.controller.idle"

    #@71
    const/16 v22, 0x4

    #@73
    aput-object v21, v4, v22

    #@75
    .line 285
    const-string/jumbo v21, "wifi.controller.rx"

    #@78
    const/16 v22, 0x5

    #@7a
    aput-object v21, v4, v22

    #@7c
    .line 286
    const-string/jumbo v21, "wifi.controller.tx"

    #@7f
    const/16 v22, 0x6

    #@81
    aput-object v21, v4, v22

    #@83
    .line 287
    const-string/jumbo v21, "wifi.controller.voltage"

    #@86
    const/16 v22, 0x7

    #@88
    aput-object v21, v4, v22

    #@8a
    .line 290
    .local v4, "configResIdKeys":[Ljava/lang/String;
    const/4 v9, 0x0

    #@8b
    .local v9, "i":I
    :goto_1
    array-length v0, v5

    #@8c
    move/from16 v21, v0

    #@8e
    move/from16 v0, v21

    #@90
    if-ge v9, v0, :cond_b

    #@92
    .line 291
    aget-object v11, v4, v9

    #@94
    .line 294
    .local v11, "key":Ljava/lang/String;
    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@96
    move-object/from16 v0, v21

    #@98
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9b
    move-result v21

    #@9c
    if-eqz v21, :cond_a

    #@9e
    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@a0
    move-object/from16 v0, v21

    #@a2
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a5
    move-result-object v21

    #@a6
    check-cast v21, Ljava/lang/Double;

    #@a8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    #@ab
    move-result-wide v22

    #@ac
    const-wide/16 v24, 0x0

    #@ae
    cmpl-double v21, v22, v24

    #@b0
    if-lez v21, :cond_a

    #@b2
    .line 290
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    #@b4
    goto :goto_1

    #@b5
    .line 229
    .end local v4    # "configResIdKeys":[Ljava/lang/String;
    .end local v5    # "configResIds":[I
    .end local v9    # "i":I
    .end local v11    # "key":Ljava/lang/String;
    :cond_3
    if-eqz v15, :cond_4

    #@b7
    :try_start_1
    const-string/jumbo v21, "value"

    #@ba
    move-object/from16 v0, v21

    #@bc
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v21

    #@c0
    if-eqz v21, :cond_5

    #@c2
    .line 234
    :cond_4
    :goto_3
    const-string/jumbo v21, "array"

    #@c5
    move-object/from16 v0, v21

    #@c7
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result v21

    #@cb
    if-eqz v21, :cond_6

    #@cd
    .line 235
    const/4 v15, 0x1

    #@ce
    .line 236
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@d1
    .line 237
    const-string/jumbo v21, "name"

    #@d4
    const/16 v22, 0x0

    #@d6
    move-object/from16 v0, v22

    #@d8
    move-object/from16 v1, v21

    #@da
    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    .local v3, "arrayName":Ljava/lang/String;
    goto/16 :goto_0

    #@e0
    .line 231
    .end local v3    # "arrayName":Ljava/lang/String;
    :cond_5
    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@e2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e5
    move-result v22

    #@e6
    move/from16 v0, v22

    #@e8
    new-array v0, v0, [Ljava/lang/Double;

    #@ea
    move-object/from16 v22, v0

    #@ec
    move-object/from16 v0, v22

    #@ee
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f1
    move-result-object v22

    #@f2
    move-object/from16 v0, v21

    #@f4
    move-object/from16 v1, v22

    #@f6
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f9
    .line 232
    const/4 v15, 0x0

    #@fa
    goto :goto_3

    #@fb
    .line 238
    :cond_6
    const-string/jumbo v21, "item"

    #@fe
    move-object/from16 v0, v21

    #@100
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@103
    move-result v21

    #@104
    if-nez v21, :cond_7

    #@106
    const-string/jumbo v21, "value"

    #@109
    move-object/from16 v0, v21

    #@10b
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10e
    move-result v21

    #@10f
    if-eqz v21, :cond_0

    #@111
    .line 239
    :cond_7
    const/4 v12, 0x0

    #@112
    .line 240
    .local v12, "name":Ljava/lang/String;
    if-nez v15, :cond_8

    #@114
    const-string/jumbo v21, "name"

    #@117
    const/16 v22, 0x0

    #@119
    move-object/from16 v0, v22

    #@11b
    move-object/from16 v1, v21

    #@11d
    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@120
    move-result-object v12

    #@121
    .line 241
    .end local v12    # "name":Ljava/lang/String;
    :cond_8
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    #@124
    move-result v21

    #@125
    const/16 v22, 0x4

    #@127
    move/from16 v0, v21

    #@129
    move/from16 v1, v22

    #@12b
    if-ne v0, v1, :cond_0

    #@12d
    .line 242
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@130
    move-result-object v16

    #@131
    .line 243
    .local v16, "power":Ljava/lang/String;
    const-wide/16 v18, 0x0

    #@133
    .line 245
    .local v18, "value":D
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@136
    move-result-object v21

    #@137
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@13a
    move-result-wide v18

    #@13b
    .line 248
    :goto_4
    :try_start_3
    const-string/jumbo v21, "item"

    #@13e
    move-object/from16 v0, v21

    #@140
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@143
    move-result v21

    #@144
    if-eqz v21, :cond_9

    #@146
    .line 249
    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@148
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@14b
    move-result-object v22

    #@14c
    move-object/from16 v0, v21

    #@14e
    move-object/from16 v1, v22

    #@150
    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@153
    goto/16 :goto_0

    #@155
    .line 259
    .end local v8    # "element":Ljava/lang/String;
    .end local v16    # "power":Ljava/lang/String;
    .end local v18    # "value":D
    :catch_0
    move-exception v7

    #@156
    .line 260
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v21, Ljava/lang/RuntimeException;

    #@158
    move-object/from16 v0, v21

    #@15a
    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@15d
    throw v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@15e
    .line 263
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v21

    #@15f
    .line 264
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    #@162
    .line 263
    throw v21

    #@163
    .line 250
    .restart local v8    # "element":Ljava/lang/String;
    .restart local v16    # "power":Ljava/lang/String;
    .restart local v18    # "value":D
    :cond_9
    if-eqz v15, :cond_0

    #@165
    .line 251
    :try_start_5
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@168
    move-result-object v21

    #@169
    move-object/from16 v0, v21

    #@16b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@16e
    goto/16 :goto_0

    #@170
    .line 261
    .end local v8    # "element":Ljava/lang/String;
    .end local v16    # "power":Ljava/lang/String;
    .end local v18    # "value":D
    :catch_1
    move-exception v6

    #@171
    .line 262
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v21, Ljava/lang/RuntimeException;

    #@173
    move-object/from16 v0, v21

    #@175
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@178
    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@179
    .line 297
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "configResIdKeys":[Ljava/lang/String;
    .restart local v5    # "configResIds":[I
    .restart local v8    # "element":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v11    # "key":Ljava/lang/String;
    :cond_a
    aget v21, v5, v9

    #@17b
    move-object/from16 v0, v17

    #@17d
    move/from16 v1, v21

    #@17f
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@182
    move-result v20

    #@183
    .line 298
    .local v20, "value":I
    if-lez v20, :cond_2

    #@185
    .line 299
    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@187
    move/from16 v0, v20

    #@189
    int-to-double v0, v0

    #@18a
    move-wide/from16 v22, v0

    #@18c
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@18f
    move-result-object v22

    #@190
    move-object/from16 v0, v21

    #@192
    move-object/from16 v1, v22

    #@194
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@197
    goto/16 :goto_2

    #@199
    .line 212
    .end local v11    # "key":Ljava/lang/String;
    .end local v20    # "value":I
    :cond_b
    return-void

    #@19a
    .line 246
    .end local v4    # "configResIdKeys":[Ljava/lang/String;
    .end local v5    # "configResIds":[I
    .end local v9    # "i":I
    .restart local v16    # "power":Ljava/lang/String;
    .restart local v18    # "value":D
    :catch_2
    move-exception v13

    #@19b
    .local v13, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_4

    #@19c
    .line 268
    :array_0
    .array-data 4
        0x10e0070
        0x10e0071
        0x10e0072
        0x10e0073
        0x10e003c
        0x10e003d
        0x10e003e
        0x10e003f
    .end array-data
.end method


# virtual methods
.method public getAveragePower(Ljava/lang/String;)D
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 393
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getAveragePower(Ljava/lang/String;I)D
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # I

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 405
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_4

    #@a
    .line 406
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@c
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .line 407
    .local v0, "data":Ljava/lang/Object;
    instance-of v2, v0, [Ljava/lang/Double;

    #@12
    if-eqz v2, :cond_3

    #@14
    move-object v1, v0

    #@15
    .line 408
    check-cast v1, [Ljava/lang/Double;

    #@17
    .line 409
    .local v1, "values":[Ljava/lang/Double;
    array-length v2, v1

    #@18
    if-le v2, p2, :cond_0

    #@1a
    if-ltz p2, :cond_0

    #@1c
    .line 410
    aget-object v2, v1, p2

    #@1e
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    #@21
    move-result-wide v2

    #@22
    return-wide v2

    #@23
    .line 411
    :cond_0
    if-ltz p2, :cond_1

    #@25
    array-length v2, v1

    #@26
    if-nez v2, :cond_2

    #@28
    .line 412
    :cond_1
    return-wide v4

    #@29
    .line 414
    :cond_2
    array-length v2, v1

    #@2a
    add-int/lit8 v2, v2, -0x1

    #@2c
    aget-object v2, v1, v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    #@31
    move-result-wide v2

    #@32
    return-wide v2

    #@33
    .line 417
    .end local v1    # "values":[Ljava/lang/Double;
    :cond_3
    check-cast v0, Ljava/lang/Double;

    #@35
    .end local v0    # "data":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@38
    move-result-wide v2

    #@39
    return-wide v2

    #@3a
    .line 420
    :cond_4
    return-wide v4
.end method

.method public getAveragePowerForCpu(II)D
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "step"    # I

    #@0
    .prologue
    .line 361
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 362
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@9
    aget-object v0, v0, p1

    #@b
    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-get1(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    #@12
    move-result-wide v0

    #@13
    return-wide v0

    #@14
    .line 364
    :cond_0
    const-wide/16 v0, 0x0

    #@16
    return-wide v0
.end method

.method public getAveragePowerOrDefault(Ljava/lang/String;D)D
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    #@0
    .prologue
    .line 375
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 376
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 377
    .local v0, "data":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 378
    check-cast v0, [Ljava/lang/Double;

    #@14
    .end local v0    # "data":Ljava/lang/Object;
    const/4 v1, 0x0

    #@15
    aget-object v1, v0, v1

    #@17
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@1a
    move-result-wide v2

    #@1b
    return-wide v2

    #@1c
    .line 380
    .restart local v0    # "data":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Ljava/lang/Double;

    #@24
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@27
    move-result-wide v2

    #@28
    return-wide v2

    #@29
    .line 383
    .end local v0    # "data":Ljava/lang/Object;
    :cond_1
    return-wide p2
.end method

.method public getBatteryCapacity()D
    .locals 2

    #@0
    .prologue
    .line 430
    const-string/jumbo v0, "battery.capacity"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@6
    move-result-wide v0

    #@7
    return-wide v0
.end method

.method public getNumCoresInCpuCluster(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-get0(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getNumCpuClusters()I
    .locals 1

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getNumSpeedStepsInCpuCluster(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 353
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@2
    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    #@4
    aget-object v2, v2, p1

    #@6
    invoke-static {v2}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-get2(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 354
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@10
    instance-of v1, v0, [Ljava/lang/Double;

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 355
    check-cast v0, [Ljava/lang/Double;

    #@16
    .end local v0    # "value":Ljava/lang/Object;
    array-length v1, v0

    #@17
    return v1

    #@18
    .line 357
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    #@19
    return v1
.end method
