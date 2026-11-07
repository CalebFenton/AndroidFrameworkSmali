.class public final synthetic Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/NfcAdapter;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/NfcAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda9;->f$0:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda9;->f$0:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->$r8$lambda$7cY3tyTT5tMVK0kt6VlAWf_IQxg(Landroid/nfc/NfcAdapter;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
