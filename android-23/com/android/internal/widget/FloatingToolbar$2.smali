.class Lcom/android/internal/widget/FloatingToolbar$2;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/FloatingToolbar;

    #@0
    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->-get0(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    #@e
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->-get0(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    #@1a
    const/4 v1, 0x1

    #@1b
    invoke-static {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;->-set0(Lcom/android/internal/widget/FloatingToolbar;Z)Z

    #@1e
    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    #@20
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/FloatingToolbar;

    #@23
    .line 99
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    #@0
    .prologue
    .line 107
    return-void
.end method
