.class public Landroid/view/KeyCharacterMap;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyCharacterMap$UnavailableException;,
        Landroid/view/KeyCharacterMap$FallbackAction;,
        Landroid/view/KeyCharacterMap$KeyData;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACCENT_ACUTE:I = 0xb4

.field private static final blacklist ACCENT_APOSTROPHE:I = 0x27

.field private static final greylist-max-o ACCENT_BREVE:I = 0x2d8

.field private static final greylist-max-o ACCENT_CARON:I = 0x2c7

.field private static final greylist-max-o ACCENT_CEDILLA:I = 0xb8

.field private static final greylist-max-o ACCENT_CIRCUMFLEX:I = 0x2c6

.field private static final greylist-max-o ACCENT_CIRCUMFLEX_LEGACY:I = 0x5e

.field private static final greylist-max-o ACCENT_COMMA_ABOVE:I = 0x1fbd

.field private static final greylist-max-o ACCENT_COMMA_ABOVE_RIGHT:I = 0x2bc

.field private static final greylist-max-o ACCENT_DOT_ABOVE:I = 0x2d9

.field private static final greylist-max-o ACCENT_DOT_BELOW:I = 0x2e

.field private static final greylist-max-o ACCENT_DOUBLE_ACUTE:I = 0x2dd

.field private static final greylist-max-o ACCENT_GRAVE:I = 0x2cb

.field private static final greylist-max-o ACCENT_GRAVE_LEGACY:I = 0x60

.field private static final greylist-max-o ACCENT_HOOK_ABOVE:I = 0x2c0

.field private static final greylist-max-o ACCENT_HORN:I = 0x27

.field private static final greylist-max-o ACCENT_MACRON:I = 0xaf

.field private static final greylist-max-o ACCENT_MACRON_BELOW:I = 0x2cd

.field private static final greylist-max-o ACCENT_OGONEK:I = 0x2db

.field private static final blacklist ACCENT_QUOTATION_MARK:I = 0x22

.field private static final greylist-max-o ACCENT_REVERSED_COMMA_ABOVE:I = 0x2bd

.field private static final greylist-max-o ACCENT_RING_ABOVE:I = 0x2da

.field private static final greylist-max-o ACCENT_STROKE:I = 0x2d

.field private static final greylist-max-o ACCENT_TILDE:I = 0x2dc

.field private static final greylist-max-o ACCENT_TILDE_LEGACY:I = 0x7e

.field private static final greylist-max-o ACCENT_TURNED_COMMA_ABOVE:I = 0x2bb

.field private static final greylist-max-o ACCENT_UMLAUT:I = 0xa8

.field private static final greylist-max-o ACCENT_VERTICAL_LINE_ABOVE:I = 0x2c8

.field private static final greylist-max-o ACCENT_VERTICAL_LINE_BELOW:I = 0x2cc

.field public static final whitelist ALPHA:I = 0x3

.field public static final whitelist BUILT_IN_KEYBOARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o CHAR_SPACE:I = 0x20

.field public static final whitelist COMBINING_ACCENT:I = -0x80000000

.field public static final whitelist COMBINING_ACCENT_MASK:I = 0x7fffffff

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyCharacterMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FULL:I = 0x4

.field public static final whitelist HEX_INPUT:C = '\uef00'

.field public static final whitelist MODIFIER_BEHAVIOR_CHORDED:I = 0x0

.field public static final whitelist MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED:I = 0x1

.field public static final whitelist NUMERIC:I = 0x1

.field public static final whitelist PICKER_DIALOG_INPUT:C = '\uef01'

.field public static final whitelist PREDICTIVE:I = 0x2

.field public static final whitelist SPECIAL_FUNCTION:I = 0x5

.field public static final whitelist VIRTUAL_KEYBOARD:I = -0x1

.field private static final greylist-max-o sAccentToCombining:Landroid/util/SparseIntArray;

.field private static final greylist-max-o sCombiningToAccent:Landroid/util/SparseIntArray;

.field private static final greylist-max-o sDeadKeyBuilder:Ljava/lang/StringBuilder;

.field private static final greylist-max-o sDeadKeyCache:Landroid/util/SparseIntArray;


