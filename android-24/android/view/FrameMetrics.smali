.class public final Landroid/view/FrameMetrics;
.super Ljava/lang/Object;
.source "FrameMetrics.java"


# static fields
.field public static final ANIMATION_DURATION:I = 0x2

.field public static final COMMAND_ISSUE_DURATION:I = 0x6

.field public static final DRAW_DURATION:I = 0x4

.field private static final DURATIONS:[I

.field public static final FIRST_DRAW_FRAME:I = 0x9

.field private static final FRAME_INFO_FLAG_FIRST_DRAW:I = 0x1

.field public static final INPUT_HANDLING_DURATION:I = 0x1

.field public static final LAYOUT_MEASURE_DURATION:I = 0x3

.field public static final SWAP_BUFFERS_DURATION:I = 0x7

.field public static final SYNC_DURATION:I = 0x5

.field public static final TOTAL_DURATION:I = 0x8

.field public static final UNKNOWN_DELAY_DURATION:I


# instance fields
.field final mTimingData:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 210
    const/16 v0, 0x12

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/view/FrameMetrics;->DURATIONS:[I

    #@9
    .line 32
    return-void

    #@a
    .line 210
    :array_0
    .array-data 4
        0x1
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0x1
        0xd
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 251
    const/16 v0, 0xe

    #@5
    new-array v0, v0, [J

    #@7
    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    #@9
    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/view/FrameMetrics;)V
    .locals 4
    .param p1, "other"    # Landroid/view/FrameMetrics;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 243
    const/16 v0, 0xe

    #@6
    new-array v0, v0, [J

    #@8
    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    #@a
    .line 244
    iget-object v0, p1, Landroid/view/FrameMetrics;->mTimingData:[J

    #@c
    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    #@e
    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    #@10
    array-length v2, v2

    #@11
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@14
    .line 242
    return-void
.end method


# virtual methods
.method public getMetric(I)J
    .locals 6
    .param p1, "id"    # I

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    const/16 v3, 0x9

    #@4
    const/4 v1, 0x0

    #@5
    .line 265
    if-ltz p1, :cond_0

    #@7
    if-le p1, v3, :cond_1

    #@9
    .line 266
    :cond_0
    return-wide v4

    #@a
    .line 269
    :cond_1
    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    #@c
    if-nez v2, :cond_2

    #@e
    .line 270
    return-wide v4

    #@f
    .line 273
    :cond_2
    if-ne p1, v3, :cond_4

    #@11
    .line 274
    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    #@13
    aget-wide v2, v2, v1

    #@15
    const-wide/16 v4, 0x1

    #@17
    and-long/2addr v2, v4

    #@18
    const-wide/16 v4, 0x0

    #@1a
    cmp-long v2, v2, v4

    #@1c
    if-eqz v2, :cond_3

    #@1e
    const/4 v1, 0x1

    #@1f
    :cond_3
    int-to-long v2, v1

    #@20
    return-wide v2

    #@21
    .line 277
    :cond_4
    mul-int/lit8 v0, p1, 0x2

    #@23
    .line 278
    .local v0, "durationsIdx":I
    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    #@25
    sget-object v2, Landroid/view/FrameMetrics;->DURATIONS:[I

    #@27
    add-int/lit8 v3, v0, 0x1

    #@29
    aget v2, v2, v3

    #@2b
    aget-wide v2, v1, v2

    #@2d
    .line 279
    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    #@2f
    sget-object v4, Landroid/view/FrameMetrics;->DURATIONS:[I

    #@31
    aget v4, v4, v0

    #@33
    aget-wide v4, v1, v4

    #@35
    .line 278
    sub-long/2addr v2, v4

    #@36
    return-wide v2
.end method
