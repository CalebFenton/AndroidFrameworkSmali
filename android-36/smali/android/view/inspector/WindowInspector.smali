.class public final Landroid/view/inspector/WindowInspector;
.super Ljava/lang/Object;
.source "WindowInspector.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static blacklist addGlobalWindowViewsListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 53
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/view/View;>;>;"
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/WindowManagerGlobal;->addWindowViewsListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 54
    return-void
.end method

.method public static whitelist getGlobalWindowViews()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerGlobal;->getWindowViews()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist removeGlobalWindowViewsListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/view/View;>;>;"
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerGlobal;->removeWindowViewsListener(Ljava/util/function/Consumer;)V

    .line 64
    return-void
.end method
