.class public Lcom/android/internal/app/ResolverTargetActionsDialogFragment;
.super Landroid/app/DialogFragment;
.source "ResolverTargetActionsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final APP_INFO_INDEX:I = 0x1

.field private static final NAME_KEY:Ljava/lang/String; = "componentName"

.field private static final PINNED_KEY:Ljava/lang/String; = "pinned"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"

.field private static final TOGGLE_PIN_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "pinned"    # Z

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #@3
    .line 51
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    .line 52
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "title"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@e
    .line 53
    const-string/jumbo v1, "componentName"

    #@11
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@14
    .line 54
    const-string/jumbo v1, "pinned"

    #@17
    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    #@1a
    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    #@1d
    .line 50
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 74
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "componentName"

    #@7
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@a
    move-result-object v4

    #@b
    check-cast v4, Landroid/content/ComponentName;

    #@d
    .line 75
    .local v4, "name":Landroid/content/ComponentName;
    packed-switch p2, :pswitch_data_0

    #@10
    .line 96
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    #@13
    .line 72
    return-void

    #@14
    .line 77
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    #@17
    move-result-object v6

    #@18
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@1b
    move-result-object v5

    #@1c
    .line 78
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 79
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    const/4 v7, 0x0

    #@25
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@28
    move-result v1

    #@29
    .line 80
    .local v1, "currentVal":Z
    if-eqz v1, :cond_0

    #@2b
    .line 81
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@2e
    move-result-object v6

    #@2f
    invoke-interface {v6, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@32
    move-result-object v6

    #@33
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@36
    .line 87
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6}, Landroid/app/Activity;->recreate()V

    #@3d
    goto :goto_0

    #@3e
    .line 83
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@41
    move-result-object v6

    #@42
    const/4 v7, 0x1

    #@43
    invoke-interface {v6, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    #@46
    move-result-object v6

    #@47
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@4a
    goto :goto_1

    #@4b
    .line 90
    .end local v1    # "currentVal":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :pswitch_1
    new-instance v6, Landroid/content/Intent;

    #@4d
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    #@50
    const-string/jumbo v7, "android.settings.APPLICATION_DETAILS_SETTINGS"

    #@53
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@56
    move-result-object v6

    #@57
    .line 91
    const-string/jumbo v7, "package"

    #@5a
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    const/4 v9, 0x0

    #@5f
    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@62
    move-result-object v7

    #@63
    .line 90
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@66
    move-result-object v6

    #@67
    .line 92
    const/high16 v7, 0x80000

    #@69
    .line 90
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@6c
    move-result-object v2

    #@6d
    .line 93
    .local v2, "in":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    #@70
    goto :goto_0

    #@71
    .line 75
    nop

    #@72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "pinned"

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 62
    const v1, 0x107000d

    #@11
    .line 64
    .local v1, "itemRes":I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #@13
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@1a
    .line 65
    const/4 v3, 0x1

    #@1b
    .line 64
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@22
    move-result-object v2

    #@23
    .line 67
    const-string/jumbo v3, "title"

    #@26
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@29
    move-result-object v3

    #@2a
    .line 64
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@31
    move-result-object v2

    #@32
    return-object v2

    #@33
    .line 63
    .end local v1    # "itemRes":I
    :cond_0
    const v1, 0x107000c

    #@36
    .restart local v1    # "itemRes":I
    goto :goto_0
.end method
