.class public Lcom/android/commands/monkey/MonkeySourceRandom;
.super Ljava/lang/Object;
.source "MonkeySourceRandom.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field public static final FACTORZ_COUNT:I = 0xc

.field public static final FACTOR_ANYTHING:I = 0xb

.field public static final FACTOR_APPSWITCH:I = 0x9

.field public static final FACTOR_FLIP:I = 0xa

.field public static final FACTOR_MAJORNAV:I = 0x7

.field public static final FACTOR_MOTION:I = 0x1

.field public static final FACTOR_NAV:I = 0x6

.field public static final FACTOR_PERMISSION:I = 0x5

.field public static final FACTOR_PINCHZOOM:I = 0x2

.field public static final FACTOR_ROTATION:I = 0x4

.field public static final FACTOR_SYSOPS:I = 0x8

.field public static final FACTOR_TOUCH:I = 0x0

.field public static final FACTOR_TRACKBALL:I = 0x3

.field private static final GESTURE_DRAG:I = 0x1

.field private static final GESTURE_PINCH_OR_ZOOM:I = 0x2

.field private static final GESTURE_TAP:I

.field private static final MAJOR_NAV_KEYS:[I

.field private static final NAV_KEYS:[I

.field private static final PHYSICAL_KEY_EXISTS:[Z

.field private static final SCREEN_ROTATION_DEGREES:[I

.field private static final SYS_KEYS:[I


# instance fields
.field private mEventCount:I

.field private mFactors:[F

.field private mKeyboardOpen:Z

.field private mMainApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionUtil:Lcom/android/commands/monkey/MonkeyPermissionUtil;

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mRandom:Ljava/util/Random;

.field private mThrottle:J

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 38
    const/16 v1, 0x13

    #@3
    const/16 v2, 0x14

    #@5
    .line 39
    const/16 v3, 0x15

    #@7
    const/16 v4, 0x16

    #@9
    .line 37
    filled-new-array {v1, v2, v3, v4}, [I

    #@c
    move-result-object v1

    #@d
    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    #@f
    .line 46
    const/16 v1, 0x52

    #@11
    .line 47
    const/16 v2, 0x17

    #@13
    .line 45
    filled-new-array {v1, v2}, [I

    #@16
    move-result-object v1

    #@17
    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    #@19
    .line 50
    const/16 v1, 0x8

    #@1b
    new-array v1, v1, [I

    #@1d
    fill-array-data v1, :array_0

    #@20
    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    #@22
    .line 57
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    #@25
    move-result v1

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    new-array v1, v1, [Z

    #@2a
    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    #@2c
    .line 59
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    #@2f
    array-length v1, v1

    #@30
    if-ge v0, v1, :cond_0

    #@32
    .line 60
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    #@34
    aput-boolean v5, v1, v0

    #@36
    .line 59
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 63
    :cond_0
    const/4 v0, 0x0

    #@3a
    :goto_1
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    #@3c
    array-length v1, v1

    #@3d
    if-ge v0, v1, :cond_1

    #@3f
    .line 64
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    #@41
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    #@43
    aget v2, v2, v0

    #@45
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    #@47
    aget v3, v3, v0

    #@49
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    #@4c
    move-result v3

    #@4d
    aput-boolean v3, v1, v2

    #@4f
    .line 63
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_1

    #@52
    .line 69
    :cond_1
    const/4 v1, 0x0

    #@53
    .line 71
    const/4 v2, 0x2

    #@54
    .line 72
    const/4 v3, 0x3

    #@55
    .line 68
    filled-new-array {v1, v5, v2, v3}, [I

    #@58
    move-result-object v1

    #@59
    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SCREEN_ROTATION_DEGREES:[I

    #@5b
    .line 35
    return-void

    #@5c
    .line 50
    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x6
        0x18
        0x19
        0xa4
        0x5b
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/util/List;JZZ)V
    .locals 7
    .param p1, "random"    # Ljava/util/Random;
    .param p3, "throttle"    # J
    .param p5, "randomizeThrottle"    # Z
    .param p6, "permissionTargetSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Random;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;JZZ)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "MainApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v5, 0x0

    #@1
    const/high16 v4, 0x41700000    # 15.0f

    #@3
    const/high16 v3, 0x40000000    # 2.0f

    #@5
    const/4 v2, 0x0

    #@6
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 96
    const/16 v0, 0xc

    #@b
    new-array v0, v0, [F

    #@d
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@f
    .line 98
    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    #@11
    .line 101
    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    #@13
    .line 102
    const-wide/16 v0, 0x0

    #@15
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mThrottle:J

    #@17
    .line 105
    iput-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    #@19
    .line 127
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@1b
    aput v4, v0, v2

    #@1d
    .line 128
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@1f
    const/high16 v1, 0x41200000    # 10.0f

    #@21
    const/4 v2, 0x1

    #@22
    aput v1, v0, v2

    #@24
    .line 129
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@26
    const/4 v1, 0x3

    #@27
    aput v4, v0, v1

    #@29
    .line 131
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@2b
    const/4 v1, 0x4

    #@2c
    aput v5, v0, v1

    #@2e
    .line 132
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@30
    const/high16 v1, 0x41c80000    # 25.0f

    #@32
    const/4 v2, 0x6

    #@33
    aput v1, v0, v2

    #@35
    .line 133
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@37
    const/4 v1, 0x7

    #@38
    aput v4, v0, v1

    #@3a
    .line 134
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@3c
    const/16 v1, 0x8

    #@3e
    aput v3, v0, v1

    #@40
    .line 135
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@42
    const/16 v1, 0x9

    #@44
    aput v3, v0, v1

    #@46
    .line 136
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@48
    const/high16 v1, 0x3f800000    # 1.0f

    #@4a
    const/16 v2, 0xa

    #@4c
    aput v1, v0, v2

    #@4e
    .line 138
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@50
    const/4 v1, 0x5

    #@51
    aput v5, v0, v1

    #@53
    .line 139
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@55
    const/high16 v1, 0x41500000    # 13.0f

    #@57
    const/16 v2, 0xb

    #@59
    aput v1, v0, v2

    #@5b
    .line 140
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@5d
    const/4 v1, 0x2

    #@5e
    aput v3, v0, v1

    #@60
    .line 142
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@62
    .line 143
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/List;

    #@64
    .line 144
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    #@66
    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    #@69
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@6b
    .line 145
    new-instance v0, Lcom/android/commands/monkey/MonkeyPermissionUtil;

    #@6d
    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeyPermissionUtil;-><init>()V

    #@70
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mPermissionUtil:Lcom/android/commands/monkey/MonkeyPermissionUtil;

    #@72
    .line 146
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mPermissionUtil:Lcom/android/commands/monkey/MonkeyPermissionUtil;

    #@74
    invoke-virtual {v0, p6}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->setTargetSystemPackages(Z)V

    #@77
    .line 123
    return-void
.end method

.method private adjustEventFactors()Z
    .locals 13

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/high16 v12, 0x42c80000    # 100.0f

    #@3
    const/16 v11, 0xc

    #@5
    const/4 v10, 0x0

    #@6
    .line 154
    const/4 v6, 0x0

    #@7
    .line 155
    .local v6, "userSum":F
    const/4 v1, 0x0

    #@8
    .line 156
    .local v1, "defaultSum":F
    const/4 v0, 0x0

    #@9
    .line 157
    .local v0, "defaultCount":I
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_1

    #@c
    .line 158
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@e
    aget v7, v7, v4

    #@10
    cmpg-float v7, v7, v9

    #@12
    if-gtz v7, :cond_0

    #@14
    .line 159
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@16
    aget v7, v7, v4

    #@18
    sub-float/2addr v6, v7

    #@19
    .line 157
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 161
    :cond_0
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@1e
    aget v7, v7, v4

    #@20
    add-float/2addr v1, v7

    #@21
    .line 162
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_1

    #@24
    .line 167
    :cond_1
    cmpl-float v7, v6, v12

    #@26
    if-lez v7, :cond_2

    #@28
    .line 168
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v8, "** Event weights > 100%"

    #@2d
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 169
    return v10

    #@31
    .line 173
    :cond_2
    if-nez v0, :cond_4

    #@33
    const v7, 0x42c7cccd    # 99.9f

    #@36
    cmpg-float v7, v6, v7

    #@38
    if-ltz v7, :cond_3

    #@3a
    const v7, 0x42c83333    # 100.1f

    #@3d
    cmpl-float v7, v6, v7

    #@3f
    if-lez v7, :cond_4

    #@41
    .line 174
    :cond_3
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@43
    const-string/jumbo v8, "** Event weights != 100%"

    #@46
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@49
    .line 175
    return v10

    #@4a
    .line 179
    :cond_4
    sub-float v3, v12, v6

    #@4c
    .line 180
    .local v3, "defaultsTarget":F
    div-float v2, v3, v1

    #@4e
    .line 183
    .local v2, "defaultsAdjustment":F
    const/4 v4, 0x0

    #@4f
    :goto_2
    if-ge v4, v11, :cond_6

    #@51
    .line 184
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@53
    aget v7, v7, v4

    #@55
    cmpg-float v7, v7, v9

    #@57
    if-gtz v7, :cond_5

    #@59
    .line 185
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@5b
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@5d
    aget v8, v8, v4

    #@5f
    neg-float v8, v8

    #@60
    aput v8, v7, v4

    #@62
    .line 183
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@64
    goto :goto_2

    #@65
    .line 187
    :cond_5
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@67
    aget v8, v7, v4

    #@69
    mul-float/2addr v8, v2

    #@6a
    aput v8, v7, v4

    #@6c
    goto :goto_3

    #@6d
    .line 192
    :cond_6
    iget v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    #@6f
    if-lez v7, :cond_7

    #@71
    .line 193
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@73
    const-string/jumbo v8, "// Event percentages:"

    #@76
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@79
    .line 194
    const/4 v4, 0x0

    #@7a
    :goto_4
    if-ge v4, v11, :cond_7

    #@7c
    .line 195
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7e
    new-instance v8, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v9, "//   "

    #@86
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v8

    #@8e
    const-string/jumbo v9, ": "

    #@91
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v8

    #@95
    iget-object v9, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@97
    aget v9, v9, v4

    #@99
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    const-string/jumbo v9, "%"

    #@a0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v8

    #@a8
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ab
    .line 194
    add-int/lit8 v4, v4, 0x1

    #@ad
    goto :goto_4

    #@ae
    .line 199
    :cond_7
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeys()Z

    #@b1
    move-result v7

    #@b2
    if-nez v7, :cond_8

    #@b4
    .line 200
    return v10

    #@b5
    .line 204
    :cond_8
    const/4 v5, 0x0

    #@b6
    .line 205
    .local v5, "sum":F
    const/4 v4, 0x0

    #@b7
    :goto_5
    if-ge v4, v11, :cond_9

    #@b9
    .line 206
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@bb
    aget v7, v7, v4

    #@bd
    div-float/2addr v7, v12

    #@be
    add-float/2addr v5, v7

    #@bf
    .line 207
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@c1
    aput v5, v7, v4

    #@c3
    .line 205
    add-int/lit8 v4, v4, 0x1

    #@c5
    goto :goto_5

    #@c6
    .line 209
    :cond_9
    const/4 v7, 0x1

    #@c7
    return v7
.end method

.method private generateEvents()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x6

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v6, 0x1

    #@4
    .line 401
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@6
    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    #@9
    move-result v0

    #@a
    .line 402
    .local v0, "cls":F
    const/4 v4, 0x0

    #@b
    .line 404
    .local v4, "lastKey":I
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@d
    aget v7, v7, v5

    #@f
    cmpg-float v7, v0, v7

    #@11
    if-gez v7, :cond_0

    #@13
    .line 405
    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@15
    invoke-direct {p0, v6, v5}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    #@18
    .line 406
    return-void

    #@19
    .line 407
    :cond_0
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@1b
    aget v7, v7, v6

    #@1d
    cmpg-float v7, v0, v7

    #@1f
    if-gez v7, :cond_1

    #@21
    .line 408
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@23
    invoke-direct {p0, v5, v6}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    #@26
    .line 409
    return-void

    #@27
    .line 410
    :cond_1
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@29
    aget v7, v7, v8

    #@2b
    cmpg-float v7, v0, v7

    #@2d
    if-gez v7, :cond_2

    #@2f
    .line 411
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@31
    invoke-direct {p0, v5, v8}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    #@34
    .line 412
    return-void

    #@35
    .line 413
    :cond_2
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@37
    const/4 v8, 0x3

    #@38
    aget v7, v7, v8

    #@3a
    cmpg-float v7, v0, v7

    #@3c
    if-gez v7, :cond_3

    #@3e
    .line 414
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@40
    invoke-direct {p0, v5}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateTrackballEvent(Ljava/util/Random;)V

    #@43
    .line 415
    return-void

    #@44
    .line 416
    :cond_3
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@46
    const/4 v8, 0x4

    #@47
    aget v7, v7, v8

    #@49
    cmpg-float v7, v0, v7

    #@4b
    if-gez v7, :cond_4

    #@4d
    .line 417
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@4f
    invoke-direct {p0, v5}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateRotationEvent(Ljava/util/Random;)V

    #@52
    .line 418
    return-void

    #@53
    .line 419
    :cond_4
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@55
    const/4 v8, 0x5

    #@56
    aget v7, v7, v8

    #@58
    cmpg-float v7, v0, v7

    #@5a
    if-gez v7, :cond_5

    #@5c
    .line 420
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@5e
    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mPermissionUtil:Lcom/android/commands/monkey/MonkeyPermissionUtil;

    #@60
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@62
    invoke-virtual {v6, v7}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->generateRandomPermissionEvent(Ljava/util/Random;)Lcom/android/commands/monkey/MonkeyPermissionEvent;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/MonkeyEventQueue;->add(Ljava/lang/Object;)Z

    #@69
    .line 421
    return-void

    #@6a
    .line 426
    :cond_5
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@6c
    aget v7, v7, v10

    #@6e
    cmpg-float v7, v0, v7

    #@70
    if-gez v7, :cond_6

    #@72
    .line 427
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    #@74
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@76
    sget-object v9, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    #@78
    array-length v9, v9

    #@79
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    #@7c
    move-result v8

    #@7d
    aget v4, v7, v8

    #@7f
    .line 446
    :goto_0
    const/16 v7, 0x1a

    #@81
    if-eq v4, v7, :cond_5

    #@83
    .line 447
    if-eq v4, v10, :cond_5

    #@85
    .line 448
    const/16 v7, 0xdf

    #@87
    if-eq v4, v7, :cond_5

    #@89
    .line 449
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    #@8b
    aget-boolean v7, v7, v4

    #@8d
    .line 446
    if-eqz v7, :cond_5

    #@8f
    .line 454
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@91
    invoke-direct {v3, v5, v4}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@94
    .line 455
    .local v3, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@96
    invoke-virtual {v5, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@99
    .line 457
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@9b
    .end local v3    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    invoke-direct {v3, v6, v4}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@9e
    .line 458
    .restart local v3    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@a0
    invoke-virtual {v5, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@a3
    .line 400
    return-void

    #@a4
    .line 428
    .end local v3    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    :cond_6
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@a6
    const/4 v8, 0x7

    #@a7
    aget v7, v7, v8

    #@a9
    cmpg-float v7, v0, v7

    #@ab
    if-gez v7, :cond_7

    #@ad
    .line 429
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    #@af
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@b1
    sget-object v9, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    #@b3
    array-length v9, v9

    #@b4
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    #@b7
    move-result v8

    #@b8
    aget v4, v7, v8

    #@ba
    goto :goto_0

    #@bb
    .line 430
    :cond_7
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@bd
    const/16 v8, 0x8

    #@bf
    aget v7, v7, v8

    #@c1
    cmpg-float v7, v0, v7

    #@c3
    if-gez v7, :cond_8

    #@c5
    .line 431
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    #@c7
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@c9
    sget-object v9, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    #@cb
    array-length v9, v9

    #@cc
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    #@cf
    move-result v8

    #@d0
    aget v4, v7, v8

    #@d2
    goto :goto_0

    #@d3
    .line 432
    :cond_8
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@d5
    const/16 v8, 0x9

    #@d7
    aget v7, v7, v8

    #@d9
    cmpg-float v7, v0, v7

    #@db
    if-gez v7, :cond_9

    #@dd
    .line 433
    new-instance v1, Lcom/android/commands/monkey/MonkeyActivityEvent;

    #@df
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/List;

    #@e1
    .line 434
    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@e3
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/List;

    #@e5
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@e8
    move-result v7

    #@e9
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    #@ec
    move-result v6

    #@ed
    .line 433
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f0
    move-result-object v5

    #@f1
    check-cast v5, Landroid/content/ComponentName;

    #@f3
    invoke-direct {v1, v5}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    #@f6
    .line 435
    .local v1, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@f8
    invoke-virtual {v5, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@fb
    .line 436
    return-void

    #@fc
    .line 437
    .end local v1    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    :cond_9
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@fe
    const/16 v8, 0xa

    #@100
    aget v7, v7, v8

    #@102
    cmpg-float v7, v0, v7

    #@104
    if-gez v7, :cond_b

    #@106
    .line 438
    new-instance v2, Lcom/android/commands/monkey/MonkeyFlipEvent;

    #@108
    iget-boolean v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    #@10a
    invoke-direct {v2, v7}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    #@10d
    .line 439
    .local v2, "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    iget-boolean v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    #@10f
    if-eqz v7, :cond_a

    #@111
    :goto_1
    iput-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    #@113
    .line 440
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@115
    invoke-virtual {v5, v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@118
    .line 441
    return-void

    #@119
    :cond_a
    move v5, v6

    #@11a
    .line 439
    goto :goto_1

    #@11b
    .line 443
    .end local v2    # "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    :cond_b
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@11d
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    #@120
    move-result v8

    #@121
    add-int/lit8 v8, v8, -0x1

    #@123
    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    #@126
    move-result v7

    #@127
    add-int/lit8 v4, v7, 0x1

    #@129
    goto/16 :goto_0
.end method

.method private generatePointerEvent(Ljava/util/Random;I)V
    .locals 16
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "gesture"    # I

    #@0
    .prologue
    .line 268
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    #@3
    move-result-object v11

    #@4
    const/4 v12, 0x0

    #@5
    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    #@8
    move-result-object v3

    #@9
    .line 270
    .local v3, "display":Landroid/view/Display;
    move-object/from16 v0, p0

    #@b
    move-object/from16 v1, p1

    #@d
    invoke-direct {v0, v1, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;

    #@10
    move-result-object v7

    #@11
    .line 271
    .local v7, "p1":Landroid/graphics/PointF;
    invoke-direct/range {p0 .. p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomVector(Ljava/util/Random;)Landroid/graphics/PointF;

    #@14
    move-result-object v9

    #@15
    .line 273
    .local v9, "v1":Landroid/graphics/PointF;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v4

    #@19
    .line 275
    .local v4, "downAt":J
    move-object/from16 v0, p0

    #@1b
    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@1d
    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@1f
    const/4 v13, 0x0

    #@20
    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@23
    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@26
    move-result-object v12

    #@27
    .line 277
    iget v13, v7, Landroid/graphics/PointF;->x:F

    #@29
    iget v14, v7, Landroid/graphics/PointF;->y:F

    #@2b
    const/4 v15, 0x0

    #@2c
    .line 275
    invoke-virtual {v12, v15, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@2f
    move-result-object v12

    #@30
    .line 278
    const/4 v13, 0x0

    #@31
    .line 275
    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@34
    move-result-object v12

    #@35
    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@38
    .line 281
    const/4 v11, 0x1

    #@39
    move/from16 v0, p2

    #@3b
    if-ne v0, v11, :cond_0

    #@3d
    .line 282
    const/16 v11, 0xa

    #@3f
    move-object/from16 v0, p1

    #@41
    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    #@44
    move-result v2

    #@45
    .line 283
    .local v2, "count":I
    const/4 v6, 0x0

    #@46
    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_2

    #@48
    .line 284
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, p1

    #@4c
    invoke-direct {v0, v1, v3, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    #@4f
    .line 286
    move-object/from16 v0, p0

    #@51
    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@53
    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@55
    const/4 v13, 0x2

    #@56
    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@59
    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@5c
    move-result-object v12

    #@5d
    .line 288
    iget v13, v7, Landroid/graphics/PointF;->x:F

    #@5f
    iget v14, v7, Landroid/graphics/PointF;->y:F

    #@61
    const/4 v15, 0x0

    #@62
    .line 286
    invoke-virtual {v12, v15, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@65
    move-result-object v12

    #@66
    .line 289
    const/4 v13, 0x1

    #@67
    .line 286
    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@6a
    move-result-object v12

    #@6b
    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@6e
    .line 283
    add-int/lit8 v6, v6, 0x1

    #@70
    goto :goto_0

    #@71
    .line 291
    .end local v2    # "count":I
    .end local v6    # "i":I
    :cond_0
    const/4 v11, 0x2

    #@72
    move/from16 v0, p2

    #@74
    if-ne v0, v11, :cond_2

    #@76
    .line 292
    move-object/from16 v0, p0

    #@78
    move-object/from16 v1, p1

    #@7a
    invoke-direct {v0, v1, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;

    #@7d
    move-result-object v8

    #@7e
    .line 293
    .local v8, "p2":Landroid/graphics/PointF;
    invoke-direct/range {p0 .. p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomVector(Ljava/util/Random;)Landroid/graphics/PointF;

    #@81
    move-result-object v10

    #@82
    .line 295
    .local v10, "v2":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    #@84
    move-object/from16 v1, p1

    #@86
    invoke-direct {v0, v1, v3, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    #@89
    .line 296
    move-object/from16 v0, p0

    #@8b
    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@8d
    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@8f
    const/16 v13, 0x105

    #@91
    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@94
    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@97
    move-result-object v12

    #@98
    .line 299
    iget v13, v7, Landroid/graphics/PointF;->x:F

    #@9a
    iget v14, v7, Landroid/graphics/PointF;->y:F

    #@9c
    const/4 v15, 0x0

    #@9d
    .line 296
    invoke-virtual {v12, v15, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@a0
    move-result-object v12

    #@a1
    .line 299
    iget v13, v8, Landroid/graphics/PointF;->x:F

    #@a3
    iget v14, v8, Landroid/graphics/PointF;->y:F

    #@a5
    const/4 v15, 0x1

    #@a6
    .line 296
    invoke-virtual {v12, v15, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@a9
    move-result-object v12

    #@aa
    .line 300
    const/4 v13, 0x1

    #@ab
    .line 296
    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@ae
    move-result-object v12

    #@af
    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@b2
    .line 302
    const/16 v11, 0xa

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    #@b9
    move-result v2

    #@ba
    .line 303
    .restart local v2    # "count":I
    const/4 v6, 0x0

    #@bb
    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v2, :cond_1

    #@bd
    .line 304
    move-object/from16 v0, p0

    #@bf
    move-object/from16 v1, p1

    #@c1
    invoke-direct {v0, v1, v3, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    #@c4
    .line 305
    move-object/from16 v0, p0

    #@c6
    move-object/from16 v1, p1

    #@c8
    invoke-direct {v0, v1, v3, v8, v10}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    #@cb
    .line 307
    move-object/from16 v0, p0

    #@cd
    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@cf
    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@d1
    const/4 v13, 0x2

    #@d2
    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@d5
    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@d8
    move-result-object v12

    #@d9
    .line 309
    iget v13, v7, Landroid/graphics/PointF;->x:F

    #@db
    iget v14, v7, Landroid/graphics/PointF;->y:F

    #@dd
    const/4 v15, 0x0

    #@de
    .line 307
    invoke-virtual {v12, v15, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@e1
    move-result-object v12

    #@e2
    .line 309
    iget v13, v8, Landroid/graphics/PointF;->x:F

    #@e4
    iget v14, v8, Landroid/graphics/PointF;->y:F

    #@e6
    const/4 v15, 0x1

    #@e7
    .line 307
    invoke-virtual {v12, v15, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@ea
    move-result-object v12

    #@eb
    .line 310
    const/4 v13, 0x1

    #@ec
    .line 307
    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@ef
    move-result-object v12

    #@f0
    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@f3
    .line 303
    add-int/lit8 v6, v6, 0x1

    #@f5
    goto :goto_1

    #@f6
    .line 313
    :cond_1
    move-object/from16 v0, p0

    #@f8
    move-object/from16 v1, p1

    #@fa
    invoke-direct {v0, v1, v3, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    #@fd
    .line 314
    move-object/from16 v0, p0

    #@ff
    move-object/from16 v1, p1

    #@101
    invoke-direct {v0, v1, v3, v8, v10}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    #@104
    .line 315
    move-object/from16 v0, p0

    #@106
    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@108
    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@10a
    const/16 v13, 0x106

    #@10c
    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@10f
    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@112
    move-result-object v12

    #@113
    .line 318
    iget v13, v7, Landroid/graphics/PointF;->x:F

    #@115
    iget v14, v7, Landroid/graphics/PointF;->y:F

    #@117
    const/4 v15, 0x0

    #@118
    .line 315
    invoke-virtual {v12, v15, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@11b
    move-result-object v12

    #@11c
    .line 318
    iget v13, v8, Landroid/graphics/PointF;->x:F

    #@11e
    iget v14, v8, Landroid/graphics/PointF;->y:F

    #@120
    const/4 v15, 0x1

    #@121
    .line 315
    invoke-virtual {v12, v15, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@124
    move-result-object v12

    #@125
    .line 319
    const/4 v13, 0x1

    #@126
    .line 315
    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@129
    move-result-object v12

    #@12a
    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@12d
    .line 322
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v8    # "p2":Landroid/graphics/PointF;
    .end local v10    # "v2":Landroid/graphics/PointF;
    :cond_2
    move-object/from16 v0, p0

    #@12f
    move-object/from16 v1, p1

    #@131
    invoke-direct {v0, v1, v3, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    #@134
    .line 323
    move-object/from16 v0, p0

    #@136
    iget-object v11, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@138
    new-instance v12, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@13a
    const/4 v13, 0x1

    #@13b
    invoke-direct {v12, v13}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@13e
    invoke-virtual {v12, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@141
    move-result-object v12

    #@142
    .line 325
    iget v13, v7, Landroid/graphics/PointF;->x:F

    #@144
    iget v14, v7, Landroid/graphics/PointF;->y:F

    #@146
    const/4 v15, 0x0

    #@147
    .line 323
    invoke-virtual {v12, v15, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@14a
    move-result-object v12

    #@14b
    .line 326
    const/4 v13, 0x0

    #@14c
    .line 323
    invoke-virtual {v12, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@14f
    move-result-object v12

    #@150
    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@153
    .line 267
    return-void
.end method

.method private generateRotationEvent(Ljava/util/Random;)V
    .locals 4
    .param p1, "random"    # Ljava/util/Random;

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@2
    new-instance v1, Lcom/android/commands/monkey/MonkeyRotationEvent;

    #@4
    .line 392
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->SCREEN_ROTATION_DEGREES:[I

    #@6
    .line 393
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->SCREEN_ROTATION_DEGREES:[I

    #@8
    array-length v3, v3

    #@9
    .line 392
    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    #@c
    move-result v3

    #@d
    aget v2, v2, v3

    #@f
    .line 394
    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    #@12
    move-result v3

    #@13
    .line 391
    invoke-direct {v1, v2, v3}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    #@16
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@19
    .line 390
    return-void
.end method

.method private generateTrackballEvent(Ljava/util/Random;)V
    .locals 13
    .param p1, "random"    # Ljava/util/Random;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/16 v12, 0xa

    #@3
    const/4 v11, 0x0

    #@4
    const/4 v7, 0x0

    #@5
    .line 359
    const/4 v4, 0x0

    #@6
    .local v4, "i":I
    :goto_0
    if-ge v4, v12, :cond_1

    #@8
    .line 361
    invoke-virtual {p1, v12}, Ljava/util/Random;->nextInt(I)I

    #@b
    move-result v5

    #@c
    add-int/lit8 v0, v5, -0x5

    #@e
    .line 362
    .local v0, "dX":I
    invoke-virtual {p1, v12}, Ljava/util/Random;->nextInt(I)I

    #@11
    move-result v5

    #@12
    add-int/lit8 v1, v5, -0x5

    #@14
    .line 364
    .local v1, "dY":I
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@16
    new-instance v5, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    #@18
    const/4 v9, 0x2

    #@19
    invoke-direct {v5, v9}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    #@1c
    .line 365
    int-to-float v9, v0

    #@1d
    int-to-float v10, v1

    #@1e
    .line 364
    invoke-virtual {v5, v7, v9, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@21
    move-result-object v9

    #@22
    .line 366
    if-lez v4, :cond_0

    #@24
    move v5, v6

    #@25
    .line 364
    :goto_1
    invoke-virtual {v9, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v8, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@2c
    .line 359
    add-int/lit8 v4, v4, 0x1

    #@2e
    goto :goto_0

    #@2f
    :cond_0
    move v5, v7

    #@30
    .line 366
    goto :goto_1

    #@31
    .line 370
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    :cond_1
    invoke-virtual {p1, v12}, Ljava/util/Random;->nextInt(I)I

    #@34
    move-result v5

    #@35
    if-nez v5, :cond_2

    #@37
    .line 371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3a
    move-result-wide v2

    #@3b
    .line 373
    .local v2, "downAt":J
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@3d
    new-instance v8, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    #@3f
    invoke-direct {v8, v7}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    #@42
    invoke-virtual {v8, v2, v3}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {v8, v7, v11, v11}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@49
    move-result-object v8

    #@4a
    invoke-virtual {v8, v6}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@4d
    move-result-object v8

    #@4e
    invoke-virtual {v5, v8}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@51
    .line 378
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@53
    new-instance v8, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    #@55
    invoke-direct {v8, v6}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    #@58
    invoke-virtual {v8, v2, v3}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6, v7, v11, v11}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v5, v6}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@67
    .line 358
    .end local v2    # "downAt":J
    :cond_2
    return-void
.end method

.method public static getKeyCode(Ljava/lang/String;)I
    .locals 1
    .param p0, "keyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getKeyName(I)Ljava/lang/String;
    .locals 1
    .param p0, "keycode"    # I

    #@0
    .prologue
    .line 108
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;
    .locals 3
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "display"    # Landroid/view/Display;

    #@0
    .prologue
    .line 330
    new-instance v0, Landroid/graphics/PointF;

    #@2
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    #@9
    move-result v1

    #@a
    int-to-float v1, v1

    #@b
    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    #@e
    move-result v2

    #@f
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    #@12
    move-result v2

    #@13
    int-to-float v2, v2

    #@14
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    #@17
    return-object v0
.end method

.method private randomVector(Ljava/util/Random;)Landroid/graphics/PointF;
    .locals 5
    .param p1, "random"    # Ljava/util/Random;

    #@0
    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    #@2
    const/high16 v3, 0x3f000000    # 0.5f

    #@4
    .line 334
    new-instance v0, Landroid/graphics/PointF;

    #@6
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    #@9
    move-result v1

    #@a
    sub-float/2addr v1, v3

    #@b
    mul-float/2addr v1, v4

    #@c
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    #@f
    move-result v2

    #@10
    sub-float/2addr v2, v3

    #@11
    mul-float/2addr v2, v4

    #@12
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    #@15
    return-object v0
.end method

.method private randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "point"    # Landroid/graphics/PointF;
    .param p4, "vector"    # Landroid/graphics/PointF;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 338
    iget v0, p3, Landroid/graphics/PointF;->x:F

    #@3
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    #@6
    move-result v1

    #@7
    iget v2, p4, Landroid/graphics/PointF;->x:F

    #@9
    mul-float/2addr v1, v2

    #@a
    add-float/2addr v0, v1

    #@b
    .line 339
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    #@e
    move-result v1

    #@f
    int-to-float v1, v1

    #@10
    .line 338
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@13
    move-result v0

    #@14
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    #@17
    move-result v0

    #@18
    iput v0, p3, Landroid/graphics/PointF;->x:F

    #@1a
    .line 340
    iget v0, p3, Landroid/graphics/PointF;->y:F

    #@1c
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    #@1f
    move-result v1

    #@20
    iget v2, p4, Landroid/graphics/PointF;->y:F

    #@22
    mul-float/2addr v1, v2

    #@23
    add-float/2addr v0, v1

    #@24
    .line 341
    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    #@27
    move-result v1

    #@28
    int-to-float v1, v1

    #@29
    .line 340
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@2c
    move-result v0

    #@2d
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    #@30
    move-result v0

    #@31
    iput v0, p3, Landroid/graphics/PointF;->y:F

    #@33
    .line 337
    return-void
.end method

.method private static validateKeyCategory(Ljava/lang/String;[IF)Z
    .locals 4
    .param p0, "catName"    # Ljava/lang/String;
    .param p1, "keys"    # [I
    .param p2, "factor"    # F

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 213
    const v1, 0x3dcccccd    # 0.1f

    #@4
    cmpg-float v1, p2, v1

    #@6
    if-gez v1, :cond_0

    #@8
    .line 214
    return v3

    #@9
    .line 216
    :cond_0
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@b
    if-ge v0, v1, :cond_2

    #@d
    .line 217
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    #@f
    aget v2, p1, v0

    #@11
    aget-boolean v1, v1, v2

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 218
    return v3

    #@16
    .line 216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 221
    :cond_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "** "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    const-string/jumbo v3, " has no physical keys but with factor "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    const-string/jumbo v3, "%."

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@44
    .line 222
    const/4 v1, 0x0

    #@45
    return v1
.end method

.method private validateKeys()Z
    .locals 4

    #@0
    .prologue
    .line 229
    const-string/jumbo v0, "NAV_KEYS"

    #@3
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    #@5
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@7
    const/4 v3, 0x6

    #@8
    aget v2, v2, v3

    #@a
    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 230
    const-string/jumbo v0, "MAJOR_NAV_KEYS"

    #@13
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    #@15
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@17
    const/4 v3, 0x7

    #@18
    aget v2, v2, v3

    #@1a
    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    #@1d
    move-result v0

    #@1e
    .line 229
    if-eqz v0, :cond_0

    #@20
    .line 231
    const-string/jumbo v0, "SYS_KEYS"

    #@23
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    #@25
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@27
    const/16 v3, 0x8

    #@29
    aget v2, v2, v3

    #@2b
    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    #@2e
    move-result v0

    #@2f
    .line 229
    :goto_0
    return v0

    #@30
    :cond_0
    const/4 v0, 0x0

    #@31
    goto :goto_0
.end method


# virtual methods
.method public generateActivity()V
    .locals 4

    #@0
    .prologue
    .line 481
    new-instance v0, Lcom/android/commands/monkey/MonkeyActivityEvent;

    #@2
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/List;

    #@4
    .line 482
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    #@6
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/List;

    #@8
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@b
    move-result v3

    #@c
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    #@f
    move-result v2

    #@10
    .line 481
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/content/ComponentName;

    #@16
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    #@19
    .line 483
    .local v0, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@1b
    invoke-virtual {v1, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@1e
    .line 480
    return-void
.end method

.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 2

    #@0
    .prologue
    .line 491
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@2
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 492
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateEvents()V

    #@b
    .line 494
    :cond_0
    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    iput v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    #@11
    .line 495
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@13
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/commands/monkey/MonkeyEvent;

    #@19
    .line 496
    .local v0, "e":Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@1b
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;

    #@1e
    .line 497
    return-object v0
.end method

.method public setFactors(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # F

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@2
    aput p2, v0, p1

    #@4
    .line 248
    return-void
.end method

.method public setFactors([F)V
    .locals 4
    .param p1, "factors"    # [F

    #@0
    .prologue
    .line 240
    const/16 v0, 0xc

    #@2
    .line 241
    .local v0, "c":I
    array-length v2, p1

    #@3
    .line 240
    const/16 v3, 0xc

    #@5
    .line 241
    if-ge v2, v3, :cond_0

    #@7
    .line 242
    array-length v0, p1

    #@8
    .line 244
    :cond_0
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@b
    .line 245
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@d
    aget v3, p1, v1

    #@f
    aput v3, v2, v1

    #@11
    .line 244
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 239
    :cond_1
    return-void
.end method

.method public setVerbose(I)V
    .locals 0
    .param p1, "verbose"    # I

    #@0
    .prologue
    .line 474
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    #@2
    .line 473
    return-void
.end method

.method public validate()Z
    .locals 3

    #@0
    .prologue
    .line 462
    const/4 v0, 0x1

    #@1
    .line 464
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    #@3
    const/4 v2, 0x5

    #@4
    aget v1, v1, v2

    #@6
    const/4 v2, 0x0

    #@7
    cmpl-float v1, v1, v2

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 465
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mPermissionUtil:Lcom/android/commands/monkey/MonkeyPermissionUtil;

    #@d
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->populatePermissionsMapping()Z

    #@10
    move-result v0

    #@11
    .line 466
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    #@13
    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    #@15
    const/4 v2, 0x2

    #@16
    if-lt v1, v2, :cond_0

    #@18
    .line 467
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mPermissionUtil:Lcom/android/commands/monkey/MonkeyPermissionUtil;

    #@1a
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->dump()V

    #@1d
    .line 470
    .end local v0    # "ret":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->adjustEventFactors()Z

    #@20
    move-result v1

    #@21
    and-int/2addr v1, v0

    #@22
    return v1
.end method
