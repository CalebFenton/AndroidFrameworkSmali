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

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    #@0
    .prologue
    .line 21114
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
    .line 21128
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    #@2
    iget v0, v0, Landroid/view/View;->mWindowAttachCount:I

    #@4
    iput v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalWindowAttachCount:I

    #@6
    .line 21127
    return-void
.end method

.method public run()V
    .locals 2

    #@0
    .prologue
    .line 21119
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
    .line 21120
    iget v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalWindowAttachCount:I

    #@10
    iget-object v1, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    #@12
    iget v1, v1, Landroid/view/View;->mWindowAttachCount:I

    #@14
    if-ne v0, v1, :cond_0

    #@16
    .line 21121
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    #@18
    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 21122
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    #@20
    const/4 v1, 0x1

    #@21
    invoke-static {v0, v1}, Landroid/view/View;->-set0(Landroid/view/View;Z)Z

    #@24
    .line 21118
    :cond_0
    return-void
.end method
