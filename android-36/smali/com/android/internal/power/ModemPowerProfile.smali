.class public Lcom/android/internal/power/ModemPowerProfile;
.super Ljava/lang/Object;
.source "ModemPowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/power/ModemPowerProfile$ModemNrFrequencyRange;,
        Lcom/android/internal/power/ModemPowerProfile$ModemRatType;,
        Lcom/android/internal/power/ModemPowerProfile$ModemTxLevel;,
        Lcom/android/internal/power/ModemPowerProfile$ModemDrainType;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_LEVEL:Ljava/lang/String; = "level"

.field private static final blacklist ATTR_NR_FREQUENCY:Ljava/lang/String; = "nrFrequency"

.field private static final blacklist ATTR_RAT:Ljava/lang/String; = "rat"

.field private static final blacklist IGNORE:I = -0x1

.field public static final blacklist MODEM_DRAIN_TYPE_IDLE:I = 0x10000000

.field private static final blacklist MODEM_DRAIN_TYPE_MASK:I = -0x10000000

.field private static final blacklist MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MODEM_DRAIN_TYPE_RX:I = 0x20000000

.field public static final blacklist MODEM_DRAIN_TYPE_SLEEP:I = 0x0

.field public static final blacklist MODEM_DRAIN_TYPE_TX:I = 0x30000000

.field public static final blacklist MODEM_NR_FREQUENCY_RANGE_DEFAULT:I = 0x0

.field public static final blacklist MODEM_NR_FREQUENCY_RANGE_HIGH:I = 0x30000

.field public static final blacklist MODEM_NR_FREQUENCY_RANGE_LOW:I = 0x10000

.field private static final blacklist MODEM_NR_FREQUENCY_RANGE_MASK:I = 0xf0000

.field public static final blacklist MODEM_NR_FREQUENCY_RANGE_MID:I = 0x20000

.field public static final blacklist MODEM_NR_FREQUENCY_RANGE_MMWAVE:I = 0x40000

.field private static final blacklist MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MODEM_RAT_TYPE_DEFAULT:I = 0x0

.field public static final blacklist MODEM_RAT_TYPE_LTE:I = 0x100000

.field private static final blacklist MODEM_RAT_TYPE_MASK:I = 0xf00000

.field private static final blacklist MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MODEM_RAT_TYPE_NR:I = 0x200000

.field public static final blacklist MODEM_TX_LEVEL_0:I = 0x0

.field public static final blacklist MODEM_TX_LEVEL_1:I = 0x1000000

.field public static final blacklist MODEM_TX_LEVEL_2:I = 0x2000000

.field public static final blacklist MODEM_TX_LEVEL_3:I = 0x3000000

.field public static final blacklist MODEM_TX_LEVEL_4:I = 0x4000000

.field private static final blacklist MODEM_TX_LEVEL_COUNT:I = 0x5