# instance fields
.field private greylist-max-o mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 198
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    .line 199
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    .line 201
    const/16 v0, 0x300

    const/16 v1, 0x2cb

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 202
    const/16 v2, 0x301

    const/16 v3, 0xb4

    invoke-static {v2, v3}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 203
    const/16 v4, 0x2c6

    const/16 v5, 0x302

    invoke-static {v5, v4}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 204
    const/16 v4, 0x2dc

    const/16 v6, 0x303

    invoke-static {v6, v4}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 205
    const/16 v4, 0x304

    const/16 v7, 0xaf

    invoke-static {v4, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 206
    const/16 v4, 0x306

    const/16 v7, 0x2d8

    invoke-static {v4, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 207
    const/16 v4, 0x307

    const/16 v7, 0x2d9

    invoke-static {v4, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 208
    const/16 v4, 0xa8

    const/16 v7, 0x308

    invoke-static {v7, v4}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 209
    const/16 v4, 0x309

    const/16 v8, 0x2c0

    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 210
    const/16 v4, 0x30a

    const/16 v8, 0x2da

    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 211
    const/16 v4, 0x30b

    const/16 v8, 0x2dd

    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 212
    const/16 v4, 0x30c

    const/16 v8, 0x2c7

    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 216
    const/16 v4, 0x312

    const/16 v8, 0x2bb

    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 217
    const/16 v4, 0x313

    const/16 v8, 0x1fbd

    invoke-static {v4, v8}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 218
    const/16 v4, 0x314

    const/16 v9, 0x2bd

    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 219
    const/16 v4, 0x315

    const/16 v9, 0x2bc

    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 220
    const/16 v4, 0x31b

    const/16 v9, 0x27

    invoke-static {v4, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 221
    const/16 v4, 0x323

    const/16 v10, 0x2e

    invoke-static {v4, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 223
    const/16 v4, 0x327

    const/16 v10, 0xb8

    invoke-static {v4, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 224
    const/16 v4, 0x328

    const/16 v10, 0x2db

    invoke-static {v4, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 225
    const/16 v4, 0x329

    const/16 v10, 0x2cc

    invoke-static {v4, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 226
    const/16 v4, 0x331

    const/16 v10, 0x2cd

    invoke-static {v4, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 227
    const/16 v4, 0x335

    const/16 v10, 0x2d

    invoke-static {v4, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 233
    sget-object v4, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    const/16 v11, 0x340

    invoke-virtual {v4, v11, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 234
    sget-object v1, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    const/16 v4, 0x341

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 235
    sget-object v1, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    const/16 v3, 0x343

    invoke-virtual {v1, v3, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 236
    sget-object v1, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    const/16 v3, 0x30d

    invoke-virtual {v1, v3, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 237
    sget-object v1, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    const/16 v3, 0x30e

    const/16 v4, 0x22

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 240
    sget-object v1, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v3, 0x60

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 241
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 242
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 245
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 246
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 259
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    .line 264
    const/16 v0, 0x44

    const/16 v1, 0x110

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 265
    const/16 v0, 0x47

    const/16 v1, 0x1e4

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 266
    const/16 v0, 0x48

    const/16 v1, 0x126

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 267
    const/16 v0, 0x49

    const/16 v1, 0x197

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 268
    const/16 v0, 0x4c

    const/16 v1, 0x141

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 269
    const/16 v0, 0x4f

    const/16 v1, 0xd8

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 270
    const/16 v0, 0x54

    const/16 v1, 0x166

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 271
    const/16 v0, 0x64

    const/16 v1, 0x111

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 272
    const/16 v0, 0x67

    const/16 v1, 0x1e5

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 273
    const/16 v0, 0x68

    const/16 v1, 0x127

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 274
    const/16 v0, 0x69

    const/16 v1, 0x268

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 275
    const/16 v0, 0x6c

    const/16 v1, 0x142

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 276
    const/16 v0, 0x6f

    const/16 v1, 0xf8

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 277
    const/16 v0, 0x74

    const/16 v1, 0x167

    invoke-static {v10, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 289
    new-instance v0, Landroid/view/KeyCharacterMap$1;

    invoke-direct {v0}, Landroid/view/KeyCharacterMap$1;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-r <init>(J)V
    .registers 3
    .param p1, "ptr"    # J

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-wide p1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 334
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    if-eqz p1, :cond_1c

    .line 324
    invoke-static {p1}, Landroid/view/KeyCharacterMap;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 325
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 328
    return-void

    .line 326
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not read KeyCharacterMap from parcel."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parcel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/KeyCharacterMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/KeyCharacterMap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o addCombining(II)V
    .registers 3
    .param p0, "combining"    # I
    .param p1, "accent"    # I

    .line 250
    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->append(II)V

    .line 251
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->append(II)V

    .line 252
    return-void
.end method

.method private static greylist-max-o addDeadKey(III)V
    .registers 6
    .param p0, "accent"    # I
    .param p1, "c"    # I
    .param p2, "result"    # I

    .line 281
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 282
    .local v0, "combining":I
    if-eqz v0, :cond_11

    .line 285
    shl-int/lit8 v1, v0, 0x10

    or-int/2addr v1, p1

    .line 286
    .local v1, "combination":I
    sget-object v2, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    return-void

    .line 283
    .end local v1    # "combination":I
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid dead key declaration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist applyOverlay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "layoutDescriptor"    # Ljava/lang/String;
    .param p2, "overlay"    # Ljava/lang/String;

    .line 396
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->nativeApplyOverlay(JLjava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public static whitelist deviceHasKey(I)Z
    .registers 3
    .param p0, "keyCode"    # I

    .line 784
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    filled-new-array {p0}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys([I)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public static whitelist deviceHasKeys([I)[Z
    .registers 2
    .param p0, "keyCodes"    # [I

    .line 797
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys([I)[Z

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCombiningChar(I)I
    .registers 2
    .param p0, "accent"    # I

    .line 600
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getDeadChar(II)I
    .registers 10
    .param p0, "accent"    # I
    .param p1, "c"    # I

    .line 563
    if-eq p1, p0, :cond_55

    const/16 v0, 0x20

    if-ne v0, p1, :cond_7

    goto :goto_55

    .line 570
    :cond_7
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 571
    .local v0, "combining":I
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 572
    return v1

    .line 575
    :cond_11
    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v2, p1

    .line 577
    .local v2, "combination":I
    sget-object v3, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 578
    :try_start_17
    sget-object v4, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 579
    .local v4, "combined":I
    if-ne v4, v5, :cond_50

    .line 580
    sget-object v5, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 581
    sget-object v5, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    int-to-char v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    sget-object v5, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    sget-object v5, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    sget-object v6, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v5, v6}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->codePointCount(II)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_49

    .line 585
    invoke-virtual {v5, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    goto :goto_4a

    :cond_49
    nop

    :goto_4a
    move v4, v1

    .line 586
    sget-object v1, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 588
    .end local v5    # "result":Ljava/lang/String;
    :cond_50
    monitor-exit v3

    .line 589
    return v4

    .line 588
    .end local v4    # "combined":I
    :catchall_52
    move-exception v1

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_17 .. :try_end_54} :catchall_52

    throw v1

    .line 567
    .end local v0    # "combining":I
    .end local v2    # "combination":I
    :cond_55
    :goto_55
    return p0
.end method

.method public static whitelist load(I)Landroid/view/KeyCharacterMap;
    .registers 6
    .param p0, "deviceId"    # I

    .line 366
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    .line 367
    .local v0, "im":Landroid/hardware/input/InputManagerGlobal;
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 368
    .local v1, "inputDevice":Landroid/view/InputDevice;
    if-nez v1, :cond_2b

    .line 369
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_12

    goto :goto_2b

    .line 371
    :cond_12
    new-instance v2, Landroid/view/KeyCharacterMap$UnavailableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load key character map for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/KeyCharacterMap$UnavailableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist load(Ljava/lang/String;Ljava/lang/String;)Landroid/view/KeyCharacterMap;
    .registers 3
    .param p0, "layoutDescriptor"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;

    .line 390
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 391
    .local v0, "kcm":Landroid/view/KeyCharacterMap;
    invoke-direct {v0, p0, p1}, Landroid/view/KeyCharacterMap;->applyOverlay(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-object v0
.end method

.method private static native blacklist nativeApplyOverlay(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native blacklist nativeEquals(JJ)Z
.end method

.method private static native greylist-max-o nativeGetCharacter(JII)C
.end method

.method private static native greylist-max-o nativeGetDisplayLabel(JI)C
.end method

.method private static native greylist-max-o nativeGetEvents(J[C)[Landroid/view/KeyEvent;
.end method

.method private static native greylist-max-o nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z
.end method

.method private static native greylist-max-o nativeGetKeyboardType(J)I
.end method

.method private static native blacklist nativeGetMappedKey(JI)I
.end method

.method private static native greylist-max-o nativeGetMatch(JI[CI)C
.end method

.method private static native greylist-max-o nativeGetNumber(JI)C
.end method

.method private static native blacklist nativeObtainEmptyKeyCharacterMap(I)Landroid/view/KeyCharacterMap;
.end method

.method private static native greylist-max-o nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static blacklist obtainEmptyMap(I)Landroid/view/KeyCharacterMap;
    .registers 2
    .param p0, "deviceId"    # I

    .line 353
    invoke-static {p0}, Landroid/view/KeyCharacterMap;->nativeObtainEmptyKeyCharacterMap(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 815
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    instance-of v1, p1, Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_8

    goto :goto_2d

    .line 818
    :cond_8
    move-object v1, p1

    check-cast v1, Landroid/view/KeyCharacterMap;

    .line 819
    .local v1, "peer":Landroid/view/KeyCharacterMap;
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_23

    iget-wide v2, v1, Landroid/view/KeyCharacterMap;->mPtr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    goto :goto_23

    .line 822
    :cond_1a
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    iget-wide v4, v1, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/view/KeyCharacterMap;->nativeEquals(JJ)Z

    move-result v0

    return v0

    .line 820
    :cond_23
    :goto_23
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    iget-wide v4, v1, Landroid/view/KeyCharacterMap;->mPtr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    return v0

    .line 816
    .end local v1    # "peer":Landroid/view/KeyCharacterMap;
    :cond_2d
    :goto_2d
    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 338
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 339
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeDispose(J)V

    .line 340
    iput-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 342
    :cond_f
    return-void
.end method

.method public whitelist get(II)I
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 432
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 433
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v0

    .line 435
    .local v0, "ch":C
    sget-object v1, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 436
    .local v1, "map":I
    if-eqz v1, :cond_16

    .line 437
    const/high16 v2, -0x80000000

    or-int/2addr v2, v1

    return v2

    .line 439
    :cond_16
    return v0
.end method

.method public whitelist getDisplayLabel(I)C
    .registers 4
    .param p1, "keyCode"    # I

    .line 549
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result v0

    return v0
.end method

.method public whitelist getEvents([C)[Landroid/view/KeyEvent;
    .registers 4
    .param p1, "chars"    # [C

    .line 691
    if-eqz p1, :cond_9

    .line 694
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetEvents(J[C)[Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0

    .line 692
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chars must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 461
    invoke-static {}, Landroid/view/KeyCharacterMap$FallbackAction;->obtain()Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v0

    .line 462
    .local v0, "action":Landroid/view/KeyCharacterMap$FallbackAction;
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 463
    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v1, v2, p1, p2, v0}, Landroid/view/KeyCharacterMap;->nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 464
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->removeFallbackModifiers()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 469
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    goto :goto_22

    .line 471
    :cond_1a
    iget v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    iput v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 473
    :goto_22
    return-object v0

    .line 475
    :cond_23
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    .line 476
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "results"    # Landroid/view/KeyCharacterMap$KeyData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_46

    .line 653
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result v0

    .line 654
    .local v0, "displayLabel":C
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 655
    return v1

    .line 658
    :cond_10
    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->displayLabel:C

    .line 659
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v2, v3, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    move-result v2

    iput-char v2, p2, Landroid/view/KeyCharacterMap$KeyData;->number:C

    .line 660
    iget-object v2, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v3, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v3, v4, p1, v1}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v3

    aput-char v3, v2, v1

    .line 661
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v4, 0x1

    invoke-static {v2, v3, p1, v4}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v2

    aput-char v2, v1, v4

    .line 662
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v5, 0x2

    invoke-static {v2, v3, p1, v5}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v2

    aput-char v2, v1, v5

    .line 663
    iget-object v1, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v5, 0x3

    invoke-static {v2, v3, p1, v5}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v2

    aput-char v2, v1, v5

    .line 665
    return v4

    .line 649
    .end local v0    # "displayLabel":C
    :cond_46
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "results.meta.length must be >= 4"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getKeyboardType()I
    .registers 3

    .line 731
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeGetKeyboardType(J)I

    move-result v0

    return v0
.end method

.method public blacklist getMappedKeyOrDefault(II)I
    .registers 5
    .param p1, "scanCode"    # I
    .param p2, "defaultKeyCode"    # I

    .line 406
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetMappedKey(JI)I

    move-result v0

    .line 407
    .local v0, "keyCode":I
    if-nez v0, :cond_a

    move v1, p2

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    return v1
.end method

.method public whitelist getMatch(I[C)C
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "chars"    # [C

    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public whitelist getMatch(I[CI)C
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "chars"    # [C
    .param p3, "metaState"    # I

    .line 533
    if-eqz p2, :cond_d

    .line 537
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p3

    .line 538
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/KeyCharacterMap;->nativeGetMatch(JI[CI)C

    move-result v0

    return v0

    .line 534
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chars must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getModifierBehavior()I
    .registers 2

    .line 767
    invoke-virtual {p0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 772
    const/4 v0, 0x1

    return v0

    .line 770
    :pswitch_9
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x4
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist getNumber(I)C
    .registers 4
    .param p1, "keyCode"    # I

    .line 501
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    move-result v0

    return v0
.end method

.method public whitelist isPrintingKey(I)Z
    .registers 4
    .param p1, "keyCode"    # I

    .line 704
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 706
    .local v0, "type":I
    packed-switch v0, :pswitch_data_12

    .line 715
    const/4 v1, 0x1

    return v1

    .line 713
    :pswitch_f
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_12
    .packed-switch 0xc
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 802
    if-eqz p1, :cond_8

    .line 805
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 806
    return-void

    .line 803
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parcel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
