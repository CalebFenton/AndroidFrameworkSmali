.class public abstract Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.super Ljava/lang/Object;
.source "AccessibilityTarget.java"

# interfaces
.implements Lcom/android/internal/accessibility/dialog/TargetOperations;
.implements Lcom/android/internal/accessibility/dialog/OnTargetSelectedListener;
.implements Lcom/android/internal/accessibility/dialog/OnTargetCheckedChangeListener;


# instance fields
.field private blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFragmentType:I

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mKey:Ljava/lang/String;

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mShortcutEnabled:Z

.field private blacklist mShortcutType:I

.field private blacklist mStateDescription:Ljava/lang/CharSequence;

.field private blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;IIZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcutType"    # I
    .param p3, "fragmentType"    # I
    .param p4, "isShortcutSwitched"    # Z
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "label"    # Ljava/lang/CharSequence;
    .param p8, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p9, "key"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->isRecognizedShortcutType(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 73
    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    .line 74
    iput p2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutType:I

    .line 75
    iput p3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mFragmentType:I

    .line 76
    iput-boolean p4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    .line 77
    iput-object p5, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mId:Ljava/lang/String;

    .line 78
    iput p6, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mUid:I

    .line 79
    invoke-static {p5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mComponentName:Landroid/content/ComponentName;

    .line 80
    iput-object p7, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mLabel:Ljava/lang/CharSequence;

    .line 81
    iput-object p8, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object p9, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mKey:Ljava/lang/String;

    .line 83
    return-void

    .line 70
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected shortcut type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-static {p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isRecognizedShortcutType(I)Z
    .registers 3
    .param p0, "shortcutType"    # I

    .line 188
    const/4 v0, 0x3

    .line 189
    .local v0, "mask":I
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->a11yStandaloneGestureEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 190
    or-int/lit8 v0, v0, 0x20

    .line 192
    :cond_9
    if-eqz p0, :cond_11

    and-int v1, p0, v0

    if-ne v1, p0, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method


# virtual methods
.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getFragmentType()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mFragmentType:I

    return v0
.end method

.method public blacklist getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getShortcutType()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutType:I

    return v0
.end method

.method public blacklist getStateDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mStateDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mUid:I

    return v0
.end method

.method public blacklist isShortcutEnabled()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    return v0
.end method

.method public blacklist onCheckedChanged(Z)V
    .registers 6
    .param p1, "isChecked"    # Z

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->setShortcutEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 119
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 119
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->enableShortcutsForTargets(ZILjava/util/Set;I)V

    .line 121
    return-void
.end method

.method public blacklist onSelected()V
    .registers 5

    .line 106
    nop

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 108
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_10

    .line 109
    return-void

    .line 111
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutType:I

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut(IILjava/lang/String;)V

    .line 112
    return-void
.end method

.method public blacklist setShortcutEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 138
    iput-boolean p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mShortcutEnabled:Z

    .line 139
    return-void
.end method

.method public blacklist setStateDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 124
    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->mStateDescription:Ljava/lang/CharSequence;

    .line 125
    return-void
.end method

.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .registers 8
    .param p1, "holder"    # Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
    .param p2, "shortcutMenuMode"    # I

    .line 89
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mCheckBoxView:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 90
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 91
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 92
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 94
    const/4 v0, 0x0

    if-ne p2, v1, :cond_1a

    move v2, v1

    goto :goto_1b

    :cond_1a
    move v2, v0

    .line 96
    .local v2, "isEditMenuMode":Z
    :goto_1b
    iget-object v3, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mCheckBoxView:Landroid/widget/CheckBox;

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->isShortcutEnabled()Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_27

    :cond_26
    move v1, v0

    :goto_27
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v1, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mCheckBoxView:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    if-eqz v2, :cond_31

    goto :goto_32

    :cond_31
    move v0, v3

    :goto_32
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 98
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    return-void
.end method
