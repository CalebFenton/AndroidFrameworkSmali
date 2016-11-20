.class public Lsun/security/x509/UniqueIdentity;
.super Ljava/lang/Object;
.source "UniqueIdentity.java"


# instance fields
.field private id:Lsun/security/util/BitArray;


# direct methods
.method public constructor <init>(Lsun/security/util/BitArray;)V
    .locals 0
    .param p1, "id"    # Lsun/security/util/BitArray;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    #@5
    .line 48
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 2
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@6
    move-result-object v0

    #@7
    .line 69
    .local v0, "derVal":Lsun/security/util/DerValue;
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    #@e
    .line 67
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    const/4 v0, 0x1

    #@4
    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    #@a
    .line 79
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "id"    # [B

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v0, Lsun/security/util/BitArray;

    #@5
    array-length v1, p1

    #@6
    mul-int/lit8 v1, v1, 0x8

    #@8
    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    #@b
    iput-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    #@d
    .line 57
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;B)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .param p2, "tag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    iget-object v2, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    #@2
    invoke-virtual {v2}, Lsun/security/util/BitArray;->toByteArray()[B

    #@5
    move-result-object v0

    #@6
    .line 99
    .local v0, "bytes":[B
    array-length v2, v0

    #@7
    mul-int/lit8 v2, v2, 0x8

    #@9
    iget-object v3, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    #@b
    invoke-virtual {v3}, Lsun/security/util/BitArray;->length()I

    #@e
    move-result v3

    #@f
    sub-int v1, v2, v3

    #@11
    .line 101
    .local v1, "excessBits":I
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@14
    .line 102
    array-length v2, v0

    #@15
    add-int/lit8 v2, v2, 0x1

    #@17
    invoke-virtual {p1, v2}, Lsun/security/util/DerOutputStream;->putLength(I)V

    #@1a
    .line 104
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1d
    .line 105
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@20
    .line 97
    return-void
.end method

.method public getId()[Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 112
    iget-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 114
    :cond_0
    iget-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    #@8
    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "UniqueIdentity:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    #@e
    invoke-virtual {v1}, Lsun/security/util/BitArray;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "\n"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method
