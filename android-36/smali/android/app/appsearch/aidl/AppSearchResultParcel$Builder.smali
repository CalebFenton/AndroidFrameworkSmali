.class final Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/aidl/AppSearchResultParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mGenericDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

.field private blacklist mGetSchemaResponse:Landroid/app/appsearch/GetSchemaResponse;

.field private blacklist mInternalSetSchemaResponse:Landroid/app/appsearch/InternalSetSchemaResponse;

.field private blacklist mMigrationFailures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResultCode:I

.field private blacklist mSearchResultPage:Landroid/app/appsearch/SearchResultPage;

.field private blacklist mSearchSuggestionResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchSuggestionResult;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStorageInfo:Landroid/app/appsearch/StorageInfo;

.field private blacklist mStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mResultCode:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method blacklist build()Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 2
    .line 3
    iget v1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mResultCode:I

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mErrorMessage:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mInternalSetSchemaResponse:Landroid/app/appsearch/InternalSetSchemaResponse;

    .line 8
    .line 9
    iget-object v4, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mGetSchemaResponse:Landroid/app/appsearch/GetSchemaResponse;

    .line 10
    .line 11
    iget-object v5, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mStrings:Ljava/util/List;

    .line 12
    .line 13
    iget-object v6, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mGenericDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 14
    .line 15
    iget-object v7, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mSearchResultPage:Landroid/app/appsearch/SearchResultPage;

    .line 16
    .line 17
    iget-object v8, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mMigrationFailures:Ljava/util/List;

    .line 18
    .line 19
    iget-object v9, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mSearchSuggestionResults:Ljava/util/List;

    .line 20
    .line 21
    iget-object v10, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mStorageInfo:Landroid/app/appsearch/StorageInfo;

    .line 22
    .line 23
    invoke-direct/range {v0 .. v10}, Landroid/app/appsearch/aidl/AppSearchResultParcel;-><init>(ILjava/lang/String;Landroid/app/appsearch/InternalSetSchemaResponse;Landroid/app/appsearch/GetSchemaResponse;Ljava/util/List;Landroid/app/appsearch/safeparcel/GenericDocumentParcel;Landroid/app/appsearch/SearchResultPage;Ljava/util/List;Ljava/util/List;Landroid/app/appsearch/StorageInfo;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method blacklist setErrorMessage(Ljava/lang/String;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mErrorMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setGenericDocumentParcel(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mGenericDocumentParcel:Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setGetSchemaResponse(Landroid/app/appsearch/GetSchemaResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/GetSchemaResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mGetSchemaResponse:Landroid/app/appsearch/GetSchemaResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setInternalSetSchemaResponse(Landroid/app/appsearch/InternalSetSchemaResponse;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/InternalSetSchemaResponse;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mInternalSetSchemaResponse:Landroid/app/appsearch/InternalSetSchemaResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setMigrationFailures(Ljava/util/List;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SetSchemaResponse$MigrationFailure;",
            ">;)",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mMigrationFailures:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setSearchResultPage(Landroid/app/appsearch/SearchResultPage;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/SearchResultPage;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mSearchResultPage:Landroid/app/appsearch/SearchResultPage;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setSearchSuggestionResults(Ljava/util/List;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchSuggestionResult;",
            ">;)",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mSearchSuggestionResults:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setStorageInfo(Landroid/app/appsearch/StorageInfo;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/StorageInfo;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mStorageInfo:Landroid/app/appsearch/StorageInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method blacklist setStrings(Ljava/util/List;)Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder<",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchResultParcel$Builder;->mStrings:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
