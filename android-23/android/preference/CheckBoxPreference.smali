.class public Landroid/preference/CheckBoxPreference;
.super Landroid/preference/TwoStatePreference;
.source "CheckBoxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 59
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 55
    const v0, 0x101008f

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 38
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 46
    sget-object v1, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    #@6
    .line 45
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    #@11
    .line 48
    const/4 v1, 0x1

    #@12
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    #@19
    .line 50
    const/4 v1, 0x2

    #@1a
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d
    move-result v1

    #@1e
    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setDisableDependentsState(Z)V

    #@21
    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@24
    .line 42
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    #@3
    .line 66
    const v1, 0x1020001

    #@6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    .line 67
    .local v0, "checkboxView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@c
    instance-of v1, v0, Landroid/widget/Checkable;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 68
    check-cast v0, Landroid/widget/Checkable;

    #@12
    .end local v0    # "checkboxView":Landroid/view/View;
    iget-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    #@14
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    #@17
    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->syncSummaryView(Landroid/view/View;)V

    #@1a
    .line 63
    return-void
.end method
