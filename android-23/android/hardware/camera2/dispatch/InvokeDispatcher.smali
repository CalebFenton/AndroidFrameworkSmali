.class public Landroid/hardware/camera2/dispatch/InvokeDispatcher;
.super Ljava/lang/Object;
.source "InvokeDispatcher.java"

# interfaces
.implements Landroid/hardware/camera2/dispatch/Dispatchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/dispatch/Dispatchable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InvocationSink"


# instance fields
.field private final mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 32
    .local p0, "this":Landroid/hardware/camera2/dispatch/InvokeDispatcher;, "Landroid/hardware/camera2/dispatch/InvokeDispatcher<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    const-string/jumbo v0, "target must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/hardware/camera2/dispatch/InvokeDispatcher;->mTarget:Ljava/lang/Object;

    #@c
    .line 32
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 39
    .local p0, "this":Landroid/hardware/camera2/dispatch/InvokeDispatcher;, "Landroid/hardware/camera2/dispatch/InvokeDispatcher<TT;>;"
    :try_start_0
    iget-object v4, p0, Landroid/hardware/camera2/dispatch/InvokeDispatcher;->mTarget:Ljava/lang/Object;

    #@2
    invoke-virtual {p1, v4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v4

    #@6
    return-object v4

    #@7
    .line 47
    :catch_0
    move-exception v1

    #@8
    .line 49
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "InvocationSink"

    #@b
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "IllegalArgumentException while invoking "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    .line 53
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v4, 0x0

    #@23
    return-object v4

    #@24
    .line 44
    :catch_1
    move-exception v0

    #@25
    .line 46
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "InvocationSink"

    #@28
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v6, "IllegalAccessException while invoking "

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-static {v4, v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    goto :goto_0

    #@40
    .line 40
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    #@41
    .line 41
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@44
    move-result-object v3

    #@45
    .line 43
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Throwable;)V

    #@48
    goto :goto_0
.end method
