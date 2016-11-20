.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object p1

    #@7
    .line 49
    if-nez p1, :cond_0

    #@9
    .line 50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    .line 51
    const-string/jumbo v3, "context not associated with any application (using a mock context?)"

    #@e
    .line 50
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 54
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v0

    #@16
    .line 58
    :goto_0
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    #@18
    .line 46
    return-void

    #@19
    .line 55
    :catch_0
    move-exception v1

    #@1a
    .line 56
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    #@1b
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    goto :goto_0
.end method


# virtual methods
.method public getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    #@2
    return-object v0
.end method
