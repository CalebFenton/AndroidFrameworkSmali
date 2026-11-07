.class Lsun/security/provider/certpath/OCSPRequest;
.super Ljava/lang/Object;
.source "OCSPRequest.java"


# static fields
.field private static final blacklist debug:Lsun/security/util/Debug;

.field private static final blacklist dump:Z


# instance fields
.field private final blacklist certIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/CertId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist nonce:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPRequest;->debug:Lsun/security/util/Debug;

    .line 80
    sget-object v0, Lsun/security/provider/certpath/OCSPRequest;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_16

    const-string v0, "ocsp"

    invoke-static {v0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    sput-boolean v0, Lsun/security/provider/certpath/OCSPRequest;->dump:Z

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/CertId;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    .line 98
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/CertId;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    .local p2, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    .line 102
    iput-object p2, p0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    .line 103
    return-void
.end method

.method constructor blacklist <init>(Lsun/security/provider/certpath/CertId;)V
    .registers 3
    .param p1, "certId"    # Lsun/security/provider/certpath/CertId;

    .line 92
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/provider/certpath/OCSPRequest;-><init>(Ljava/util/List;)V

    .line 93
    return-void
.end method


# virtual methods
.method blacklist encodeBytes()[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 109
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 110
    .local v1, "requestsOut":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x30

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/provider/certpath/CertId;

    .line 111
    .local v3, "certId":Lsun/security/provider/certpath/CertId;
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 112
    .local v5, "certIdOut":Lsun/security/util/DerOutputStream;
    invoke-virtual {v3, v5}, Lsun/security/provider/certpath/CertId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 113
    invoke-virtual {v1, v4, v5}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 114
    .end local v3    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v5    # "certIdOut":Lsun/security/util/DerOutputStream;
    goto :goto_10

    .line 116
    :cond_2a
    invoke-virtual {v0, v4, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 117
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_79

    .line 118
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 119
    .local v2, "extOut":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Extension;

    .line 120
    .local v5, "ext":Ljava/security/cert/Extension;
    invoke-interface {v5, v2}, Ljava/security/cert/Extension;->encode(Ljava/io/OutputStream;)V

    .line 121
    invoke-interface {v5}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 122
    invoke-interface {v5}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/provider/certpath/OCSPRequest;->nonce:[B

    .line 124
    .end local v5    # "ext":Ljava/security/cert/Extension;
    :cond_65
    goto :goto_40

    .line 125
    :cond_66
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 126
    .local v3, "extsOut":Lsun/security/util/DerOutputStream;
    invoke-virtual {v3, v4, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 127
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, -0x80

    invoke-static {v7, v5, v6}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v5

    invoke-virtual {v0, v5, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 131
    .end local v2    # "extOut":Lsun/security/util/DerOutputStream;
    .end local v3    # "extsOut":Lsun/security/util/DerOutputStream;
    :cond_79
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 132
    .local v2, "tbsRequest":Lsun/security/util/DerOutputStream;
    invoke-virtual {v2, v4, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 135
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 136
    .local v3, "ocspRequest":Lsun/security/util/DerOutputStream;
    invoke-virtual {v3, v4, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 138
    invoke-virtual {v3}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    .line 140
    .local v4, "bytes":[B
    sget-boolean v5, Lsun/security/provider/certpath/OCSPRequest;->dump:Z

    if-eqz v5, :cond_b8

    .line 141
    new-instance v5, Lsun/misc/HexDumpEncoder;

    invoke-direct {v5}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 142
    .local v5, "hexEnc":Lsun/misc/HexDumpEncoder;
    sget-object v6, Lsun/security/provider/certpath/OCSPRequest;->debug:Lsun/security/util/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OCSPRequest bytes...\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 143
    invoke-virtual {v5, v4}, Lsun/misc/HexDumpEncoder;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 146
    .end local v5    # "hexEnc":Lsun/misc/HexDumpEncoder;
    :cond_b8
    return-object v4
.end method

.method blacklist getCertIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsun/security/provider/certpath/CertId;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    return-object v0
.end method

.method blacklist getNonce()[B
    .registers 2

    .line 154
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPRequest;->nonce:[B

    return-object v0
.end method
