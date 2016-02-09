.class public final Lcom/android/okhttp/internal/tls/OkHostnameVerifier;
.super Ljava/lang/Object;
.source "OkHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7

.field public static final INSTANCE:Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    new-instance v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;-><init>()V

    #@5
    sput-object v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    #@7
    .line 53
    const-string/jumbo v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    #@a
    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    #@10
    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 5
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 121
    const/4 v3, 0x7

    #@1
    invoke-static {p0, v3}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    .line 122
    .local v1, "altIpaNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x2

    #@6
    invoke-static {p0, v3}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    .line 123
    .local v0, "altDnsNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@c
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@f
    move-result v3

    #@10
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@13
    move-result v4

    #@14
    add-int/2addr v3, v4

    #@15
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    .line 124
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@1b
    .line 125
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@1e
    .line 126
    return-object v2
.end method

.method private static getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 11
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 130
    new-instance v5, Ljava/util/ArrayList;

    #@2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 132
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    #@8
    move-result-object v8

    #@9
    .line 133
    .local v8, "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez v8, :cond_0

    #@b
    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@e
    move-result-object v9

    #@f
    return-object v9

    #@10
    .line 136
    :cond_0
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v7

    #@14
    .local v7, "subjectAltName$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v9

    #@18
    if-eqz v9, :cond_2

    #@1a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v6

    #@1e
    .line 137
    .local v6, "subjectAltName":Ljava/lang/Object;
    move-object v0, v6

    #@1f
    check-cast v0, Ljava/util/List;

    #@21
    move-object v4, v0

    #@22
    .line 138
    .local v4, "entry":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v4, :cond_1

    #@24
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@27
    move-result v9

    #@28
    const/4 v10, 0x2

    #@29
    if-lt v9, v10, :cond_1

    #@2b
    .line 141
    const/4 v9, 0x0

    #@2c
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Ljava/lang/Integer;

    #@32
    .line 142
    .local v2, "altNameType":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    #@34
    .line 145
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@37
    move-result v9

    #@38
    if-ne v9, p1, :cond_1

    #@3a
    .line 146
    const/4 v9, 0x1

    #@3b
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Ljava/lang/String;

    #@41
    .line 147
    .local v1, "altName":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@43
    .line 148
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    goto :goto_0

    #@47
    .line 153
    .end local v1    # "altName":Ljava/lang/String;
    .end local v2    # "altNameType":Ljava/lang/Integer;
    .end local v4    # "entry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "subjectAltName":Ljava/lang/Object;
    .end local v7    # "subjectAltName$iterator":Ljava/util/Iterator;
    .end local v8    # "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catch_0
    move-exception v3

    #@48
    .line 154
    .local v3, "e":Ljava/security/cert/CertificateParsingException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@4b
    move-result-object v9

    #@4c
    return-object v9

    #@4d
    .line 152
    .end local v3    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v7    # "subjectAltName$iterator":Ljava/util/Iterator;
    .restart local v8    # "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_2
    return-object v5
.end method

