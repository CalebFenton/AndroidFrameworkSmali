.class public final synthetic Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCall;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcAdapter;

.field public final synthetic blacklist f$1:Landroid/nfc/NfcAdapter$NfcUnlockHandler;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda10;->f$0:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda10;->f$1:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    return-void
.end method


# virtual methods
.method public final blacklist call()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda10;->f$0:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda10;->f$1:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->$r8$lambda$LhDJIn4mUccxc_shS11UoZUVmpA(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    return-void
.end method
