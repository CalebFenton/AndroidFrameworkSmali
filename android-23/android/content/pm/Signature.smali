.class public Landroid/content/pm/Signature;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/Signature$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertificateChain:[Ljava/security/cert/Certificate;

.field private mHashCode:I

.field private mHaveHashCode:Z

.field private final mSignature:[B

.field private mStringRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 234
    new-instance v0, Landroid/content/pm/Signature$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/Signature$1;-><init>()V

    #@5
    .line 233
    sput-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@9
    .line 244
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/Signature;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/Signature;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@6
    move-result-object v4

    #@7
    .line 92
    .local v4, "input":[B
    array-length v0, v4

    #@8
    .line 94
    .local v0, "N":I
    rem-int/lit8 v9, v0, 0x2

    #@a
    if-eqz v9, :cond_0

    #@c
    .line 95
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v10, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v11, "text size "

    #@16
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v10

    #@1a
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v10

    #@1e
    const-string/jumbo v11, " is not even"

    #@21
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v10

    #@25
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v10

    #@29
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v9

    #@2d
    .line 98
    :cond_0
    div-int/lit8 v9, v0, 0x2

    #@2f
    new-array v6, v9, [B

    #@31
    .line 99
    .local v6, "sig":[B
    const/4 v7, 0x0

    #@32
    .line 101
    .local v7, "sigIndex":I
    const/4 v2, 0x0

    #@33
    .local v2, "i":I
    move v3, v2

    #@34
    .end local v2    # "i":I
    .local v3, "i":I
    move v8, v7

    #@35
    .end local v7    # "sigIndex":I
    .local v8, "sigIndex":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@37
    .line 102
    add-int/lit8 v2, v3, 0x1

    #@39
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, v4, v3

    #@3b
    invoke-static {v9}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    #@3e
    move-result v1

    #@3f
    .line 103
    .local v1, "hi":I
    add-int/lit8 v3, v2, 0x1

    #@41
    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v9, v4, v2

    #@43
    invoke-static {v9}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    #@46
    move-result v5

    #@47
    .line 104
    .local v5, "lo":I
    add-int/lit8 v7, v8, 0x1

    #@49
    .end local v8    # "sigIndex":I
    .restart local v7    # "sigIndex":I
    shl-int/lit8 v9, v1, 0x4

    #@4b
    or-int/2addr v9, v5

    #@4c
    int-to-byte v9, v9

    #@4d
    aput-byte v9, v6, v8

    #@4f
    move v8, v7

    #@50
    .end local v7    # "sigIndex":I
    .restart local v8    # "sigIndex":I
    goto :goto_0

    #@51
    .line 107
    .end local v1    # "hi":I
    .end local v5    # "lo":I
    :cond_1
    iput-object v6, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@53
    .line 90
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "signature"    # [B

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@b
    .line 53
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    #@e
    .line 51
    return-void
.end method

.method public constructor <init>([Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "certificateChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 64
    const/4 v0, 0x0

    #@5
    aget-object v0, p1, v0

    #@7
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@d
    .line 65
    array-length v0, p1

    #@e
    if-le v0, v1, :cond_0

    #@10
    .line 66
    array-length v0, p1

    #@11
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, [Ljava/security/cert/Certificate;

    #@17
    iput-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    #@19
    .line 63
    :cond_0
    return-void
.end method

.method public static areEffectiveMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 5
    .param p0, "a"    # [Landroid/content/pm/Signature;
    .param p1, "b"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    const-string/jumbo v4, "X.509"

    #@3
    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v2

    #@7
    .line 275
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    array-length v4, p0

    #@8
    new-array v0, v4, [Landroid/content/pm/Signature;

    #@a
    .line 276
    .local v0, "aPrime":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    :goto_0
    array-length v4, p0

    #@c
    if-ge v3, v4, :cond_0

    #@e
    .line 277
    aget-object v4, p0, v3

    #@10
    invoke-static {v2, v4}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    #@13
    move-result-object v4

    #@14
    aput-object v4, v0, v3

    #@16
    .line 276
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 279
    :cond_0
    array-length v4, p1

    #@1a
    new-array v1, v4, [Landroid/content/pm/Signature;

    #@1c
    .line 280
    .local v1, "bPrime":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    #@1d
    :goto_1
    array-length v4, p1

    #@1e
    if-ge v3, v4, :cond_1

    #@20
    .line 281
    aget-object v4, p1, v3

    #@22
    invoke-static {v2, v4}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    #@25
    move-result-object v4

    #@26
    aput-object v4, v1, v3

    #@28
    .line 280
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 284
    :cond_1
    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    #@2e
    move-result v4

    #@2f
    return v4
.end method

.method public static areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 2
    .param p0, "a"    # [Landroid/content/pm/Signature;
    .param p1, "b"    # [Landroid/content/pm/Signature;

    #@0
    .prologue
    .line 254
    array-length v0, p0

    #@1
    array-length v1, p1

    #@2
    if-ne v0, v1, :cond_0

    #@4
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 255
    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 254
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public static bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;
    .locals 6
    .param p0, "cf"    # Ljava/security/cert/CertificateFactory;
    .param p1, "s"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@2
    iget-object v3, p1, Landroid/content/pm/Signature;->mSignature:[B

    #@4
    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    .line 296
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@d
    .line 297
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Landroid/content/pm/Signature;

    #@f
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@12
    move-result-object v3

    #@13
    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([B)V

    #@16
    .line 299
    .local v2, "sPrime":Landroid/content/pm/Signature;
    iget-object v3, v2, Landroid/content/pm/Signature;->mSignature:[B

    #@18
    array-length v3, v3

    #@19
    iget-object v4, p1, Landroid/content/pm/Signature;->mSignature:[B

    #@1b
    array-length v4, v4

    #@1c
    sub-int/2addr v3, v4

    #@1d
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    #@20
    move-result v3

    #@21
    const/4 v4, 0x2

    #@22
    if-le v3, v4, :cond_0

    #@24
    .line 300
    new-instance v3, Ljava/security/cert/CertificateException;

    #@26
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v5, "Bounced cert length looks fishy; before "

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    .line 301
    iget-object v5, p1, Landroid/content/pm/Signature;->mSignature:[B

    #@34
    array-length v5, v5

    #@35
    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 301
    const-string/jumbo v5, ", after "

    #@3c
    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 301
    iget-object v5, v2, Landroid/content/pm/Signature;->mSignature:[B

    #@42
    array-length v5, v5

    #@43
    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v3

    #@4f
    .line 304
    :cond_0
    return-object v2
.end method

.method private static final parseHexDigit(I)I
    .locals 3
    .param p0, "nibble"    # I

    #@0
    .prologue
    .line 71
    const/16 v0, 0x30

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 72
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 73
    :cond_0
    const/16 v0, 0x61

    #@d
    if-gt v0, p0, :cond_1

    #@f
    const/16 v0, 0x66

    #@11
    if-gt p0, v0, :cond_1

    #@13
    .line 74
    add-int/lit8 v0, p0, -0x61

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 75
    :cond_1
    const/16 v0, 0x41

    #@1a
    if-gt v0, p0, :cond_2

    #@1c
    const/16 v0, 0x46

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    .line 76
    add-int/lit8 v0, p0, -0x41

    #@22
    add-int/lit8 v0, v0, 0xa

    #@24
    return v0

    #@25
    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Invalid character "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, " in hex string"

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 226
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 206
    if-eqz p1, :cond_1

    #@2
    .line 207
    :try_start_0
    move-object v0, p1

    #@3
    check-cast v0, Landroid/content/pm/Signature;

    #@5
    move-object v2, v0

    #@6
    .line 208
    .local v2, "other":Landroid/content/pm/Signature;
    if-eq p0, v2, :cond_0

    #@8
    iget-object v3, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@a
    iget-object v4, v2, Landroid/content/pm/Signature;->mSignature:[B

    #@c
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v3

    #@10
    :goto_0
    return v3

    #@11
    :cond_0
    const/4 v3, 0x1

    #@12
    goto :goto_0

    #@13
    .line 210
    .end local v2    # "other":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    #@14
    .line 212
    :cond_1
    const/4 v3, 0x0

    #@15
    return v3
.end method

.method public getChainSignatures()[Landroid/content/pm/Signature;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 188
    iget-object v5, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    #@4
    if-nez v5, :cond_0

    #@6
    .line 189
    new-array v5, v6, [Landroid/content/pm/Signature;

    #@8
    aput-object p0, v5, v4

    #@a
    return-object v5

    #@b
    .line 192
    :cond_0
    iget-object v5, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    #@d
    array-length v5, v5

    #@e
    add-int/lit8 v5, v5, 0x1

    #@10
    new-array v1, v5, [Landroid/content/pm/Signature;

    #@12
    .line 193
    .local v1, "chain":[Landroid/content/pm/Signature;
    aput-object p0, v1, v4

    #@14
    .line 195
    const/4 v2, 0x1

    #@15
    .line 196
    .local v2, "i":I
    iget-object v5, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    #@17
    array-length v6, v5

    #@18
    move v3, v2

    #@19
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    #@1b
    aget-object v0, v5, v4

    #@1d
    .line 197
    .local v0, "c":Ljava/security/cert/Certificate;
    add-int/lit8 v2, v3, 0x1

    #@1f
    .end local v3    # "i":I
    .restart local v2    # "i":I
    new-instance v7, Landroid/content/pm/Signature;

    #@21
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@24
    move-result-object v8

    #@25
    invoke-direct {v7, v8}, Landroid/content/pm/Signature;-><init>([B)V

    #@28
    aput-object v7, v1, v3

    #@2a
    .line 196
    add-int/lit8 v4, v4, 0x1

    #@2c
    move v3, v2

    #@2d
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@2e
    .line 200
    .end local v0    # "c":Ljava/security/cert/Certificate;
    :cond_1
    return-object v1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    const-string/jumbo v3, "X.509"

    #@3
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v2

    #@7
    .line 175
    .local v2, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@9
    iget-object v3, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@b
    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@e
    .line 176
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@11
    move-result-object v1

    #@12
    .line 177
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@15
    move-result-object v3

    #@16
    return-object v3
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 218
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    #@6
    return v0

    #@7
    .line 220
    :cond_0
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@9
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    #@f
    .line 221
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    #@12
    .line 222
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    #@14
    return v0
.end method

.method public toByteArray()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 161
    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 162
    .local v0, "bytes":[B
    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@8
    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 163
    return-object v0
.end method

.method public toChars()[C
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 114
    invoke-virtual {p0, v0, v0}, Landroid/content/pm/Signature;->toChars([C[I)[C

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toChars([C[I)[C
    .locals 10
    .param p1, "existingArray"    # [C
    .param p2, "outLen"    # [I

    #@0
    .prologue
    const/16 v9, 0xa

    #@2
    .line 128
    iget-object v4, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@4
    .line 129
    .local v4, "sig":[B
    array-length v0, v4

    #@5
    .line 130
    .local v0, "N":I
    mul-int/lit8 v1, v0, 0x2

    #@7
    .line 131
    .local v1, "N2":I
    if-eqz p1, :cond_0

    #@9
    array-length v7, p1

    #@a
    if-le v1, v7, :cond_1

    #@c
    .line 132
    :cond_0
    new-array v5, v1, [C

    #@e
    .line 133
    .local v5, "text":[C
    :goto_0
    const/4 v3, 0x0

    #@f
    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_4

    #@11
    .line 134
    aget-byte v6, v4, v3

    #@13
    .line 135
    .local v6, "v":B
    shr-int/lit8 v7, v6, 0x4

    #@15
    and-int/lit8 v2, v7, 0xf

    #@17
    .line 136
    .local v2, "d":I
    mul-int/lit8 v8, v3, 0x2

    #@19
    if-lt v2, v9, :cond_2

    #@1b
    add-int/lit8 v7, v2, 0x61

    #@1d
    add-int/lit8 v7, v7, -0xa

    #@1f
    :goto_2
    int-to-char v7, v7

    #@20
    aput-char v7, v5, v8

    #@22
    .line 137
    and-int/lit8 v2, v6, 0xf

    #@24
    .line 138
    mul-int/lit8 v7, v3, 0x2

    #@26
    add-int/lit8 v8, v7, 0x1

    #@28
    if-lt v2, v9, :cond_3

    #@2a
    add-int/lit8 v7, v2, 0x61

    #@2c
    add-int/lit8 v7, v7, -0xa

    #@2e
    :goto_3
    int-to-char v7, v7

    #@2f
    aput-char v7, v5, v8

    #@31
    .line 133
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_1

    #@34
    .line 132
    .end local v2    # "d":I
    .end local v3    # "j":I
    .end local v5    # "text":[C
    .end local v6    # "v":B
    :cond_1
    move-object v5, p1

    #@35
    .restart local v5    # "text":[C
    goto :goto_0

    #@36
    .line 136
    .restart local v2    # "d":I
    .restart local v3    # "j":I
    .restart local v6    # "v":B
    :cond_2
    add-int/lit8 v7, v2, 0x30

    #@38
    goto :goto_2

    #@39
    .line 138
    :cond_3
    add-int/lit8 v7, v2, 0x30

    #@3b
    goto :goto_3

    #@3c
    .line 140
    .end local v2    # "d":I
    .end local v6    # "v":B
    :cond_4
    if-eqz p2, :cond_5

    #@3e
    const/4 v7, 0x0

    #@3f
    aput v0, p2, v7

    #@41
    .line 141
    :cond_5
    return-object v5
.end method

.method public toCharsString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 148
    iget-object v1, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    .line 149
    :goto_0
    if-eqz v0, :cond_1

    #@7
    .line 150
    return-object v0

    #@8
    .line 148
    :cond_0
    iget-object v1, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    #@a
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    #@11
    .line 152
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/String;

    #@13
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@1a
    .line 153
    .restart local v0    # "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/ref/SoftReference;

    #@1c
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@1f
    iput-object v1, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    #@21
    .line 154
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@5
    .line 229
    return-void
.end method
