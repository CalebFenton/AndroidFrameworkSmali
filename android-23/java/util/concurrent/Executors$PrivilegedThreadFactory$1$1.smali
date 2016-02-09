.class Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$2"    # Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;
    .param p2, "val$r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 565
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->this$2:Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    #@2
    iput-object p2, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->val$r:Ljava/lang/Runnable;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 566
    invoke-virtual {p0}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    #@0
    .prologue
    .line 567
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->this$2:Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    #@6
    iget-object v1, v1, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

    #@8
    invoke-static {v1}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->-get1(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/lang/ClassLoader;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@f
    .line 568
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->val$r:Ljava/lang/Runnable;

    #@11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@14
    .line 569
    const/4 v0, 0x0

    #@15
    return-object v0
.end method
