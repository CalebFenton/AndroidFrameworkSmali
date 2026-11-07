.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;
.super Ljava/lang/Object;
.source "PEMUtil.java"


# instance fields
.field private final blacklist _supportedBoundaries:[Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 7

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil-IA;)V

    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X509 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil-IA;)V

    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    const-string v3, "PKCS7"

    invoke-direct {p1, v3, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil-IA;)V

    filled-new-array {v0, v2, p1}, [Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_supportedBoundaries:[Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    return-void
.end method

.method private blacklist getBoundaries(Ljava/lang/String;)Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    .registers 5

    const/4 v0, 0x0

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_supportedBoundaries:[Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    array-length v2, v1

    if-eq v0, v2, :cond_19

    .line 104
    aget-object v1, v1, v0

    .line 106
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedFooter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    :goto_18
    return-object v1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .line 51
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0xd

    if-eq v0, v2, :cond_18

    if-eq v0, v1, :cond_18

    if-ltz v0, :cond_18

    int-to-char v0, v0

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_18
    if-ltz v0, :cond_20

    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_5

    :cond_20
    if-gez v0, :cond_2f

    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-nez p1, :cond_2a

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    if-ne v0, v2, :cond_43

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 77
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v1, :cond_3e

    .line 79
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    :cond_3e
    if-lez v2, :cond_43

    .line 84
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 88
    :cond_43
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method blacklist readPEMObject(Ljava/io/InputStream;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 7

    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    :cond_7
    :goto_7
    if-nez v2, :cond_24

    .line 125
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 127
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->getBoundaries(Ljava/lang/String;)Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 128
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_7

    .line 130
    :cond_1c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "malformed PEM data: found footer where header was expected"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    if-nez v2, :cond_31

    if-nez p2, :cond_29

    return-object v1

    .line 141
    :cond_29
    new-instance p0, Ljava/io/IOException;

    const-string p1, "malformed PEM data: no header found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    move-object p2, v1

    :goto_32
    if-nez p2, :cond_53

    .line 146
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 148
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->getBoundaries(Ljava/lang/String;)Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    move-result-object p2

    if-eqz p2, :cond_4f

    .line 151
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedFooter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    goto :goto_32

    .line 153
    :cond_47
    new-instance p0, Ljava/io/IOException;

    const-string p1, "malformed PEM data: header/footer mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_4f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_32

    :cond_53
    if-eqz p2, :cond_71

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-eqz p0, :cond_70

    .line 171
    :try_start_5b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_67} :catch_68

    return-object p0

    .line 175
    :catch_68
    new-instance p0, Ljava/io/IOException;

    const-string p1, "malformed PEM data encountered"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    return-object v1

    .line 164
    :cond_71
    new-instance p0, Ljava/io/IOException;

    const-string p1, "malformed PEM data: no footer found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
