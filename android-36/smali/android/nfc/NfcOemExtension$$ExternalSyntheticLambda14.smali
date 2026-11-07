.class public final synthetic Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcOemExtension;

.field public final synthetic blacklist f$1:Landroid/nfc/NfcOemExtension$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcOemExtension;Landroid/nfc/NfcOemExtension$Callback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda14;->f$0:Landroid/nfc/NfcOemExtension;

    iput-object p2, p0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda14;->f$1:Landroid/nfc/NfcOemExtension$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda14;->f$0:Landroid/nfc/NfcOemExtension;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda14;->f$1:Landroid/nfc/NfcOemExtension$Callback;

    invoke-static {v0, v1}, Landroid/nfc/NfcOemExtension;->$r8$lambda$Js3viyGvddyoejdPDGNSmT_mtes(Landroid/nfc/NfcOemExtension;Landroid/nfc/NfcOemExtension$Callback;)V

    return-void
.end method
