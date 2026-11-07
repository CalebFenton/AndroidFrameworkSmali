.class public final synthetic Landroid/app/appsearch/GlobalSearchSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$1:Landroid/app/appsearch/GlobalSearchSession;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;Landroid/app/appsearch/GlobalSearchSession;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/GlobalSearchSession$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/appsearch/GlobalSearchSession$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/GlobalSearchSession;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/GlobalSearchSession$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/GlobalSearchSession$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/GlobalSearchSession;

    .line 4
    .line 5
    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    .line 6
    .line 7
    invoke-static {v0, p0, p1}, Landroid/app/appsearch/GlobalSearchSession;->$r8$lambda$0FExu_W_04hTFpeD8cKSvkyCdqc(Ljava/util/function/Consumer;Landroid/app/appsearch/GlobalSearchSession;Landroid/app/appsearch/AppSearchResult;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
