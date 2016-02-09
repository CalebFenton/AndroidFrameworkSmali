.class public Landroid/widget/RadioGroup;
.super Landroid/widget/LinearLayout;
.source "RadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadioGroup$LayoutParams;,
        Landroid/widget/RadioGroup$OnCheckedChangeListener;,
        Landroid/widget/RadioGroup$CheckedStateTracker;,
        Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method static synthetic -get0(Landroid/widget/RadioGroup;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/RadioGroup;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/RadioGroup;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/RadioGroup;IZ)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 55
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@6
    .line 59
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    #@9
    .line 68
    const/4 v0, 0x1

    #@a
    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    #@d
    .line 69
    invoke-direct {p0}, Landroid/widget/RadioGroup;->init()V

    #@10
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, -0x1

    #@3
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@6
    .line 55
    iput v5, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@8
    .line 59
    iput-boolean v6, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    #@a
    .line 81
    sget-object v3, Lcom/android/internal/R$styleable;->RadioGroup:[I

    #@c
    const v4, 0x101007e

    #@f
    .line 80
    invoke-virtual {p1, p2, v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@12
    move-result-object v0

    #@13
    .line 83
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@16
    move-result v2

    #@17
    .line 84
    .local v2, "value":I
    if-eq v2, v5, :cond_0

    #@19
    .line 85
    iput v2, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@1b
    .line 88
    :cond_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1e
    move-result v1

    #@1f
    .line 89
    .local v1, "index":I
    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    #@22
    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@25
    .line 92
    invoke-direct {p0}, Landroid/widget/RadioGroup;->init()V

    #@28
    .line 75
    return-void
.end method

.method private init()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 96
    new-instance v0, Landroid/widget/RadioGroup$CheckedStateTracker;

    #@3
    invoke-direct {v0, p0, v1}, Landroid/widget/RadioGroup$CheckedStateTracker;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$CheckedStateTracker;)V

    #@6
    iput-object v0, p0, Landroid/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@8
    .line 97
    new-instance v0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    #@a
    invoke-direct {v0, p0, v1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;)V

    #@d
    iput-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    #@f
    .line 98
    iget-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    #@11
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    #@14
    .line 95
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 171
    iput p1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@2
    .line 172
    iget-object v0, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 173
    iget-object v0, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    #@8
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@a
    invoke-interface {v0, p0, v1}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    #@d
    .line 170
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    #@0
    .prologue
    .line 178
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 179
    .local v0, "checkedView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    instance-of v1, v0, Landroid/widget/RadioButton;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 180
    check-cast v0, Landroid/widget/RadioButton;

    #@c
    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    #@f
    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 128
    instance-of v1, p1, Landroid/widget/RadioButton;

    #@3
    if-eqz v1, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 129
    check-cast v0, Landroid/widget/RadioButton;

    #@8
    .line 130
    .local v0, "button":Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 131
    const/4 v1, 0x1

    #@f
    iput-boolean v1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    #@11
    .line 132
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@13
    const/4 v2, -0x1

    #@14
    if-eq v1, v2, :cond_0

    #@16
    .line 133
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@18
    invoke-direct {p0, v1, v3}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    #@1b
    .line 135
    :cond_0
    iput-boolean v3, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    #@1d
    .line 136
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    #@24
    .line 140
    .end local v0    # "button":Landroid/widget/RadioButton;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@27
    .line 127
    return-void
.end method

.method public check(I)V
    .locals 3
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 155
    if-eq p1, v2, :cond_0

    #@3
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@5
    if-ne p1, v0, :cond_0

    #@7
    .line 156
    return-void

    #@8
    .line 159
    :cond_0
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@a
    if-eq v0, v2, :cond_1

    #@c
    .line 160
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {p0, v0, v1}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    #@12
    .line 163
    :cond_1
    if-eq p1, v2, :cond_2

    #@14
    .line 164
    const/4 v0, 0x1

    #@15
    invoke-direct {p0, p1, v0}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    #@18
    .line 167
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    #@1b
    .line 153
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 235
    instance-of v0, p1, Landroid/widget/RadioGroup$LayoutParams;

    #@2
    return v0
.end method

.method public clearCheck()V
    .locals 1

    #@0
    .prologue
    .line 209
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->check(I)V

    #@4
    .line 208
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    .line 240
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 226
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 227
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 245
    const-class v0, Landroid/widget/RadioGroup;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    #@0
    .prologue
    .line 197
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@2
    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 115
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    #@4
    .line 118
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@6
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 119
    iput-boolean v2, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    #@b
    .line 120
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@d
    invoke-direct {p0, v0, v2}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    #@10
    .line 121
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    #@13
    .line 122
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    #@15
    invoke-direct {p0, v0}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    #@18
    .line 114
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RadioGroup$OnCheckedChangeListener;

    #@0
    .prologue
    .line 219
    iput-object p1, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    #@2
    .line 218
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    #@2
    invoke-static {v0, p1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->-set0(Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@5
    .line 105
    return-void
.end method
