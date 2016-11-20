.class final Landroid/view/View$CheckForLongPress;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field private mX:F

.field private mY:F

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    #@0
    .prologue
    .line 22389
    iput-object p1, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$CheckForLongPress;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    #@3
    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    #@0
    .prologue
    .line 22410
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    #@2
    iget v0, v0, Landroid/view/View;->mWindowAttachCount:I

    #@4
    iput v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalWindowAttachCount:I

    #@6
    .line 22409
    return-void
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 22396
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    #@a
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 22397
    iget v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalWindowAttachCount:I

    #@10
    iget-object v1, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    #@12
    iget v1, v1, Landroid/view/View;->mWindowAttachCount:I

    #@14
    if-ne v0, v1, :cond_0

    #@16
    .line 22398
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    #@18
    iget v1, p0, Landroid/view/View$CheckForLongPress;->mX:F

    #@1a
    iget v2, p0, Landroid/view/View$CheckForLongPress;->mY:F

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performLongClick(FF)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 22399
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    #@24
    const/4 v1, 0x1

    #@25
    invoke-static {v0, v1}, Landroid/view/View;->-set0(Landroid/view/View;Z)Z

    #@28
    .line 22395
    :cond_0
    return-void
.end method

.method public setAnchor(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 22405
    iput p1, p0, Landroid/view/View$CheckForLongPress;->mX:F

    #@2
    .line 22406
    iput p2, p0, Landroid/view/View$CheckForLongPress;->mY:F

    #@4
    .line 22404
    return-void
.end method
