.class public Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;
.super Ljava/lang/Object;
.source "DuckTypingDispatcher.java"

# interfaces
.implements Landroid/hardware/camera2/dispatch/Dispatchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TFrom:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/dispatch/Dispatchable",
        "<TTFrom;>;"
    }
.end annotation


# instance fields
.field private final mDuck:Landroid/hardware/camera2/dispatch/MethodNameInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/MethodNameInvoker",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    .local p0, "this":Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;, "Landroid/hardware/camera2/dispatch/DuckTypingDispatcher<TTFrom;TT;>;"
    .local p1, "target":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<TT;>;"
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const-string/jumbo v0, "targetClass must not be null"

    #@6
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 46
    const-string/jumbo v0, "target must not be null"

    #@c
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 48
    new-instance v0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@11
    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    #@14
    iput-object v0, p0, Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;->mDuck:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@16
    .line 44
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 53
    .local p0, "this":Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;, "Landroid/hardware/camera2/dispatch/DuckTypingDispatcher<TTFrom;TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;->mDuck:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
