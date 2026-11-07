.class public abstract Lcom/android/internal/globalactions/ToggleAction;
.super Ljava/lang/Object;
.source "ToggleAction.java"

# interfaces
.implements Lcom/android/internal/globalactions/Action;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/globalactions/ToggleAction$State;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ToggleAction"


# instance fields
.field protected blacklist mDisabledIconResid:I

.field protected blacklist mDisabledStatusMessageResId:I

.field protected blacklist mEnabledIconResId:I

.field protected blacklist mEnabledStatusMessageResId:I

.field protected blacklist mMessageResId:I

.field protected blacklist mState:Lcom/android/internal/globalactions/ToggleAction$State;


# direct methods
.method public constructor blacklist <init>(IIIII)V
    .registers 7
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 72
    iput p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledIconResId:I

    .line 73
    iput p2, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledIconResid:I

    .line 74
    iput p3, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    .line 75
    iput p4, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledStatusMessageResId:I

    .line 76
    iput p5, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledStatusMessageResId:I

    .line 77
    return-void
.end method


# virtual methods
.method protected blacklist changeStateFromPress(Z)V
    .registers 3
    .param p1, "buttonOn"    # Z

    .line 147
    if-eqz p1, :cond_5

    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_7
    iput-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 148
    return-void
.end method

.method public blacklist create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/globalactions/ToggleAction;->willCreate()V

    .line 94
    const v0, 0x1090088

    const/4 v1, 0x0

    invoke-virtual {p4, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "v":Landroid/view/View;
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 97
    .local v2, "icon":Landroid/widget/ImageView;
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 98
    .local v3, "messageView":Landroid/widget/TextView;
    const v4, 0x1020552

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 99
    .local v4, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/globalactions/ToggleAction;->isEnabled()Z

    move-result v5

    .line 101
    .local v5, "enabled":Z
    if-eqz v3, :cond_34

    .line 102
    iget v6, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 103
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 106
    :cond_34
    iget-object v6, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v7, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    if-eq v6, v7, :cond_43

    iget-object v6, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v7, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    if-ne v6, v7, :cond_41

    goto :goto_43

    :cond_41
    move v6, v1

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v6, 0x1

    .line 107
    .local v6, "on":Z
    :goto_44
    if-eqz v2, :cond_58

    .line 108
    nop

    .line 109
    if-eqz v6, :cond_4c

    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledIconResId:I

    goto :goto_4e

    :cond_4c
    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledIconResid:I

    .line 108
    :goto_4e
    invoke-virtual {p1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 113
    :cond_58
    if-eqz v4, :cond_6a

    .line 114
    if-eqz v6, :cond_5f

    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledStatusMessageResId:I

    goto :goto_61

    :cond_5f
    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledStatusMessageResId:I

    :goto_61
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 115
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 118
    :cond_6a
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 120
    return-object v0
.end method

.method public blacklist getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    iget v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final blacklist onPress()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 126
    const-string v0, "ToggleAction"

    const-string/jumbo v1, "shouldn\'t be able to toggle when in transition"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 130
    :cond_11
    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 131
    .local v0, "nowOn":Z
    :goto_1a
    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->onToggle(Z)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->changeStateFromPress(Z)V

    .line 133
    return-void
.end method

.method public abstract blacklist onToggle(Z)V
.end method

.method public blacklist updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V
    .registers 2
    .param p1, "state"    # Lcom/android/internal/globalactions/ToggleAction$State;

    .line 153
    iput-object p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 154
    return-void
.end method

.method blacklist willCreate()V
    .registers 1

    .line 82
    return-void
.end method
