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
.field private mFrameCount:I

.field private mValueCount:I

.field private final native_instance:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "valueCount"    # I

    #@0
    .prologue
    const/4 v0, 0x2

    #@1
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 24
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    #@6
    .line 25
    iput v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    #@8
    .line 26
    invoke-static {p1, v0}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    #@e
    .line 23
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "valueCount"    # I
    .param p2, "frameCount"    # I

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    #@5
    .line 31
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    #@7
    .line 32
    invoke-static {p1, p2}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    #@d
    .line 29
    return-void
.end method

.method private static native nativeConstructor(II)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeReset(JII)V
.end method

.method private static native nativeSetKeyFrame(JII[F[F)V
.end method

.method private static native nativeSetRepeatMirror(JFZ)V
.end method

.method private static native nativeTimeToValues(JI[F)I
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Interpolator;->nativeDestructor(J)V

    #@5
    .line 148
    return-void
.end method

.method public final getKeyFrameCount()I
    .locals 1

    #@0
    .prologue
    .line 56
    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    #@2
    return v0
.end method

.method public final getValueCount()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Landroid/graphics/Interpolator;->mValueCount:I

    #@2
    return v0
.end method

.method public reset(I)V
    .locals 1
    .param p1, "valueCount"    # I

    #@0
    .prologue
    .line 41
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Interpolator;->reset(II)V

    #@4
    .line 40
    return-void
.end method

.method public reset(II)V
    .locals 2
    .param p1, "valueCount"    # I
    .param p2, "frameCount"    # I

    #@0
    .prologue
    .line 50
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    #@2
    .line 51
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    #@4
    .line 52
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    #@6
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeReset(JII)V

    #@9
    .line 49
    return-void
.end method

.method public setKeyFrame(II[F)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "msec"    # I
    .param p3, "values"    # [F

    #@0
    .prologue
    .line 74
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    #@4
    .line 73
    return-void
.end method

.method public setKeyFrame(II[F[F)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "msec"    # I
    .param p3, "values"    # [F
    .param p4, "blend"    # [F

    #@0
    .prologue
    .line 88
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 91
    :cond_1
    array-length v0, p3

    #@d
    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    #@f
    if-ge v0, v1, :cond_2

    #@11
    .line 92
    new-instance v0, Ljava/lang/ArrayStoreException;

    #@13
    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    #@16
    throw v0

    #@17
    .line 94
    :cond_2
    if-eqz p4, :cond_3

    #@19
    array-length v0, p4

    #@1a
    const/4 v1, 0x4

    #@1b
    if-ge v0, v1, :cond_3

    #@1d
    .line 95
    new-instance v0, Ljava/lang/ArrayStoreException;

    #@1f
    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    #@22
    throw v0

    #@23
    .line 97
    :cond_3
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    #@25
    move v2, p1

    #@26
    move v3, p2

    #@27
    move-object v4, p3

    #@28
    move-object v5, p4

    #@29
    invoke-static/range {v0 .. v5}, Landroid/graphics/Interpolator;->nativeSetKeyFrame(JII[F[F)V

    #@2c
    .line 87
    return-void
.end method

.method public setRepeatMirror(FZ)V
    .locals 2
    .param p1, "repeatCount"    # F
    .param p2, "mirror"    # Z

    #@0
    .prologue
    .line 106
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 107
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    #@7
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeSetRepeatMirror(JFZ)V

    #@a
    .line 105
    :cond_0
    return-void
.end method

.method public timeToValues(I[F)Landroid/graphics/Interpolator$Result;
    .locals 2
    .param p1, "msec"    # I
    .param p2, "values"    # [F

    #@0
    .prologue
    .line 137
    if-eqz p2, :cond_0

    #@2
    array-length v0, p2

    #@3
    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 138
    new-instance v0, Ljava/lang/ArrayStoreException;

    #@9
    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    #@c
    throw v0

    #@d
    .line 140
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    #@f
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeTimeToValues(JI[F)I

    #@12
    move-result v0

    #@13
    packed-switch v0, :pswitch_data_0

    #@16
    .line 143
    sget-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    #@18
    return-object v0

    #@19
    .line 141
    :pswitch_0
    sget-object v0, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    #@1b
    return-object v0

    #@1c
    .line 142
    :pswitch_1
    sget-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    #@1e
    return-object v0

    #@1f
    .line 140
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public timeToValues([F)Landroid/graphics/Interpolator$Result;
    .locals 2
    .param p1, "values"    # [F

    #@0
    .prologue
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Interpolator;->timeToValues(I[F)Landroid/graphics/Interpolator$Result;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
