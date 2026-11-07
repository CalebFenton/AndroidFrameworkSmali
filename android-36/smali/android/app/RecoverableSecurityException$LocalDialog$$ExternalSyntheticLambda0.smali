.class public final synthetic Landroid/app/RecoverableSecurityException$LocalDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/RecoverableSecurityException;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/RecoverableSecurityException;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/RecoverableSecurityException$LocalDialog$$ExternalSyntheticLambda0;->f$0:Landroid/app/RecoverableSecurityException;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/RecoverableSecurityException$LocalDialog$$ExternalSyntheticLambda0;->f$0:Landroid/app/RecoverableSecurityException;

    invoke-static {v0, p1, p2}, Landroid/app/RecoverableSecurityException$LocalDialog;->lambda$onCreateDialog$0(Landroid/app/RecoverableSecurityException;Landroid/content/DialogInterface;I)V

    return-void
.end method
