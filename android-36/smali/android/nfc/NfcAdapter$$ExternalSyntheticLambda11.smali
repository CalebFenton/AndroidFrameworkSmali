.class public final synthetic Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcAdapter;

.field public final synthetic blacklist f$1:Landroid/nfc/INfcUnlockHandler$Stub;

.field public final synthetic blacklist f$2:[Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/nfc/NfcAdapter$NfcUnlockHandler;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcAdapter;Landroid/nfc/INfcUnlockHandler$Stub;[Ljava/lang/String;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda11;->f$0:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda11;->f$1:Landroid/nfc/INfcUnlockHandler$Stub;

    iput-object p3, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda11;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda11;->f$3:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda11;->f$0:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda11;->f$1:Landroid/nfc/INfcUnlockHandler$Stub;

    iget-object v2, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda11;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda11;->f$3:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    invoke-static {v0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->$r8$lambda$_fsUKW3G303OkW1Z-vmHcYGHEqs(Landroid/nfc/NfcAdapter;Landroid/nfc/INfcUnlockHandler$Stub;[Ljava/lang/String;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
