.class public final Landroid/security/AttestedKeyPair;
.super Ljava/lang/Object;
.source "AttestedKeyPair.java"


# instance fields
.field private final blacklist mAttestationRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mKeyPair:Ljava/security/KeyPair;


# direct methods
.method public constructor whitelist <init>(Ljava/security/KeyPair;Ljava/util/List;)V
    .registers 3
    .param p1, "keyPair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyPair;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p2, "attestationRecord":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    .line 51
    iput-object p2, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    .line 52
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/security/KeyPair;[Ljava/security/cert/Certificate;)V
    .registers 4
    .param p1, "keyPair"    # Ljava/security/KeyPair;
    .param p2, "attestationRecord"    # [Ljava/security/cert/Certificate;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    .line 59
    if-nez p2, :cond_f

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    goto :goto_15

    .line 62
    :cond_f
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    .line 64
    :goto_15
    return-void
.end method


# virtual methods
.method public whitelist getAttestationRecord()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyPair()Ljava/security/KeyPair;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method
