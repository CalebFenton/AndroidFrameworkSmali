.class public final synthetic Landroid/app/appsearch/GlobalSearchSession$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$1:Landroid/app/appsearch/AppSearchResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroid/app/appsearch/GlobalSearchSession$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 5
    .line 6
    iput-object p1, p0, Landroid/app/appsearch/GlobalSearchSession$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/AppSearchResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/GlobalSearchSession$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/GlobalSearchSession$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/AppSearchResult;

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/app/appsearch/GlobalSearchSession$1;->$r8$lambda$oboXwUp-qiZC1sh1DGTV1YGjbdw(Landroid/app/appsearch/AppSearchResult;Ljava/util/function/Consumer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
