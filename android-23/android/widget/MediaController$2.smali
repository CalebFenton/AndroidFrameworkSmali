.class Landroid/widget/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/MediaController;

    #@0
    .prologue
    .line 200
    iput-object p1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 203
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 204
    iget-object v0, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    #@9
    invoke-static {v0}, Landroid/widget/MediaController;->-get6(Landroid/widget/MediaController;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 205
    iget-object v0, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    #@11
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@14
    .line 208
    :cond_0
    return v1
.end method
