.class public Landroid/widget/RadioGroup;
.super Landroid/widget/LinearLayout;
.source "RadioGroup.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadioGroup$CheckedStateTracker;,
        Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;,
        Landroid/widget/RadioGroup$OnCheckedChangeListener;,
        Landroid/widget/RadioGroup$LayoutParams;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mCheckedId:I

.field private greylist mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private greylist-max-o mInitialCheckedId:I

.field private greylist mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private greylist-max-o mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

.field private greylist-max-o mProtectFromCheckedChange:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCheckedId(Landroid/widget/RadioGroup;)I
    .registers 1

    iget p0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChildOnCheckedChangeListener(Landroid/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProtectFromCheckedChange(Landroid/widget/RadioGroup;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProtectFromCheckedChange(Landroid/widget/RadioGroup;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetCheckedId(Landroid/widget/RadioGroup;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetCheckedStateForView(Landroid/widget/RadioGroup;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/RadioGroup;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 80
    iput v0, p0, Landroid/widget/RadioGroup;->mInitialCheckedId:I

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 88
    invoke-direct {p0}, Landroid/widget/RadioGroup;->init()V

    .line 89
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 80
    iput v0, p0, Landroid/widget/RadioGroup;->mInitialCheckedId:I

    .line 98
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getImportantForAutofill()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_15

    .line 99
    invoke-virtual {p0, v3}, Landroid/widget/RadioGroup;->setImportantForAutofill(I)V

    .line 101
    :cond_15
    invoke-virtual {p0, v3}, Landroid/widget/RadioGroup;->setImportantForAccessibility(I)V

    .line 105
    sget-object v2, Lcom/android/internal/R$styleable;->RadioGroup:[I

    const v4, 0x101007e

    invoke-virtual {p1, p2, v2, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 107
    .local v9, "attributes":Landroid/content/res/TypedArray;
    sget-object v7, Lcom/android/internal/R$styleable;->RadioGroup:[I

    const v10, 0x101007e

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .local v6, "context":Landroid/content/Context;
    .local v8, "attrs":Landroid/util/AttributeSet;
    invoke-virtual/range {v5 .. v11}, Landroid/widget/RadioGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 110
    invoke-virtual {v9, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 111
    .local p1, "value":I
    if-eq p1, v0, :cond_37

    .line 112
    iput p1, v5, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 113
    iput p1, v5, Landroid/widget/RadioGroup;->mInitialCheckedId:I

    .line 115
    :cond_37
    invoke-virtual {v9, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 116
    .local p2, "index":I
    invoke-virtual {p0, p2}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 118
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    invoke-direct {p0}, Landroid/widget/RadioGroup;->init()V

    .line 120
    return-void
.end method

.method private blacklist getVisibleChildWithTextCount()I
    .registers 4

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 503
    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RadioButton;

    if-eqz v2, :cond_1e

    .line 504
    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-direct {p0, v2}, Landroid/widget/RadioGroup;->isVisibleWithText(Landroid/widget/RadioButton;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 505
    add-int/lit8 v0, v0, 0x1

    .line 502
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 509
    .end local v1    # "i":I
    :cond_21
    return v0
.end method

.method private greylist-max-o init()V
    .registers 3

    .line 123
    new-instance v0, Landroid/widget/RadioGroup$CheckedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/RadioGroup$CheckedStateTracker;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup-IA;)V

    iput-object v0, p0, Landroid/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 124
    new-instance v0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup-IA;)V

    iput-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    .line 125
    iget-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 126
    return-void
.end method

.method private blacklist isVisibleWithText(Landroid/widget/RadioButton;)Z
    .registers 3
    .param p1, "button"    # Landroid/widget/RadioButton;

    .line 532
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private greylist-max-o setCheckedId(I)V
    .registers 5
    .param p1, "id"    # I

    .line 198
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 199
    .local v0, "changed":Z
    :goto_7
    iput p1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 201
    iget-object v1, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v1, :cond_14

    .line 202
    iget-object v1, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iget v2, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-interface {v1, p0, v2}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 204
    :cond_14
    if-eqz v0, :cond_25

    .line 205
    iget-object v1, p0, Landroid/widget/RadioGroup;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 206
    .local v1, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v1, :cond_25

    .line 207
    invoke-virtual {v1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 210
    .end local v1    # "afm":Landroid/view/autofill/AutofillManager;
    :cond_25
    return-void
.end method

.method private greylist-max-o setCheckedStateForView(IZ)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .line 213
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, "checkedView":Landroid/view/View;
    if-eqz v0, :cond_10

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_10

    .line 215
    move-object v1, v0

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 217
    :cond_10
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 155
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_24

    .line 156
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 157
    .local v0, "button":Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 159
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    .line 160
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v3}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 162
    :cond_1b
    iput-boolean v3, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 163
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    .line 167
    .end local v0    # "button":Landroid/widget/RadioButton;
    :cond_24
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 168
    return-void
.end method

.method public whitelist autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 6
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 449
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 451
    :cond_7
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 452
    sget-object v0, Landroid/widget/RadioGroup;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void

    .line 456
    :cond_2a
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v0

    .line 457
    .local v0, "index":I
    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 458
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_4d

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RadioGroup.autoFill(): no child with index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void

    .line 463
    :cond_4d
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 464
    return-void
.end method

.method public whitelist check(I)V
    .registers 5
    .param p1, "id"    # I

    .line 182
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    if-ne p1, v1, :cond_8

    .line 183
    return-void

    .line 186
    :cond_8
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    if-eq v1, v0, :cond_12

    .line 187
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 190
    :cond_12
    if-eq p1, v0, :cond_18

    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 194
    :cond_18
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    .line 195
    return-void
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 270
    instance-of v0, p1, Landroid/widget/RadioGroup$LayoutParams;

    return v0
.end method

.method public whitelist clearCheck()V
    .registers 2

    .line 244
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 245
    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 63
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 275
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 262
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 280
    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAutofillType()I
    .registers 2

    .line 468
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 7

    .line 473
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 475
    :cond_8
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 476
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_23

    .line 477
    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 478
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    iget v5, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    if-ne v4, v5, :cond_20

    .line 479
    invoke-static {v2}, Landroid/view/autofill/AutofillValue;->forList(I)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    return-object v1

    .line 476
    .end local v3    # "child":Landroid/view/View;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 482
    .end local v2    # "i":I
    :cond_23
    return-object v1
.end method

.method public whitelist getCheckedRadioButtonId()I
    .registers 2

    .line 232
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    return v0
.end method

.method blacklist getIndexWithinVisibleButtons(Landroid/view/View;)I
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .line 513
    instance-of v0, p1, Landroid/widget/RadioButton;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 514
    return v1

    .line 516
    :cond_6
    const/4 v0, 0x0

    .line 517
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 518
    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/RadioButton;

    if-eqz v3, :cond_27

    .line 519
    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 520
    .local v3, "button":Landroid/widget/RadioButton;
    if-ne v3, p1, :cond_1f

    .line 521
    return v0

    .line 523
    :cond_1f
    invoke-direct {p0, v3}, Landroid/widget/RadioGroup;->isVisibleWithText(Landroid/widget/RadioButton;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 524
    add-int/lit8 v0, v0, 0x1

    .line 517
    .end local v3    # "button":Landroid/widget/RadioButton;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 528
    .end local v2    # "i":I
    :cond_2a
    return v1
.end method

.method protected whitelist onFinishInflate()V
    .registers 3

    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 145
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 147
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v0}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 149
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    .line 151
    :cond_18
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 487
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 488
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    .line 489
    nop

    .line 490
    invoke-direct {p0}, Landroid/widget/RadioGroup;->getVisibleChildWithTextCount()I

    move-result v0

    .line 489
    invoke-static {v2, v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_24

    .line 493
    :cond_18
    nop

    .line 494
    invoke-direct {p0}, Landroid/widget/RadioGroup;->getVisibleChildWithTextCount()I

    move-result v0

    invoke-static {v0, v2, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 493
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 498
    :goto_24
    return-void
.end method

.method protected blacklist onProvideStructure(Landroid/view/ViewStructure;II)V
    .registers 7
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "viewFor"    # I
    .param p3, "flags"    # I

    .line 440
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onProvideStructure(Landroid/view/ViewStructure;II)V

    .line 442
    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    .line 443
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    iget v2, p0, Landroid/widget/RadioGroup;->mInitialCheckedId:I

    if-eq v1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    .line 445
    :cond_11
    return-void
.end method

.method public whitelist setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 254
    iput-object p1, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 255
    return-void
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 134
    iget-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->-$$Nest$fputmOnHierarchyChangeListener(Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 135
    return-void
.end method