.method static verifyAsIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    sget-object v0, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/16 v6, 0x2e

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 168
    if-eqz p1, :cond_0

    #@7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_1

    #@d
    .line 171
    :cond_0
    return v4

    #@e
    .line 168
    :cond_1
    const-string/jumbo v2, "."

    #@11
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 169
    const-string/jumbo v2, ".."

    #@1a
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    .line 168
    if-nez v2, :cond_0

    #@20
    .line 173
    if-eqz p2, :cond_2

    #@22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_3

    #@28
    .line 176
    :cond_2
    return v4

    #@29
    .line 173
    :cond_3
    const-string/jumbo v2, "."

    #@2c
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2f
    move-result v2

    #@30
    if-nez v2, :cond_2

    #@32
    .line 174
    const-string/jumbo v2, ".."

    #@35
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@38
    move-result v2

    #@39
    .line 173
    if-nez v2, :cond_2

    #@3b
    .line 188
    const-string/jumbo v2, "."

    #@3e
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@41
    move-result v2

    #@42
    if-nez v2, :cond_4

    #@44
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object p1

    #@55
    .line 191
    :cond_4
    const-string/jumbo v2, "."

    #@58
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@5b
    move-result v2

    #@5c
    if-nez v2, :cond_5

    #@5e
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object p2

    #@6f
    .line 196
    :cond_5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@71
    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@74
    move-result-object p2

    #@75
    .line 199
    const-string/jumbo v2, "*"

    #@78
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@7b
    move-result v2

    #@7c
    if-nez v2, :cond_6

    #@7e
    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v2

    #@82
    return v2

    #@83
    .line 215
    :cond_6
    const-string/jumbo v2, "*."

    #@86
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@89
    move-result v2

    #@8a
    if-eqz v2, :cond_7

    #@8c
    const/16 v2, 0x2a

    #@8e
    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->indexOf(II)I

    #@91
    move-result v2

    #@92
    if-eq v2, v7, :cond_8

    #@94
    .line 218
    :cond_7
    return v4

    #@95
    .line 224
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@98
    move-result v2

    #@99
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@9c
    move-result v3

    #@9d
    if-ge v2, v3, :cond_9

    #@9f
    .line 226
    return v4

    #@a0
    .line 229
    :cond_9
    const-string/jumbo v2, "*."

    #@a3
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_a

    #@a9
    .line 231
    return v4

    #@aa
    .line 235
    :cond_a
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ad
    move-result-object v0

    #@ae
    .line 236
    .local v0, "suffix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@b1
    move-result v2

    #@b2
    if-nez v2, :cond_b

    #@b4
    .line 238
    return v4

    #@b5
    .line 242
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b8
    move-result v2

    #@b9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@bc
    move-result v3

    #@bd
    sub-int v1, v2, v3

    #@bf
    .line 243
    .local v1, "suffixStartIndexInHostName":I
    if-lez v1, :cond_c

    #@c1
    .line 244
    add-int/lit8 v2, v1, -0x1

    #@c3
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->lastIndexOf(II)I

    #@c6
    move-result v2

    #@c7
    if-eq v2, v7, :cond_c

    #@c9
    .line 246
    return v4

    #@ca
    .line 250
    :cond_c
    return v5
.end method

.method private verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 8
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 98
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    .line 99
    const/4 v2, 0x0

    #@7
    .line 100
    .local v2, "hasDns":Z
    const/4 v6, 0x2

    #@8
    invoke-static {p2, v6}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    .line 101
    .local v0, "altNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@10
    move-result v5

    #@11
    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_1

    #@13
    .line 102
    const/4 v2, 0x1

    #@14
    .line 103
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v6

    #@18
    check-cast v6, Ljava/lang/String;

    #@1a
    invoke-direct {p0, p1, v6}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_0

    #@20
    .line 104
    const/4 v6, 0x1

    #@21
    return v6

    #@22
    .line 101
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_0

    #@25
    .line 108
    :cond_1
    if-nez v2, :cond_2

    #@27
    .line 109
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@2a
    move-result-object v4

    #@2b
    .line 111
    .local v4, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v6, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;

    #@2d
    invoke-direct {v6, v4}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    #@30
    const-string/jumbo v7, "cn"

    #@33
    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/tls/DistinguishedNameParser;->findMostSpecific(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 112
    .local v1, "cn":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@39
    .line 113
    invoke-direct {p0, p1, v1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/lang/String;)Z

    #@3c
    move-result v6

    #@3d
    return v6

    #@3e
    .line 117
    .end local v1    # "cn":Ljava/lang/String;
    .end local v4    # "principal":Ljavax/security/auth/x500/X500Principal;
    :cond_2
    const/4 v6, 0x0

    #@3f
    return v6
.end method

.method private verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 85
    const/4 v3, 0x7

    #@1
    invoke-static {p2, v3}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    .line 86
    .local v0, "altNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v2

    #@a
    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@c
    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/lang/String;

    #@12
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 88
    const/4 v3, 0x1

    #@19
    return v3

    #@1a
    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 91
    :cond_1
    const/4 v3, 0x0

    #@1e
    return v3
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 72
    invoke-static {p1}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyAsIpAddress(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    #@9
    move-result v0

    #@a
    .line 72
    :goto_0
    return v0

    #@b
    .line 74
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verifyHostName(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 64
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@4
    move-result-object v0

    #@5
    .line 65
    .local v0, "certificates":[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    #@6
    aget-object v2, v0, v2

    #@8
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@a
    invoke-virtual {p0, p1, v2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 66
    .end local v0    # "certificates":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v1

    #@10
    .line 67
    .local v1, "e":Ljavax/net/ssl/SSLException;
    return v3
.end method
