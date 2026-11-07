.class public final Landroid/nfc/NfcEvent;
.super Ljava/lang/Object;
.source "NfcEvent.java"


# instance fields
.field public final whitelist nfcAdapter:Landroid/nfc/NfcAdapter;

.field public final whitelist peerLlcpMajorVersion:I

.field public final whitelist peerLlcpMinorVersion:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/nfc/NfcAdapter;B)V
    .registers 4
    .param p1, "nfcAdapter"    # Landroid/nfc/NfcAdapter;
    .param p2, "peerLlcpVersion"    # B

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/nfc/NfcEvent;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 58
    and-int/lit16 v0, p2, 0xf0

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/nfc/NfcEvent;->peerLlcpMajorVersion:I

    .line 59
    and-int/lit8 v0, p2, 0xf

    iput v0, p0, Landroid/nfc/NfcEvent;->peerLlcpMinorVersion:I

    .line 60
    return-void
.end method


# virtual methods
.method public blacklist getNfcAdapter()Landroid/nfc/NfcAdapter;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/nfc/NfcEvent;->nfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method public blacklist getPeerLlcpMajorVersion()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/nfc/NfcEvent;->peerLlcpMajorVersion:I

    return v0
.end method

.method public blacklist getPeerLlcpMinorVersion()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/nfc/NfcEvent;->peerLlcpMinorVersion:I

    return v0
.end method
