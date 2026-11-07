.class public Landroid/widget/RadioButton;
.super Landroid/widget/CompoundButton;
.source "RadioButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    const v0, 0x101007e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 88
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getButtonStateDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 111
    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 112
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104099b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_12
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 10
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 93
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 94
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_40

    .line 95
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 96
    .local v0, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getOrientation()I

    move-result v1

    if-nez v1, :cond_2c

    .line 97
    nop

    .line 98
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->getIndexWithinVisibleButtons(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    .line 97
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_40

    .line 100
    :cond_2c
    nop

    .line 101
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->getIndexWithinVisibleButtons(Landroid/view/View;)I

    move-result v2

    .line 102
    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    .line 100
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 105
    .end local v0    # "radioGroup":Landroid/widget/RadioGroup;
    :cond_40
    :goto_40
    return-void
.end method

.method public whitelist toggle()V
    .registers 2

    .line 81
    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 82
    invoke-super {p0}, Landroid/widget/CompoundButton;->toggle()V

    .line 84
    :cond_9
    return-void
.end method
