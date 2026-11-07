.class Lcom/android/internal/jank/InteractionMonitorDebugOverlay;
.super Ljava/lang/Object;
.source "InteractionMonitorDebugOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;,
        Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;
    }
.end annotation


# static fields
.field private static final blacklist HIDE_OVERLAY_DELAY:J = 0x7d0L

.field private static final blacklist REASON_STILL_RUNNING:I = -0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "InteractionMonitorDebug"


# instance fields
.field private final blacklist mCurrentApplication:Landroid/app/Application;

.field private final blacklist mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

.field private final blacklist mHideOverlayRunnable:Ljava/lang/Runnable;

.field private final blacklist mRunningCujs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUiThread:Landroid/os/Handler;

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$kRNTuT_ToWCtaTiEAYf9fZE_gi4(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->lambda$onTrackerRemoved$1(III)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lKL24KOGNKjWLNLA0x31emQoRuM(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->lambda$dispose$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nuBEqYN1lPFGmsOBqvCzoA--bPE(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->lambda$onTrackerAdded$0(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentApplication(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Landroid/app/Application;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mCurrentApplication:Landroid/app/Application;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDebugOverlayView(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Ljava/util/ArrayList;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/app/Application;Landroid/os/Handler;ID)V
    .registers 17
    .param p1, "currentApplication"    # Landroid/app/Application;
    .param p2, "uiThread"    # Landroid/os/Handler;
    .param p3, "bgColor"    # I
    .param p4, "yOffset"    # D

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$1;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHideOverlayRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mCurrentApplication:Landroid/app/Application;

    .line 84
    iput-object p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    .line 85
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mCurrentApplication:Landroid/app/Application;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    .line 87
    .local v7, "display":Landroid/view/Display;
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mCurrentApplication:Landroid/app/Application;

    invoke-virtual {v0, v7}, Landroid/app/Application;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 88
    const/16 v3, 0x7d6

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v8

    .line 89
    .local v8, "windowContext":Landroid/content/Context;
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mWindowManager:Landroid/view/WindowManager;

    .line 91
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 93
    .local v9, "size":Landroid/graphics/Rect;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x800138

    const/4 v5, -0x3

    invoke-direct {v0, v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    move-object v10, v0

    .line 100
    .local v10, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 103
    const/4 v0, 0x3

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 104
    invoke-virtual {v10, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 105
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 107
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 108
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 109
    const/16 v0, 0x11

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 110
    const-string v0, "InteractionMonitorDebugOverlay"

    invoke-virtual {v10, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 113
    const-string v0, "InteractionMonitorDebug"

    const-string v2, "InteractionMonitorDebugOverlay must be constructed on InteractionJankMonitor\'s worker thread"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_8a
    new-instance v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    iget-object v2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mCurrentApplication:Landroid/app/Application;

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Landroid/content/Context;IDLcom/android/internal/jank/InteractionMonitorDebugOverlay-IA;)V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    .line 117
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    invoke-interface {v0, v2, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method private synthetic blacklist lambda$dispose$2()V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method private synthetic blacklist lambda$onTrackerAdded$0(II)V
    .registers 7
    .param p1, "addedCuj"    # I
    .param p2, "cookie"    # I

    .line 132
    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "cujName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " started (cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InteractionMonitorDebug"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;-><init>(IILcom/android/internal/jank/InteractionMonitorDebugOverlay-IA;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->invalidate()V

    .line 137
    return-void
.end method

.method private synthetic blacklist lambda$onTrackerRemoved$1(III)V
    .registers 11
    .param p1, "removedCuj"    # I
    .param p2, "cookie"    # I
    .param p3, "reason"    # I

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "foundTracker":Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;
    const/4 v1, 0x1

    .line 145
    .local v1, "allTrackersEnded":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 146
    iget-object v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mRunningCujs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;

    .line 147
    .local v3, "tracker":Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;
    iget v4, v3, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mCuj:I

    if-ne v4, p1, :cond_1d

    iget v4, v3, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mCookie:I

    if-ne v4, p2, :cond_1d

    .line 148
    move-object v0, v3

    goto :goto_29

    .line 152
    :cond_1d
    if-eqz v1, :cond_27

    iget v4, v3, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mState:I

    const/16 v5, -0x3e8

    if-eq v4, v5, :cond_27

    const/4 v4, 0x1

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    move v1, v4

    .line 145
    .end local v3    # "tracker":Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 156
    .end local v2    # "i":I
    :cond_2c
    if-eqz v0, :cond_30

    .line 157
    iput p3, v0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mState:I

    .line 160
    :cond_30
    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "cujName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_42

    const-string v4, " ended"

    goto :goto_44

    :cond_42
    const-string v4, " cancelled"

    :goto_44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InteractionMonitorDebug"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz v1, :cond_71

    .line 165
    const-string v3, "All CUJs ended"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHideOverlayRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    :cond_71
    iget-object v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mDebugOverlayView:Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->invalidate()V

    .line 169
    return-void
.end method


# virtual methods
.method blacklist dispose()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method blacklist onTrackerAdded(II)V
    .registers 5
    .param p1, "addedCuj"    # I
    .param p2, "cookie"    # I

    .line 130
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mHideOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method

.method blacklist onTrackerRemoved(III)V
    .registers 6
    .param p1, "removedCuj"    # I
    .param p2, "reason"    # I
    .param p3, "cookie"    # I

    .line 142
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method
