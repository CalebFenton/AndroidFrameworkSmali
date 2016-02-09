.class public Lcom/android/commands/input/Input;
.super Ljava/lang/Object;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/input/Input$1;
    }
.end annotation


# static fields
.field private static final INVALID_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for command: "

.field private static final SOURCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Input"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    new-instance v0, Lcom/android/commands/input/Input$1;

    #@2
    invoke-direct {v0}, Lcom/android/commands/input/Input$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/commands/input/Input;->SOURCES:Ljava/util/Map;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static final getSource(II)I
    .locals 0
    .param p0, "inputSource"    # I
    .param p1, "defaultSource"    # I

    #@0
    .prologue
    .line 268
    if-nez p0, :cond_0

    #@2
    .end local p1    # "defaultSource":I
    :goto_0
    return p1

    #@3
    .restart local p1    # "defaultSource":I
    :cond_0
    move p1, p0

    #@4
    goto :goto_0
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 232
    const-string/jumbo v0, "Input"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "injectKeyEvent: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 233
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@1d
    move-result-object v0

    #@1e
    .line 234
    const/4 v1, 0x2

    #@1f
    .line 233
    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    #@22
    .line 231
    return-void
.end method

.method private injectMotionEvent(IIJFFF)V
    .locals 23
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "when"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F

    #@0
    .prologue
    .line 248
    const/high16 v21, 0x3f800000    # 1.0f

    #@2
    .line 249
    .local v21, "DEFAULT_SIZE":F
    const/16 v18, 0x0

    #@4
    .line 250
    .local v18, "DEFAULT_META_STATE":I
    const/high16 v19, 0x3f800000    # 1.0f

    #@6
    .line 251
    .local v19, "DEFAULT_PRECISION_X":F
    const/high16 v20, 0x3f800000    # 1.0f

    #@8
    .line 252
    .local v20, "DEFAULT_PRECISION_Y":F
    const/16 v16, 0x0

    #@a
    .line 253
    .local v16, "DEFAULT_DEVICE_ID":I
    const/16 v17, 0x0

    #@c
    .line 254
    .local v17, "DEFAULT_EDGE_FLAGS":I
    const/high16 v10, 0x3f800000    # 1.0f

    #@e
    .line 255
    const/4 v11, 0x0

    #@f
    const/high16 v12, 0x3f800000    # 1.0f

    #@11
    const/high16 v13, 0x3f800000    # 1.0f

    #@13
    const/4 v14, 0x0

    #@14
    .line 256
    const/4 v15, 0x0

    #@15
    move-wide/from16 v2, p3

    #@17
    move-wide/from16 v4, p3

    #@19
    move/from16 v6, p2

    #@1b
    move/from16 v7, p5

    #@1d
    move/from16 v8, p6

    #@1f
    move/from16 v9, p7

    #@21
    .line 254
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    #@24
    move-result-object v22

    #@25
    .line 257
    .local v22, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, v22

    #@27
    move/from16 v1, p1

    #@29
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    #@2c
    .line 258
    const-string/jumbo v2, "Input"

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "injectMotionEvent: "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    move-object/from16 v0, v22

    #@3d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 259
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@4b
    move-result-object v2

    #@4c
    .line 260
    const/4 v3, 0x2

    #@4d
    .line 259
    move-object/from16 v0, v22

    #@4f
    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    #@52
    .line 247
    return-void
.end method

