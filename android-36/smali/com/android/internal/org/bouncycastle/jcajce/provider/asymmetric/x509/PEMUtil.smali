.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;
.super Ljava/lang/Object;
.source "PEMUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    }
.end annotation


# instance fields
.field private final blacklist _supportedBoundaries:[Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil-IA;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X509 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil-IA;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    const-string v3, "PKCS7"

    invoke-direct {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil-IA;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_supportedBoundaries:[Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    .line 46
    return-void
.end method

.method private blacklist getBoundaries(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    .registers 5
    .param p1, "line"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_supportedBoundaries:[Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    array-length v1, v1

    if-eq v0, v1, :cond_1b

    .line 104
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_supportedBoundaries:[Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    aget-object v1, v1, v0

    .line 106
    .local v1, "boundary":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedFooter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_1a

    .line 102
    .end local v1    # "boundary":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .restart local v1    # "boundary":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    :cond_1a
    :goto_1a
    return-object v1

    .line 112
    .end local v0    # "i":I
    .end local v1    # "boundary":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "l":Ljava/lang/StringBuffer;
    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    const/16 v3, 0xa

    const/16 v4, 0xd

    if-eq v1, v4, :cond_19

    if-eq v2, v3, :cond_19

    if-ltz v2, :cond_19

    .line 57
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 60
    :cond_19
    if-ltz v2, :cond_21

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    :cond_21
    if-gez v2, :cond_30

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_2b

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 73
    :cond_30
    if-ne v2, v4, :cond_45

    .line 76
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 77
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    move v2, v4

    if-ne v4, v3, :cond_40

    .line 79
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 82
    :cond_40
    if-lez v2, :cond_45

    .line 84
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 88
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method blacklist readPEMObject(Ljava/io/InputStream;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v0, "pemBuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 125
    .local v1, "header":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    :cond_6
    :goto_6
    if-nez v1, :cond_24

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_24

    .line 127
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->getBoundaries(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_6

    .line 130
    :cond_1c
    new-instance v2, Ljava/io/IOException;

    const-string v4, "malformed PEM data: found footer where header was expected"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    .end local v3    # "line":Ljava/lang/String;
    :cond_24
    const/4 v2, 0x0

    if-nez v1, :cond_32

    .line 136
    if-nez p2, :cond_2a

    .line 139
    return-object v2

    .line 141
    :cond_2a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "malformed PEM data: no header found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_32
    const/4 v3, 0x0

    .line 146
    .local v3, "footer":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    :goto_33
    if-nez v3, :cond_55

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_55

    .line 148
    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->getBoundaries(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_51

    .line 151
    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedFooter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_33

    .line 153
    :cond_49
    new-instance v2, Ljava/io/IOException;

    const-string v4, "malformed PEM data: header/footer mismatch"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_51
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 162
    .end local v5    # "line":Ljava/lang/String;
    :cond_55
    if-eqz v3, :cond_74

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_73

    .line 171
    :try_start_5d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_69} :catch_6a

    return-object v2

    .line 173
    :catch_6a
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "malformed PEM data encountered"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_73
    return-object v2

    .line 164
    :cond_74
    new-instance v2, Ljava/io/IOException;

    const-string v4, "malformed PEM data: no footer found"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
