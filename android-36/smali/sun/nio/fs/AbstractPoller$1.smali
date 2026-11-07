.class Lsun/nio/fs/AbstractPoller$1;
.super Ljava/lang/Object;
.source "AbstractPoller.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/AbstractPoller;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$thisRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/AbstractPoller;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lsun/nio/fs/AbstractPoller;
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

    .line 59
    iput-object p2, p0, Lsun/nio/fs/AbstractPoller$1;->val$thisRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lsun/nio/fs/AbstractPoller$1;->val$thisRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    .local v0, "thr":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    const/4 v1, 0x0

    return-object v1
.end method
