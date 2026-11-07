.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private final greylist-max-o mAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor greylist-max-p <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 53
    if-eqz p1, :cond_14

    .line 58
    :try_start_9
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_d} :catch_e

    .line 61
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    goto :goto_11

    .line 59
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_e
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 62
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    :goto_11
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 63
    return-void

    .line 54
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not associated with any application (using a mock context?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method
