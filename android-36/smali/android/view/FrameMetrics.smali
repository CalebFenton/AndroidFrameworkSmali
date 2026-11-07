.class public final Landroid/view/FrameMetrics;
.super Ljava/lang/Object;
.source "FrameMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FrameMetrics$Index;,
        Landroid/view/FrameMetrics$Metric;
    }
.end annotation


# static fields
.field public static final whitelist ANIMATION_DURATION:I = 0x2

.field public static final whitelist COMMAND_ISSUE_DURATION:I = 0x6

.field public static final whitelist DEADLINE:I = 0xd

.field public static final whitelist DRAW_DURATION:I = 0x4

.field private static final greylist-max-o DURATIONS:[I

.field public static final whitelist FIRST_DRAW_FRAME:I = 0x9

.field public static final whitelist FRAME_TIMELINE_VSYNC_ID:I = 0xe

.field public static final whitelist GPU_DURATION:I = 0xc

.field public static final whitelist INPUT_HANDLING_DURATION:I = 0x1

.field public static final whitelist INTENDED_VSYNC_TIMESTAMP:I = 0xa

.field public static final whitelist LAYOUT_MEASURE_DURATION:I = 0x3

.field public static final whitelist SWAP_BUFFERS_DURATION:I = 0x7

.field public static final whitelist SYNC_DURATION:I = 0x5

.field public static final whitelist TOTAL_DURATION:I = 0x8

.field public static final whitelist UNKNOWN_DELAY_DURATION:I = 0x0

.field public static final whitelist VSYNC_TIMESTAMP:I = 0xb


# instance fields
.field public final greylist-max-r mTimingData:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 285
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/view/FrameMetrics;->DURATIONS:[I

    return-void

    :array_a
    .array-data 4
        0x2
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0xd
        0xe
        0xf
        0xf
        0x10
        0x10
        0x15
        0x2
        0x11
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x17
        0x14
        0x2
        0x9
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    .line 341
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/FrameMetrics;)V
    .registers 6
    .param p1, "other"    # Landroid/view/FrameMetrics;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    .line 333
    iget-object v0, p1, Landroid/view/FrameMetrics;->mTimingData:[J

    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    return-void
.end method


# virtual methods
.method public whitelist getMetric(I)J
    .registers 8
    .param p1, "id"    # I

    .line 354
    const-wide/16 v0, -0x1

    if-ltz p1, :cond_5f

    .line 355
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->jankApi()Z

    move-result v2

    const/16 v3, 0xe

    if-eqz v2, :cond_e

    move v2, v3

    goto :goto_10

    :cond_e
    const/16 v2, 0xd

    :goto_10
    if-le p1, v2, :cond_13

    goto :goto_5f

    .line 359
    :cond_13
    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    if-nez v2, :cond_18

    .line 360
    return-wide v0

    .line 363
    :cond_18
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2d

    .line 364
    iget-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move-wide v2, v4

    :goto_2c
    return-wide v2

    .line 365
    :cond_2d
    const/16 v0, 0xa

    if-ne p1, v0, :cond_37

    .line 366
    iget-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0

    .line 367
    :cond_37
    const/16 v0, 0xb

    if-ne p1, v0, :cond_41

    .line 368
    iget-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    return-wide v0

    .line 369
    :cond_41
    if-ne p1, v3, :cond_49

    .line 370
    iget-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0

    .line 373
    :cond_49
    mul-int/lit8 v0, p1, 0x2

    .line 374
    .local v0, "durationsIdx":I
    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    sget-object v2, Landroid/view/FrameMetrics;->DURATIONS:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aget-wide v1, v1, v2

    iget-object v3, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    sget-object v4, Landroid/view/FrameMetrics;->DURATIONS:[I

    aget v4, v4, v0

    aget-wide v3, v3, v4

    sub-long/2addr v1, v3

    return-wide v1

    .line 356
    .end local v0    # "durationsIdx":I
    :cond_5f
    :goto_5f
    return-wide v0
.end method
