.class public final synthetic Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcAdapter$NfcVendorNciCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:[B


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcAdapter$NfcVendorNciCallback;II[B)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda0;->f$0:Landroid/nfc/NfcAdapter$NfcVendorNciCallback;

    iput p2, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda0;->f$3:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda0;->f$0:Landroid/nfc/NfcAdapter$NfcVendorNciCallback;

    iget v1, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda0;->f$3:[B

    invoke-static {v0, v1, v2, v3}, Landroid/nfc/NfcVendorNciCallbackListener;->lambda$onVendorResponseReceived$2(Landroid/nfc/NfcAdapter$NfcVendorNciCallback;II[B)V

    return-void
.end method
