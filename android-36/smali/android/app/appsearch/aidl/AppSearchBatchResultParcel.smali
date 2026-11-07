.class public final Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
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
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mAppSearchResultBundle:Landroid/os/Bundle;

.field private blacklist mResultCached:Landroid/app/appsearch/AppSearchBatchResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "TValueType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;->mAppSearchResultBundle:Landroid/os/Bundle;

    .line 5
    .line 6
    return-void
.end method

.method public static blacklist fromStringToGenericDocumentParcel(Landroid/app/appsearch/AppSearchBatchResult;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ">;)",
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcel<",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getAll()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_51

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/app/appsearch/AppSearchResult;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3d

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/app/appsearch/AppSearchResult;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->fromGenericDocumentParcel(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_47

    .line 62
    :cond_3d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Landroid/app/appsearch/AppSearchResult;

    .line 67
    .line 68
    invoke-static {v2}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->fromFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :goto_47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    .line 80
    .line 81
    goto :goto_11

    .line 82
    :cond_51
    new-instance p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;

    .line 83
    .line 84
    invoke-direct {p0, v0}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;-><init>(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    return-object p0
.end method

.method public static blacklist fromStringToVoid(Landroid/app/appsearch/AppSearchBatchResult;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)",
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcel<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getAll()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_42

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/app/appsearch/AppSearchResult;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2e

    .line 41
    .line 42
    invoke-static {}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->fromVoid()Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_38

    .line 47
    :cond_2e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/app/appsearch/AppSearchResult;

    .line 52
    .line 53
    invoke-static {v2}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->fromFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    .line 65
    .line 66
    goto :goto_11

    .line 67
    :cond_42
    new-instance p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;

    .line 68
    .line 69
    invoke-direct {p0, v0}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;-><init>(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    return-object p0
.end method


# virtual methods
.method public blacklist getResult()Landroid/app/appsearch/AppSearchBatchResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "TValueType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchBatchResult;

    .line 2
    .line 3
    if-nez v0, :cond_37

    .line 4
    .line 5
    new-instance v0, Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/app/appsearch/AppSearchBatchResult$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;->mAppSearchResultBundle:Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_31

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;->mAppSearchResultBundle:Landroid/os/Bundle;

    .line 33
    .line 34
    const-class v4, Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 35
    .line 36
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->getResult()Landroid/app/appsearch/AppSearchResult;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v2, v3}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->setResult(Ljava/lang/Object;Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 47
    .line 48
    .line 49
    goto :goto_13

    .line 50
    :cond_31
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->build()Landroid/app/appsearch/AppSearchBatchResult;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchBatchResult;

    .line 55
    .line 56
    :cond_37
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;->mResultCached:Landroid/app/appsearch/AppSearchBatchResult;

    .line 57
    .line 58
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    iget-object v1, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;->mAppSearchResultBundle:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2d

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;->mAppSearchResultBundle:Landroid/os/Bundle;

    .line 31
    .line 32
    const-class v4, Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 33
    .line 34
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 39
    .line 40
    invoke-static {v2, v0, p2}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->directlyWriteToParcel(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/os/Parcel;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_e

    .line 44
    :catchall_2b
    move-exception p0

    .line 45
    goto :goto_38

    .line 46
    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2b

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/app/appsearch/ParcelableUtil;->writeBlob(Landroid/os/Parcel;[B)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method
