.class public Landroid/net/http/SslError;
.super Ljava/lang/Object;
.source "SslError.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final SSL_DATE_INVALID:I = 0x4

.field public static final SSL_EXPIRED:I = 0x1

.field public static final SSL_IDMISMATCH:I = 0x2

.field public static final SSL_INVALID:I = 0x5

.field public static final SSL_MAX_ERROR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SSL_NOTYETVALID:I = 0x0

.field public static final SSL_UNTRUSTED:I = 0x3


# instance fields
.field final mCertificate:Landroid/net/http/SslCertificate;

.field mErrors:I

.field final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/net/http/SslError;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/net/http/SslError;->-assertionsDisabled:Z

    #@b
    .line 25
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(ILandroid/net/http/SslCertificate;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "certificate"    # Landroid/net/http/SslCertificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    #@6
    .line 90
    return-void
.end method

.method public constructor <init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "certificate"    # Landroid/net/http/SslCertificate;
    .param p3, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 114
    sget-boolean v2, Landroid/net/http/SslError;->-assertionsDisabled:Z

    #@7
    if-nez v2, :cond_1

    #@9
    if-eqz p2, :cond_0

    #@b
    move v2, v0

    #@c
    :goto_0
    if-nez v2, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    :cond_0
    move v2, v1

    #@15
    goto :goto_0

    #@16
    .line 115
    :cond_1
    sget-boolean v2, Landroid/net/http/SslError;->-assertionsDisabled:Z

    #@18
    if-nez v2, :cond_3

    #@1a
    if-eqz p3, :cond_2

    #@1c
    :goto_1
    if-nez v0, :cond_3

    #@1e
    new-instance v0, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@23
    throw v0

    #@24
    :cond_2
    move v0, v1

    #@25
    goto :goto_1

    #@26
    .line 116
    :cond_3
    invoke-virtual {p0, p1}, Landroid/net/http/SslError;->addError(I)Z

    #@29
    .line 117
    iput-object p2, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    #@2b
    .line 118
    iput-object p3, p0, Landroid/net/http/SslError;->mUrl:Ljava/lang/String;

    #@2d
    .line 113
    return-void
.end method

.method public constructor <init>(ILjava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 103
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@6
    .line 102
    return-void
.end method

.method public constructor <init>(ILjava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p3, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 129
    new-instance v0, Landroid/net/http/SslCertificate;

    #@2
    invoke-direct {v0, p2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    #@5
    invoke-direct {p0, p1, v0, p3}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    #@8
    .line 128
    return-void
.end method

.method public static SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 3
    .param p0, "error"    # I
    .param p1, "cert"    # Landroid/net/http/SslCertificate;
    .param p2, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/16 v2, -0xc8

    #@3
    .line 143
    sget-boolean v1, Landroid/net/http/SslError;->-assertionsDisabled:Z

    #@5
    if-nez v1, :cond_1

    #@7
    const/16 v1, -0x12b

    #@9
    if-lt p0, v1, :cond_0

    #@b
    if-gt p0, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    if-nez v0, :cond_1

    #@10
    new-instance v0, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v0

    #@16
    .line 144
    :cond_1
    if-ne p0, v2, :cond_2

    #@18
    .line 145
    new-instance v0, Landroid/net/http/SslError;

    #@1a
    const/4 v1, 0x2

    #@1b
    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    #@1e
    return-object v0

    #@1f
    .line 146
    :cond_2
    const/16 v0, -0xc9

    #@21
    if-ne p0, v0, :cond_3

    #@23
    .line 147
    new-instance v0, Landroid/net/http/SslError;

    #@25
    const/4 v1, 0x4

    #@26
    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    #@29
    return-object v0

    #@2a
    .line 148
    :cond_3
    const/16 v0, -0xca

    #@2c
    if-ne p0, v0, :cond_4

    #@2e
    .line 149
    new-instance v0, Landroid/net/http/SslError;

    #@30
    const/4 v1, 0x3

    #@31
    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    #@34
    return-object v0

    #@35
    .line 151
    :cond_4
    new-instance v0, Landroid/net/http/SslError;

    #@37
    const/4 v1, 0x5

    #@38
    invoke-direct {v0, v1, p1, p2}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    #@3b
    return-object v0
.end method


# virtual methods
.method public addError(I)Z
    .locals 3
    .param p1, "error"    # I

    #@0
    .prologue
    .line 177
    if-ltz p1, :cond_1

    #@2
    const/4 v1, 0x6

    #@3
    if-ge p1, v1, :cond_1

    #@5
    const/4 v0, 0x1

    #@6
    .line 178
    .local v0, "rval":Z
    :goto_0
    if-eqz v0, :cond_0

    #@8
    .line 179
    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    #@a
    const/4 v2, 0x1

    #@b
    shl-int/2addr v2, p1

    #@c
    or-int/2addr v1, v2

    #@d
    iput v1, p0, Landroid/net/http/SslError;->mErrors:I

    #@f
    .line 182
    :cond_0
    return v0

    #@10
    .line 177
    .end local v0    # "rval":Z
    :cond_1
    const/4 v0, 0x0

    #@11
    .restart local v0    # "rval":Z
    goto :goto_0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/http/SslError;->mCertificate:Landroid/net/http/SslCertificate;

    #@2
    return-object v0
.end method

.method public getPrimaryError()I
    .locals 3

    #@0
    .prologue
    .line 205
    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 207
    const/4 v0, 0x5

    #@5
    .local v0, "error":I
    :goto_0
    if-ltz v0, :cond_1

    #@7
    .line 208
    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    #@9
    const/4 v2, 0x1

    #@a
    shl-int/2addr v2, v0

    #@b
    and-int/2addr v1, v2

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 209
    return v0

    #@f
    .line 207
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@11
    goto :goto_0

    #@12
    .line 213
    :cond_1
    sget-boolean v1, Landroid/net/http/SslError;->-assertionsDisabled:Z

    #@14
    if-nez v1, :cond_2

    #@16
    new-instance v1, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@1b
    throw v1

    #@1c
    .line 216
    .end local v0    # "error":I
    :cond_2
    const/4 v1, -0x1

    #@1d
    return v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/net/http/SslError;->mUrl:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasError(I)Z
    .locals 3
    .param p1, "error"    # I

    #@0
    .prologue
    .line 191
    if-ltz p1, :cond_1

    #@2
    const/4 v1, 0x6

    #@3
    if-ge p1, v1, :cond_1

    #@5
    const/4 v0, 0x1

    #@6
    .line 192
    .local v0, "rval":Z
    :goto_0
    if-eqz v0, :cond_0

    #@8
    .line 193
    iget v1, p0, Landroid/net/http/SslError;->mErrors:I

    #@a
    const/4 v2, 0x1

    #@b
    shl-int/2addr v2, p1

    #@c
    and-int/2addr v1, v2

    #@d
    if-eqz v1, :cond_2

    #@f
    const/4 v0, 0x1

    #@10
    .line 196
    :cond_0
    :goto_1
    return v0

    #@11
    .line 191
    .end local v0    # "rval":Z
    :cond_1
    const/4 v0, 0x0

    #@12
    .restart local v0    # "rval":Z
    goto :goto_0

    #@13
    .line 193
    :cond_2
    const/4 v0, 0x0

    #@14
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "primary error: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/net/http/SslError;->getPrimaryError()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 225
    const-string/jumbo v1, " certificate: "

    #@17
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 225
    invoke-virtual {p0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    #@1e
    move-result-object v1

    #@1f
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 226
    const-string/jumbo v1, " on URL: "

    #@26
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 226
    invoke-virtual {p0}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method