.field private static final blacklist MODEM_TX_LEVEL_MAP:[I

.field private static final blacklist MODEM_TX_LEVEL_MASK:I = 0xf000000

.field private static final blacklist MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ModemPowerProfile"

.field private static final blacklist TAG_ACTIVE:Ljava/lang/String; = "active"

.field private static final blacklist TAG_IDLE:Ljava/lang/String; = "idle"

.field private static final blacklist TAG_RECEIVE:Ljava/lang/String; = "receive"

.field private static final blacklist TAG_SLEEP:Ljava/lang/String; = "sleep"

.field private static final blacklist TAG_TRANSMIT:Ljava/lang/String; = "transmit"


# instance fields
.field private final blacklist mPowerConstants:Landroid/util/SparseDoubleArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;

    .line 115
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;

    const-string v1, "SLEEP"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x10000000

    const-string v3, "IDLE"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x20000000

    const-string v3, "RX"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x30000000

    const-string v3, "TX"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;

    .line 166
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;

    const-string v3, "1"

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;

    const-string v3, "2"

    const/high16 v5, 0x2000000

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;

    const-string v3, "3"

    const/high16 v6, 0x3000000

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;

    const-string v3, "4"

    const/high16 v7, 0x4000000

    invoke-virtual {v0, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    filled-new-array {v2, v4, v5, v6, v7}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_MAP:[I

    .line 205
    new-instance v0, Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    .line 207
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    const-string v3, "DEFAULT"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v4, 0x100000

    const-string v5, "LTE"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v4, 0x200000

    const-string v5, "NR"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    .line 250
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x10000

    const-string v2, "LOW"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x20000

    const-string v2, "MID"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x30000

    const-string v2, "HIGH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    sget-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x40000

    const-string v2, "MMWAVE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseDoubleArray;

    invoke-direct {v0}, Landroid/util/SparseDoubleArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    .line 258
    return-void
.end method

.method private static blacklist appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p3, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 532
    .local p2, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 535
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_23

    .line 536
    const-string v1, "UNKNOWN(0x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 540
    :cond_23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :goto_26
    return-void
.end method

.method public static blacklist getAverageBatteryDrainKey(IIII)J
    .registers 11
    .param p0, "drainType"    # I
    .param p1, "rat"    # I
    .param p2, "freqRange"    # I
    .param p3, "txLevel"    # I

    .line 392
    const-wide v0, 0x100000000L

    .line 395
    .local v0, "key":J
    const/4 v2, -0x1

    if-eq p0, v2, :cond_a

    .line 396
    int-to-long v2, p0

    or-long/2addr v0, v2

    .line 400
    :cond_a
    const-string v2, "ModemPowerProfile"

    const-wide/16 v3, 0x0

    packed-switch p1, :pswitch_data_98

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected RadioAccessTechnology : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 411
    :pswitch_28
    const-wide/32 v5, 0x200000

    or-long/2addr v0, v5

    .line 412
    goto :goto_35

    .line 408
    :pswitch_2d
    const-wide/32 v5, 0x100000

    or-long/2addr v0, v5

    .line 409
    goto :goto_35

    .line 405
    :pswitch_32
    or-long/2addr v0, v3

    .line 406
    goto :goto_35

    .line 403
    :pswitch_34
    nop

    .line 418
    :goto_35
    packed-switch p2, :pswitch_data_a4

    .line 438
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected NR frequency range : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 435
    :pswitch_4f
    const-wide/32 v5, 0x40000

    or-long/2addr v0, v5

    .line 436
    goto :goto_66

    .line 432
    :pswitch_54
    const-wide/32 v5, 0x30000

    or-long/2addr v0, v5

    .line 433
    goto :goto_66

    .line 429
    :pswitch_59
    const-wide/32 v5, 0x20000

    or-long/2addr v0, v5

    .line 430
    goto :goto_66

    .line 426
    :pswitch_5e
    const-wide/32 v5, 0x10000

    or-long/2addr v0, v5

    .line 427
    goto :goto_66

    .line 423
    :pswitch_63
    or-long/2addr v0, v3

    .line 424
    goto :goto_66

    .line 421
    :pswitch_65
    nop

    .line 442
    :goto_66
    packed-switch p3, :pswitch_data_b4

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected transmission level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 459
    :pswitch_80
    const-wide/32 v2, 0x4000000

    or-long/2addr v0, v2

    .line 460
    goto :goto_97

    .line 456
    :pswitch_85
    const-wide/32 v2, 0x3000000

    or-long/2addr v0, v2

    .line 457
    goto :goto_97

    .line 453
    :pswitch_8a
    const-wide/32 v2, 0x2000000

    or-long/2addr v0, v2

    .line 454
    goto :goto_97

    .line 450
    :pswitch_8f
    const-wide/32 v2, 0x1000000

    or-long/2addr v0, v2

    .line 451
    goto :goto_97

    .line 447
    :pswitch_94
    or-long/2addr v0, v3

    .line 448
    goto :goto_97

    .line 445
    :pswitch_96
    nop

    .line 464
    :goto_97
    return-wide v0

    :pswitch_data_98
    .packed-switch -0x1
        :pswitch_34
        :pswitch_32
        :pswitch_2d
        :pswitch_28
    .end packed-switch

    :pswitch_data_a4
    .packed-switch -0x1
        :pswitch_65
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_54
        :pswitch_4f
    .end packed-switch

    :pswitch_data_b4
    .packed-switch -0x1
        :pswitch_96
        :pswitch_94
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
        :pswitch_80
    .end packed-switch
.end method

.method private static blacklist getTypeFromAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/SparseArray;)I
    .registers 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 348
    .local p2, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 351
    const/4 v1, 0x0

    return v1

    .line 353
    :cond_8
    const/4 v1, -0x1

    .line 354
    .local v1, "index":I
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 356
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_1e

    .line 357
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 358
    move v1, v3

    .line 356
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 361
    .end local v3    # "i":I
    :cond_1e
    if-gez v1, :cond_61

    .line 362
    new-array v3, v2, [Ljava/lang/String;

    .line 363
    .local v3, "stringNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    if-ge v4, v2, :cond_30

    .line 364
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 363
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 366
    .end local v4    # "i":I
    :cond_30
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Acceptable values are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 368
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    .end local v3    # "stringNames":[Ljava/lang/String;
    :cond_61
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    return v3
.end method

.method public static blacklist keyToString(I)Ljava/lang/String;
    .registers 7
    .param p0, "key"    # I

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/high16 v1, -0x10000000

    and-int/2addr v1, p0

    .line 510
    .local v1, "drainType":I
    const-string v2, "drain"

    sget-object v3, Lcom/android/internal/power/ModemPowerProfile;->MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 511
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const/high16 v3, 0x30000000

    if-ne v1, v3, :cond_25

    .line 514
    const/high16 v3, 0xf000000

    and-int/2addr v3, p0

    .line 515
    .local v3, "txLevel":I
    const-string v4, "level"

    sget-object v5, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;

    invoke-static {v0, v4, v5, v3}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .end local v3    # "txLevel":I
    :cond_25
    const/high16 v3, 0xf00000

    and-int/2addr v3, p0

    .line 520
    .local v3, "ratType":I
    const-string v4, "RAT"

    sget-object v5, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    invoke-static {v0, v4, v5, v3}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 522
    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_40

    .line 523
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const/high16 v2, 0xf0000

    and-int/2addr v2, p0

    .line 525
    .local v2, "nrFreq":I
    const-string v4, "nrFreq"

    sget-object v5, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    invoke-static {v0, v4, v5, v2}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 527
    .end local v2    # "nrFreq":I
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist parseActivePowerConstantsFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 299
    const-string v0, "ModemPowerProfile"

    :try_start_2
    const-string/jumbo v1, "rat"

    sget-object v2, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    invoke-static {p1, v1, v2}, Lcom/android/internal/power/ModemPowerProfile;->getTypeFromAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/SparseArray;)I

    move-result v1

    .line 300
    .local v1, "ratType":I
    const/high16 v2, 0x200000

    if-ne v1, v2, :cond_18

    .line 301
    const-string v2, "nrFrequency"

    sget-object v3, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    invoke-static {p1, v2, v3}, Lcom/android/internal/power/ModemPowerProfile;->getTypeFromAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/SparseArray;)I

    move-result v2
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_17} :catch_c0

    .local v2, "nrfType":I
    goto :goto_19

    .line 304
    .end local v2    # "nrfType":I
    :cond_18
    const/4 v2, 0x0

    .line 309
    .restart local v2    # "nrfType":I
    :goto_19
    nop

    .line 312
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 313
    .local v3, "depth":I
    :goto_1e
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 314
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_c8

    :cond_30
    goto :goto_47

    :sswitch_31
    const-string/jumbo v5, "transmit"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x1

    goto :goto_48

    :sswitch_3c
    const-string/jumbo v5, "receive"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x0

    goto :goto_48

    :goto_47
    move v5, v6

    :goto_48
    const/4 v7, 0x4

    packed-switch v5, :pswitch_data_d2

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected element parsed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 325
    :pswitch_63
    const-string v5, "level"

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 326
    .local v5, "level":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v7, :cond_70

    .line 327
    goto :goto_1e

    .line 329
    :cond_70
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "txDrain":Ljava/lang/String;
    if-ltz v5, :cond_87

    const/4 v8, 0x5

    if-lt v5, v8, :cond_7a

    goto :goto_87

    .line 336
    :cond_7a
    sget-object v7, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_MAP:[I

    aget v7, v7, v5

    .line 337
    .local v7, "modemTxLevel":I
    const/high16 v8, 0x30000000

    or-int/2addr v8, v7

    or-int/2addr v8, v1

    or-int/2addr v8, v2

    .line 338
    .local v8, "txKey":I
    invoke-virtual {p0, v8, v6}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 339
    goto :goto_bd

    .line 331
    .end local v7    # "modemTxLevel":I
    .end local v8    # "txKey":I
    :cond_87
    :goto_87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected tx level: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Must be between 0 and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    goto/16 :goto_1e

    .line 317
    .end local v5    # "level":I
    .end local v6    # "txDrain":Ljava/lang/String;
    :pswitch_a9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_b1

    .line 318
    goto/16 :goto_1e

    .line 320
    :cond_b1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "rxDrain":Ljava/lang/String;
    const/high16 v6, 0x20000000

    or-int/2addr v6, v1

    or-int/2addr v6, v2

    .line 322
    .local v6, "rxKey":I
    invoke-virtual {p0, v6, v5}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 323
    nop

    .line 343
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "rxDrain":Ljava/lang/String;
    .end local v6    # "rxKey":I
    :goto_bd
    goto/16 :goto_1e

    .line 344
    :cond_bf
    return-void

    .line 306
    .end local v1    # "ratType":I
    .end local v2    # "nrfType":I
    .end local v3    # "depth":I
    :catch_c0
    move-exception v1

    .line 307
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const-string v2, "Failed parse to active modem power constants"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    return-void

    nop

    :sswitch_data_c8
    .sparse-switch
        0x408272e3 -> :sswitch_3c
        0x4c58d2b0 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_63
    .end packed-switch
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 548
    iget-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0}, Landroid/util/SparseDoubleArray;->clear()V

    .line 549
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 556
    iget-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v0

    .line 557
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_27

    .line 558
    iget-object v2, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseDoubleArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/power/ModemPowerProfile;->keyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    iget-object v2, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseDoubleArray;->valueAt(I)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(D)V

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 562
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method public blacklist getAverageBatteryDrainMa(I)D
    .registers 9
    .param p1, "key"    # I

    .line 475
    move v0, p1

    .line 477
    .local v0, "bestKey":I
    iget-object v1, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v4

    .line 478
    .local v4, "value":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_10

    return-wide v4

    .line 482
    :cond_10
    const/high16 v1, 0xf0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_28

    .line 484
    const v1, -0xf0001

    and-int/2addr v0, v1

    .line 485
    or-int/lit8 v0, v0, 0x0

    .line 486
    iget-object v1, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v4

    .line 487
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_28

    return-wide v4

    .line 490
    :cond_28
    const/high16 v1, 0xf00000

    and-int/2addr v1, v0

    if-eqz v1, :cond_40

    .line 492
    const v1, -0xf00001

    and-int/2addr v0, v1

    .line 493
    or-int/lit8 v0, v0, 0x0

    .line 494
    iget-object v1, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v4

    .line 495
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_40

    return-wide v4

    .line 498
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAverageBatteryDrainMaH called with unexpected key: 0x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 499
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 500
    invoke-static {p1}, Lcom/android/internal/power/ModemPowerProfile;->keyToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    const-string v6, "ModemPowerProfile"

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-wide v2
.end method

