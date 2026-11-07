.class public final Landroid/app/appsearch/VisibilityConfigCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/SchemaVisibilityConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CONTENT_DESCRIPTION:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static blacklist writeToParcel(Landroid/app/appsearch/SchemaVisibilityConfig;Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mAllowedPackages:Ljava/util/List;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    iget-object v2, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mRequiredPermissions:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    iget-object p0, p0, Landroid/app/appsearch/SchemaVisibilityConfig;->mPubliclyVisibleTargetPackage:Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    .line 20
    .line 21
    invoke-static {p1, v1, p0, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SchemaVisibilityConfig;
    .registers 8

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 3
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, p0, :cond_39

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v3

    .line 5
    invoke-static {v3}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_32

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2b

    const/4 v5, 0x3

    if-eq v4, v5, :cond_22

    .line 6
    invoke-static {p1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 7
    :cond_22
    sget-object v2, Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p1, v3, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;

    goto :goto_7

    .line 9
    :cond_2b
    sget-object v1, Landroid/app/appsearch/VisibilityPermissionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p1, v3, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_7

    .line 11
    :cond_32
    sget-object v0, Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    invoke-static {p1, v3, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_7

    .line 13
    :cond_39
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 14
    new-instance p0, Landroid/app/appsearch/SchemaVisibilityConfig;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/appsearch/SchemaVisibilityConfig;-><init>(Ljava/util/List;Ljava/util/List;Landroid/app/appsearch/safeparcel/PackageIdentifierParcel;)V

    return-object p0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/appsearch/VisibilityConfigCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SchemaVisibilityConfig;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/SchemaVisibilityConfig;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/SchemaVisibilityConfig;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/appsearch/VisibilityConfigCreator;->newArray(I)[Landroid/app/appsearch/SchemaVisibilityConfig;

    move-result-object p0

    return-object p0
.end method
