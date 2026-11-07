.class public final synthetic Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCall;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcControllerAlwaysOnListener;

.field public final synthetic blacklist f$1:Landroid/nfc/NfcControllerAlwaysOnListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/nfc/NfcControllerAlwaysOnListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda2;->f$0:Landroid/nfc/NfcControllerAlwaysOnListener;

    iput-object p2, p0, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda2;->f$1:Landroid/nfc/NfcControllerAlwaysOnListener;

    return-void
.end method


# virtual methods
.method public final blacklist call()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda2;->f$0:Landroid/nfc/NfcControllerAlwaysOnListener;

    iget-object v1, p0, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda2;->f$1:Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-static {v0, v1}, Landroid/nfc/NfcControllerAlwaysOnListener;->$r8$lambda$JFU9Kqv4JeQqPRj4fh0G2T5f1E8(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/nfc/NfcControllerAlwaysOnListener;)V

    return-void
.end method
