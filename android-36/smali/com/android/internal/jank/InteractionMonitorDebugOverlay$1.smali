.class Lcom/android/internal/jank/InteractionMonitorDebugOverlay$1;
.super Ljava/lang/Object;
.source "InteractionMonitorDebugOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionMonitorDebugOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/jank/InteractionMonitorDebugOverlay;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$1;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$1;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$1;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmDebugOverlayView(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->setVisibility(I)V

    .line 125
    return-void
.end method
