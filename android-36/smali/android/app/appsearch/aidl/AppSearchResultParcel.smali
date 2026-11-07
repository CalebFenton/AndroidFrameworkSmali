.class public final Landroid/app/appsearch/aidl/AppSearchResultParcel;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CREATOR_WITHOUT_BLOB:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mErrorMessage:Ljava/lang/String;

.field blacklist mGenericDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

.field blacklist mGetSchemaResponse:Landroid/app/appsearch/GetSchemaResponse;

.field blacklist mInternalSetSchemaResponse:Landroid/app/appsearch/InternalSetSchemaResponse;

.field blacklist mMigrationFailures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mResultCached:Landroid/app/appsearch/AppSearchResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;"
        }
    .end annotation
.end field

.field blacklist mResultCode:I

.field blacklist mSearchResultPage:Landroid/app/appsearch/SearchResultPage;

.field blacklist mSearchSuggestionResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchSuggestionResult;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mStorageInfo:Landroid/app/appsearch/StorageInfo;

.field blacklist mStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcelCreator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/app/appsearch/aidl/AppSearchResultParcelCreator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->CREATOR_WITHOUT_BLOB:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Landroid/app/appsearch/InternalSetSchemaResponse;Landroid/app/appsearch/GetSchemaResponse;Ljava/util/List;Landroid/app/appsearch/safeparcel/GenericDocumentParcel;Landroid/app/appsearch/SearchResultPage;Ljava/util/List;Ljava/util/List;Landroid/app/appsearch/StorageInfo;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/InternalSetSchemaResponse;",
            "Landroid/app/appsearch/GetSchemaResponse;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            "Landroid/app/appsearch/SearchResultPage;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchSuggestionResult;",
            ">;",
            "Landroid/app/appsearch/StorageInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCode:I

    .line 3
    iput-object p2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mErrorMessage:Ljava/lang/String;

    if-nez p1, :cond_69

    .line 4
    iput-object p3, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mInternalSetSchemaResponse:Landroid/app/appsearch/InternalSetSchemaResponse;

    .line 5
    iput-object p4, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mGetSchemaResponse:Landroid/app/appsearch/GetSchemaResponse;

    .line 6
    iput-object p5, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mStrings:Ljava/util/List;

    .line 7
    iput-object p6, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mGenericDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 8
    iput-object p7, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mSearchResultPage:Landroid/app/appsearch/SearchResultPage;

    .line 9
    iput-object p8, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mMigrationFailures:Ljava/util/List;

    .line 10
    iput-object p9, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mSearchSuggestionResults:Ljava/util/List;

    .line 11
    iput-object p10, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mStorageInfo:Landroid/app/appsearch/StorageInfo;

    if-eqz p3, :cond_22

    .line 12
    invoke-static {p3}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_22
    if-eqz p4, :cond_2b

    .line 13
    invoke-static {p4}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_2b
    if-eqz p5, :cond_34

    .line 14
    invoke-static {p5}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_34
    if-eqz p6, :cond_3d

    .line 15
    invoke-static {p6}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_3d
    if-eqz p7, :cond_46

    .line 16
    invoke-static {p7}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_46
    if-eqz p8, :cond_4f

    .line 17
    invoke-static {p8}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_4f
    if-eqz p9, :cond_58

    .line 18
    invoke-static {p9}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_58
    if-eqz p10, :cond_61

    .line 19
    invoke-static {p10}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    :cond_61
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void

    .line 21
    :cond_69
    invoke-static {p1, p2}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    return-void
.end method

.method static blacklist directlyReadFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->CREATOR_WITHOUT_BLOB:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 8
    .line 9
    return-object p0
.end method

.method static blacklist directlyWriteToParcel(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/os/Parcel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel<",
            "*>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/aidl/AppSearchResultParcelCreator;->writeToParcel(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static blacklist fromFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1c

    .line 6
    .line 7
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->setErrorMessage(Ljava/lang/String;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "Creating a failed AppSearchResultParcel from a successful response"

    .line 32
    .line 33
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public static blacklist fromGenericDocumentParcel(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel<",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->setGenericDocumentParcel(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static blacklist fromGetSchemaResponse(Landroid/app/appsearch/GetSchemaResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/GetSchemaResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel<",
            "Landroid/app/appsearch/GetSchemaResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->setGetSchemaResponse(Landroid/app/appsearch/GetSchemaResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static blacklist fromInternalSetSchemaResponse(Landroid/app/appsearch/InternalSetSchemaResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/InternalSetSchemaResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel<",
            "Landroid/app/appsearch/InternalSetSchemaResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->setInternalSetSchemaResponse(Landroid/app/appsearch/InternalSetSchemaResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static blacklist fromMigrationFailuresList(Ljava/util/List;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;)",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel<",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->setMigrationFailures(Ljava/util/List;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static blacklist fromSearchResultPage(Landroid/app/appsearch/SearchResultPage;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/SearchResultPage;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel<",
            "Landroid/app/appsearch/SearchResultPage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->setSearchResultPage(Landroid/app/appsearch/SearchResultPage;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static blacklist fromSearchSuggestionResultList(Ljava/util/List;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchSuggestionResult;",
            ">;)",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel<",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchSuggestionResult;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->setSearchSuggestionResults(Ljava/util/List;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static blacklist fromStorageInfo(Landroid/app/appsearch/StorageInfo;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/StorageInfo;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel<",
            "Landroid/app/appsearch/StorageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->setStorageInfo(Landroid/app/appsearch/StorageInfo;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static blacklist fromStringList(Ljava/util/List;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->setStrings(Ljava/util/List;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static blacklist fromVoid()Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 2

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->build()Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method


# virtual methods
.method public blacklist getResult()Landroid/app/appsearch/AppSearchResult;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/appsearch/AppSearchResult<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    invoke-static {p0, v0, p2}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->directlyWriteToParcel(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/os/Parcel;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_12

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p0}, Landroid/app/appsearch/ParcelableUtil;->writeBlob(Landroid/os/Parcel;[B)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception p0

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 21
    .line 22
    .line 23
    throw p0
.end method
