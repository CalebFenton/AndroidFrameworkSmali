.class Landroid/widget/AbsListView$CheckForLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# static fields
.field private static final INVALID_COORD:I = -0x1


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method static synthetic -wrap0(Landroid/widget/AbsListView$CheckForLongPress;FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$CheckForLongPress;->setCoords(FF)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    #@2
    .line 3127
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable;)V

    #@8
    .line 3129
    iput v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    #@a
    .line 3130
    iput v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    #@c
    .line 3127
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;)V

    #@3
    return-void
.end method

.method private setCoords(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 3133
    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    #@2
    .line 3134
    iput p2, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    #@4
    .line 3132
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/high16 v7, -0x40800000    # -1.0f

    #@3
    .line 3139
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@5
    iget v8, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    #@7
    .line 3140
    .local v8, "motionPosition":I
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@9
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@b
    iget v6, v6, Landroid/widget/AbsListView;->mFirstPosition:I

    #@d
    sub-int v6, v8, v6

    #@f
    invoke-virtual {v1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v2

    #@13
    .line 3141
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_1

    #@15
    .line 3142
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@17
    iget v3, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    #@19
    .line 3143
    .local v3, "longPressPosition":I
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@1b
    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1d
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@1f
    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    #@21
    invoke-interface {v1, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@24
    move-result-wide v4

    #@25
    .line 3145
    .local v4, "longPressId":J
    const/4 v0, 0x0

    #@26
    .line 3146
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForLongPress;->sameWindow()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_0

    #@2c
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@2e
    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 3154
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    #@34
    .line 3155
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@36
    const/4 v6, 0x1

    #@37
    invoke-static {v1, v6}, Landroid/widget/AbsListView;->-set1(Landroid/widget/AbsListView;Z)Z

    #@3a
    .line 3156
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@3c
    const/4 v6, -0x1

    #@3d
    iput v6, v1, Landroid/widget/AbsListView;->mTouchMode:I

    #@3f
    .line 3157
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@41
    invoke-virtual {v1, v9}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@44
    .line 3158
    invoke-virtual {v2, v9}, Landroid/view/View;->setPressed(Z)V

    #@47
    .line 3138
    .end local v3    # "longPressPosition":I
    .end local v4    # "longPressId":J
    :cond_1
    :goto_1
    return-void

    #@48
    .line 3147
    .restart local v0    # "handled":Z
    .restart local v3    # "longPressPosition":I
    .restart local v4    # "longPressId":J
    :cond_2
    iget v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    #@4a
    cmpl-float v1, v1, v7

    #@4c
    if-eqz v1, :cond_3

    #@4e
    iget v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    #@50
    cmpl-float v1, v1, v7

    #@52
    if-eqz v1, :cond_3

    #@54
    .line 3148
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@56
    iget v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    #@58
    iget v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    #@5a
    invoke-virtual/range {v1 .. v7}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    #@5d
    move-result v0

    #@5e
    .local v0, "handled":Z
    goto :goto_0

    #@5f
    .line 3150
    .local v0, "handled":Z
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@61
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    #@64
    move-result v0

    #@65
    .local v0, "handled":Z
    goto :goto_0

    #@66
    .line 3160
    .end local v0    # "handled":Z
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    #@68
    const/4 v6, 0x2

    #@69
    iput v6, v1, Landroid/widget/AbsListView;->mTouchMode:I

    #@6b
    goto :goto_1
.end method
