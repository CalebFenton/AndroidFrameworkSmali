.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# static fields
.field private static final greylist-max-o MAXIMUM_NUMBER_OF_LISTENERS:I = 0x7


# instance fields
.field private greylist-max-o mCanMove:[Z

.field private greylist-max-o mNumberOfListeners:I

.field private greylist-max-o mPositionHasChanged:Z

.field private greylist-max-o mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private greylist-max-o mPositionX:I

.field private greylist-max-o mPositionXOnScreen:I

.field private greylist-max-o mPositionY:I

.field private greylist-max-o mPositionYOnScreen:I

.field private greylist-max-o mScrollHasChanged:Z

.field final greylist-max-o mTempCoords:[I

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3743
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3748
    const/4 p1, 0x7

    new-array v0, p1, [Landroid/widget/Editor$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 3750
    new-array p1, p1, [Z

    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    .line 3751
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 3757
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private greylist-max-o updatePosition()V
    .registers 5

    .line 3831
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 3833
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_20

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v3

    iget v2, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    if-eq v0, v2, :cond_1e

    goto :goto_20

    :cond_1e
    move v0, v1

    goto :goto_21

    :cond_20
    :goto_20
    move v0, v3

    :goto_21
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 3835
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    .line 3836
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    .line 3838
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 3840
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    .line 3841
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    .line 3842
    return-void
.end method


# virtual methods
.method public greylist-max-o addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .registers 6
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "canMove"    # Z

    .line 3760
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_14

    .line 3761
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 3762
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3763
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3766
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_14
    const/4 v0, -0x1

    .line 3767
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    const/4 v2, 0x7

    if-ge v1, v2, :cond_28

    .line 3768
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v1

    .line 3769
    .local v2, "listener":Landroid/widget/Editor$TextViewPositionListener;
    if-ne v2, p1, :cond_20

    .line 3770
    return-void

    .line 3771
    :cond_20
    if-gez v0, :cond_25

    if-nez v2, :cond_25

    .line 3772
    move v0, v1

    .line 3767
    .end local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 3776
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aput-object p1, v1, v0

    .line 3777
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aput-boolean p2, v1, v0

    .line 3778
    iget v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 3779
    return-void
.end method

.method public greylist-max-o getPositionX()I
    .registers 2

    .line 3797
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method public greylist-max-o getPositionXOnScreen()I
    .registers 2

    .line 3805
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    return v0
.end method

.method public greylist-max-o getPositionY()I
    .registers 2

    .line 3801
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method public greylist-max-o getPositionYOnScreen()I
    .registers 2

    .line 3809
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    return v0
.end method

.method public whitelist onPreDraw()Z
    .registers 7

    .line 3814
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 3816
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/4 v1, 0x7

    if-ge v0, v1, :cond_29

    .line 3817
    iget-boolean v1, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v1, :cond_15

    iget-boolean v1, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_26

    .line 3818
    :cond_15
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v1, v1, v0

    .line 3819
    .local v1, "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    if-eqz v1, :cond_26

    .line 3820
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    iget-boolean v4, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    iget-boolean v5, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 3816
    .end local v1    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3826
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 3827
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o onScrollChanged()V
    .registers 2

    .line 3845
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 3846
    return-void
.end method

.method public greylist-max-o removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .registers 5
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;

    .line 3782
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_19

    .line 3783
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_16

    .line 3784
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 3785
    iget v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 3786
    goto :goto_19

    .line 3782
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3790
    .end local v0    # "i":I
    :cond_19
    :goto_19
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_2a

    .line 3791
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3792
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3794
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_2a
    return-void
.end method
