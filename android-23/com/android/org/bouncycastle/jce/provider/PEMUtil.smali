.class public Lcom/android/org/bouncycastle/jce/provider/PEMUtil;
.super Ljava/lang/Object;
.source "PEMUtil.java"


# instance fields
.field private final _footer1:Ljava/lang/String;

.field private final _footer2:Ljava/lang/String;

.field private final _header1:Ljava/lang/String;

.field private final _header2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "-----BEGIN "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, "-----"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->_header1:Ljava/lang/String;

    #@20
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v1, "-----BEGIN X509 "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    const-string/jumbo v1, "-----"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->_header2:Ljava/lang/String;

    #@3d
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v1, "-----END "

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    const-string/jumbo v1, "-----"

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->_footer1:Ljava/lang/String;

    #@5a
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v1, "-----END X509 "

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    const-string/jumbo v1, "-----"

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->_footer2:Ljava/lang/String;

    #@77
    .line 19
    return-void
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0xd

    #@2
    .line 32
    new-instance v1, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 36
    .local v1, "l":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@a
    move-result v0

    #@b
    .local v0, "c":I
    if-eq v0, v3, :cond_1

    #@d
    const/16 v2, 0xa

    #@f
    if-eq v0, v2, :cond_1

    #@11
    if-ltz v0, :cond_1

    #@13
    .line 38
    if-eq v0, v3, :cond_0

    #@15
    .line 43
    int-to-char v2, v0

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@19
    goto :goto_0

    #@1a
    .line 46
    :cond_1
    if-ltz v0, :cond_2

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 48
    :cond_2
    if-gez v0, :cond_3

    #@24
    .line 50
    const/4 v2, 0x0

    #@25
    return-object v2

    #@26
    .line 53
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    return-object v2
.end method


# virtual methods
.method readPEMObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 61
    new-instance v2, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 63
    .local v2, "pemBuf":Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@c
    .line 65
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->_header1:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_1

    #@14
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->_header2:Ljava/lang/String;

    #@16
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 71
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 73
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->_footer1:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_2

    #@2a
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->_footer2:Ljava/lang/String;

    #@2c
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_3

    #@32
    .line 81
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_5

    #@38
    .line 83
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    #@41
    move-result-object v4

    #@42
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@45
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@48
    move-result-object v1

    #@49
    .line 84
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@4b
    if-nez v3, :cond_4

    #@4d
    .line 86
    new-instance v3, Ljava/io/IOException;

    #@4f
    const-string/jumbo v4, "malformed PEM data encountered"

    #@52
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@55
    throw v3

    #@56
    .line 78
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@59
    goto :goto_0

    #@5a
    .line 89
    .restart local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_4
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@5c
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    return-object v1

    #@5d
    .line 92
    :cond_5
    return-object v4
.end method
