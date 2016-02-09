.class final Landroid/view/ViewDebug$9;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$exception:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p2, "val$method"    # Ljava/lang/reflect/Method;
    .param p3, "val$view"    # Landroid/view/View;
    .param p4, "val$args"    # [Ljava/lang/Object;
    .param p6, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    #@0
    .prologue
    .line 1617
    .local p1, "val$result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    .local p5, "val$exception":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    iput-object p1, p0, Landroid/view/ViewDebug$9;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    iput-object p2, p0, Landroid/view/ViewDebug$9;->val$method:Ljava/lang/reflect/Method;

    #@4
    iput-object p3, p0, Landroid/view/ViewDebug$9;->val$view:Landroid/view/View;

    #@6
    iput-object p4, p0, Landroid/view/ViewDebug$9;->val$args:[Ljava/lang/Object;

    #@8
    iput-object p5, p0, Landroid/view/ViewDebug$9;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    iput-object p6, p0, Landroid/view/ViewDebug$9;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 1621
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewDebug$9;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    iget-object v3, p0, Landroid/view/ViewDebug$9;->val$method:Ljava/lang/reflect/Method;

    #@4
    iget-object v4, p0, Landroid/view/ViewDebug$9;->val$view:Landroid/view/View;

    #@6
    iget-object v5, p0, Landroid/view/ViewDebug$9;->val$args:[Ljava/lang/Object;

    #@8
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1628
    :goto_0
    iget-object v2, p0, Landroid/view/ViewDebug$9;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@11
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@14
    .line 1619
    return-void

    #@15
    .line 1624
    :catch_0
    move-exception v0

    #@16
    .line 1625
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/view/ViewDebug$9;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    #@18
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@1b
    goto :goto_0

    #@1c
    .line 1622
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@1d
    .line 1623
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v2, p0, Landroid/view/ViewDebug$9;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    #@1f
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@26
    goto :goto_0
.end method
