.class public final synthetic Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCall;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/Tag;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/Tag;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda33;->f$0:Landroid/nfc/Tag;

    return-void
.end method


# virtual methods
.method public final blacklist call()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda33;->f$0:Landroid/nfc/Tag;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->lambda$dispatch$24(Landroid/nfc/Tag;)V

    return-void
.end method
