.class public Lcom/android/internal/org/bouncycastle/jce/provider/PEMUtil;
.super Ljava/lang/Object;
.source "PEMUtil.java"


# instance fields
.field private final blacklist _footer1:Ljava/lang/String;

.field private final blacklist _footer2:Ljava/lang/String;

.field private final blacklist _header1:Ljava/lang/String;

.field private final blacklist _header2:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PEMUtil;->_header1:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----BEGIN X509 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PEMUtil;->_header2:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----END "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PEMUtil;->_footer1:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----END X509 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PEMUtil;->_footer2:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private blacklist readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v0, "l":Ljava/lang/StringBuffer;
    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    const/16 v3, 0xd

    if-eq v1, v3, :cond_1c

    const/16 v1, 0xa

    if-eq v2, v1, :cond_1c

    if-ltz v2, :cond_1c

    .line 42
    if-ne v2, v3, :cond_17

    .line 44
    goto :goto_5

    .line 47
    :cond_17
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 50
    :cond_1c
    if-ltz v2, :cond_24

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 52
    :cond_24
    if-gez v2, :cond_28

    .line 54
    const/4 v1, 0x0

    return-object v1

    .line 57
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method blacklist readPEMObject(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v0, "pemBuf":Ljava/lang/StringBuffer;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_1d

    .line 69
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PEMUtil;->_header1:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PEMUtil;->_header2:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    nop

    .line 75
    :cond_1d
    :goto_1d
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_39

    .line 77
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PEMUtil;->_footer1:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PEMUtil;->_footer2:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 79
    goto :goto_39

    .line 82
    :cond_35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d

    .line 85
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_60

    .line 87
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 88
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_58

    .line 93
    move-object v3, v1

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v3

    .line 90
    :cond_58
    new-instance v3, Ljava/io/IOException;

    const-string v4, "malformed PEM data encountered"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_60
    const/4 v1, 0x0

    return-object v1
.end method
