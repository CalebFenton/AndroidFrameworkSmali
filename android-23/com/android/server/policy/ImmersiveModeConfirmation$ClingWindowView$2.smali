.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpInt2:[I

.field final synthetic this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@0
    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 206
    const/4 v0, 0x2

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    #@a
    .line 205
    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 212
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@4
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    #@a
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    #@d
    .line 214
    const/4 v0, 0x3

    #@e
    .line 213
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    #@11
    .line 215
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@13
    .line 216
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    #@15
    aget v1, v1, v4

    #@17
    .line 217
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    #@19
    aget v2, v2, v5

    #@1b
    .line 218
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    #@1d
    aget v3, v3, v4

    #@1f
    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@21
    invoke-static {v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    #@28
    move-result v4

    #@29
    add-int/2addr v3, v4

    #@2a
    .line 219
    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->mTmpInt2:[I

    #@2c
    aget v4, v4, v5

    #@2e
    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    #@30
    invoke-static {v5}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-get0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    #@37
    move-result v5

    #@38
    add-int/2addr v4, v5

    #@39
    .line 215
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    #@3c
    .line 210
    return-void
.end method
