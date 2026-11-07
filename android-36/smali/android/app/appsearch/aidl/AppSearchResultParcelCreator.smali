.class public Landroid/app/appsearch/aidl/AppSearchResultParcelCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/aidl/AppSearchResultParcel;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCode:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p1, v2, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mErrorMessage:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {p1, v2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mInternalSetSchemaResponse:Landroid/app/appsearch/InternalSetSchemaResponse;

    .line 20
    .line 21
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mGetSchemaResponse:Landroid/app/appsearch/GetSchemaResponse;

    .line 26
    .line 27
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mStrings:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mGenericDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 38
    .line 39
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x7

    .line 43
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mSearchResultPage:Landroid/app/appsearch/SearchResultPage;

    .line 44
    .line 45
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x8

    .line 49
    .line 50
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mMigrationFailures:Ljava/util/List;

    .line 51
    .line 52
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 53
    .line 54
    .line 55
    const/16 v1, 0x9

    .line 56
    .line 57
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mSearchSuggestionResults:Ljava/util/List;

    .line 58
    .line 59
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 60
    .line 61
    .line 62
    const/16 v1, 0xa

    .line 63
    .line 64
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mStorageInfo:Landroid/app/appsearch/StorageInfo;

    .line 65
    .line 66
    invoke-static {p1, v1, p0, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 15

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    .line 3
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_79

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_82

    .line 6
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_10

    .line 7
    :pswitch_25
    sget-object v1, Landroid/app/appsearch/StorageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/StorageInfo;

    move-object v12, v0

    goto :goto_10

    .line 9
    :pswitch_2f
    sget-object v1, Landroid/app/appsearch/SearchSuggestionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v11, v0

    goto :goto_10

    .line 11
    :pswitch_37
    sget-object v1, Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v10, v0

    goto :goto_10

    .line 13
    :pswitch_3f
    sget-object v1, Landroid/app/appsearch/SearchResultPage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/SearchResultPage;

    move-object v9, v0

    goto :goto_10

    .line 15
    :pswitch_49
    sget-object v1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    move-object v8, v0

    goto :goto_10

    .line 17
    :pswitch_53
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v0

    move-object v7, v0

    goto :goto_10

    .line 18
    :pswitch_59
    sget-object v1, Landroid/app/appsearch/GetSchemaResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/GetSchemaResponse;

    move-object v6, v0

    goto :goto_10

    .line 20
    :pswitch_63
    sget-object v1, Landroid/app/appsearch/InternalSetSchemaResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/InternalSetSchemaResponse;

    move-object v5, v0

    goto :goto_10

    .line 22
    :pswitch_6d
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_10

    .line 23
    :pswitch_73
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v3, v0

    goto :goto_10

    .line 24
    :cond_79
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 25
    new-instance v2, Landroid/app/appsearch/aidl/AppSearchResultParcel;

    invoke-direct/range {v2 .. v12}, Landroid/app/appsearch/aidl/AppSearchResultParcel;-><init>(ILjava/lang/String;Landroid/app/appsearch/InternalSetSchemaResponse;Landroid/app/appsearch/GetSchemaResponse;Ljava/util/List;Landroid/app/appsearch/safeparcel/GenericDocumentParcel;Landroid/app/appsearch/SearchResultPage;Ljava/util/List;Ljava/util/List;Landroid/app/appsearch/StorageInfo;)V

    return-object v2

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_73
        :pswitch_6d
        :pswitch_63
        :pswitch_59
        :pswitch_53
        :pswitch_49
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_25
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/AppSearchResultParcelCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchResultParcel;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/aidl/AppSearchResultParcel;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/AppSearchResultParcelCreator;->newArray(I)[Landroid/app/appsearch/aidl/AppSearchResultParcel;

    move-result-object p0

    return-object p0
.end method
