.class Landroid/view/HdrRenderState;
.super Ljava/lang/Object;
.source "HdrRenderState.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/Display;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist FLAG_ANIMATE_ENABLED:Z

.field private static final blacklist TRANSITION_PER_MS:F = 0.01f


# instance fields
.field private blacklist mDesiredHdrSdrRatio:F

.field private blacklist mIsHdrEnabled:Z

.field private blacklist mIsListenerRegistered:Z

.field private blacklist mLastUpdateMillis:J

.field private blacklist mPreviousRenderRatio:F

.field private blacklist mRenderHdrSdrRatio:F

.field private blacklist mTargetDesiredHdrSdrRatio:F

.field private blacklist mTargetHdrSdrRatio:F

.field private blacklist mUpdateHdrSdrRatioInfo:Z

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->animateHdrTransitions()Z

    move-result v0

    sput-boolean v0, Landroid/view/HdrRenderState;->FLAG_ANIMATE_ENABLED:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsHdrEnabled:Z

    .line 35
    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    .line 36
    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    .line 38
    iput v0, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    .line 39
    iput v0, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    .line 40
    iput v0, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    .line 41
    iput v0, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    .line 45
    iput-object p1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 46
    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/view/Display;)V
    .registers 3
    .param p1, "display"    # Landroid/view/Display;

    .line 50
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->forceUpdateHdrSdrRatio()V

    .line 51
    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 52
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    check-cast p1, Landroid/view/Display;

    invoke-virtual {p0, p1}, Landroid/view/HdrRenderState;->accept(Landroid/view/Display;)V

    return-void
.end method

.method blacklist forceUpdateHdrSdrRatio()V
    .registers 3

    .line 116
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 117
    iget v0, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    iget-object v1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 118
    invoke-virtual {v1}, Landroid/view/Display;->getHdrSdrRatio()F

    move-result v1

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    goto :goto_1b

    .line 120
    :cond_17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    .line 122
    :goto_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 123
    return-void
.end method

.method blacklist getDesiredHdrSdrRatio()F
    .registers 2

    .line 108
    iget v0, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    return v0
.end method

.method blacklist getRenderHdrSdrRatio()F
    .registers 2

    .line 112
    iget v0, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    return v0
.end method

.method blacklist isHdrEnabled()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mIsHdrEnabled:Z

    return v0
.end method

.method blacklist setDesiredHdrSdrRatio(ZF)V
    .registers 5
    .param p1, "isHdrEnabled"    # Z
    .param p2, "desiredRatio"    # F

    .line 126
    iput-boolean p1, p0, Landroid/view/HdrRenderState;->mIsHdrEnabled:Z

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    .line 128
    iget v0, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_35

    .line 129
    iput p2, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    .line 130
    iget v0, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iget v1, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1c

    sget-boolean v0, Landroid/view/HdrRenderState;->FLAG_ANIMATE_ENABLED:Z

    if-nez v0, :cond_20

    .line 131
    :cond_1c
    iget v0, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iput v0, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    .line 133
    :cond_20
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->forceUpdateHdrSdrRatio()V

    .line 134
    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 136
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 137
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->startListening()V

    goto :goto_35

    .line 139
    :cond_32
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->stopListening()V

    .line 142
    :cond_35
    :goto_35
    return-void
.end method

.method blacklist startListening()V
    .registers 3

    .line 66
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_1e

    .line 67
    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Landroid/view/Display;->registerHdrSdrRatioChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    .line 70
    :cond_1e
    return-void
.end method

.method blacklist stopListening()V
    .registers 2

    .line 59
    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    if-eqz v0, :cond_e

    .line 60
    iget-object v0, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p0}, Landroid/view/Display;->unregisterHdrSdrRatioChangedListener(Ljava/util/function/Consumer;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HdrRenderState;->mIsListenerRegistered:Z

    .line 63
    :cond_e
    return-void
.end method

.method blacklist updateForFrame(J)Z
    .registers 11
    .param p1, "frameTimeMillis"    # J

    .line 74
    iget-boolean v0, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 75
    .local v0, "hasUpdate":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 76
    iget v1, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    iput v1, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    .line 77
    iget-wide v1, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 78
    .local v1, "timeDelta":J
    long-to-float v3, v1

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    .line 79
    .local v3, "maxStep":F
    iput-wide p1, p0, Landroid/view/HdrRenderState;->mLastUpdateMillis:J

    .line 80
    if-eqz v0, :cond_71

    sget-boolean v4, Landroid/view/HdrRenderState;->FLAG_ANIMATE_ENABLED:Z

    if-eqz v4, :cond_71

    .line 81
    invoke-virtual {p0}, Landroid/view/HdrRenderState;->isHdrEnabled()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 82
    iget v4, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    iget v5, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    sub-float/2addr v4, v5

    .line 83
    .local v4, "delta":F
    cmpl-float v5, v4, v3

    const/4 v6, 0x1

    if-lez v5, :cond_42

    .line 84
    iget v5, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    add-float/2addr v5, v3

    iput v5, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    .line 85
    iput-boolean v6, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 86
    iget-object v5, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 88
    :cond_42
    iget v5, p0, Landroid/view/HdrRenderState;->mRenderHdrSdrRatio:F

    iput v5, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    .line 90
    iget v5, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iget v7, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_68

    .line 91
    iget v5, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iget v7, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    sub-float/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    .line 93
    iget v5, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    iget v7, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_68

    .line 94
    iput-boolean v6, p0, Landroid/view/HdrRenderState;->mUpdateHdrSdrRatioInfo:Z

    .line 95
    iget-object v5, p0, Landroid/view/HdrRenderState;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 99
    .end local v4    # "delta":F
    :cond_68
    goto :goto_71

    .line 100
    :cond_69
    iget v4, p0, Landroid/view/HdrRenderState;->mTargetHdrSdrRatio:F

    iput v4, p0, Landroid/view/HdrRenderState;->mPreviousRenderRatio:F

    .line 101
    iget v4, p0, Landroid/view/HdrRenderState;->mTargetDesiredHdrSdrRatio:F

    iput v4, p0, Landroid/view/HdrRenderState;->mDesiredHdrSdrRatio:F

    .line 104
    :cond_71
    :goto_71
    return v0
.end method
