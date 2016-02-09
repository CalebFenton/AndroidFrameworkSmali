.class final Landroid/view/ViewDebug$8;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Landroid/view/View;)V
    .locals 0
    .param p1, "val$method"    # Ljava/lang/reflect/Method;
    .param p2, "val$view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1124
    iput-object p1, p0, Landroid/view/ViewDebug$8;->val$method:Ljava/lang/reflect/Method;

    #@2
    iput-object p2, p0, Landroid/view/ViewDebug$8;->val$view:Landroid/view/View;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    #@0
    .prologue
    .line 1127
    iget-object v1, p0, Landroid/view/ViewDebug$8;->val$method:Ljava/lang/reflect/Method;

    #@2
    iget-object v2, p0, Landroid/view/ViewDebug$8;->val$view:Landroid/view/View;

    #@4
    const/4 v0, 0x0

    #@5
    check-cast v0, [Ljava/lang/Object;

    #@7
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method
