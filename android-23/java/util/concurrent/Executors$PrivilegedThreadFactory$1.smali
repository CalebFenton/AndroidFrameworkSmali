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
.field final synthetic this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/concurrent/Executors$PrivilegedThreadFactory;
    .param p2, "val$r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 563
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

    #@2
    iput-object p2, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->val$r:Ljava/lang/Runnable;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 565
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->val$r:Ljava/lang/Runnable;

    #@4
    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;-><init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;Ljava/lang/Runnable;)V

    #@7
    .line 571
    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

    #@9
    invoke-static {v1}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->-get0(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/security/AccessControlContext;

    #@c
    move-result-object v1

    #@d
    .line 565
    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@10
    .line 564
    return-void
.end method
