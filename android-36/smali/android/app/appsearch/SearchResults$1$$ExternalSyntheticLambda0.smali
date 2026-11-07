.class public final synthetic Landroid/app/appsearch/SearchResults$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/appsearch/SearchResults$1;

.field public final synthetic blacklist f$1:Landroid/app/appsearch/AppSearchResult;

.field public final synthetic blacklist f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/appsearch/SearchResults$1;Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/SearchResults$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/appsearch/SearchResults$1;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/appsearch/SearchResults$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/AppSearchResult;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/app/appsearch/SearchResults$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchResults$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/appsearch/SearchResults$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/appsearch/SearchResults$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/AppSearchResult;

    .line 4
    .line 5
    iget-object p0, p0, Landroid/app/appsearch/SearchResults$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Landroid/app/appsearch/SearchResults$1;->$r8$lambda$h7HAW-nHJlL0dZLDDQ8GtycIiKQ(Landroid/app/appsearch/SearchResults$1;Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
