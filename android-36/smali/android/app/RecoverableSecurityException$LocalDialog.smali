.class public Landroid/app/RecoverableSecurityException$LocalDialog;
.super Landroid/app/DialogFragment;
.source "RecoverableSecurityException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RecoverableSecurityException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalDialog"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 164
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCreateDialog$0(Landroid/app/RecoverableSecurityException;Landroid/content/DialogInterface;I)V
    .registers 4
    .param p0, "e"    # Landroid/app/RecoverableSecurityException;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 172
    :try_start_0
    invoke-static {p0}, Landroid/app/RecoverableSecurityException;->-$$Nest$fgetmUserAction(Landroid/app/RecoverableSecurityException;)Landroid/app/RemoteAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_b} :catch_c

    .line 174
    goto :goto_d

    .line 173
    :catch_c
    move-exception v0

    .line 175
    :goto_d
    return-void
.end method


# virtual methods
.method public whitelist onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 167
    invoke-virtual {p0}, Landroid/app/RecoverableSecurityException$LocalDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RecoverableSecurityException"

    const-class v2, Landroid/app/RecoverableSecurityException;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RecoverableSecurityException;

    .line 168
    .local v0, "e":Landroid/app/RecoverableSecurityException;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/RecoverableSecurityException$LocalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/app/RecoverableSecurityException;->-$$Nest$fgetmUserMessage(Landroid/app/RecoverableSecurityException;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {v0}, Landroid/app/RecoverableSecurityException;->-$$Nest$fgetmUserAction(Landroid/app/RecoverableSecurityException;)Landroid/app/RemoteAction;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Landroid/app/RecoverableSecurityException$LocalDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/app/RecoverableSecurityException$LocalDialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/RecoverableSecurityException;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 176
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 168
    return-object v1
.end method
