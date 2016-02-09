.class public Landroid/view/KeyCharacterMap;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyCharacterMap$KeyData;,
        Landroid/view/KeyCharacterMap$UnavailableException;,
        Landroid/view/KeyCharacterMap$FallbackAction;,
        Landroid/view/KeyCharacterMap$1;
    }
.end annotation


# static fields
.field private static final ACCENT_ACUTE:I = 0xb4

.field private static final ACCENT_BREVE:I = 0x2d8

.field private static final ACCENT_CARON:I = 0x2c7

.field private static final ACCENT_CEDILLA:I = 0xb8

.field private static final ACCENT_CIRCUMFLEX:I = 0x2c6

.field private static final ACCENT_CIRCUMFLEX_LEGACY:I = 0x5e

.field private static final ACCENT_COMMA_ABOVE:I = 0x1fbd

.field private static final ACCENT_COMMA_ABOVE_RIGHT:I = 0x2bc

.field private static final ACCENT_DOT_ABOVE:I = 0x2d9

.field private static final ACCENT_DOT_BELOW:I = 0x2e

.field private static final ACCENT_DOUBLE_ACUTE:I = 0x2dd

.field private static final ACCENT_GRAVE:I = 0x2cb

.field private static final ACCENT_GRAVE_LEGACY:I = 0x60

.field private static final ACCENT_HOOK_ABOVE:I = 0x2c0

.field private static final ACCENT_HORN:I = 0x27

.field private static final ACCENT_MACRON:I = 0xaf

.field private static final ACCENT_MACRON_BELOW:I = 0x2cd

.field private static final ACCENT_OGONEK:I = 0x2db

.field private static final ACCENT_REVERSED_COMMA_ABOVE:I = 0x2bd

.field private static final ACCENT_RING_ABOVE:I = 0x2da

.field private static final ACCENT_STROKE:I = 0x2d

.field private static final ACCENT_TILDE:I = 0x2dc

.field private static final ACCENT_TILDE_LEGACY:I = 0x7e

.field private static final ACCENT_TURNED_COMMA_ABOVE:I = 0x2bb

.field private static final ACCENT_UMLAUT:I = 0xa8

.field private static final ACCENT_VERTICAL_LINE_ABOVE:I = 0x2c8

.field private static final ACCENT_VERTICAL_LINE_BELOW:I = 0x2cc

.field public static final ALPHA:I = 0x3

.field public static final BUILT_IN_KEYBOARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CHAR_SPACE:I = 0x20

.field public static final COMBINING_ACCENT:I = -0x80000000

.field public static final COMBINING_ACCENT_MASK:I = 0x7fffffff

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyCharacterMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final FULL:I = 0x4

.field public static final HEX_INPUT:C = '\uef00'

.field public static final MODIFIER_BEHAVIOR_CHORDED:I = 0x0

.field public static final MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED:I = 0x1

.field public static final NUMERIC:I = 0x1

.field public static final PICKER_DIALOG_INPUT:C = '\uef01'

.field public static final PREDICTIVE:I = 0x2

.field public static final SPECIAL_FUNCTION:I = 0x5

.field public static final VIRTUAL_KEYBOARD:I = -0x1

.field private static final sAccentToCombining:Landroid/util/SparseIntArray;

.field private static final sCombiningToAccent:Landroid/util/SparseIntArray;

.field private static final sDeadKeyBuilder:Ljava/lang/StringBuilder;

.field private static final sDeadKeyCache:Landroid/util/SparseIntArray;