.method private static final lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "alpha"    # F

    #@0
    .prologue
    .line 264
    sub-float v0, p1, p0

    #@2
    mul-float/2addr v0, p2

    #@3
    add-float/2addr v0, p0

    #@4
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 59
    new-instance v0, Lcom/android/commands/input/Input;

    #@2
    invoke-direct {v0}, Lcom/android/commands/input/Input;-><init>()V

    #@5
    invoke-direct {v0, p0}, Lcom/android/commands/input/Input;->run([Ljava/lang/String;)V

    #@8
    .line 58
    return-void
.end method

.method private run([Ljava/lang/String;)V
    .locals 16
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 63
    move-object/from16 v0, p1

    #@2
    array-length v1, v0

    #@3
    const/4 v3, 0x1

    #@4
    if-ge v1, v3, :cond_0

    #@6
    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/input/Input;->showUsage()V

    #@9
    .line 65
    return-void

    #@a
    .line 68
    :cond_0
    const/4 v11, 0x0

    #@b
    .line 69
    .local v11, "index":I
    aget-object v8, p1, v11

    #@d
    .line 70
    .local v8, "command":Ljava/lang/String;
    const/4 v2, 0x0

    #@e
    .line 71
    .local v2, "inputSource":I
    sget-object v1, Lcom/android/commands/input/Input;->SOURCES:Ljava/util/Map;

    #@10
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 72
    sget-object v1, Lcom/android/commands/input/Input;->SOURCES:Ljava/util/Map;

    #@18
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/Integer;

    #@1e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@21
    move-result v2

    #@22
    .line 73
    const/4 v11, 0x1

    #@23
    .line 74
    aget-object v8, p1, v11

    #@25
    .line 76
    :cond_1
    move-object/from16 v0, p1

    #@27
    array-length v1, v0

    #@28
    sub-int v13, v1, v11

    #@2a
    .line 79
    .local v13, "length":I
    :try_start_0
    const-string/jumbo v1, "text"

    #@2d
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 80
    const/4 v1, 0x2

    #@34
    if-ne v13, v1, :cond_8

    #@36
    .line 81
    const/16 v1, 0x101

    #@38
    invoke-static {v2, v1}, Lcom/android/commands/input/Input;->getSource(II)I

    #@3b
    move-result v2

    #@3c
    .line 82
    add-int/lit8 v1, v11, 0x1

    #@3e
    aget-object v1, p1, v1

    #@40
    move-object/from16 v0, p0

    #@42
    invoke-direct {v0, v2, v1}, Lcom/android/commands/input/Input;->sendText(ILjava/lang/String;)V

    #@45
    .line 83
    return-void

    #@46
    .line 85
    :cond_2
    const-string/jumbo v1, "keyevent"

    #@49
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_6

    #@4f
    .line 86
    const/4 v1, 0x2

    #@50
    if-lt v13, v1, :cond_8

    #@52
    .line 87
    const-string/jumbo v1, "--longpress"

    #@55
    add-int/lit8 v3, v11, 0x1

    #@57
    aget-object v3, p1, v3

    #@59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v14

    #@5d
    .line 88
    .local v14, "longpress":Z
    if-eqz v14, :cond_4

    #@5f
    add-int/lit8 v15, v11, 0x2

    #@61
    .line 89
    .local v15, "start":I
    :goto_0
    const/16 v1, 0x101

    #@63
    invoke-static {v2, v1}, Lcom/android/commands/input/Input;->getSource(II)I

    #@66
    move-result v2

    #@67
    .line 90
    if-le v13, v15, :cond_8

    #@69
    .line 91
    move v10, v15

    #@6a
    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_5

    #@6c
    .line 92
    aget-object v1, p1, v10

    #@6e
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    #@71
    move-result v12

    #@72
    .line 93
    .local v12, "keyCode":I
    if-nez v12, :cond_3

    #@74
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v3, "KEYCODE_"

    #@7c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    aget-object v3, p1, v10

    #@82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    #@8d
    move-result v12

    #@8e
    .line 96
    :cond_3
    move-object/from16 v0, p0

    #@90
    invoke-direct {v0, v2, v12, v14}, Lcom/android/commands/input/Input;->sendKeyEvent(IIZ)V

    #@93
    .line 91
    add-int/lit8 v10, v10, 0x1

    #@95
    goto :goto_1

    #@96
    .line 88
    .end local v10    # "i":I
    .end local v12    # "keyCode":I
    .end local v15    # "start":I
    :cond_4
    add-int/lit8 v15, v11, 0x1

    #@98
    .restart local v15    # "start":I
    goto :goto_0

    #@99
    .line 98
    .restart local v10    # "i":I
    :cond_5
    return-void

    #@9a
    .line 101
    .end local v10    # "i":I
    .end local v14    # "longpress":Z
    .end local v15    # "start":I
    :cond_6
    const-string/jumbo v1, "tap"

    #@9d
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v1

    #@a1
    if-eqz v1, :cond_7

    #@a3
    .line 102
    const/4 v1, 0x3

    #@a4
    if-ne v13, v1, :cond_8

    #@a6
    .line 103
    const/16 v1, 0x1002

    #@a8
    invoke-static {v2, v1}, Lcom/android/commands/input/Input;->getSource(II)I

    #@ab
    move-result v2

    #@ac
    .line 104
    add-int/lit8 v1, v11, 0x1

    #@ae
    aget-object v1, p1, v1

    #@b0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@b3
    move-result v1

    #@b4
    .line 105
    add-int/lit8 v3, v11, 0x2

    #@b6
    aget-object v3, p1, v3

    #@b8
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@bb
    move-result v3

    #@bc
    .line 104
    move-object/from16 v0, p0

    #@be
    invoke-direct {v0, v2, v1, v3}, Lcom/android/commands/input/Input;->sendTap(IFF)V

    #@c1
    .line 106
    return-void

    #@c2
    .line 108
    :cond_7
    const-string/jumbo v1, "swipe"

    #@c5
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v1

    #@c9
    if-eqz v1, :cond_9

    #@cb
    .line 109
    const/4 v7, -0x1

    #@cc
    .line 110
    .local v7, "duration":I
    const/16 v1, 0x1002

    #@ce
    invoke-static {v2, v1}, Lcom/android/commands/input/Input;->getSource(II)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@d1
    move-result v2

    #@d2
    .line 111
    packed-switch v13, :pswitch_data_0

    #@d5
    .line 141
    .end local v7    # "duration":I
    :cond_8
    :goto_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d7
    new-instance v3, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v4, "Error: Invalid arguments for command: "

    #@df
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v3

    #@e3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v3

    #@e7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v3

    #@eb
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ee
    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/input/Input;->showUsage()V

    #@f1
    .line 62
    return-void

    #@f2
    .line 113
    .restart local v7    # "duration":I
    :pswitch_0
    add-int/lit8 v1, v11, 0x5

    #@f4
    :try_start_1
    aget-object v1, p1, v1

    #@f6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f9
    move-result v7

    #@fa
    .line 116
    :pswitch_1
    add-int/lit8 v1, v11, 0x1

    #@fc
    aget-object v1, p1, v1

    #@fe
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@101
    move-result v3

    #@102
    add-int/lit8 v1, v11, 0x2

    #@104
    aget-object v1, p1, v1

    #@106
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@109
    move-result v4

    #@10a
    .line 117
    add-int/lit8 v1, v11, 0x3

    #@10c
    aget-object v1, p1, v1

    #@10e
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@111
    move-result v5

    #@112
    add-int/lit8 v1, v11, 0x4

    #@114
    aget-object v1, p1, v1

    #@116
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@119
    move-result v6

    #@11a
    move-object/from16 v1, p0

    #@11c
    .line 115
    invoke-direct/range {v1 .. v7}, Lcom/android/commands/input/Input;->sendSwipe(IFFFFI)V

    #@11f
    .line 119
    return-void

    #@120
    .line 121
    .end local v7    # "duration":I
    :cond_9
    const-string/jumbo v1, "press"

    #@123
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@126
    move-result v1

    #@127
    if-eqz v1, :cond_a

    #@129
    .line 122
    const v1, 0x10004

    #@12c
    invoke-static {v2, v1}, Lcom/android/commands/input/Input;->getSource(II)I

    #@12f
    move-result v2

    #@130
    .line 123
    const/4 v1, 0x1

    #@131
    if-ne v13, v1, :cond_8

    #@133
    .line 124
    const/4 v1, 0x0

    #@134
    const/4 v3, 0x0

    #@135
    move-object/from16 v0, p0

    #@137
    invoke-direct {v0, v2, v1, v3}, Lcom/android/commands/input/Input;->sendTap(IFF)V

    #@13a
    .line 125
    return-void

    #@13b
    .line 127
    :cond_a
    const-string/jumbo v1, "roll"

    #@13e
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@141
    move-result v1

    #@142
    if-eqz v1, :cond_b

    #@144
    .line 128
    const v1, 0x10004

    #@147
    invoke-static {v2, v1}, Lcom/android/commands/input/Input;->getSource(II)I

    #@14a
    move-result v2

    #@14b
    .line 129
    const/4 v1, 0x3

    #@14c
    if-ne v13, v1, :cond_8

    #@14e
    .line 130
    add-int/lit8 v1, v11, 0x1

    #@150
    aget-object v1, p1, v1

    #@152
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@155
    move-result v1

    #@156
    .line 131
    add-int/lit8 v3, v11, 0x2

    #@158
    aget-object v3, p1, v3

    #@15a
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@15d
    move-result v3

    #@15e
    .line 130
    move-object/from16 v0, p0

    #@160
    invoke-direct {v0, v2, v1, v3}, Lcom/android/commands/input/Input;->sendMove(IFF)V

    #@163
    .line 132
    return-void

    #@164
    .line 135
    :cond_b
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@166
    new-instance v3, Ljava/lang/StringBuilder;

    #@168
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16b
    const-string/jumbo v4, "Error: Unknown command: "

    #@16e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v3

    #@172
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v3

    #@176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179
    move-result-object v3

    #@17a
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@17d
    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/input/Input;->showUsage()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@180
    .line 137
    return-void

    #@181
    .line 139
    :catch_0
    move-exception v9

    #@182
    .local v9, "ex":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    #@184
    .line 111
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendKeyEvent(IIZ)V
    .locals 14
    .param p1, "inputSource"    # I
    .param p2, "keyCode"    # I
    .param p3, "longpress"    # Z

    #@0
    .prologue
    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 184
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    #@6
    const/4 v6, 0x0

    #@7
    const/4 v8, 0x0

    #@8
    const/4 v9, 0x0

    #@9
    .line 185
    const/4 v10, -0x1

    #@a
    const/4 v11, 0x0

    #@b
    const/4 v12, 0x0

    #@c
    move-wide v4, v2

    #@d
    move/from16 v7, p2

    #@f
    move v13, p1

    #@10
    .line 184
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@13
    invoke-direct {p0, v1}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    #@16
    .line 186
    if-eqz p3, :cond_0

    #@18
    .line 187
    new-instance v1, Landroid/view/KeyEvent;

    #@1a
    const/4 v6, 0x0

    #@1b
    const/4 v8, 0x1

    #@1c
    const/4 v9, 0x0

    #@1d
    .line 188
    const/4 v10, -0x1

    #@1e
    const/4 v11, 0x0

    #@1f
    const/16 v12, 0x80

    #@21
    move-wide v4, v2

    #@22
    move/from16 v7, p2

    #@24
    move v13, p1

    #@25
    .line 187
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@28
    invoke-direct {p0, v1}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    #@2b
    .line 191
    :cond_0
    new-instance v1, Landroid/view/KeyEvent;

    #@2d
    const/4 v6, 0x1

    #@2e
    const/4 v8, 0x0

    #@2f
    const/4 v9, 0x0

    #@30
    .line 192
    const/4 v10, -0x1

    #@31
    const/4 v11, 0x0

    #@32
    const/4 v12, 0x0

    #@33
    move-wide v4, v2

    #@34
    move/from16 v7, p2

    #@36
    move v13, p1

    #@37
    .line 191
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@3a
    invoke-direct {p0, v1}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    #@3d
    .line 182
    return-void
.end method

.method private sendMove(IFF)V
    .locals 9
    .param p1, "inputSource"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    #@0
    .prologue
    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 228
    .local v4, "now":J
    const/4 v3, 0x2

    #@5
    const/4 v8, 0x0

    #@6
    move-object v1, p0

    #@7
    move v2, p1

    #@8
    move v6, p2

    #@9
    move v7, p3

    #@a
    invoke-direct/range {v1 .. v8}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    #@d
    .line 226
    return-void
.end method

.method private sendSwipe(IFFFFI)V
    .locals 18
    .param p1, "inputSource"    # I
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "duration"    # I

    #@0
    .prologue
    .line 202
    if-gez p6, :cond_0

    #@2
    .line 203
    const/16 p6, 0x12c

    #@4
    .line 205
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v6

    #@8
    .line 206
    .local v6, "now":J
    const/4 v5, 0x0

    #@9
    const/high16 v10, 0x3f800000    # 1.0f

    #@b
    move-object/from16 v3, p0

    #@d
    move/from16 v4, p1

    #@f
    move/from16 v8, p2

    #@11
    move/from16 v9, p3

    #@13
    invoke-direct/range {v3 .. v10}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    #@16
    .line 207
    move-wide/from16 v16, v6

    #@18
    .line 208
    .local v16, "startTime":J
    move/from16 v0, p6

    #@1a
    int-to-long v4, v0

    #@1b
    add-long v14, v16, v4

    #@1d
    .line 209
    .local v14, "endTime":J
    :goto_0
    cmp-long v3, v6, v14

    #@1f
    if-gez v3, :cond_1

    #@21
    .line 210
    sub-long v12, v6, v16

    #@23
    .line 211
    .local v12, "elapsedTime":J
    long-to-float v3, v12

    #@24
    move/from16 v0, p6

    #@26
    int-to-float v4, v0

    #@27
    div-float v2, v3, v4

    #@29
    .line 212
    .local v2, "alpha":F
    move/from16 v0, p2

    #@2b
    move/from16 v1, p4

    #@2d
    invoke-static {v0, v1, v2}, Lcom/android/commands/input/Input;->lerp(FFF)F

    #@30
    move-result v8

    #@31
    .line 213
    move/from16 v0, p3

    #@33
    move/from16 v1, p5

    #@35
    invoke-static {v0, v1, v2}, Lcom/android/commands/input/Input;->lerp(FFF)F

    #@38
    move-result v9

    #@39
    .line 212
    const/4 v5, 0x2

    #@3a
    .line 213
    const/high16 v10, 0x3f800000    # 1.0f

    #@3c
    move-object/from16 v3, p0

    #@3e
    move/from16 v4, p1

    #@40
    .line 212
    invoke-direct/range {v3 .. v10}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    #@43
    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@46
    move-result-wide v6

    #@47
    goto :goto_0

    #@48
    .line 216
    .end local v2    # "alpha":F
    .end local v12    # "elapsedTime":J
    :cond_1
    const/4 v5, 0x1

    #@49
    const/4 v10, 0x0

    #@4a
    move-object/from16 v3, p0

    #@4c
    move/from16 v4, p1

    #@4e
    move/from16 v8, p4

    #@50
    move/from16 v9, p5

    #@52
    invoke-direct/range {v3 .. v10}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    #@55
    .line 201
    return-void
.end method

.method private sendTap(IFF)V
    .locals 9
    .param p1, "inputSource"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    #@0
    .prologue
    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 197
    .local v4, "now":J
    const/4 v3, 0x0

    #@5
    const/high16 v8, 0x3f800000    # 1.0f

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move v6, p2

    #@a
    move v7, p3

    #@b
    invoke-direct/range {v1 .. v8}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    #@e
    .line 198
    const/4 v3, 0x1

    #@f
    const/4 v8, 0x0

    #@10
    move-object v1, p0

    #@11
    move v2, p1

    #@12
    move v6, p2

    #@13
    move v7, p3

    #@14
    invoke-direct/range {v1 .. v8}, Lcom/android/commands/input/Input;->injectMotionEvent(IIJFFF)V

    #@17
    .line 195
    return-void
.end method

.method private sendText(ILjava/lang/String;)V
    .locals 9
    .param p1, "source"    # I
    .param p2, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@5
    .line 155
    .local v0, "buff":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    #@6
    .line 156
    .local v3, "escapeFlag":Z
    const/4 v5, 0x0

    #@7
    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@a
    move-result v7

    #@b
    if-ge v5, v7, :cond_2

    #@d
    .line 157
    if-eqz v3, :cond_0

    #@f
    .line 158
    const/4 v3, 0x0

    #@10
    .line 159
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    #@13
    move-result v7

    #@14
    const/16 v8, 0x73

    #@16
    if-ne v7, v8, :cond_0

    #@18
    .line 160
    const/16 v7, 0x20

    #@1a
    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    #@1d
    .line 161
    add-int/lit8 v5, v5, -0x1

    #@1f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    #@22
    .line 164
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    #@25
    move-result v7

    #@26
    const/16 v8, 0x25

    #@28
    if-ne v7, v8, :cond_1

    #@2a
    .line 165
    const/4 v3, 0x1

    #@2b
    .line 156
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 169
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    #@35
    move-result-object v1

    #@36
    .line 171
    .local v1, "chars":[C
    const/4 v7, -0x1

    #@37
    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@3a
    move-result-object v6

    #@3b
    .line 172
    .local v6, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v6, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    #@3e
    move-result-object v4

    #@3f
    .line 173
    .local v4, "events":[Landroid/view/KeyEvent;
    const/4 v5, 0x0

    #@40
    :goto_1
    array-length v7, v4

    #@41
    if-ge v5, v7, :cond_4

    #@43
    .line 174
    aget-object v2, v4, v5

    #@45
    .line 175
    .local v2, "e":Landroid/view/KeyEvent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    #@48
    move-result v7

    #@49
    if-eq p1, v7, :cond_3

    #@4b
    .line 176
    invoke-virtual {v2, p1}, Landroid/view/KeyEvent;->setSource(I)V

    #@4e
    .line 178
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/commands/input/Input;->injectKeyEvent(Landroid/view/KeyEvent;)V

    #@51
    .line 173
    add-int/lit8 v5, v5, 0x1

    #@53
    goto :goto_1

    #@54
    .line 151
    .end local v2    # "e":Landroid/view/KeyEvent;
    :cond_4
    return-void
.end method

.method private showUsage()V
    .locals 5

    #@0
    .prologue
    .line 272
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v3, "Usage: input [<source>] <command> [<arg>...]"

    #@5
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 273
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    #@d
    .line 274
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f
    const-string/jumbo v3, "The sources are: "

    #@12
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@15
    .line 275
    sget-object v2, Lcom/android/commands/input/Input;->SOURCES:Ljava/util/Map;

    #@17
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "src$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/lang/String;

    #@2b
    .line 276
    .local v0, "src":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "      "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@44
    goto :goto_0

    #@45
    .line 278
    .end local v0    # "src":Ljava/lang/String;
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@47
    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    #@4a
    .line 279
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4c
    const-string/jumbo v3, "The commands and default sources are:"

    #@4f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@52
    .line 280
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@54
    const-string/jumbo v3, "      text <string> (Default: touchscreen)"

    #@57
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5a
    .line 281
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5c
    const-string/jumbo v3, "      keyevent [--longpress] <key code number or name> ... (Default: keyboard)"

    #@5f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@62
    .line 283
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@64
    const-string/jumbo v3, "      tap <x> <y> (Default: touchscreen)"

    #@67
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6a
    .line 284
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6c
    const-string/jumbo v3, "      swipe <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    #@6f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@72
    .line 286
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@74
    const-string/jumbo v3, "      press (Default: trackball)"

    #@77
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7a
    .line 287
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7c
    const-string/jumbo v3, "      roll <dx> <dy> (Default: trackball)"

    #@7f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@82
    .line 271
    return-void
.end method
