.class abstract Lcom/android/server/policy/GlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    #@0
    .prologue
    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 822
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@5
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@7
    .line 843
    iput p1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledIconResId:I

    #@9
    .line 844
    iput p2, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledIconResid:I

    #@b
    .line 845
    iput p3, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    #@d
    .line 846
    iput p4, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    #@f
    .line 847
    iput p5, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    #@11
    .line 842
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .param p1, "buttonOn"    # Z

    #@0
    .prologue
    .line 919
    if-eqz p1, :cond_0

    #@2
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@4
    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@6
    .line 918
    return-void

    #@7
    .line 919
    :cond_0
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@9
    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 865
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->willCreate()V

    #@4
    .line 867
    const v6, 0x1090062

    #@7
    invoke-virtual {p4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@a
    move-result-object v5

    #@b
    .line 870
    .local v5, "v":Landroid/view/View;
    const v6, 0x1020006

    #@e
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/widget/ImageView;

    #@14
    .line 871
    .local v1, "icon":Landroid/widget/ImageView;
    const v6, 0x102000b

    #@17
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Landroid/widget/TextView;

    #@1d
    .line 872
    .local v2, "messageView":Landroid/widget/TextView;
    const v6, 0x102032b

    #@20
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Landroid/widget/TextView;

    #@26
    .line 873
    .local v4, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    #@29
    move-result v0

    #@2a
    .line 875
    .local v0, "enabled":Z
    if-eqz v2, :cond_0

    #@2c
    .line 876
    iget v6, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    #@2e
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    #@31
    .line 877
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    #@34
    .line 880
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@36
    sget-object v7, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@38
    if-eq v6, v7, :cond_1

    #@3a
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@3c
    sget-object v7, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@3e
    if-ne v6, v7, :cond_4

    #@40
    :cond_1
    const/4 v3, 0x1

    #@41
    .line 881
    .local v3, "on":Z
    :goto_0
    if-eqz v1, :cond_2

    #@43
    .line 883
    if-eqz v3, :cond_5

    #@45
    iget v6, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledIconResId:I

    #@47
    .line 882
    :goto_1
    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@4e
    .line 884
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    #@51
    .line 887
    :cond_2
    if-eqz v4, :cond_3

    #@53
    .line 888
    if-eqz v3, :cond_6

    #@55
    iget v6, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    #@57
    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    #@5a
    .line 889
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    #@5d
    .line 890
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    #@60
    .line 892
    :cond_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    #@63
    .line 894
    return-object v5

    #@64
    .line 880
    .end local v3    # "on":Z
    :cond_4
    const/4 v3, 0x0

    #@65
    .restart local v3    # "on":Z
    goto :goto_0

    #@66
    .line 883
    :cond_5
    iget v6, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledIconResid:I

    #@68
    goto :goto_1

    #@69
    .line 888
    :cond_6
    iget v6, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    #@6b
    goto :goto_2
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 860
    iget v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@2
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public final onPress()V
    .locals 3

    #@0
    .prologue
    .line 898
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@2
    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 899
    const-string/jumbo v1, "GlobalActions"

    #@b
    const-string/jumbo v2, "shouldn\'t be able to toggle when in transition"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 900
    return-void

    #@12
    .line 903
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@14
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@16
    if-eq v1, v2, :cond_1

    #@18
    const/4 v0, 0x1

    #@19
    .line 904
    .local v0, "nowOn":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onToggle(Z)V

    #@1c
    .line 905
    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    #@1f
    .line 897
    return-void

    #@20
    .line 903
    .end local v0    # "nowOn":Z
    :cond_1
    const/4 v0, 0x0

    #@21
    .restart local v0    # "nowOn":Z
    goto :goto_0
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@0
    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    #@2
    .line 924
    return-void
.end method

.method willCreate()V
    .locals 0

    #@0
    .prologue
    .line 854
    return-void
.end method
