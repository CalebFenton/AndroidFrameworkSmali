.class public final Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyType:",
        "Ljava/lang/Object;",
        "ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CREATOR_WITHOUT_BLOB:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AppSearchBatchResultPar"


# instance fields
.field final blacklist mAppSearchResultValueBundle:Landroid/os/Bundle;

.field final blacklist mKeyBundle:Landroid/os/Bundle;

.field final blacklist mKeyClassName:Ljava/lang/String;

.field private blacklist mResultCached:Landroid/app/appsearch/AppSearchBatchResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "TKeyType;TValueType;>;"
        }
    .end annotation
.end field

.field blacklist mWriteParcelModel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2Creator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2Creator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->CREATOR_WITHOUT_BLOB:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mWriteParcelModel:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mKeyClassName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mKeyBundle:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mAppSearchResultValueBundle:Landroid/os/Bundle;

    .line 11
    .line 12
    const-class p0, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method static blacklist directlyReadFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2<",
            "**>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->CREATOR_WITHOUT_BLOB:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    .line 8
    .line 9
    return-object p0
.end method

.method static blacklist directlyWriteToParcel(Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;Landroid/os/Parcel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2<",
            "**>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2Creator;->writeToParcel(Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static blacklist fromBlobHandleToPfd(Landroid/app/appsearch/AppSearchBatchResult;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)",
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            "Landroid/os/ParcelFileDescriptor;",
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
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getAll()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_61

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/app/appsearch/AppSearchResult;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_40

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/app/appsearch/AppSearchResult;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 59
    .line 60
    invoke-static {v4}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->fromParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    goto :goto_4a

    .line 65
    :cond_40
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Landroid/app/appsearch/AppSearchResult;

    .line 70
    .line 71
    invoke-static {v4}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->fromFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    :goto_4a
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroid/os/Parcelable;

    .line 84
    .line 85
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_17

    .line 98
    :cond_61
    new-instance p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    .line 99
    .line 100
    const-class v2, Landroid/app/appsearch/AppSearchBlobHandle;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const/4 v3, 0x2

    .line 107
    invoke-direct {p0, v3, v2, v0, v1}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;-><init>(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    return-object p0
.end method

.method public static blacklist fromBlobHandleToVoid(Landroid/app/appsearch/AppSearchBatchResult;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            "Ljava/lang/Void;",
            ">;)",
            "Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
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
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getAll()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_55

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Landroid/app/appsearch/AppSearchResult;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_35

    .line 48
    .line 49
    invoke-static {}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->fromVoid()Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    goto :goto_3f

    .line 54
    :cond_35
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroid/app/appsearch/AppSearchResult;

    .line 59
    .line 60
    invoke-static {v5}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->fromFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    :goto_3f
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/os/Parcelable;

    .line 73
    .line 74
    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    .line 83
    .line 84
    add-int/2addr v2, v4

    .line 85
    goto :goto_17

    .line 86
    :cond_55
    new-instance p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    .line 87
    .line 88
    const-class v2, Landroid/app/appsearch/AppSearchBlobHandle;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-direct {p0, v4, v2, v0, v1}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;-><init>(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    return-object p0
.end method


# virtual methods
.method public blacklist getResult()Landroid/app/appsearch/AppSearchBatchResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "TKeyType;TValueType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mResultCached:Landroid/app/appsearch/AppSearchBatchResult;

    .line 2
    .line 3
    if-nez v0, :cond_52

    .line 4
    .line 5
    new-instance v0, Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/app/appsearch/AppSearchBatchResult$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mKeyBundle:Landroid/os/Bundle;

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
    if-eqz v2, :cond_4c

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
    iget-object v3, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mKeyBundle:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mAppSearchResultValueBundle:Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 45
    .line 46
    if-eqz v3, :cond_44

    .line 47
    .line 48
    if-nez v2, :cond_3c

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    const-string v4, "Cannot read value parcelable from bundle."

    .line 52
    .line 53
    invoke-static {v2, v4}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v3, v2}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->setResult(Ljava/lang/Object;Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 58
    .line 59
    .line 60
    goto :goto_13

    .line 61
    :cond_3c
    invoke-virtual {v2}, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->getResult()Landroid/app/appsearch/AppSearchResult;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v3, v2}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->setResult(Ljava/lang/Object;Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 66
    .line 67
    .line 68
    goto :goto_13

    .line 69
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string v0, "AppSearchResultParcelV2\'s key type doesn\'t match."

    .line 72
    .line 73
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_4c
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->build()Landroid/app/appsearch/AppSearchBatchResult;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mResultCached:Landroid/app/appsearch/AppSearchBatchResult;

    .line 82
    .line 83
    :cond_52
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mResultCached:Landroid/app/appsearch/AppSearchBatchResult;

    .line 84
    .line 85
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget v0, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mWriteParcelModel:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mWriteParcelModel:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_27

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_11

    .line 13
    .line 14
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->directlyWriteToParcel(Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;Landroid/os/Parcel;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v0, "Cannot read AppSearchBatchResultParcelV2 from Parcel with unknown model: "

    .line 23
    .line 24
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p0, p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->mWriteParcelModel:I

    .line 28
    .line 29
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :try_start_2b
    invoke-static {p0, v0, p2}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->directlyWriteToParcel(Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 48
    .line 49
    .line 50
    move-result-object p0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_39

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/app/appsearch/ParcelableUtil;->writeBlob(Landroid/os/Parcel;[B)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_39
    move-exception p0

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    .line 61
    .line 62
    throw p0
.end method
