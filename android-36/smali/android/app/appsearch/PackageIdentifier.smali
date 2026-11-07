.class public Landroid/app/appsearch/PackageIdentifier;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# instance fields
.field private final blacklist mPackageIdentifierParcel:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;


# direct methods
.method public constructor blacklist <init>(Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/PackageIdentifier;->mPackageIdentifierParcel:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    invoke-direct {v0, p1, p2}, Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Landroid/app/appsearch/PackageIdentifier;->mPackageIdentifierParcel:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_4
    instance-of v0, p1, Landroid/app/appsearch/PackageIdentifier;

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/PackageIdentifier;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/app/appsearch/PackageIdentifier;->mPackageIdentifierParcel:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/appsearch/PackageIdentifier;->getPackageIdentifierParcel()Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public blacklist getPackageIdentifierParcel()Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/PackageIdentifier;->mPackageIdentifierParcel:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/PackageIdentifier;->mPackageIdentifierParcel:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getSha256Certificate()[B
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/PackageIdentifier;->mPackageIdentifierParcel:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;->getSha256Certificate()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/PackageIdentifier;->mPackageIdentifierParcel:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
