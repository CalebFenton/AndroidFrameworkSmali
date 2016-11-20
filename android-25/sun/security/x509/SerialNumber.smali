.class public Lsun/security/x509/SerialNumber;
.super Ljava/lang/Object;
.source "SerialNumber.java"


# instance fields
.field private serialNum:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    int-to-long v0, p1

    #@4
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    #@a
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    new-instance v0, Lsun/security/util/DerValue;

    #@5
    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    #@8
    .line 97
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/SerialNumber;->construct(Lsun/security/util/DerValue;)V

    #@b
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "num"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    #@5
    .line 55
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@6
    move-result-object v0

    #@7
    .line 76
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/SerialNumber;->construct(Lsun/security/util/DerValue;)V

    #@a
    .line 74
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 0
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    invoke-direct {p0, p1}, Lsun/security/x509/SerialNumber;->construct(Lsun/security/util/DerValue;)V

    #@6
    .line 85
    return-void
.end method

.method private construct(Lsun/security/util/DerValue;)V
    .locals 2
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    #@6
    .line 45
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@8
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 46
    new-instance v0, Ljava/io/IOException;

    #@10
    const-string/jumbo v1, "Excess SerialNumber data"

    #@13
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    #@2
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    #@5
    .line 113
    return-void
.end method

.method public getNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SerialNumber: ["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    #@e
    invoke-static {v1}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "]"

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
