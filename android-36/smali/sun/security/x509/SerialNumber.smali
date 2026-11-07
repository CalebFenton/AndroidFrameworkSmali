.class public Lsun/security/x509/SerialNumber;
.super Ljava/lang/Object;
.source "SerialNumber.java"


# instance fields
.field private blacklist serialNum:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "num"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 97
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/SerialNumber;->construct(Lsun/security/util/DerValue;)V

    .line 98
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "num"    # Ljava/math/BigInteger;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 76
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/SerialNumber;->construct(Lsun/security/util/DerValue;)V

    .line 77
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/DerValue;)V
    .registers 2
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-direct {p0, p1}, Lsun/security/x509/SerialNumber;->construct(Lsun/security/util/DerValue;)V

    .line 87
    return-void
.end method

.method private blacklist construct(Lsun/security/util/DerValue;)V
    .registers 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    .line 45
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_f

    .line 48
    return-void

    .line 46
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Excess SerialNumber data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 115
    return-void
.end method

.method public blacklist getNumber()Ljava/math/BigInteger;
    .registers 2

    .line 121
    iget-object v0, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerialNumber: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/SerialNumber;->serialNum:Ljava/math/BigInteger;

    invoke-static {v1}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
