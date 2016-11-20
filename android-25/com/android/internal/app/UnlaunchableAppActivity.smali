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
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method

.method private static final createBaseIntent()Landroid/content/Intent;
    .locals 4

    #@0
    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 127
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
    .line 128
    const/high16 v1, 0x10800000

    #@18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@1b
    .line 129
    return-object v0
.end method

.method public static createInQuietModeDialogIntent(I)Landroid/content/Intent;
    .locals 3
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 133
    invoke-static {}, Lcom/android/internal/app/UnlaunchableAppActivity;->createBaseIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "unlaunchable_reason"

    #@7
    const/4 v2, 0x1

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@b
    .line 135
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@e
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@11
    .line 136
    return-object v0
.end method

.method public static createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "target"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 140
    invoke-static {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.INTENT"

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@a
    .line 142
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
    .line 113
    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    #@3
    const/4 v1, 0x1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    if-ne p2, v2, :cond_0

    #@8
    .line 114
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
    .line 115
    iget-object v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 117
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
    .line 112
    :cond_0
    :goto_0
    return-void

    #@26
    .line 118
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
    const/16 v11, -0x2710

    #@2
    const/4 v10, 0x0

    #@3
    const/4 v9, 0x1

    #@4
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@7
    .line 65
    invoke-virtual {p0, v9}, Lcom/android/internal/app/UnlaunchableAppActivity;->requestWindowFeature(I)Z

    #@a
    .line 66
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getIntent()Landroid/content/Intent;

    #@d
    move-result-object v3

    #@e
    .line 67
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "unlaunchable_reason"

    #@11
    const/4 v8, -0x1

    #@12
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@15
    move-result v7

    #@16
    iput v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    #@18
    .line 68
    const-string/jumbo v7, "android.intent.extra.user_handle"

    #@1b
    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1e
    move-result v7

    #@1f
    iput v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    #@21
    .line 69
    const-string/jumbo v7, "android.intent.extra.INTENT"

    #@24
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@27
    move-result-object v7

    #@28
    check-cast v7, Landroid/content/IntentSender;

    #@2a
    iput-object v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    #@2c
    .line 71
    iget v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    #@2e
    if-ne v7, v11, :cond_0

    #@30
    .line 72
    const-string/jumbo v7, "UnlaunchableAppActivity"

    #@33
    new-instance v8, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v9, "Invalid user id: "

    #@3b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v8

    #@3f
    iget v9, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    #@41
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v8

    #@45
    const-string/jumbo v9, ". Stopping."

    #@48
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v8

    #@50
    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    #@56
    .line 74
    return-void

    #@57
    .line 78
    :cond_0
    const/4 v1, 0x0

    #@58
    .line 79
    .local v1, "dialogMessage":Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    #@5a
    if-ne v7, v9, :cond_1

    #@5c
    .line 80
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getResources()Landroid/content/res/Resources;

    #@5f
    move-result-object v7

    #@60
    const v8, 0x10405e8

    #@63
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    .line 81
    .local v2, "dialogTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getResources()Landroid/content/res/Resources;

    #@6a
    move-result-object v7

    #@6b
    const v8, 0x10405e9

    #@6e
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    .line 88
    .local v1, "dialogMessage":Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@75
    move-result-object v7

    #@76
    const v8, 0x1090102

    #@79
    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@7c
    move-result-object v5

    #@7d
    .line 89
    .local v5, "rootView":Landroid/view/View;
    const v7, 0x102044b

    #@80
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@83
    move-result-object v6

    #@84
    check-cast v6, Landroid/widget/TextView;

    #@86
    .line 90
    .local v6, "titleView":Landroid/widget/TextView;
    const v7, 0x102044c

    #@89
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@8c
    move-result-object v4

    #@8d
    check-cast v4, Landroid/widget/TextView;

    #@8f
    .line 91
    .local v4, "messageView":Landroid/widget/TextView;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@92
    .line 92
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@95
    .line 94
    new-instance v7, Landroid/app/AlertDialog$Builder;

    #@97
    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@9a
    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    #@a1
    move-result-object v0

    #@a2
    .line 97
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    #@a4
    if-ne v7, v9, :cond_2

    #@a6
    .line 98
    const v7, 0x10405ea

    #@a9
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@ac
    move-result-object v7

    #@ad
    .line 99
    const/high16 v8, 0x1040000

    #@af
    .line 98
    invoke-virtual {v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@b2
    .line 103
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@b5
    .line 61
    return-void

    #@b6
    .line 83
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialogTitle":Ljava/lang/String;
    .end local v4    # "messageView":Landroid/widget/TextView;
    .end local v5    # "rootView":Landroid/view/View;
    .end local v6    # "titleView":Landroid/widget/TextView;
    .local v1, "dialogMessage":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "UnlaunchableAppActivity"

    #@b9
    new-instance v8, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v9, "Invalid unlaunchable type: "

    #@c1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v8

    #@c5
    iget v9, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    #@c7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v8

    #@cb
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v8

    #@cf
    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    .line 84
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    #@d5
    .line 85
    return-void

    #@d6
    .line 101
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .local v1, "dialogMessage":Ljava/lang/String;
    .restart local v2    # "dialogTitle":Ljava/lang/String;
    .restart local v4    # "messageView":Landroid/widget/TextView;
    .restart local v5    # "rootView":Landroid/view/View;
    .restart local v6    # "titleView":Landroid/widget/TextView;
    :cond_2
    const v7, 0x104000a

    #@d9
    invoke-virtual {v0, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@dc
    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    #@3
    .line 107
    return-void
.end method
