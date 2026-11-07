.class public final synthetic Landroid/nfc/NfcWlcStateListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcWlcStateListener;

.field public final synthetic blacklist f$1:Landroid/nfc/NfcAdapter$WlcStateListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcWlcStateListener;Landroid/nfc/NfcAdapter$WlcStateListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcWlcStateListener$$ExternalSyntheticLambda0;->f$0:Landroid/nfc/NfcWlcStateListener;

    iput-object p2, p0, Landroid/nfc/NfcWlcStateListener$$ExternalSyntheticLambda0;->f$1:Landroid/nfc/NfcAdapter$WlcStateListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcWlcStateListener$$ExternalSyntheticLambda0;->f$0:Landroid/nfc/NfcWlcStateListener;

    iget-object v1, p0, Landroid/nfc/NfcWlcStateListener$$ExternalSyntheticLambda0;->f$1:Landroid/nfc/NfcAdapter$WlcStateListener;

    invoke-static {v0, v1}, Landroid/nfc/NfcWlcStateListener;->$r8$lambda$UaDw6iEo6V11FnSljp4QnPaCjW4(Landroid/nfc/NfcWlcStateListener;Landroid/nfc/NfcAdapter$WlcStateListener;)V

    return-void
.end method
