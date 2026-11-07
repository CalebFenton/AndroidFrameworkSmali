.class Landroid/app/jank/JankTracker$2;
.super Ljava/lang/Object;
.source "JankTracker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/jank/JankTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/jank/JankTracker;


# direct methods
.method constructor blacklist <init>(Landroid/app/jank/JankTracker;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/jank/JankTracker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Landroid/app/jank/JankTracker$2;->this$0:Landroid/app/jank/JankTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onWindowAttached()V
    .registers 5

    .line 99
    iget-object v0, p0, Landroid/app/jank/JankTracker$2;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v0}, Landroid/app/jank/JankTracker;->-$$Nest$mgetHandler(Landroid/app/jank/JankTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/jank/JankTracker$2$1;

    invoke-direct {v1, p0}, Landroid/app/jank/JankTracker$2$1;-><init>(Landroid/app/jank/JankTracker$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method

.method public whitelist onWindowDetached()V
    .registers 1

    .line 116
    return-void
.end method
