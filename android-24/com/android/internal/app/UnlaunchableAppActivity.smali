.class public Lcom/android/internal/app/UnlaunchableAppActivity;
.super Landroid/app/Activity;
.source "UnlaunchableAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final EXTRA_UNLAUNCHABLE_REASON:Ljava/lang/String; = "unlaunchable_reason"

.field private static final TAG:Ljava/lang/String; = "UnlaunchableAppActivity"

.field private static final UNLAUNCHABLE_REASON_QUIET_MODE:I = 0x1


# instance fields
.field private mReason:I

.field private mTarget:Landroid/content/IntentSender;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method

.method private static final createBaseIntent()Landroid/content/Intent;
    .locals 4

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 123
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@7
    const-string/jumbo v2, "android"

    #@a
    const-class v3, Lcom/android/internal/app/UnlaunchableAppActivity;

    #@c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@16
    .line 124
    const/high16 v1, 0x10800000

    #@18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@1b
    .line 125
    return-object v0
.end method

.method public static createInQuietModeDialogIntent(I)Landroid/content/Intent;
    .locals 3
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 129
    invoke-static {}, Lcom/android/internal/app/UnlaunchableAppActivity;->createBaseIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 130
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "unlaunchable_reason"

    #@7
    const/4 v2, 0x1

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@b
    .line 131
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@e
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@11
    .line 132
    return-object v0
.end method

.method public static createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "target"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 136
    invoke-static {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.INTENT"

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@a
    .line 138
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 109
    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    #@3
    const/4 v1, 0x1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    if-ne p2, v2, :cond_0

    #@8
    .line 110
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    #@e
    iget-object v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    #@10
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 111
    iget-object v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    #@1c
    const/4 v2, -0x1

    #@1d
    const/4 v3, 0x0

    #@1e
    const/4 v4, 0x0

    #@1f
    const/4 v5, 0x0

    #@20
    const/4 v6, 0x0

    #@21
    move-object v0, p0

    #@22
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/UnlaunchableAppActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 108
    :cond_0
    :goto_0
    return-void

    #@26
    .line 114
    :catch_0
    move-exception v7

    #@27
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/16 v10, -0x2710

    #@3
    const/4 v9, 0x0

    #@4
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@7
    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getIntent()Landroid/content/Intent;

    #@a
    move-result-object v3

    #@b
    .line 63
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "unlaunchable_reason"

    #@e
    const/4 v8, -0x1

    #@f
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@12
    move-result v7

    #@13
    iput v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    #@15
    .line 64
    const-string/jumbo v7, "android.intent.extra.user_handle"

    #@18
    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1b
    move-result v7

    #@1c
    iput v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    #@1e
    .line 65
    const-string/jumbo v7, "android.intent.extra.INTENT"

    #@21
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@24
    move-result-object v7

    #@25
    check-cast v7, Landroid/content/IntentSender;

    #@27
    iput-object v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    #@29
    .line 67
    iget v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    #@2b
    if-ne v7, v10, :cond_0

    #@2d
    .line 68
    const-string/jumbo v7, "UnlaunchableAppActivity"

    #@30
    new-instance v8, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v9, "Invalid user id: "

    #@38
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    iget v9, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    #@3e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    const-string/jumbo v9, ". Stopping."

    #@45
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v8

    #@49
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v8

    #@4d
    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 69
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    #@53
    .line 70
    return-void

    #@54
    .line 74
    :cond_0
    const/4 v1, 0x0

    #@55
    .line 75
    .local v1, "dialogMessage":Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    #@57
    if-ne v7, v11, :cond_1

    #@59
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getResources()Landroid/content/res/Resources;

    #@5c
    move-result-object v7

    #@5d
    const v8, 0x10405d9

    #@60
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    .line 77
    .local v2, "dialogTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getResources()Landroid/content/res/Resources;

    #@67
    move-result-object v7

    #@68
    const v8, 0x10405da

    #@6b
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    .line 84
    .local v1, "dialogMessage":Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@72
    move-result-object v7

    #@73
    const v8, 0x1090102

    #@76
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@79
    move-result-object v5

    #@7a
    .line 85
    .local v5, "rootView":Landroid/view/View;
    const v7, 0x1020444

    #@7d
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@80
    move-result-object v6

    #@81
    check-cast v6, Landroid/widget/TextView;

    #@83
    .line 86
    .local v6, "titleView":Landroid/widget/TextView;
    const v7, 0x1020445

    #@86
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@89
    move-result-object v4

    #@8a
    check-cast v4, Landroid/widget/TextView;

    #@8c
    .line 87
    .local v4, "messageView":Landroid/widget/TextView;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@8f
    .line 88
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@92
    .line 90
    new-instance v7, Landroid/app/AlertDialog$Builder;

    #@94
    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@97
    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@9a
    move-result-object v7

    #@9b
    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    #@9e
    move-result-object v0

    #@9f
    .line 93
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    #@a1
    if-ne v7, v11, :cond_2

    #@a3
    .line 94
    const v7, 0x10405db

    #@a6
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@a9
    move-result-object v7

    #@aa
    .line 95
    const/high16 v8, 0x1040000

    #@ac
    .line 94
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@af
    .line 99
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@b2
    .line 60
    return-void

    #@b3
    .line 79
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialogTitle":Ljava/lang/String;
    .end local v4    # "messageView":Landroid/widget/TextView;
    .end local v5    # "rootView":Landroid/view/View;
    .end local v6    # "titleView":Landroid/widget/TextView;
    .local v1, "dialogMessage":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "UnlaunchableAppActivity"

    #@b6
    new-instance v8, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v9, "Invalid unlaunchable type: "

    #@be
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v8

    #@c2
    iget v9, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    #@c4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v8

    #@c8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v8

    #@cc
    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@cf
    .line 80
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    #@d2
    .line 81
    return-void

    #@d3
    .line 97
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .local v1, "dialogMessage":Ljava/lang/String;
    .restart local v2    # "dialogTitle":Ljava/lang/String;
    .restart local v4    # "messageView":Landroid/widget/TextView;
    .restart local v5    # "rootView":Landroid/view/View;
    .restart local v6    # "titleView":Landroid/widget/TextView;
    :cond_2
    const v7, 0x104000a

    #@d6
    invoke-virtual {v0, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@d9
    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    #@3
    .line 103
    return-void
.end method
