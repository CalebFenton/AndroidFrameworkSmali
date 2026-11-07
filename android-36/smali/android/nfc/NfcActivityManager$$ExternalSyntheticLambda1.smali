.class public final synthetic Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCall;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcActivityManager;

.field public final synthetic blacklist f$1:Landroid/os/Binder;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcActivityManager;Landroid/os/Binder;ILandroid/os/Bundle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda1;->f$0:Landroid/nfc/NfcActivityManager;

    iput-object p2, p0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda1;->f$1:Landroid/os/Binder;

    iput p3, p0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda1;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final blacklist call()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda1;->f$0:Landroid/nfc/NfcActivityManager;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda1;->f$1:Landroid/os/Binder;

    iget v2, p0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda1;->f$3:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Landroid/nfc/NfcActivityManager;->$r8$lambda$krSWHo-jOsngSRB_31LgKqxiBIw(Landroid/nfc/NfcActivityManager;Landroid/os/Binder;ILandroid/os/Bundle;)V

    return-void
.end method
