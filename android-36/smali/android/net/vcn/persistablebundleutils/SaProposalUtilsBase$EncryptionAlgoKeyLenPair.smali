.class Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;
.super Ljava/lang/Object;
.source "SaProposalUtilsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EncryptionAlgoKeyLenPair"
.end annotation


# static fields
.field private static final blacklist ALGO_KEY:Ljava/lang/String; = "ALGO_KEY"

.field private static final blacklist KEY_LEN_KEY:Ljava/lang/String; = "KEY_LEN_KEY"


# instance fields
.field public final blacklist encryptionAlgo:I

.field public final blacklist keyLen:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "encryptionAlgo"    # I
    .param p2, "keyLen"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->encryptionAlgo:I

    .line 48
    iput p2, p0, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->keyLen:I

    .line 49
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "in"    # Landroid/os/PersistableBundle;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "PersistableBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    const-string v0, "ALGO_KEY"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->encryptionAlgo:I

    .line 55
    const-string v0, "KEY_LEN_KEY"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->keyLen:I

    .line 56
    return-void
.end method


# virtual methods
.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 59
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 61
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "ALGO_KEY"

    iget v2, p0, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->encryptionAlgo:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v1, "KEY_LEN_KEY"

    iget v2, p0, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->keyLen:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    return-object v0
.end method
