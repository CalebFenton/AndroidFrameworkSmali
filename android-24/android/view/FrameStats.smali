.class public abstract Landroid/view/FrameStats;
.super Ljava/lang/Object;
.source "FrameStats.java"


# static fields
.field public static final UNDEFINED_TIME_NANO:J = -0x1L


# instance fields
.field protected mFramesPresentedTimeNano:[J

.field protected mRefreshPeriodNano:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final getEndTimeNano()J
    .locals 2

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_0

    #@6
    .line 79
    const-wide/16 v0, -0x1

    #@8
    return-wide v0

    #@9
    .line 81
    :cond_0
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    #@b
    iget-object v1, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    #@d
    array-length v1, v1

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    aget-wide v0, v0, v1

    #@12
    return-wide v0
.end method

.method public final getFrameCount()I
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 51
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    #@6
    array-length v0, v0

    #@7
    .line 50
    :goto_0
    return v0

    #@8
    .line 51
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public final getFramePresentedTimeNano(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    #@2
    if-nez v0, :cond_0

    #@4
    .line 93
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 95
    :cond_0
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    #@c
    aget-wide v0, v0, p1

    #@e
    return-wide v0
.end method

.method public final getRefreshPeriodNano()J
    .locals 2

    #@0
    .prologue
    .line 41
    iget-wide v0, p0, Landroid/view/FrameStats;->mRefreshPeriodNano:J

    #@2
    return-wide v0
.end method

.method public final getStartTimeNano()J
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    #@4
    move-result v0

    #@5
    if-gtz v0, :cond_0

    #@7
    .line 64
    const-wide/16 v0, -0x1

    #@9
    return-wide v0

    #@a
    .line 66
    :cond_0
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    #@c
    aget-wide v0, v0, v1

    #@e
    return-wide v0
.end method
