.class public final synthetic Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCall;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:[B


# direct methods
.method public synthetic constructor blacklist <init>(I[B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda38;->f$0:I

    iput-object p2, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda38;->f$1:[B

    return-void
.end method


# virtual methods
.method public final blacklist call()V
    .registers 3

    .line 0
    iget v0, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda38;->f$0:I

    iget-object v1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda38;->f$1:[B

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->lambda$notifyTestHceData$36(I[B)V

    return-void
.end method
