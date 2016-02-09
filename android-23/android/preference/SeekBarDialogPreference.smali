.class public Landroid/preference/SeekBarDialogPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarDialogPreference.java"


# instance fields
.field private final mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 55
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 51
    const v0, 0x1160023

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 38
    invoke-virtual {p0}, Landroid/preference/SeekBarDialogPreference;->createActionButtons()V

    #@6
    .line 41
    invoke-virtual {p0}, Landroid/preference/SeekBarDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    #@c
    .line 43
    const/4 v0, 0x0

    #@d
    invoke-virtual {p0, v0}, Landroid/preference/SeekBarDialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    #@10
    .line 35
    return-void
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "dialogView"    # Landroid/view/View;

    #@0
    .prologue
    .line 77
    const v0, 0x102038d

    #@3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/widget/SeekBar;

    #@9
    return-object v0
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    #@0
    .prologue
    .line 60
    const v0, 0x104000a

    #@3
    invoke-virtual {p0, v0}, Landroid/preference/SeekBarDialogPreference;->setPositiveButtonText(I)V

    #@6
    .line 61
    const/high16 v0, 0x1040000

    #@8
    invoke-virtual {p0, v0}, Landroid/preference/SeekBarDialogPreference;->setNegativeButtonText(I)V

    #@b
    .line 59
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    #@3
    .line 68
    const v1, 0x1020006

    #@6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/ImageView;

    #@c
    .line 69
    .local v0, "iconView":Landroid/widget/ImageView;
    iget-object v1, p0, Landroid/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 70
    iget-object v1, p0, Landroid/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@15
    .line 65
    :goto_0
    return-void

    #@16
    .line 72
    :cond_0
    const/16 v1, 0x8

    #@18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@1b
    goto :goto_0
.end method
