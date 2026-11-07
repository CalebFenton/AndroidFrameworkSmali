.class public Landroid/net/http/SslError;
.super Ljava/lang/Object;
.source "SslError.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist SSL_DATE_INVALID:I = 0x4

.field public static final whitelist SSL_EXPIRED:I = 0x1

.field public static final whitelist SSL_IDMISMATCH:I = 0x2

.field public static final whitelist SSL_INVALID:I = 0x5

.field public static final whitelist SSL_MAX_ERROR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SSL_NOTYETVALID:I = 0x0

.field public static final whitelist SSL_UNTRUSTED:I = 0x3


# instance fields
.field final greylist mCertificate:Landroid/net/http/SslCertificate;

.field greylist-max-p mErrors:I

.field final greylist-max-p mUrl:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 28
    return-void
.end method

.method public constructor whitelist <init>(ILandroid/net/http/SslCertificate;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "certificate"    # Landroid/net/http/SslCertificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor whitelist <init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "certificate"    # Landroid/net/http/SslCertificate;
    .param p3, "url"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    nop

    .line 121
    nop

    .line 122
    invoke-virtual {p0, p1}, Landroid/net/http/SslError;->addError(I)Z

    .line 123
    iput-object p2, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    .line 124
    iput-object p3, p0, Landroid/net/http/SslError;->mUrl:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public constructor whitelist <init>(ILjava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor whitelist <init>(ILjava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # I
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p3, "url"    # Ljava/lang/String;

    .line 135
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static greylist-max-o SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 5
    .param p0, "error"    # I
    .param p1, "cert"    # Landroid/net/http/SslCertificate;
    .param p2, "url"    # Ljava/lang/String;

    .line 149
    nop

    .line 150
    const/16 v0, -0xc8

    if-ne p0, v0, :cond_c

    .line 151
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    return-object v0

    .line 152
    :cond_c
    const/16 v0, -0xc9

    if-ne p0, v0, :cond_17

    .line 153
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    return-object v0

    .line 154
    :cond_17
    const/16 v0, -0xca

    if-ne p0, v0, :cond_22

    .line 155
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    return-object v0

    .line 157
    :cond_22
    new-instance v0, Landroid/net/http/SslError;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist addError(I)Z
    .registers 5
    .param p1, "error"    # I

    .line 183
    const/4 v0, 0x1

    if-ltz p1, :cond_8

    const/4 v1, 0x6

    if-ge p1, v1, :cond_8

    move v1, v0

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 184
    .local v1, "rval":Z
    :goto_9
    if-eqz v1, :cond_11

    .line 185
    iget v2, p0, Landroid/net/http/SslError;->mErrors:I

    shl-int/2addr v0, p1

    or-int/2addr v0, v2

    iput v0, p0, Landroid/net/http/SslError;->mErrors:I

    .line 188
    :cond_11
    return v1
.end method

.method public whitelist getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public whitelist getPrimaryError()I
    .registers 4

    .line 211
    iget v0, p0, Landroid/net/http/SslError;->mErrors:I

    if-eqz v0, :cond_13

    .line 213
    const/4 v0, 0x5

    .local v0, "error":I
    :goto_5
    if-ltz v0, :cond_12

    .line 214
    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 215
    return v0

    .line 213
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 219
    .end local v0    # "error":I
    :cond_12
    nop

    .line 222
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getUrl()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/net/http/SslError;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist hasError(I)Z
    .registers 7
    .param p1, "error"    # I

    .line 197
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_9

    const/4 v2, 0x6

    if-ge p1, v2, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    .line 198
    .local v2, "rval":Z
    :goto_a
    if-eqz v2, :cond_15

    .line 199
    iget v3, p0, Landroid/net/http/SslError;->mErrors:I

    shl-int v4, v1, p1

    and-int/2addr v3, v4

    if-eqz v3, :cond_14

    move v0, v1

    :cond_14
    move v2, v0

    .line 202
    :cond_15
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "primary error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    return-object v0
.end method
