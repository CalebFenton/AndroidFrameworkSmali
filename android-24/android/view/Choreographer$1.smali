.class final Landroid/view/Choreographer$1;
.super Ljava/lang/ThreadLocal;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/view/Choreographer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/view/Choreographer;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@4
    move-result-object v0

    #@5
    .line 101
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    #@7
    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "The current thread must have a looper!"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 104
    :cond_0
    new-instance v1, Landroid/view/Choreographer;

    #@12
    invoke-direct {v1, v0, v2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;Landroid/view/Choreographer;)V

    #@15
    return-object v1
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/view/Choreographer$1;->initialValue()Landroid/view/Choreographer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
