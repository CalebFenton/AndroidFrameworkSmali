.class public Landroid/app/appsearch/aidl/AppSearchResultParcelV2Creator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/aidl/AppSearchResultParcelV2;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/aidl/AppSearchResultParcelV2;Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mWriteParcelMode:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p1, v2, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    iget v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mResultCode:I

    .line 13
    .line 14
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mErrorMessage:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p1, v2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 26
    .line 27
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mOpenBlobForWriteResponse:Landroid/app/appsearch/OpenBlobForWriteResponse;

    .line 32
    .line 33
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mCommitBlobResponse:Landroid/app/appsearch/CommitBlobResponse;

    .line 38
    .line 39
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x7

    .line 43
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mOpenBlobForReadResponse:Landroid/app/appsearch/OpenBlobForReadResponse;

    .line 44
    .line 45
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x8

    .line 49
    .line 50
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->mRemoveBlobResponse:Landroid/app/appsearch/RemoveBlobResponse;

    .line 51
    .line 52
    invoke-static {p1, v1, p0, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
    .registers 13

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v4, v3

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 3
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_67

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_70

    .line 6
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 7
    :pswitch_23
    sget-object v1, Landroid/app/appsearch/RemoveBlobResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/RemoveBlobResponse;

    move-object v10, v0

    goto :goto_e

    .line 9
    :pswitch_2d
    sget-object v1, Landroid/app/appsearch/OpenBlobForReadResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/OpenBlobForReadResponse;

    move-object v9, v0

    goto :goto_e

    .line 11
    :pswitch_37
    sget-object v1, Landroid/app/appsearch/CommitBlobResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/CommitBlobResponse;

    move-object v8, v0

    goto :goto_e

    .line 13
    :pswitch_41
    sget-object v1, Landroid/app/appsearch/OpenBlobForWriteResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/OpenBlobForWriteResponse;

    move-object v7, v0

    goto :goto_e

    .line 15
    :pswitch_4b
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    move-object v6, v0

    goto :goto_e

    .line 17
    :pswitch_55
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_e

    .line 18
    :pswitch_5b
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v4, v0

    goto :goto_e

    .line 19
    :pswitch_61
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v3, v0

    goto :goto_e

    .line 20
    :cond_67
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 21
    new-instance v2, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    invoke-direct/range {v2 .. v10}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;-><init>(IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/appsearch/OpenBlobForWriteResponse;Landroid/app/appsearch/CommitBlobResponse;Landroid/app/appsearch/OpenBlobForReadResponse;Landroid/app/appsearch/RemoveBlobResponse;)V

    return-object v2

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5b
        :pswitch_55
        :pswitch_4b
        :pswitch_41
        :pswitch_37
        :pswitch_2d
        :pswitch_23
    .end packed-switch
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2Creator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/aidl/AppSearchResultParcelV2;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2Creator;->newArray(I)[Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    move-result-object p0

    return-object p0
.end method
