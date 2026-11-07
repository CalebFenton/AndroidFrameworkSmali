.class Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$3;
.super Ljava/lang/Object;
.source "JavaHandlerThread.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->listenForUncaughtExceptionsForTesting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$3;->this$0:Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 108
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$3;->this$0:Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;

    invoke-static {v0, p2}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->-$$Nest$fputmUnhandledException(Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method
