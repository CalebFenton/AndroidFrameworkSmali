.class public final synthetic Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCall;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcVendorNciCallbackListener;

.field public final synthetic blacklist f$1:Landroid/nfc/NfcVendorNciCallbackListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcVendorNciCallbackListener;Landroid/nfc/NfcVendorNciCallbackListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda2;->f$0:Landroid/nfc/NfcVendorNciCallbackListener;

    iput-object p2, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda2;->f$1:Landroid/nfc/NfcVendorNciCallbackListener;

    return-void
.end method


# virtual methods
.method public final blacklist call()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda2;->f$0:Landroid/nfc/NfcVendorNciCallbackListener;

    iget-object v1, p0, Landroid/nfc/NfcVendorNciCallbackListener$$ExternalSyntheticLambda2;->f$1:Landroid/nfc/NfcVendorNciCallbackListener;

    invoke-static {v0, v1}, Landroid/nfc/NfcVendorNciCallbackListener;->$r8$lambda$WiHrf5ItKgwwTJPoJLZtS60H5bA(Landroid/nfc/NfcVendorNciCallbackListener;Landroid/nfc/NfcVendorNciCallbackListener;)V

    return-void
.end method
