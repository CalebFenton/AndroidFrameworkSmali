.class public Landroid/widget/TwoLineListItem;
.super Landroid/widget/RelativeLayout;
.source "TwoLineListItem.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mText1:Landroid/widget/TextView;

.field private mText2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 65
    sget-object v1, Lcom/android/internal/R$styleable;->TwoLineListItem:[I

    #@5
    .line 64
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@c
    .line 61
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 96
    const-class v0, Landroid/widget/TwoLineListItem;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getText1()Landroid/widget/TextView;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/widget/TwoLineListItem;->mText1:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method public getText2()Landroid/widget/TextView;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/widget/TwoLineListItem;->mText2:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    #@0
    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    #@3
    .line 74
    const v0, 0x1020014

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/TwoLineListItem;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/TextView;

    #@c
    iput-object v0, p0, Landroid/widget/TwoLineListItem;->mText1:Landroid/widget/TextView;

    #@e
    .line 75
    const v0, 0x1020015

    #@11
    invoke-virtual {p0, v0}, Landroid/widget/TwoLineListItem;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/widget/TextView;

    #@17
    iput-object v0, p0, Landroid/widget/TwoLineListItem;->mText2:Landroid/widget/TextView;

    #@19
    .line 71
    return-void
.end method
