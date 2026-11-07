.class Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$2;
.super Ljava/lang/Object;
.source "JavaHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->quitThreadSafely(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;

.field final synthetic blacklist val$nativeThread:J


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;J)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$2;->this$0:Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;

    iput-wide p2, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$2;->val$nativeThread:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 70
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$2;->this$0:Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->-$$Nest$fgetmThread(Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 71
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThreadJni;->get()Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$Natives;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$2;->val$nativeThread:J

    invoke-interface {v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$Natives;->onLooperStopped(J)V

    .line 72
    return-void
.end method
