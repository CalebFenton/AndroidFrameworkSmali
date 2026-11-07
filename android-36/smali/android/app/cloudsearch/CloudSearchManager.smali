.class public Landroid/app/cloudsearch/CloudSearchManager;
.super Ljava/lang/Object;
.source "CloudSearchManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/CloudSearchManager$CallBack;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic blacklist lambda$search$0(Landroid/app/cloudsearch/CloudSearchManager$CallBack;Landroid/app/cloudsearch/SearchRequest;)V
    .registers 4
    .param p0, "callback"    # Landroid/app/cloudsearch/CloudSearchManager$CallBack;
    .param p1, "request"    # Landroid/app/cloudsearch/SearchRequest;

    .line 79
    new-instance v0, Landroid/app/cloudsearch/SearchResponse$Builder;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/cloudsearch/SearchResponse$Builder;-><init>(I)V

    .line 80
    invoke-virtual {v0}, Landroid/app/cloudsearch/SearchResponse$Builder;->build()Landroid/app/cloudsearch/SearchResponse;

    move-result-object v0

    .line 79
    invoke-interface {p0, p1, v0}, Landroid/app/cloudsearch/CloudSearchManager$CallBack;->onSearchFailed(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/SearchResponse;)V

    return-void
.end method


# virtual methods
.method public whitelist search(Landroid/app/cloudsearch/SearchRequest;Ljava/util/concurrent/Executor;Landroid/app/cloudsearch/CloudSearchManager$CallBack;)V
    .registers 5
    .param p1, "request"    # Landroid/app/cloudsearch/SearchRequest;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/app/cloudsearch/CloudSearchManager$CallBack;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 78
    new-instance v0, Landroid/app/cloudsearch/CloudSearchManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1}, Landroid/app/cloudsearch/CloudSearchManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/cloudsearch/CloudSearchManager$CallBack;Landroid/app/cloudsearch/SearchRequest;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method
