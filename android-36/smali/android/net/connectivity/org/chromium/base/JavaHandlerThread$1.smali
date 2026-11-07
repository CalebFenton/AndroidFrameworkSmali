.class Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$1;
.super Ljava/lang/Object;
.source "JavaHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;->startAndInitialize(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$nativeEvent:J

.field final synthetic blacklist val$nativeThread:J


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;JJ)V
    .registers 6
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/JavaHandlerThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-wide p2, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$1;->val$nativeThread:J

    iput-wide p4, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$1;->val$nativeEvent:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 56
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThreadJni;->get()Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$Natives;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$1;->val$nativeThread:J

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$1;->val$nativeEvent:J

    .line 57
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/connectivity/org/chromium/base/JavaHandlerThread$Natives;->initializeThread(JJ)V

    .line 58
    return-void
.end method
