.class Landroid/app/appsearch/AppSearchSession$5;
.super Landroid/app/appsearch/aidl/AppSearchResultCallback;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appsearch/AppSearchSession;->openBlobForWrite(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/appsearch/aidl/AppSearchResultCallback<",
        "Landroid/app/appsearch/OpenBlobForWriteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Ljava/util/function/Consumer;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$IzIsRdNOdHxrQRZvQ6chFj0skdw(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 2

    .line 1
    invoke-static {p1, p0}, Landroid/app/appsearch/AppSearchSession$5;->lambda$onResult$0(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor blacklist <init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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
    iput-object p2, p0, Landroid/app/appsearch/AppSearchSession$5;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iput-object p3, p0, Landroid/app/appsearch/AppSearchSession$5;->val$callback:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/appsearch/aidl/AppSearchResultCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic blacklist lambda$onResult$0(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;)V
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public blacklist onResult(Landroid/app/appsearch/AppSearchResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/OpenBlobForWriteResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/AppSearchSession$5;->val$executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSession$5;->val$callback:Ljava/util/function/Consumer;

    .line 4
    .line 5
    new-instance v1, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, v2}, Landroid/app/appsearch/AppSearchSession$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchResult;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Landroid/app/appsearch/SearchSessionUtil;->safeExecute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
