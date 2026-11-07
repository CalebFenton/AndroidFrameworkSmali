.class Ljava/util/concurrent/Executors$PrivilegedThreadFactory;
.super Ljava/util/concurrent/Executors$DefaultThreadFactory;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivilegedThreadFactory"
.end annotation


# instance fields
.field final greylist-max-o acc:Ljava/security/AccessControlContext;

.field final greylist-max-o ccl:Ljava/lang/ClassLoader;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 668
    invoke-direct {p0}, Ljava/util/concurrent/Executors$DefaultThreadFactory;-><init>()V

    .line 682
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->acc:Ljava/security/AccessControlContext;

    .line 683
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->ccl:Ljava/lang/ClassLoader;

    .line 684
    return-void
.end method


# virtual methods
.method public whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 687
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;-><init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/Executors$DefaultThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
