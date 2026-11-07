.class public Lsun/security/x509/UniqueIdentity;
.super Ljava/lang/Object;
.source "UniqueIdentity.java"


# instance fields
.field private blacklist id:Lsun/security/util/BitArray;


# direct methods
.method public constructor blacklist <init>(Lsun/security/util/BitArray;)V
    .registers 2
    .param p1, "id"    # Lsun/security/util/BitArray;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    .line 50
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/DerInputStream;)V
    .registers 4
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 69
    .local v0, "derVal":Lsun/security/util/DerValue;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    .line 70
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    .line 81
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "id"    # [B

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    iput-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    .line 59
    return-void
.end method


# virtual methods
.method public greylist encode(Lsun/security/util/DerOutputStream;B)V
    .registers 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .param p2, "tag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v0

    .line 99
    .local v0, "bytes":[B
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    invoke-virtual {v2}, Lsun/security/util/BitArray;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 101
    .local v1, "excessBits":I
    invoke-virtual {p1, p2}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 102
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 104
    invoke-virtual {p1, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 105
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 106
    return-void
.end method

.method public blacklist getId()[Z
    .registers 2

    .line 112
    iget-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_6
    iget-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UniqueIdentity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    invoke-virtual {v1}, Lsun/security/util/BitArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
