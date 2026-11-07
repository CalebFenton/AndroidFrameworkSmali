.class public Landroid/app/appfunctions/AppFunctionManagerHelper;
.super Ljava/lang/Object;
.source "AppFunctionManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionManagerHelper$AppFunctionNotFoundException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist buildFilerRuntimeMetadataByFunctionIdQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "functionIdentifier"    # Ljava/lang/String;

    .line 208
    const-string v0, "functionId"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s:\"%s\""

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildFilerStaticMetadataByFunctionIdQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "functionIdentifier"    # Ljava/lang/String;

    .line 214
    const-string v0, "functionId"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s:\"%s\""

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;
    .registers 4
    .param p0, "appSearchResult"    # Landroid/app/appsearch/AppSearchResult;

    .line 222
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_30

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2f

    .line 227
    :sswitch_11
    new-instance v0, Ljava/lang/SecurityException;

    .line 228
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_2f

    .line 225
    :sswitch_1b
    new-instance v0, Ljava/io/IOException;

    .line 226
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2f

    .line 223
    :sswitch_25
    new-instance v0, Landroid/app/appfunctions/AppFunctionManagerHelper$AppFunctionNotFoundException;

    .line 224
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/appfunctions/AppFunctionManagerHelper$AppFunctionNotFoundException;-><init>(Ljava/lang/String;Landroid/app/appfunctions/AppFunctionManagerHelper-IA;)V

    .line 222
    :goto_2f
    return-object v0

    :sswitch_data_30
    .sparse-switch
        0x3 -> :sswitch_25
        0x4 -> :sswitch_1b
        0x8 -> :sswitch_11
    .end sparse-switch
.end method

