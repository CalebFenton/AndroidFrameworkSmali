.class public Landroid/content/pm/SignedPackage;
.super Ljava/lang/Object;
.source "SignedPackage.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist mData:Landroid/content/pm/SignedPackageParcel;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/SignedPackageParcel;)V
    .registers 2
    .param p1, "data"    # Landroid/content/pm/SignedPackageParcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificateDigest"    # [B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/content/pm/SignedPackageParcel;

    invoke-direct {v0}, Landroid/content/pm/SignedPackageParcel;-><init>()V

    .line 40
    .local v0, "data":Landroid/content/pm/SignedPackageParcel;
    iput-object p1, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    .line 41
    iput-object p2, v0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    .line 42
    iput-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 65
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 66
    :cond_4
    instance-of v1, p1, Landroid/content/pm/SignedPackage;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    move-object v1, p1

    check-cast v1, Landroid/content/pm/SignedPackage;

    .line 67
    .local v1, "that":Landroid/content/pm/SignedPackage;
    iget-object v3, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v3, v3, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v4, v4, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v3, v3, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    iget-object v4, v1, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v4, v4, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    return v0

    .line 66
    .end local v1    # "that":Landroid/content/pm/SignedPackage;
    :cond_2b
    return v2
.end method

.method public blacklist getCertificateDigest()[B
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    return-object v0
.end method

.method public final blacklist getData()Landroid/content/pm/SignedPackageParcel;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v0, v0, Landroid/content/pm/SignedPackageParcel;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/SignedPackage;->mData:Landroid/content/pm/SignedPackageParcel;

    iget-object v1, v1, Landroid/content/pm/SignedPackageParcel;->certificateDigest:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
