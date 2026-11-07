.class public final Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequestCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;Landroid/os/Parcel;I)V
    .registers 9

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->getCallerAttributionSource()Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v2, v1, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->getNextPageToken()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    invoke-static {p1, v1, v4, v5}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x4

    .line 31
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->getBinderCallStartTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-static {p1, p2, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 36
    .line 37
    .line 38
    const/4 p2, 0x5

    .line 39
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->isForEnterprise()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-static {p1, p2, p0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;
    .registers 14

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v5, v0

    move-object v8, v5

    move-wide v6, v1

    move-wide v9, v6

    move v11, v3

    .line 3
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_54

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_44

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_34

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2e

    .line 6
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 7
    :cond_2e
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v0

    move v11, v0

    goto :goto_d

    .line 8
    :cond_34
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_d

    .line 9
    :cond_3a
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    move-object v8, v0

    goto :goto_d

    .line 11
    :cond_44
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_d

    .line 12
    :cond_4a
    sget-object v1, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    move-object v5, v0

    goto :goto_d

    .line 14
    :cond_54
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 15
    new-instance v4, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;

    invoke-direct/range {v4 .. v11}, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;JLandroid/os/UserHandle;JZ)V

    return-object v4
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequestCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequestCreator;->newArray(I)[Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;

    move-result-object p0

    return-object p0
.end method
