.class public final Landroid/nfc/NfcEvent;
.super Ljava/lang/Object;
.source "NfcEvent.java"


# instance fields
.field public final nfcAdapter:Landroid/nfc/NfcAdapter;

.field public final peerLlcpMajorVersion:I

.field public final peerLlcpMinorVersion:I


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;B)V
    .locals 1
    .param p1, "nfcAdapter"    # Landroid/nfc/NfcAdapter;
    .param p2, "peerLlcpVersion"    # B

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Landroid/nfc/NfcEvent;->nfcAdapter:Landroid/nfc/NfcAdapter;

    #@5
    .line 53
    and-int/lit16 v0, p2, 0xf0

    #@7
    shr-int/lit8 v0, v0, 0x4

    #@9
    iput v0, p0, Landroid/nfc/NfcEvent;->peerLlcpMajorVersion:I

    #@b
    .line 54
    and-int/lit8 v0, p2, 0xf

    #@d
    iput v0, p0, Landroid/nfc/NfcEvent;->peerLlcpMinorVersion:I

    #@f
    .line 51
    return-void
.end method
