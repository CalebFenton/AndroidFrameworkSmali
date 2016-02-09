.class Landroid/view/WindowManagerGlobal$2;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowManagerGlobal;


# direct methods
.method constructor <init>(Landroid/view/WindowManagerGlobal;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/WindowManagerGlobal;

    #@0
    .prologue
    .line 263
    iput-object p1, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 265
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    #@2
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->-get0(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 266
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    #@9
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->-get1(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v1

    #@11
    add-int/lit8 v0, v1, -0x1

    #@13
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@15
    .line 267
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    #@17
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->-get1(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/view/ViewRootImpl;

    #@21
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->loadSystemProperties()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 266
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_0

    #@27
    :cond_0
    monitor-exit v2

    #@28
    .line 264
    return-void

    #@29
    .line 265
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method
