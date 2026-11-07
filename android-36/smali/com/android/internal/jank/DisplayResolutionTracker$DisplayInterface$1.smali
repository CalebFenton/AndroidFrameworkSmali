.class Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;
.super Ljava/lang/Object;
.source "DisplayResolutionTracker.java"

# interfaces
.implements Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;->getDefault(Landroid/os/Handler;)Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$displayEventsToBeSubscribed:J

.field final synthetic blacklist val$handler:Landroid/os/Handler;

.field final synthetic blacklist val$manager:Landroid/hardware/display/DisplayManagerGlobal;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Handler;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$manager:Landroid/hardware/display/DisplayManagerGlobal;

    iput-object p2, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$handler:Landroid/os/Handler;

    iput-wide p3, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$displayEventsToBeSubscribed:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 3
    .param p1, "displayId"    # I

    .line 167
    iget-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$manager:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 161
    iget-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$manager:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v2, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$handler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface$1;->val$displayEventsToBeSubscribed:J

    .line 162
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    .line 161
    move-object v1, p1

    .end local p1    # "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .local v1, "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JLjava/lang/String;)V

    .line 163
    return-void
.end method
