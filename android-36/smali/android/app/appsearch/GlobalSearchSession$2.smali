.class Landroid/app/appsearch/GlobalSearchSession$2;
.super Landroid/app/appsearch/aidl/IAppSearchObserverProxy$Stub;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appsearch/GlobalSearchSession;->registerObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$observer:Landroid/app/appsearch/observer/ObserverCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$-ZeXO0mqDxLSaMLD55gQ2Uy73dc(Landroid/app/appsearch/GlobalSearchSession$2;Landroid/app/appsearch/AppSearchResult;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/app/appsearch/GlobalSearchSession$2;->suppressingErrorCallback(Landroid/app/appsearch/AppSearchResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GOwSVa7bMmjJioRBQ_ZOrUf8YPw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/appsearch/observer/ObserverCallback;)V
    .registers 6

    .line 1
    invoke-static/range {p0 .. p5}, Landroid/app/appsearch/GlobalSearchSession$2;->lambda$onDocumentChanged$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/appsearch/observer/ObserverCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n24LgJOD6OxtbZBjr9Qmx-gmp3o(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/appsearch/observer/ObserverCallback;)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/app/appsearch/GlobalSearchSession$2;->lambda$onSchemaChanged$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/appsearch/observer/ObserverCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor blacklist <init>(Landroid/app/appsearch/GlobalSearchSession;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p2, p0, Landroid/app/appsearch/GlobalSearchSession$2;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iput-object p3, p0, Landroid/app/appsearch/GlobalSearchSession$2;->val$observer:Landroid/app/appsearch/observer/ObserverCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/aidl/IAppSearchObserverProxy$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic blacklist lambda$onDocumentChanged$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/appsearch/observer/ObserverCallback;)V
    .registers 12

    .line 1
    new-instance v0, Landroid/app/appsearch/observer/DocumentChangeInfo;

    .line 2
    .line 3
    new-instance v5, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v5, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Landroid/app/appsearch/observer/DocumentChangeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p5, v0}, Landroid/app/appsearch/observer/ObserverCallback;->onDocumentChanged(Landroid/app/appsearch/observer/DocumentChangeInfo;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static synthetic blacklist lambda$onSchemaChanged$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/appsearch/observer/ObserverCallback;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/app/appsearch/observer/SchemaChangeInfo;

    .line 2
    .line 3
    new-instance v1, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p1, v1}, Landroid/app/appsearch/observer/SchemaChangeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, v0}, Landroid/app/appsearch/observer/ObserverCallback;->onSchemaChanged(Landroid/app/appsearch/observer/SchemaChangeInfo;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private blacklist suppressingErrorCallback(Landroid/app/appsearch/AppSearchResult;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchResult<",
            "*>;)V"
        }
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public blacklist onDocumentChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/GlobalSearchSession$2;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Landroid/app/appsearch/GlobalSearchSession$2$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroid/app/appsearch/GlobalSearchSession$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/appsearch/GlobalSearchSession$2;)V

    .line 6
    .line 7
    .line 8
    iget-object v8, p0, Landroid/app/appsearch/GlobalSearchSession$2;->val$observer:Landroid/app/appsearch/observer/ObserverCallback;

    .line 9
    .line 10
    new-instance v2, Landroid/app/appsearch/GlobalSearchSession$2$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    move-object v6, p4

    .line 16
    move-object v7, p5

    .line 17
    invoke-direct/range {v2 .. v8}, Landroid/app/appsearch/GlobalSearchSession$2$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/appsearch/observer/ObserverCallback;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public blacklist onSchemaChanged(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/GlobalSearchSession$2;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Landroid/app/appsearch/GlobalSearchSession$2$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroid/app/appsearch/GlobalSearchSession$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/appsearch/GlobalSearchSession$2;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroid/app/appsearch/GlobalSearchSession$2;->val$observer:Landroid/app/appsearch/observer/ObserverCallback;

    .line 9
    .line 10
    new-instance v2, Landroid/app/appsearch/GlobalSearchSession$2$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    invoke-direct {v2, p1, p2, p3, p0}, Landroid/app/appsearch/GlobalSearchSession$2$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/appsearch/observer/ObserverCallback;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
