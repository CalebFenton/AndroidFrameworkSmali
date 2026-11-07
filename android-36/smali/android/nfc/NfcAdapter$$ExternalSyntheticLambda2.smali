.class public final synthetic Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:[B


# direct methods
.method public synthetic constructor blacklist <init>(III[B)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda2;->f$3:[B

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 5

    .line 0
    iget v0, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda2;->f$3:[B

    invoke-static {v0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->lambda$sendVendorNciMessage$41(III[B)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
