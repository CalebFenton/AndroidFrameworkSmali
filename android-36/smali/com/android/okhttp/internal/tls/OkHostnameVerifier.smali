.class public final Lcom/android/okhttp/internal/tls/OkHostnameVerifier;
.super Ljava/lang/Object;
.source "OkHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final blacklist ALT_DNS_NAME:I = 0x2

.field private static final blacklist ALT_IPA_NAME:I = 0x7

.field private static final blacklist DEL:C = '\u007f'

.field public static final blacklist INSTANCE:Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

.field private static final blacklist VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist strictWildcardMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;-><init>(Z)V

    sput-object v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    .line 55
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->strictWildcardMode:Z

    return-void
.end method

.method public static blacklist allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    .line 144
    invoke-static {p0, v0}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    .line 145
    invoke-static {p0, v1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method private static blacklist getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_e

    .line 157
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 159
    :cond_e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 160
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_12

    .line 161
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_28

    goto :goto_12

    :cond_28
    const/4 v2, 0x0

    .line 164
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_32

    goto :goto_12

    .line 168
    :cond_32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_12

    const/4 v2, 0x1

    .line 169
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_44} :catch_46

    goto :goto_12

    :cond_45
    return-object v0

    .line 177
    :catch_46
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method static blacklist isPrintableAscii(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 305
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_1b

    aget-char v3, p0, v2

    const/16 v4, 0x20

    if-le v3, v4, :cond_1a

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist strictInstance()Lcom/android/okhttp/internal/tls/OkHostnameVerifier;
    .registers 2

    .line 71
    new-instance v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;-><init>(Z)V

    return-object v0
.end method

.method static blacklist verifyAsIpAddress(Ljava/lang/String;)Z
    .registers 2

    .line 92
    sget-object v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private blacklist verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_d0

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d0

    .line 192
    const-string v2, ".."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_d0

    :cond_1b
    if-eqz p2, :cond_d0

    .line 196
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d0

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d0

    .line 197
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto/16 :goto_d0

    .line 211
    :cond_31
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x2e

    if-nez v2, :cond_48

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 214
    :cond_48
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 220
    :cond_5d
    invoke-static {p2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->isPrintableAscii(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_64

    return v0

    .line 224
    :cond_64
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 227
    const-string v1, "*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 245
    :cond_77
    const-string v1, "*."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d0

    const/16 v2, 0x2a

    const/4 v4, 0x1

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_8a

    goto :goto_d0

    .line 254
    :cond_8a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_95

    return v0

    .line 259
    :cond_95
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    return v0

    .line 265
    :cond_9c
    iget-boolean p0, p0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->strictWildcardMode:Z

    if-eqz p0, :cond_b1

    .line 268
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v4

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_b1

    return v0

    .line 277
    :cond_b1
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 278
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_bc

    return v0

    .line 284
    :cond_bc
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p2, p0

    if-lez p2, :cond_cf

    sub-int/2addr p2, v4

    .line 286
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    if-eq p0, v5, :cond_cf

    return v0

    :cond_cf
    return v4

    :cond_d0
    :goto_d0
    return v0
.end method

.method private blacklist verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 7

    .line 113
    invoke-static {p1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->isPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 117
    :cond_8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 119
    invoke-static {p2, v0}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    .line 120
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_2b

    .line 122
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2b
    return v1
.end method

.method private blacklist verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 6

    const/4 p0, 0x7

    .line 99
    invoke-static {p2, p0}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    .line 100
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, p2, :cond_1e

    .line 101
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1e
    return v0
.end method


# virtual methods
.method public blacklist verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 4

    .line 86
    invoke-static {p1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0

    .line 88
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4

    const/4 v0, 0x0

    .line 78
    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    .line 79
    aget-object p2, p2, v0

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_e

    return p0

    :catch_e
    return v0
.end method
