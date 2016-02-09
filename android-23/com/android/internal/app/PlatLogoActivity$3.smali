.class Lcom/android/internal/app/PlatLogoActivity$3;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field final synthetic val$im:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/PlatLogoActivity;
    .param p2, "val$im"    # Landroid/view/View;

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    #@2
    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/view/View;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 134
    const/4 v0, 0x4

    #@2
    if-eq p2, v0, :cond_2

    #@4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_2

    #@a
    .line 135
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    #@c
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity;->mKeyCount:I

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    iput v1, v0, Lcom/android/internal/app/PlatLogoActivity;->mKeyCount:I

    #@12
    .line 136
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    #@14
    iget v0, v0, Lcom/android/internal/app/PlatLogoActivity;->mKeyCount:I

    #@16
    const/4 v1, 0x2

    #@17
    if-le v0, v1, :cond_0

    #@19
    .line 137
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    #@1b
    iget v0, v0, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    #@1d
    const/4 v1, 0x5

    #@1e
    if-le v0, v1, :cond_1

    #@20
    .line 138
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/view/View;

    #@22
    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    #@25
    .line 143
    :cond_0
    :goto_0
    const/4 v0, 0x1

    #@26
    return v0

    #@27
    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$3;->val$im:Landroid/view/View;

    #@29
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    #@2c
    goto :goto_0

    #@2d
    .line 145
    :cond_2
    return v1
.end method
