.class public Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;
.super Landroid/app/Activity;
.source "AccessibilityShortcutChooserActivity.java"


# static fields
.field private static final blacklist KEY_ACCESSIBILITY_SHORTCUT_MENU_MODE:Ljava/lang/String; = "accessibility_shortcut_menu_mode"


# instance fields
.field private blacklist mMenuDialog:Landroid/app/AlertDialog;

.field private blacklist mPermissionDialog:Landroid/app/Dialog;

.field private final blacklist mShortcutType:I

.field private blacklist mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$0cWrZnhYdVmfg7mEaqMk3YH3WhE(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$showPermissionDialogIfNeeded$1(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7DiGqdaoyGYry4M8d-4SNZgwpGQ(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onTargetChecked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A9C-NbLJhF6FFyphvx9JAAOx0o8(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$showPermissionDialogIfNeeded$2(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QTC6Ktka0_3HbqdHII-Rd9HNQng(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;ILandroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$showPermissionDialogIfNeeded$3(ILandroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VZgjikEFnRB5Wya5lm40Zt4Ze5U(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$createMenuDialog$7(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dQVsJIiWcFz4E97dhKOcNv-CZvs(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$showPermissionDialogIfNeeded$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kgeVF7JDx9Wdit8KZgDcTjliWLc(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$updateDialogListeners$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pGOMy6hA2qG6IDFFA0xtsLTJAJc(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$updateDialogListeners$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tFhIWUZ8vekqMnr7CW_VfFANXKQ(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yqI48tEZJrHu35jeLB81AKTkdR8(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mShortcutType:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    return-void
.end method

.method private blacklist createMenuDialog()Landroid/app/AlertDialog;
    .registers 9

    .line 235
    nop

    .line 236
    const v0, 0x10400fb

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "dialogTitle":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    .line 240
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    .line 241
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 243
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v2

    .line 244
    .local v2, "allowEditing":Z
    const/4 v4, 0x0

    .line 245
    .local v4, "showWhenLocked":Z
    const-class v5, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v5}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 246
    .local v5, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v5, :cond_38

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 247
    const/4 v2, 0x0

    .line 248
    const/4 v4, 0x1

    .line 250
    :cond_38
    if-eqz v2, :cond_45

    .line 251
    nop

    .line 252
    const v6, 0x104039b

    invoke-virtual {p0, v6}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "positiveButtonText":Ljava/lang/String;
    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    .end local v6    # "positiveButtonText":Ljava/lang/String;
    :cond_45
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 257
    .local v3, "dialog":Landroid/app/AlertDialog;
    if-eqz v4, :cond_54

    .line 258
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 260
    :cond_54
    return-object v3
.end method

.method private synthetic blacklist lambda$createMenuDialog$7(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->finish()V

    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 72
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->updateDialogListeners()V

    return-void
.end method

.method private synthetic blacklist lambda$showPermissionDialogIfNeeded$1(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V
    .registers 5
    .param p1, "serviceTarget"    # Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
    .param p2, "targetAdapter"    # Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;
    .param p3, "v"    # Landroid/view/View;

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onCheckedChanged(Z)V

    .line 165
    invoke-virtual {p2}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    .line 166
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 167
    return-void
.end method

.method private synthetic blacklist lambda$showPermissionDialogIfNeeded$2(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View;)V
    .registers 4
    .param p1, "serviceTarget"    # Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
    .param p2, "v"    # Landroid/view/View;

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->onCheckedChanged(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 170
    return-void
.end method

.method private synthetic blacklist lambda$showPermissionDialogIfNeeded$3(ILandroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceTarget"    # Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
    .param p4, "targetAdapter"    # Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;
    .param p5, "v"    # Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 173
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 174
    invoke-virtual {p3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 173
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 175
    invoke-virtual {p4}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    .line 176
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 177
    return-void
.end method

.method private synthetic blacklist lambda$showPermissionDialogIfNeeded$4(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    return-void
.end method

.method private synthetic blacklist lambda$updateDialogListeners$5(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 219
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onDoneButtonClicked()V

    return-void
.end method

.method private synthetic blacklist lambda$updateDialogListeners$6(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 219
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onEditButtonClicked()V

    return-void
.end method

.method private blacklist onDoneButtonClicked()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 186
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 187
    return-void

    .line 190
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->setShortcutMenuMode(I)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    .line 193
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 194
    const v1, 0x104039b

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->updateDialogListeners()V

    .line 197
    return-void
.end method

.method private blacklist onEditButtonClicked()V
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getInstalledTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->setShortcutMenuMode(I)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    .line 205
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 206
    const v1, 0x104036a

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->updateDialogListeners()V

    .line 209
    return-void
.end method

.method private blacklist onTargetChecked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 112
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 114
    .local v0, "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    instance-of v1, v0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    if-eqz v1, :cond_32

    move-object v1, v0

    check-cast v1, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    .line 115
    .local v1, "serviceTarget":Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->sendRestrictedDialogIntentIfNeeded(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 116
    return-void

    .line 118
    :cond_16
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 119
    .local v2, "am":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 120
    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    .line 119
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 121
    move-object v3, v0

    check-cast v3, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-direct {p0, p0, v3, p3, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->showPermissionDialogIfNeeded(Landroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;ILcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;)V

    .line 123
    return-void

    .line 126
    .end local v1    # "serviceTarget":Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
    .end local v2    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_32
    instance-of v1, v0, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;

    if-eqz v1, :cond_46

    move-object v1, v0

    check-cast v1, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;

    .line 127
    .local v1, "activityTarget":Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;
    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;->isShortcutEnabled()Z

    move-result v2

    if-nez v2, :cond_46

    .line 128
    invoke-direct {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->sendRestrictedDialogIntentIfNeeded(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 129
    return-void

    .line 133
    .end local v1    # "activityTarget":Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;
    :cond_46
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->isShortcutEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->onCheckedChanged(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->notifyDataSetChanged()V

    .line 135
    return-void
.end method

.method private blacklist onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 99
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 100
    .local v0, "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    instance-of v1, v0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    if-nez v1, :cond_10

    instance-of v1, v0, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;

    if-eqz v1, :cond_17

    .line 102
    :cond_10
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->sendRestrictedDialogIntentIfNeeded(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 103
    return-void

    .line 107
    :cond_17
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->onSelected()V

    .line 108
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 109
    return-void
.end method

.method private blacklist sendRestrictedDialogIntentIfNeeded(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)Z
    .registers 4
    .param p1, "target"    # Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 143
    nop

    .line 144
    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getUid()I

    move-result v1

    .line 143
    invoke-static {p0, v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->isAccessibilityTargetAllowed(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 145
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_15
    nop

    .line 149
    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getUid()I

    move-result v1

    .line 148
    invoke-static {p0, v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->sendRestrictedDialogIntent(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist showPermissionDialogIfNeeded(Landroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;ILcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceTarget"    # Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
    .param p3, "position"    # I
    .param p4, "targetAdapter"    # Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    .line 156
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    .line 157
    return-void

    .line 160
    :cond_5
    nop

    .line 162
    invoke-virtual {p2}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;)V

    new-instance v2, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;)V

    new-instance v3, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move v5, p3

    move-object v8, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "serviceTarget":Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
    .end local p3    # "position":I
    .end local p4    # "targetAdapter":Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;
    .local v5, "position":I
    .local v6, "context":Landroid/content/Context;
    .local v7, "serviceTarget":Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;
    .local v8, "targetAdapter":Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;ILandroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;)V

    .line 161
    invoke-static {v6, v0, v1, v2, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning;->createAccessibilityServiceWarningDialog(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    .line 178
    iget-object p1, v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    new-instance p2, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 179
    iget-object p1, v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 180
    return-void
.end method

.method private blacklist updateDialogListeners()V
    .registers 6

    .line 212
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    .line 213
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->getShortcutMenuMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 214
    .local v1, "isEditMenuMode":Z
    :goto_b
    const v0, 0x10400fb

    .line 215
    .local v0, "selectDialogTitleId":I
    const v2, 0x10400f0

    .line 217
    .local v2, "editDialogTitleId":I
    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_19

    const v4, 0x10400f0

    goto :goto_1c

    :cond_19
    const v4, 0x10400fb

    :goto_1c
    invoke-virtual {p0, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 219
    if-eqz v1, :cond_32

    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    goto :goto_37

    :cond_32
    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    .line 218
    :goto_37
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 221
    if-eqz v1, :cond_48

    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    goto :goto_4d

    :cond_48
    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    .line 220
    :goto_4d
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 222
    return-void
.end method


# virtual methods
.method public blacklist getMenuDialog()Landroid/app/AlertDialog;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public blacklist getPermissionDialog()Landroid/app/Dialog;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mPermissionDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "theme":Landroid/content/res/TypedArray;
    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1a

    .line 66
    invoke-virtual {p0, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->requestWindowFeature(I)Z

    .line 69
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    new-instance v1, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-direct {v1, v4}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    .line 71
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->createMenuDialog()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    .line 72
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 73
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 75
    if-eqz p1, :cond_50

    .line 76
    nop

    .line 77
    const-string v1, "accessibility_shortcut_menu_mode"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 79
    .local v1, "restoreShortcutMenuMode":I
    if-ne v1, v3, :cond_50

    .line 80
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->onEditButtonClicked()V

    .line 83
    .end local v1    # "restoreShortcutMenuMode":I
    :cond_50
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;->getShortcutMenuMode()I

    move-result v0

    const-string v1, "accessibility_shortcut_menu_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    return-void
.end method