.method public blacklist parseFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 265
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 266
    .local v0, "depth":I
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 267
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_7a

    :cond_16
    goto :goto_36

    :sswitch_17
    const-string/jumbo v2, "sleep"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v3

    goto :goto_37

    :sswitch_22
    const-string v2, "idle"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_37

    :sswitch_2c
    const-string v2, "active"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x2

    goto :goto_37

    :goto_36
    const/4 v2, -0x1

    :goto_37
    const/4 v4, 0x4

    packed-switch v2, :pswitch_data_88

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected element parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ModemPowerProfile"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 284
    :pswitch_54
    invoke-direct {p0, p1}, Lcom/android/internal/power/ModemPowerProfile;->parseActivePowerConstantsFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 285
    goto :goto_78

    .line 277
    :pswitch_58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v4, :cond_5f

    .line 278
    goto :goto_4

    .line 280
    :cond_5f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "idleDrain":Ljava/lang/String;
    const/high16 v3, 0x10000000

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 282
    goto :goto_78

    .line 270
    .end local v2    # "idleDrain":Ljava/lang/String;
    :pswitch_69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v4, :cond_70

    .line 271
    goto :goto_4

    .line 273
    :cond_70
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "sleepDrain":Ljava/lang/String;
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 275
    nop

    .line 289
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "sleepDrain":Ljava/lang/String;
    :goto_78
    goto :goto_4

    .line 290
    :cond_79
    return-void

    :sswitch_data_7a
    .sparse-switch
        -0x54d080fa -> :sswitch_2c
        0x313fd4 -> :sswitch_22
        0x6872ed7 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_69
        :pswitch_58
        :pswitch_54
    .end packed-switch
.end method

.method public blacklist setPowerConstant(ILjava/lang/String;)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseDoubleArray;->put(ID)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 386
    goto :goto_43

    .line 383
    :catch_e
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set power constant 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    invoke-static {p1}, Lcom/android/internal/power/ModemPowerProfile;->keyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    const-string v2, "ModemPowerProfile"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method
