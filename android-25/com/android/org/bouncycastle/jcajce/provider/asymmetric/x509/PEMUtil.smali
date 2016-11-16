.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;
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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_header1:Ljava/lang/String;

    #@20
    .line 20
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_header2:Ljava/lang/String;

    #@3d
    .line 21
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_footer1:Ljava/lang/String;

    #@5a
    .line 22
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_footer2:Ljava/lang/String;

    #@77
    .line 17
    return-void
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 30
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 34
    .local v1, "l":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@8
    move-result v0

    #@9
    .local v0, "c":I
    const/16 v2, 0xd

    #@b
    if-eq v0, v2, :cond_1

    #@d
    const/16 v2, 0xa

    #@f
    if-eq v0, v2, :cond_1

    #@11
    if-ltz v0, :cond_1

    #@13
    .line 36
    int-to-char v2, v0

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@17
    goto :goto_0

    #@18
    .line 39
    :cond_1
    if-ltz v0, :cond_2

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 41
    :cond_2
    if-gez v0, :cond_3

    #@22
    .line 43
    const/4 v2, 0x0

    #@23
    return-object v2

    #@24
    .line 46
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
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
    .line 54
    new-instance v2, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 56
    .local v2, "pemBuf":Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@c
    .line 58
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_header1:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_1

    #@14
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_header2:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 64
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 66
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_footer1:Ljava/lang/String;

    #@24
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_2

    #@2a
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_footer2:Ljava/lang/String;

    #@2c
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_3

    #@32
    .line 74
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_4

    #@38
    .line 78
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    #@3f
    move-result-object v3

    #@40
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    move-result-object v3

    #@44
    return-object v3

    #@45
    .line 71
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@48
    goto :goto_0

    #@49
    .line 81
    :catch_0
    move-exception v0

    #@4a
    .line 82
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    #@4c
    const-string/jumbo v4, "malformed PEM data encountered"

    #@4f
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@52
    throw v3

    #@53
    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-object v4
.end method
