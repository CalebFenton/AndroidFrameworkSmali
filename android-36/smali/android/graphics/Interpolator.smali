.class public Landroid/graphics/Interpolator;
.super Ljava/lang/Object;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Interpolator$Result;
    }
.end annotation


# instance fields
.field private greylist-max-o mFrameCount:I

.field private greylist-max-o mValueCount:I

.field private greylist-max-o native_instance:J


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "valueCount"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 29
    invoke-static {p1, v0}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    .line 30
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 5
    .param p1, "valueCount"    # I
    .param p2, "frameCount"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 34
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 35
    invoke-static {p1, p2}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    .line 36
    return-void
.end method

.method private static native greylist-max-o nativeConstructor(II)J
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method

.method private static native greylist-max-o nativeReset(JII)V
.end method

.method private static native greylist-max-o nativeSetKeyFrame(JII[F[F)V
.end method

.method private static native greylist-max-o nativeSetRepeatMirror(JFZ)V
.end method

.method private static native greylist-max-o nativeTimeToValues(JI[F)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 152
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Interpolator;->nativeDestructor(J)V

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    .line 154
    return-void
.end method

.method public final whitelist getKeyFrameCount()I
    .registers 2

    .line 59
    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    return v0
.end method

.method public final whitelist getValueCount()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/graphics/Interpolator;->mValueCount:I

    return v0
.end method

.method public whitelist reset(I)V
    .registers 3
    .param p1, "valueCount"    # I

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Interpolator;->reset(II)V

    .line 45
    return-void
.end method

.method public whitelist reset(II)V
    .registers 5
    .param p1, "valueCount"    # I
    .param p2, "frameCount"    # I

    .line 53
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 54
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 55
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeReset(JII)V

    .line 56
    return-void
.end method

.method public whitelist setKeyFrame(II[F)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "msec"    # I
    .param p3, "values"    # [F

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    .line 78
    return-void
.end method

.method public whitelist setKeyFrame(II[F[F)V
    .registers 12
    .param p1, "index"    # I
    .param p2, "msec"    # I
    .param p3, "values"    # [F
    .param p4, "blend"    # [F

    .line 91
    if-ltz p1, :cond_29

    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    if-ge p1, v0, :cond_29

    .line 94
    array-length v0, p3

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-lt v0, v1, :cond_22

    .line 97
    if-eqz p4, :cond_18

    array-length v0, p4

    const/4 v1, 0x4

    if-lt v0, v1, :cond_12

    goto :goto_18

    .line 98
    :cond_12
    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v0

    .line 100
    :cond_18
    :goto_18
    iget-wide v1, p0, Landroid/graphics/Interpolator;->native_instance:J

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "index":I
    .end local p2    # "msec":I
    .end local p3    # "values":[F
    .end local p4    # "blend":[F
    .local v3, "index":I
    .local v4, "msec":I
    .local v5, "values":[F
    .local v6, "blend":[F
    invoke-static/range {v1 .. v6}, Landroid/graphics/Interpolator;->nativeSetKeyFrame(JII[F[F)V

    .line 101
    return-void

    .line 95
    .end local v3    # "index":I
    .end local v4    # "msec":I
    .end local v5    # "values":[F
    .end local v6    # "blend":[F
    .restart local p1    # "index":I
    .restart local p2    # "msec":I
    .restart local p3    # "values":[F
    .restart local p4    # "blend":[F
    :cond_22
    move v3, p1

    .end local p1    # "index":I
    .restart local v3    # "index":I
    new-instance p1, Ljava/lang/ArrayStoreException;

    invoke-direct {p1}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p1

    .line 91
    .end local v3    # "index":I
    .restart local p1    # "index":I
    :cond_29
    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 92
    .end local p1    # "index":I
    .end local p2    # "msec":I
    .end local p3    # "values":[F
    .end local p4    # "blend":[F
    .restart local v3    # "index":I
    .restart local v4    # "msec":I
    .restart local v5    # "values":[F
    .restart local v6    # "blend":[F
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public whitelist setRepeatMirror(FZ)V
    .registers 5
    .param p1, "repeatCount"    # F
    .param p2, "mirror"    # Z

    .line 109
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_a

    .line 110
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeSetRepeatMirror(JFZ)V

    .line 112
    :cond_a
    return-void
.end method

.method public whitelist timeToValues(I[F)Landroid/graphics/Interpolator$Result;
    .registers 5
    .param p1, "msec"    # I
    .param p2, "values"    # [F

    .line 140
    if-eqz p2, :cond_e

    array-length v0, p2

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-lt v0, v1, :cond_8

    goto :goto_e

    .line 141
    :cond_8
    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v0

    .line 143
    :cond_e
    :goto_e
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeTimeToValues(JI[F)I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 146
    sget-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    return-object v0

    .line 145
    :pswitch_1a
    sget-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    return-object v0

    .line 144
    :pswitch_1d
    sget-object v0, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public whitelist timeToValues([F)Landroid/graphics/Interpolator$Result;
    .registers 4
    .param p1, "values"    # [F

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Interpolator;->timeToValues(I[F)Landroid/graphics/Interpolator$Result;

    move-result-object v0

    return-object v0
.end method
