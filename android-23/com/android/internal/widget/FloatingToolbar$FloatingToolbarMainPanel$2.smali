.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->layoutMenuItems(Ljava/util/List;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@0
    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->-get2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1098
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    #@a
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Ljava/lang/Runnable;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@11
    .line 1096
    :cond_0
    return-void
.end method
