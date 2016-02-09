.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final POWER_AUDIO:Ljava/lang/String; = "dsp.audio"

.field public static final POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"

.field public static final POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"

.field public static final POWER_BLUETOOTH_CONTROLLER_IDLE:Ljava/lang/String; = "bluetooth.controller.idle"

.field public static final POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "bluetooth.controller.voltage"

.field public static final POWER_BLUETOOTH_CONTROLLER_RX:Ljava/lang/String; = "bluetooth.controller.rx"

.field public static final POWER_BLUETOOTH_CONTROLLER_TX:Ljava/lang/String; = "bluetooth.controller.tx"

.field public static final POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"

.field public static final POWER_CAMERA:Ljava/lang/String; = "camera.avg"

.field public static final POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"

.field public static final POWER_CPU_AWAKE:Ljava/lang/String; = "cpu.awake"

.field public static final POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final POWER_CPU_SPEEDS:Ljava/lang/String; = "cpu.speeds"

.field public static final POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final POWER_GPS_ON:Ljava/lang/String; = "gps.on"

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 180
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
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 191
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 192
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;)V

    #@e
    .line 188
    :cond_0
    return-void
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 197
    const v10, 0x111000f

    #@3
    .line 198
    .local v10, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v16

    #@7
    .line 199
    .local v16, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, v16

    #@9
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@c
    move-result-object v13

    #@d
    .line 200
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v14, 0x0

    #@e
    .line 201
    .local v14, "parsingArray":Z
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 202
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v3, 0x0

    #@14
    .line 205
    .local v3, "arrayName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v20, "device"

    #@17
    move-object/from16 v0, v20

    #@19
    invoke-static {v13, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@1c
    .line 208
    .end local v3    # "arrayName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1f
    .line 210
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    .line 211
    .local v8, "element":Ljava/lang/String;
    if-nez v8, :cond_3

    #@25
    .line 240
    if-eqz v14, :cond_1

    #@27
    .line 241
    sget-object v20, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v21

    #@2d
    move/from16 v0, v21

    #@2f
    new-array v0, v0, [Ljava/lang/Double;

    #@31
    move-object/from16 v21, v0

    #@33
    move-object/from16 v0, v21

    #@35
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@38
    move-result-object v21

    #@39
    move-object/from16 v0, v20

    #@3b
    move-object/from16 v1, v21

    #@3d
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 248
    :cond_1
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@43
    .line 252
    const/16 v20, 0x8

    #@45
    move/from16 v0, v20

    #@47
    new-array v5, v0, [I

    #@49
    .local v5, "configResIds":[I
    fill-array-data v5, :array_0

    #@4c
    .line 263
    const/16 v20, 0x8

    #@4e
    move/from16 v0, v20

    #@50
    new-array v4, v0, [Ljava/lang/String;

    #@52
    .line 264
    const-string/jumbo v20, "bluetooth.controller.idle"

    #@55
    const/16 v21, 0x0

    #@57
    aput-object v20, v4, v21

    #@59
    .line 265
    const-string/jumbo v20, "bluetooth.controller.rx"

    #@5c
    const/16 v21, 0x1

    #@5e
    aput-object v20, v4, v21

    #@60
    .line 266
    const-string/jumbo v20, "bluetooth.controller.tx"

    #@63
    const/16 v21, 0x2

    #@65
    aput-object v20, v4, v21

    #@67
    .line 267
    const-string/jumbo v20, "bluetooth.controller.voltage"

    #@6a
    const/16 v21, 0x3

    #@6c
    aput-object v20, v4, v21

    #@6e
    .line 268
    const-string/jumbo v20, "wifi.controller.idle"

    #@71
    const/16 v21, 0x4

    #@73
    aput-object v20, v4, v21

    #@75
    .line 269
    const-string/jumbo v20, "wifi.controller.rx"

    #@78
    const/16 v21, 0x5

    #@7a
    aput-object v20, v4, v21

    #@7c
    .line 270
    const-string/jumbo v20, "wifi.controller.tx"

    #@7f
    const/16 v21, 0x6

    #@81
    aput-object v20, v4, v21

    #@83
    .line 271
    const-string/jumbo v20, "wifi.controller.voltage"

    #@86
    const/16 v21, 0x7

    #@88
    aput-object v20, v4, v21

    #@8a
    .line 274
    .local v4, "configResIdKeys":[Ljava/lang/String;
    const/4 v9, 0x0

    #@8b
    .local v9, "i":I
    :goto_1
    array-length v0, v5

    #@8c
    move/from16 v20, v0

    #@8e
    move/from16 v0, v20

    #@90
    if-ge v9, v0, :cond_a

    #@92
    .line 275
    aget v20, v5, v9

    #@94
    move-object/from16 v0, v16

    #@96
    move/from16 v1, v20

    #@98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@9b
    move-result v17

    #@9c
    .line 276
    .local v17, "value":I
    if-lez v17, :cond_2

    #@9e
    .line 277
    sget-object v20, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@a0
    aget-object v21, v4, v9

    #@a2
    move/from16 v0, v17

    #@a4
    int-to-double v0, v0

    #@a5
    move-wide/from16 v22, v0

    #@a7
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@aa
    move-result-object v22

    #@ab
    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    .line 274
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@b0
    goto :goto_1

    #@b1
    .line 213
    .end local v4    # "configResIdKeys":[Ljava/lang/String;
    .end local v5    # "configResIds":[I
    .end local v9    # "i":I
    .end local v17    # "value":I
    :cond_3
    if-eqz v14, :cond_4

    #@b3
    :try_start_1
    const-string/jumbo v20, "value"

    #@b6
    move-object/from16 v0, v20

    #@b8
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v20

    #@bc
    if-eqz v20, :cond_5

    #@be
    .line 218
    :cond_4
    :goto_2
    const-string/jumbo v20, "array"

    #@c1
    move-object/from16 v0, v20

    #@c3
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c6
    move-result v20

    #@c7
    if-eqz v20, :cond_6

    #@c9
    .line 219
    const/4 v14, 0x1

    #@ca
    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@cd
    .line 221
    const-string/jumbo v20, "name"

    #@d0
    const/16 v21, 0x0

    #@d2
    move-object/from16 v0, v21

    #@d4
    move-object/from16 v1, v20

    #@d6
    invoke-interface {v13, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d9
    move-result-object v3

    #@da
    .local v3, "arrayName":Ljava/lang/String;
    goto/16 :goto_0

    #@dc
    .line 215
    .end local v3    # "arrayName":Ljava/lang/String;
    :cond_5
    sget-object v20, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@de
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e1
    move-result v21

    #@e2
    move/from16 v0, v21

    #@e4
    new-array v0, v0, [Ljava/lang/Double;

    #@e6
    move-object/from16 v21, v0

    #@e8
    move-object/from16 v0, v21

    #@ea
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@ed
    move-result-object v21

    #@ee
    move-object/from16 v0, v20

    #@f0
    move-object/from16 v1, v21

    #@f2
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    .line 216
    const/4 v14, 0x0

    #@f6
    goto :goto_2

    #@f7
    .line 222
    :cond_6
    const-string/jumbo v20, "item"

    #@fa
    move-object/from16 v0, v20

    #@fc
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ff
    move-result v20

    #@100
    if-nez v20, :cond_7

    #@102
    const-string/jumbo v20, "value"

    #@105
    move-object/from16 v0, v20

    #@107
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10a
    move-result v20

    #@10b
    if-eqz v20, :cond_0

    #@10d
    .line 223
    :cond_7
    const/4 v11, 0x0

    #@10e
    .line 224
    .local v11, "name":Ljava/lang/String;
    if-nez v14, :cond_8

    #@110
    const-string/jumbo v20, "name"

    #@113
    const/16 v21, 0x0

    #@115
    move-object/from16 v0, v21

    #@117
    move-object/from16 v1, v20

    #@119
    invoke-interface {v13, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11c
    move-result-object v11

    #@11d
    .line 225
    .end local v11    # "name":Ljava/lang/String;
    :cond_8
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    #@120
    move-result v20

    #@121
    const/16 v21, 0x4

    #@123
    move/from16 v0, v20

    #@125
    move/from16 v1, v21

    #@127
    if-ne v0, v1, :cond_0

    #@129
    .line 226
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12c
    move-result-object v15

    #@12d
    .line 227
    .local v15, "power":Ljava/lang/String;
    const-wide/16 v18, 0x0

    #@12f
    .line 229
    .local v18, "value":D
    :try_start_2
    invoke-static {v15}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@132
    move-result-object v20

    #@133
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@136
    move-result-wide v18

    #@137
    .line 232
    :goto_3
    :try_start_3
    const-string/jumbo v20, "item"

    #@13a
    move-object/from16 v0, v20

    #@13c
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13f
    move-result v20

    #@140
    if-eqz v20, :cond_9

    #@142
    .line 233
    sget-object v20, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@144
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@147
    move-result-object v21

    #@148
    move-object/from16 v0, v20

    #@14a
    move-object/from16 v1, v21

    #@14c
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@14f
    goto/16 :goto_0

    #@151
    .line 243
    .end local v8    # "element":Ljava/lang/String;
    .end local v15    # "power":Ljava/lang/String;
    .end local v18    # "value":D
    :catch_0
    move-exception v7

    #@152
    .line 244
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v20, Ljava/lang/RuntimeException;

    #@154
    move-object/from16 v0, v20

    #@156
    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@159
    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@15a
    .line 247
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v20

    #@15b
    .line 248
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    #@15e
    .line 247
    throw v20

    #@15f
    .line 234
    .restart local v8    # "element":Ljava/lang/String;
    .restart local v15    # "power":Ljava/lang/String;
    .restart local v18    # "value":D
    :cond_9
    if-eqz v14, :cond_0

    #@161
    .line 235
    :try_start_5
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@164
    move-result-object v20

    #@165
    move-object/from16 v0, v20

    #@167
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@16a
    goto/16 :goto_0

    #@16c
    .line 245
    .end local v8    # "element":Ljava/lang/String;
    .end local v15    # "power":Ljava/lang/String;
    .end local v18    # "value":D
    :catch_1
    move-exception v6

    #@16d
    .line 246
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v20, Ljava/lang/RuntimeException;

    #@16f
    move-object/from16 v0, v20

    #@171
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@174
    throw v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@175
    .line 196
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "configResIdKeys":[Ljava/lang/String;
    .restart local v5    # "configResIds":[I
    .restart local v8    # "element":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_a
    return-void

    #@176
    .line 230
    .end local v4    # "configResIdKeys":[Ljava/lang/String;
    .end local v5    # "configResIds":[I
    .end local v9    # "i":I
    .restart local v15    # "power":Ljava/lang/String;
    .restart local v18    # "value":D
    :catch_2
    move-exception v12

    #@177
    .local v12, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_3

    #@178
    .line 252
    :array_0
    .array-data 4
        0x10e0068
        0x10e0069
        0x10e006a
        0x10e006b
        0x10e003a
        0x10e003b
        0x10e003c
        0x10e003d
    .end array-data
.end method


# virtual methods
.method public getAveragePower(Ljava/lang/String;)D
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 308
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
    .line 320
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_4

    #@a
    .line 321
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@c
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .line 322
    .local v0, "data":Ljava/lang/Object;
    instance-of v2, v0, [Ljava/lang/Double;

    #@12
    if-eqz v2, :cond_3

    #@14
    move-object v1, v0

    #@15
    .line 323
    check-cast v1, [Ljava/lang/Double;

    #@17
    .line 324
    .local v1, "values":[Ljava/lang/Double;
    array-length v2, v1

    #@18
    if-le v2, p2, :cond_0

    #@1a
    if-ltz p2, :cond_0

    #@1c
    .line 325
    aget-object v2, v1, p2

    #@1e
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    #@21
    move-result-wide v2

    #@22
    return-wide v2

    #@23
    .line 326
    :cond_0
    if-ltz p2, :cond_1

    #@25
    array-length v2, v1

    #@26
    if-nez v2, :cond_2

    #@28
    .line 327
    :cond_1
    return-wide v4

    #@29
    .line 329
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
    .line 332
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
    .line 335
    :cond_4
    return-wide v4
.end method

.method public getAveragePowerOrDefault(Ljava/lang/String;D)D
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    #@0
    .prologue
    .line 290
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 291
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 292
    .local v0, "data":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 293
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
    .line 295
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
    .line 298
    .end local v0    # "data":Ljava/lang/Object;
    :cond_1
    return-wide p2
.end method

.method public getBatteryCapacity()D
    .locals 2

    #@0
    .prologue
    .line 345
    const-string/jumbo v0, "battery.capacity"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@6
    move-result-wide v0

    #@7
    return-wide v0
.end method

.method public getNumSpeedSteps()I
    .locals 3

    #@0
    .prologue
    .line 353
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    #@2
    const-string/jumbo v2, "cpu.speeds"

    #@5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .line 354
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@b
    instance-of v1, v0, [Ljava/lang/Double;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 355
    check-cast v0, [Ljava/lang/Double;

    #@11
    .end local v0    # "value":Ljava/lang/Object;
    array-length v1, v0

    #@12
    return v1

    #@13
    .line 357
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    #@14
    return v1
.end method
