.class Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

.field final synthetic blacklist val$r:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/concurrent/Executors$PrivilegedThreadFactory;
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

    .line 687
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

    iput-object p2, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 690
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;-><init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;)V

    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

    iget-object v1, v1, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 697
    return-void
.end method
