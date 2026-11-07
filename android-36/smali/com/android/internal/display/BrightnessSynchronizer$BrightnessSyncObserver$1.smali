.class Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 568
    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;->this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 570
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 577
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;->this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    iget-object v0, v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;->this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    iget-object v1, v1, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$mgetScreenBrightnessFloat(Lcom/android/internal/display/BrightnessSynchronizer;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$mhandleBrightnessChangeFloat(Lcom/android/internal/display/BrightnessSynchronizer;F)V

    .line 578
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 573
    return-void
.end method
