.class Landroid/app/appsearch/SearchSessionUtil$1;
.super Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback$Stub;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appsearch/SearchSessionUtil;->createGetDocumentCallback(Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/app/appsearch/BatchResultCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$CEk3q8sDAQVhU3rQwVueB8FAj_M(Landroid/app/appsearch/BatchResultCallback;Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;)V
    .registers 2

    .line 1
    invoke-static {p1, p0}, Landroid/app/appsearch/SearchSessionUtil$1;->lambda$onResult$0(Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;Landroid/app/appsearch/BatchResultCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JE8V27NZyieJ6HvfVwvaskDH0fU(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroid/app/appsearch/SearchSessionUtil$1;->lambda$onSystemError$1(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/app/appsearch/BatchResultCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroid/app/appsearch/SearchSessionUtil$1;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/app/appsearch/SearchSessionUtil$1;->val$callback:Landroid/app/appsearch/BatchResultCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic blacklist lambda$onResult$0(Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;->getResult()Landroid/app/appsearch/AppSearchBatchResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/app/appsearch/AppSearchBatchResult$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_55

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    :try_start_22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 40
    .line 41
    if-nez v4, :cond_38

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/String;

    .line 48
    .line 49
    const-string v5, "Received null GenericDocumentParcel in getByDocumentId API"

    .line 50
    .line 51
    invoke-virtual {v0, v4, v3, v5}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->setFailure(Ljava/lang/Object;ILjava/lang/String;)Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 52
    .line 53
    .line 54
    goto :goto_15

    .line 55
    :catch_36
    move-exception v4

    .line 56
    goto :goto_47

    .line 57
    :cond_38
    new-instance v5, Landroid/app/appsearch/GenericDocument;

    .line 58
    .line 59
    invoke-direct {v5, v4}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_3d} :catch_36

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v2, v5}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->setSuccess(Ljava/lang/Object;Ljava/lang/Object;)Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 69
    .line 70
    .line 71
    goto :goto_15

    .line 72
    :goto_47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->setFailure(Ljava/lang/Object;ILjava/lang/String;)Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 83
    .line 84
    .line 85
    goto :goto_15

    .line 86
    :cond_55
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    :goto_61
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_8b

    .line 103
    .line 104
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Ljava/lang/String;

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Landroid/app/appsearch/AppSearchResult;

    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Landroid/app/appsearch/AppSearchResult;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->setFailure(Ljava/lang/Object;ILjava/lang/String;)Landroid/app/appsearch/AppSearchBatchResult$Builder;

    .line 137
    .line 138
    .line 139
    goto :goto_61

    .line 140
    :cond_8b
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchBatchResult$Builder;->build()Landroid/app/appsearch/AppSearchBatchResult;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-interface {p1, p0}, Landroid/app/appsearch/BatchResultCallback;->onResult(Landroid/app/appsearch/AppSearchBatchResult;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private static synthetic blacklist lambda$onSystemError$1(Landroid/app/appsearch/aidl/AppSearchResultParcel;Landroid/app/appsearch/BatchResultCallback;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->getResult()Landroid/app/appsearch/AppSearchResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Landroid/app/appsearch/SearchSessionUtil;->sendSystemErrorToCallback(Landroid/app/appsearch/AppSearchResult;Landroid/app/appsearch/BatchResultCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public blacklist onResult(Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchSessionUtil$1;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/SearchSessionUtil$1;->val$callback:Landroid/app/appsearch/BatchResultCallback;

    .line 4
    .line 5
    new-instance v1, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, p0, v2}, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;Landroid/app/appsearch/BatchResultCallback;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0, v1}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public blacklist onSystemError(Landroid/app/appsearch/aidl/AppSearchResultParcel;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchSessionUtil$1;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/SearchSessionUtil$1;->val$callback:Landroid/app/appsearch/BatchResultCallback;

    .line 4
    .line 5
    new-instance v1, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p1, p0, v2}, Landroid/app/appsearch/SearchSessionUtil$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;Landroid/app/appsearch/BatchResultCallback;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0, v1}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
