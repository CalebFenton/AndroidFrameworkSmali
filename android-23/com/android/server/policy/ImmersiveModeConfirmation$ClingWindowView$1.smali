.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@0
    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@a
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 199
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@16
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    #@19
    move-result-object v0

    #@1a
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@1c
    iget-object v1, v1, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    #@1e
    invoke-virtual {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@25
    .line 197
    :cond_0
    return-void
.end method
