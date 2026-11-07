.class public final Landroid/window/BackEvent;
.super Ljava/lang/Object;
.source "BackEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackEvent$SwipeEdge;
    }
.end annotation


# static fields
.field public static final whitelist EDGE_LEFT:I = 0x0

.field public static final whitelist EDGE_NONE:I = 0x2

.field public static final whitelist EDGE_RIGHT:I = 0x1


# instance fields
.field private final blacklist mFrameTimeMillis:J

.field private final blacklist mProgress:F

.field private final blacklist mSwipeEdge:I

.field private final blacklist mTouchX:F

.field private final blacklist mTouchY:F


# direct methods
.method public constructor whitelist <init>(FFFI)V
    .registers 7
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "progress"    # F
    .param p4, "swipeEdge"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Landroid/window/BackEvent;->mTouchX:F

    .line 87
    iput p2, p0, Landroid/window/BackEvent;->mTouchY:F

    .line 88
    iput p3, p0, Landroid/window/BackEvent;->mProgress:F

    .line 89
    iput p4, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/window/BackEvent;->mFrameTimeMillis:J

    .line 91
    return-void
.end method

.method public constructor whitelist <init>(FFFIJ)V
    .registers 7
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "progress"    # F
    .param p4, "swipeEdge"    # I
    .param p5, "frameTimeMillis"    # J

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Landroid/window/BackEvent;->mTouchX:F

    .line 106
    iput p2, p0, Landroid/window/BackEvent;->mTouchY:F

    .line 107
    iput p3, p0, Landroid/window/BackEvent;->mProgress:F

    .line 108
    iput p4, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    .line 109
    iput-wide p5, p0, Landroid/window/BackEvent;->mFrameTimeMillis:J

    .line 110
    return-void
.end method

.method public static blacklist fromBackMotionEvent(Landroid/window/BackMotionEvent;)Landroid/window/BackEvent;
    .registers 9
    .param p0, "backMotionEvent"    # Landroid/window/BackMotionEvent;

    .line 67
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackTimestampApi()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 68
    new-instance v1, Landroid/window/BackEvent;

    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v3

    .line 69
    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getProgress()F

    move-result v4

    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v5

    .line 70
    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getFrameTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Landroid/window/BackEvent;-><init>(FFFIJ)V

    .line 68
    return-object v1

    .line 72
    :cond_20
    new-instance v0, Landroid/window/BackEvent;

    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v1

    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v2

    .line 73
    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getProgress()F

    move-result v3

    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/window/BackEvent;-><init>(FFFI)V

    .line 72
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 169
    return v0

    .line 171
    :cond_4
    instance-of v1, p1, Landroid/window/BackEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 172
    return v2

    .line 174
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/window/BackEvent;

    .line 175
    .local v1, "that":Landroid/window/BackEvent;
    iget v3, p0, Landroid/window/BackEvent;->mTouchX:F

    iget v4, v1, Landroid/window/BackEvent;->mTouchX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_34

    iget v3, p0, Landroid/window/BackEvent;->mTouchY:F

    iget v4, v1, Landroid/window/BackEvent;->mTouchY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_34

    iget v3, p0, Landroid/window/BackEvent;->mProgress:F

    iget v4, v1, Landroid/window/BackEvent;->mProgress:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_34

    iget v3, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    iget v4, v1, Landroid/window/BackEvent;->mSwipeEdge:I

    if-ne v3, v4, :cond_34

    iget-wide v3, p0, Landroid/window/BackEvent;->mFrameTimeMillis:J

    iget-wide v5, v1, Landroid/window/BackEvent;->mFrameTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v2

    :goto_35
    return v0
.end method

.method public whitelist getFrameTimeMillis()J
    .registers 3

    .line 163
    iget-wide v0, p0, Landroid/window/BackEvent;->mFrameTimeMillis:J

    return-wide v0
.end method

.method public whitelist getProgress()F
    .registers 2

    .line 131
    iget v0, p0, Landroid/window/BackEvent;->mProgress:F

    return v0
.end method

.method public whitelist getSwipeEdge()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    return v0
.end method

.method public whitelist getTouchX()F
    .registers 2

    .line 139
    iget v0, p0, Landroid/window/BackEvent;->mTouchX:F

    return v0
.end method

.method public whitelist getTouchY()F
    .registers 2

    .line 147
    iget v0, p0, Landroid/window/BackEvent;->mTouchY:F

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackEvent{mTouchX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mTouchX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTouchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mTouchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSwipeEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrameTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/window/BackEvent;->mFrameTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