.method private static blacklist getAppFunctionRuntimeMetadataSearchSpecByPackageName(Ljava/lang/String;)Landroid/app/appsearch/SearchSpec;
    .registers 3
    .param p0, "targetPackage"    # Ljava/lang/String;

    .line 199
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    const-string v1, "android"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 202
    invoke-static {p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getRuntimeSchemaNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 203
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->setVerbatimSearchEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method private static blacklist getEffectiveEnabledStateFromSearchResults(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;)Z"
        }
    .end annotation

    .line 166
    .local p0, "joinedStaticRuntimeResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/SearchResult;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "App function not found."

    if-nez v0, :cond_52

    .line 169
    nop

    .line 170
    invoke-interface {p0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/SearchResult;

    invoke-virtual {v0}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "runtimeMetadataResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/SearchResult;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 174
    nop

    .line 176
    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/SearchResult;

    .line 177
    invoke-virtual {v1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    .line 178
    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Landroid/app/appsearch/GenericDocument;->getPropertyLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 181
    .local v1, "enabled":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3a

    .line 182
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_38

    const/4 v3, 0x1

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    return v3

    .line 186
    :cond_3a
    nop

    .line 187
    invoke-interface {p0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/appsearch/SearchResult;

    .line 188
    invoke-virtual {v3}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v3

    .line 189
    const-string v4, "enabledByDefault"

    invoke-virtual {v3, v4}, Landroid/app/appsearch/GenericDocument;->getPropertyBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 186
    return v3

    .line 172
    .end local v1    # "enabled":J
    :cond_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    .end local v0    # "runtimeMetadataResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/SearchResult;>;"
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p0, "functionIdentifier"    # Ljava/lang/String;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "appSearchManager"    # Landroid/app/appsearch/AppSearchManager;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/AppSearchManager;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4, p1, p0, p3}, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2, p3, v0}, Landroid/app/appsearch/AppSearchManager;->createGlobalSearchSession(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 121
    return-void
.end method

.method static synthetic blacklist lambda$isAppFunctionEnabled$0(Landroid/os/OutcomeReceiver;Landroid/app/appsearch/AppSearchResult;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "listAppSearchResult"    # Landroid/app/appsearch/AppSearchResult;

    .line 105
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 106
    nop

    .line 110
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    invoke-static {v0}, Landroid/app/appfunctions/AppFunctionManagerHelper;->getEffectiveEnabledStateFromSearchResults(Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 106
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    goto :goto_27

    .line 112
    :cond_1f
    nop

    .line 113
    invoke-static {p1}, Landroid/app/appfunctions/AppFunctionManagerHelper;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    move-result-object v0

    .line 112
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 115
    :goto_27
    return-void
.end method

.method static synthetic blacklist lambda$isAppFunctionEnabled$1(Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchResult;)V
    .registers 8
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "functionIdentifier"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "searchSessionResult"    # Landroid/app/appsearch/AppSearchResult;

    .line 92
    invoke-virtual {p4}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_e

    .line 93
    invoke-static {p4}, Landroid/app/appfunctions/AppFunctionManagerHelper;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 94
    return-void

    .line 96
    :cond_e
    :try_start_e
    invoke-virtual {p4}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/GlobalSearchSession;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_3c

    .line 97
    .local v0, "searchSession":Landroid/app/appsearch/GlobalSearchSession;
    nop

    .line 99
    :try_start_15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/GlobalSearchSession;

    .line 98
    invoke-static {v1, p1, p2}, Landroid/app/appfunctions/AppFunctionManagerHelper;->searchJoinedStaticWithRuntimeAppFunctions(Landroid/app/appsearch/GlobalSearchSession;Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/SearchResults;

    move-result-object v1

    .line 102
    .local v1, "results":Landroid/app/appsearch/SearchResults;
    new-instance v2, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/appsearch/SearchResults;->getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 116
    invoke-virtual {v1}, Landroid/app/appsearch/SearchResults;->close()V
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_30

    .line 117
    .end local v1    # "results":Landroid/app/appsearch/SearchResults;
    if-eqz v0, :cond_2f

    :try_start_2c
    invoke-virtual {v0}, Landroid/app/appsearch/GlobalSearchSession;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_3c

    .line 119
    .end local v0    # "searchSession":Landroid/app/appsearch/GlobalSearchSession;
    :cond_2f
    goto :goto_40

    .line 96
    .restart local v0    # "searchSession":Landroid/app/appsearch/GlobalSearchSession;
    :catchall_30
    move-exception v1

    if-eqz v0, :cond_3b

    :try_start_33
    invoke-virtual {v0}, Landroid/app/appsearch/GlobalSearchSession;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v2

    :try_start_38
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "callback":Landroid/os/OutcomeReceiver;
    .end local p1    # "targetPackage":Ljava/lang/String;
    .end local p2    # "functionIdentifier":Ljava/lang/String;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "searchSessionResult":Landroid/app/appsearch/AppSearchResult;
    :cond_3b
    :goto_3b
    throw v1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_3c

    .line 117
    .end local v0    # "searchSession":Landroid/app/appsearch/GlobalSearchSession;
    .restart local p0    # "callback":Landroid/os/OutcomeReceiver;
    .restart local p1    # "targetPackage":Ljava/lang/String;
    .restart local p2    # "functionIdentifier":Ljava/lang/String;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "searchSessionResult":Landroid/app/appsearch/AppSearchResult;
    :catch_3c
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_40
    return-void
.end method

.method private static blacklist searchJoinedStaticWithRuntimeAppFunctions(Landroid/app/appsearch/GlobalSearchSession;Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/SearchResults;
    .registers 8
    .param p0, "session"    # Landroid/app/appsearch/GlobalSearchSession;
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "functionIdentifier"    # Ljava/lang/String;

    .line 131
    nop

    .line 132
    invoke-static {p1}, Landroid/app/appfunctions/AppFunctionManagerHelper;->getAppFunctionRuntimeMetadataSearchSpecByPackageName(Ljava/lang/String;)Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    .line 133
    .local v0, "runtimeSearchSpec":Landroid/app/appsearch/SearchSpec;
    new-instance v1, Landroid/app/appsearch/JoinSpec$Builder;

    const-string v2, "appFunctionStaticMetadataQualifiedId"

    invoke-direct {v1, v2}, Landroid/app/appsearch/JoinSpec$Builder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {p2}, Landroid/app/appfunctions/AppFunctionManagerHelper;->buildFilerRuntimeMetadataByFunctionIdQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v1, v2, v0}, Landroid/app/appsearch/JoinSpec$Builder;->setNestedSearch(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/JoinSpec$Builder;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/app/appsearch/JoinSpec$Builder;->build()Landroid/app/appsearch/JoinSpec;

    move-result-object v1

    .line 139
    .local v1, "joinSpec":Landroid/app/appsearch/JoinSpec;
    new-instance v2, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v2}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    const-string v3, "android"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {v2, v3}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v2

    .line 143
    invoke-static {p1}, Landroid/app/appfunctions/AppFunctionStaticMetadataHelper;->getStaticSchemaNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/appsearch/PropertyPath;

    const-string v4, "enabledByDefault"

    invoke-direct {v3, v4}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 145
    const-string v4, "*"

    invoke-virtual {v2, v4, v3}, Landroid/app/appsearch/SearchSpec$Builder;->addProjectionPaths(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v2

    .line 148
    invoke-virtual {v2, v1}, Landroid/app/appsearch/SearchSpec$Builder;->setJoinSpec(Landroid/app/appsearch/JoinSpec;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v2

    .line 149
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/appsearch/SearchSpec$Builder;->setVerbatimSearchEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v2

    .line 151
    .local v2, "joinedStaticWithRuntimeSearchSpec":Landroid/app/appsearch/SearchSpec;
    nop

    .line 152
    invoke-static {p2}, Landroid/app/appfunctions/AppFunctionManagerHelper;->buildFilerStaticMetadataByFunctionIdQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p0, v3, v2}, Landroid/app/appsearch/GlobalSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    move-result-object v3

    return-object v3
.end method