# instance fields
.field private mPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x302

    #@2
    const/16 v5, 0x300

    #@4
    const/16 v4, 0x2cb

    #@6
    const/16 v2, 0xb4

    #@8
    const/16 v3, 0x2d

    #@a
    .line 188
    new-instance v0, Landroid/util/SparseIntArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@f
    sput-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    #@11
    .line 189
    new-instance v0, Landroid/util/SparseIntArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@16
    sput-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    #@18
    .line 191
    invoke-static {v5, v4}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@1b
    .line 192
    const/16 v0, 0x301

    #@1d
    invoke-static {v0, v2}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@20
    .line 193
    const/16 v0, 0x2c6

    #@22
    invoke-static {v6, v0}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@25
    .line 194
    const/16 v0, 0x303

    #@27
    const/16 v1, 0x2dc

    #@29
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@2c
    .line 195
    const/16 v0, 0x304

    #@2e
    const/16 v1, 0xaf

    #@30
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@33
    .line 196
    const/16 v0, 0x306

    #@35
    const/16 v1, 0x2d8

    #@37
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@3a
    .line 197
    const/16 v0, 0x307

    #@3c
    const/16 v1, 0x2d9

    #@3e
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@41
    .line 198
    const/16 v0, 0x308

    #@43
    const/16 v1, 0xa8

    #@45
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@48
    .line 199
    const/16 v0, 0x309

    #@4a
    const/16 v1, 0x2c0

    #@4c
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@4f
    .line 200
    const/16 v0, 0x30a

    #@51
    const/16 v1, 0x2da

    #@53
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@56
    .line 201
    const/16 v0, 0x30b

    #@58
    const/16 v1, 0x2dd

    #@5a
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@5d
    .line 202
    const/16 v0, 0x30c

    #@5f
    const/16 v1, 0x2c7

    #@61
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@64
    .line 203
    const/16 v0, 0x30d

    #@66
    const/16 v1, 0x2c8

    #@68
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@6b
    .line 208
    const/16 v0, 0x312

    #@6d
    const/16 v1, 0x2bb

    #@6f
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@72
    .line 209
    const/16 v0, 0x313

    #@74
    const/16 v1, 0x1fbd

    #@76
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@79
    .line 210
    const/16 v0, 0x314

    #@7b
    const/16 v1, 0x2bd

    #@7d
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@80
    .line 211
    const/16 v0, 0x315

    #@82
    const/16 v1, 0x2bc

    #@84
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@87
    .line 212
    const/16 v0, 0x31b

    #@89
    const/16 v1, 0x27

    #@8b
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@8e
    .line 213
    const/16 v0, 0x323

    #@90
    const/16 v1, 0x2e

    #@92
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@95
    .line 215
    const/16 v0, 0x327

    #@97
    const/16 v1, 0xb8

    #@99
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@9c
    .line 216
    const/16 v0, 0x328

    #@9e
    const/16 v1, 0x2db

    #@a0
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@a3
    .line 217
    const/16 v0, 0x329

    #@a5
    const/16 v1, 0x2cc

    #@a7
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@aa
    .line 218
    const/16 v0, 0x331

    #@ac
    const/16 v1, 0x2cd

    #@ae
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@b1
    .line 219
    const/16 v0, 0x335

    #@b3
    invoke-static {v0, v3}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    #@b6
    .line 225
    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    #@b8
    const/16 v1, 0x340

    #@ba
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    #@bd
    .line 226
    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    #@bf
    const/16 v1, 0x341

    #@c1
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@c4
    .line 227
    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    #@c6
    const/16 v1, 0x343

    #@c8
    const/16 v2, 0x1fbd

    #@ca
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@cd
    .line 230
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    #@cf
    const/16 v1, 0x60

    #@d1
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    #@d4
    .line 231
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    #@d6
    const/16 v1, 0x5e

    #@d8
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    #@db
    .line 232
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    #@dd
    const/16 v1, 0x303

    #@df
    const/16 v2, 0x7e

    #@e1
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    #@e4
    .line 245
    new-instance v0, Landroid/util/SparseIntArray;

    #@e6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@e9
    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    #@eb
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    #@f2
    .line 250
    const/16 v0, 0x44

    #@f4
    const/16 v1, 0x110

    #@f6
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@f9
    .line 251
    const/16 v0, 0x47

    #@fb
    const/16 v1, 0x1e4

    #@fd
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@100
    .line 252
    const/16 v0, 0x48

    #@102
    const/16 v1, 0x126

    #@104
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@107
    .line 253
    const/16 v0, 0x49

    #@109
    const/16 v1, 0x197

    #@10b
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@10e
    .line 254
    const/16 v0, 0x4c

    #@110
    const/16 v1, 0x141

    #@112
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@115
    .line 255
    const/16 v0, 0x4f

    #@117
    const/16 v1, 0xd8

    #@119
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@11c
    .line 256
    const/16 v0, 0x54

    #@11e
    const/16 v1, 0x166

    #@120
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@123
    .line 257
    const/16 v0, 0x64

    #@125
    const/16 v1, 0x111

    #@127
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@12a
    .line 258
    const/16 v0, 0x67

    #@12c
    const/16 v1, 0x1e5

    #@12e
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@131
    .line 259
    const/16 v0, 0x68

    #@133
    const/16 v1, 0x127

    #@135
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@138
    .line 260
    const/16 v0, 0x69

    #@13a
    const/16 v1, 0x268

    #@13c
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@13f
    .line 261
    const/16 v0, 0x6c

    #@141
    const/16 v1, 0x142

    #@143
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@146
    .line 262
    const/16 v0, 0x6f

    #@148
    const/16 v1, 0xf8

    #@14a
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@14d
    .line 263
    const/16 v0, 0x74

    #@14f
    const/16 v1, 0x167

    #@151
    invoke-static {v3, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    #@154
    .line 276
    new-instance v0, Landroid/view/KeyCharacterMap$1;

    #@156
    invoke-direct {v0}, Landroid/view/KeyCharacterMap$1;-><init>()V

    #@159
    .line 275
    sput-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15b
    .line 32
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "ptr"    # J

    #@0
    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 312
    iput-wide p1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@5
    .line 311
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 301
    if-nez p1, :cond_0

    #@5
    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "parcel must not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 304
    :cond_0
    invoke-static {p1}, Landroid/view/KeyCharacterMap;->nativeReadFromParcel(Landroid/os/Parcel;)J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@14
    .line 305
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@16
    const-wide/16 v2, 0x0

    #@18
    cmp-long v0, v0, v2

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 306
    new-instance v0, Ljava/lang/RuntimeException;

    #@1e
    const-string/jumbo v1, "Could not read KeyCharacterMap from parcel."

    #@21
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 300
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyCharacterMap;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/KeyCharacterMap;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private static addCombining(II)V
    .locals 1
    .param p0, "combining"    # I
    .param p1, "accent"    # I

    #@0
    .prologue
    .line 236
    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->append(II)V

    #@5
    .line 237
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    #@7
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->append(II)V

    #@a
    .line 235
    return-void
.end method

.method private static addDeadKey(III)V
    .locals 4
    .param p0, "accent"    # I
    .param p1, "c"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 267
    sget-object v2, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->get(I)I

    #@5
    move-result v1

    #@6
    .line 268
    .local v1, "combining":I
    if-nez v1, :cond_0

    #@8
    .line 269
    new-instance v2, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v3, "Invalid dead key declaration."

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 271
    :cond_0
    shl-int/lit8 v2, v1, 0x10

    #@13
    or-int v0, v2, p1

    #@15
    .line 272
    .local v0, "combination":I
    sget-object v2, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    #@17
    invoke-virtual {v2, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@1a
    .line 266
    return-void
.end method

.method public static deviceHasKey(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 697
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@4
    move-result-object v0

    #@5
    const/4 v1, 0x1

    #@6
    new-array v1, v1, [I

    #@8
    aput p0, v1, v2

    #@a
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    #@d
    move-result-object v0

    #@e
    aget-boolean v0, v0, v2

    #@10
    return v0
.end method

.method public static deviceHasKeys([I)[Z
    .locals 1
    .param p0, "keyCodes"    # [I

    #@0
    .prologue
    .line 711
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getDeadChar(II)I
    .locals 8
    .param p0, "accent"    # I
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 488
    if-eq p1, p0, :cond_0

    #@4
    const/16 v4, 0x20

    #@6
    if-ne v4, p1, :cond_1

    #@8
    .line 492
    :cond_0
    return p0

    #@9
    .line 495
    :cond_1
    sget-object v4, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    #@b
    invoke-virtual {v4, p0}, Landroid/util/SparseIntArray;->get(I)I

    #@e
    move-result v2

    #@f
    .line 496
    .local v2, "combining":I
    if-nez v2, :cond_2

    #@11
    .line 497
    return v5

    #@12
    .line 500
    :cond_2
    shl-int/lit8 v4, v2, 0x10

    #@14
    or-int v0, v4, p1

    #@16
    .line 502
    .local v0, "combination":I
    sget-object v5, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    #@18
    monitor-enter v5

    #@19
    .line 503
    :try_start_0
    sget-object v4, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    #@1b
    const/4 v6, -0x1

    #@1c
    invoke-virtual {v4, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    #@1f
    move-result v1

    #@20
    .line 504
    .local v1, "combined":I
    if-ne v1, v7, :cond_3

    #@22
    .line 505
    sget-object v4, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    #@24
    const/4 v6, 0x0

    #@25
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@28
    .line 506
    sget-object v4, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    #@2a
    int-to-char v6, p1

    #@2b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    .line 507
    sget-object v4, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    #@30
    int-to-char v6, v2

    #@31
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 508
    sget-object v4, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    #@36
    sget-object v6, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    #@38
    invoke-static {v4, v6}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 509
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@3f
    move-result v4

    #@40
    const/4 v6, 0x0

    #@41
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->codePointCount(II)I

    #@44
    move-result v4

    #@45
    const/4 v6, 0x1

    #@46
    if-ne v4, v6, :cond_4

    #@48
    .line 510
    const/4 v4, 0x0

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/String;->codePointAt(I)I

    #@4c
    move-result v1

    #@4d
    .line 511
    :goto_0
    sget-object v4, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    #@4f
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    monitor-exit v5

    #@53
    .line 514
    return v1

    #@54
    .line 510
    .restart local v3    # "result":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    #@55
    goto :goto_0

    #@56
    .line 502
    .end local v1    # "combined":I
    .end local v3    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@57
    monitor-exit v5

    #@58
    throw v4
.end method

.method public static load(I)Landroid/view/KeyCharacterMap;
    .locals 5
    .param p0, "deviceId"    # I

    #@0
    .prologue
    .line 333
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@3
    move-result-object v0

    #@4
    .line 334
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    #@7
    move-result-object v1

    #@8
    .line 335
    .local v1, "inputDevice":Landroid/view/InputDevice;
    if-nez v1, :cond_0

    #@a
    .line 336
    const/4 v2, -0x1

    #@b
    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    #@e
    move-result-object v1

    #@f
    .line 337
    if-nez v1, :cond_0

    #@11
    .line 338
    new-instance v2, Landroid/view/KeyCharacterMap$UnavailableException;

    #@13
    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Could not load key character map for device "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 338
    invoke-direct {v2, v3}, Landroid/view/KeyCharacterMap$UnavailableException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 342
    :cond_0
    invoke-virtual {v1}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@2e
    move-result-object v2

    #@2f
    return-object v2
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeGetCharacter(JII)C
.end method

.method private static native nativeGetDisplayLabel(JI)C
.end method

.method private static native nativeGetEvents(J[C)[Landroid/view/KeyEvent;
.end method

.method private static native nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z
.end method

.method private static native nativeGetKeyboardType(J)I
.end method

.method private static native nativeGetMatch(JI[CI)C
.end method

.method private static native nativeGetNumber(JI)C
.end method

.method private static native nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 724
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 317
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 318
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@a
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeDispose(J)V

    #@d
    .line 319
    iput-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@f
    .line 316
    :cond_0
    return-void
.end method

.method public get(II)I
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    #@0
    .prologue
    .line 367
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@3
    move-result p2

    #@4
    .line 368
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@6
    invoke-static {v2, v3, p1, p2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    #@9
    move-result v0

    #@a
    .line 370
    .local v0, "ch":C
    sget-object v2, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    #@f
    move-result v1

    #@10
    .line 371
    .local v1, "map":I
    if-eqz v1, :cond_0

    #@12
    .line 372
    const/high16 v2, -0x80000000

    #@14
    or-int/2addr v2, v1

    #@15
    return v2

    #@16
    .line 374
    :cond_0
    return v0
.end method

.method public getDisplayLabel(I)C
    .locals 2
    .param p1, "keyCode"    # I

    #@0
    .prologue
    .line 474
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getEvents([C)[Landroid/view/KeyEvent;
    .locals 2
    .param p1, "chars"    # [C

    #@0
    .prologue
    .line 604
    if-nez p1, :cond_0

    #@2
    .line 605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "chars must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 607
    :cond_0
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@d
    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetEvents(J[C)[Landroid/view/KeyEvent;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    #@0
    .prologue
    .line 396
    invoke-static {}, Landroid/view/KeyCharacterMap$FallbackAction;->obtain()Landroid/view/KeyCharacterMap$FallbackAction;

    #@3
    move-result-object v0

    #@4
    .line 397
    .local v0, "action":Landroid/view/KeyCharacterMap$FallbackAction;
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@7
    move-result p2

    #@8
    .line 398
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@a
    invoke-static {v2, v3, p1, p2, v0}, Landroid/view/KeyCharacterMap;->nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 399
    iget v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    #@12
    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@15
    move-result v1

    #@16
    iput v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    #@18
    .line 400
    return-object v0

    #@19
    .line 402
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    #@1c
    .line 403
    const/4 v1, 0x0

    #@1d
    return-object v1
.end method

.method public getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "results"    # Landroid/view/KeyCharacterMap$KeyData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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
    .line 562
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@6
    array-length v1, v1

    #@7
    const/4 v2, 0x4

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 563
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@c
    .line 564
    const-string/jumbo v2, "results.meta.length must be >= 4"

    #@f
    .line 563
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 567
    :cond_0
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@15
    invoke-static {v2, v3, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    #@18
    move-result v0

    #@19
    .line 568
    .local v0, "displayLabel":C
    if-nez v0, :cond_1

    #@1b
    .line 569
    return v4

    #@1c
    .line 572
    :cond_1
    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->displayLabel:C

    #@1e
    .line 573
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@20
    invoke-static {v2, v3, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    #@23
    move-result v1

    #@24
    iput-char v1, p2, Landroid/view/KeyCharacterMap$KeyData;->number:C

    #@26
    .line 574
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@28
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@2a
    invoke-static {v2, v3, p1, v4}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    #@2d
    move-result v2

    #@2e
    aput-char v2, v1, v4

    #@30
    .line 575
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@32
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@34
    invoke-static {v2, v3, p1, v5}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    #@37
    move-result v2

    #@38
    aput-char v2, v1, v5

    #@3a
    .line 576
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@3c
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@3e
    invoke-static {v2, v3, p1, v6}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    #@41
    move-result v2

    #@42
    aput-char v2, v1, v6

    #@44
    .line 577
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@46
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@48
    invoke-static {v2, v3, p1, v7}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    #@4b
    move-result v2

    #@4c
    aput-char v2, v1, v7

    #@4e
    .line 579
    return v5
.end method

.method public getKeyboardType()I
    .locals 2

    #@0
    .prologue
    .line 644
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeGetKeyboardType(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMatch(I[C)C
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "chars"    # [C

    #@0
    .prologue
    .line 444
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getMatch(I[CI)C
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "chars"    # [C
    .param p3, "metaState"    # I

    #@0
    .prologue
    .line 458
    if-nez p2, :cond_0

    #@2
    .line 459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "chars must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 462
    :cond_0
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@e
    move-result p3

    #@f
    .line 463
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@11
    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/KeyCharacterMap;->nativeGetMatch(JI[CI)C

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public getModifierBehavior()I
    .locals 1

    #@0
    .prologue
    .line 680
    invoke-virtual {p0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 685
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 683
    :pswitch_0
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 680
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getNumber(I)C
    .locals 2
    .param p1, "keyCode"    # I

    #@0
    .prologue
    .line 428
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPrintingKey(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    #@0
    .prologue
    .line 617
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@2
    invoke-static {v2, v3, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Ljava/lang/Character;->getType(C)I

    #@9
    move-result v0

    #@a
    .line 619
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    #@d
    .line 628
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 626
    :pswitch_0
    const/4 v1, 0x0

    #@10
    return v1

    #@11
    .line 619
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 716
    if-nez p1, :cond_0

    #@2
    .line 717
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "parcel must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 719
    :cond_0
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    #@d
    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    #@10
    .line 715
    return-void
.end method
