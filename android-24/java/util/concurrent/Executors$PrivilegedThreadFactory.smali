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
.field final acc:Ljava/security/AccessControlContext;

.field final ccl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 551
    invoke-direct {p0}, Ljava/util/concurrent/Executors$DefaultThreadFactory;-><init>()V

    #@3
    .line 564
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->acc:Ljava/security/AccessControlContext;

    #@9
    .line 565
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->ccl:Ljava/lang/ClassLoader;

    #@13
    .line 550
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 569
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;-><init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;Ljava/lang/Runnable;)V

    #@5
    invoke-super {p0, v0}, Ljava/util/concurrent/Executors$DefaultThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
