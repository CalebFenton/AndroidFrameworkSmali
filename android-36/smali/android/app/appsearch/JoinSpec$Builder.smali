.class public final Landroid/app/appsearch/JoinSpec$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/JoinSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist EMPTY_SEARCH_SPEC:Landroid/app/appsearch/SearchSpec;


# instance fields
.field private blacklist mAggregationScoringStrategy:I

.field private blacklist mChildPropertyExpression:Ljava/lang/String;

.field private blacklist mMaxJoinedResultCount:I

.field private blacklist mNestedQuery:Ljava/lang/String;

.field private blacklist mNestedSearchSpec:Landroid/app/appsearch/SearchSpec;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroid/app/appsearch/JoinSpec$Builder;->EMPTY_SEARCH_SPEC:Landroid/app/appsearch/SearchSpec;

    .line 11
    .line 12
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/JoinSpec;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mNestedQuery:Ljava/lang/String;

    .line 10
    sget-object v0, Landroid/app/appsearch/JoinSpec$Builder;->EMPTY_SEARCH_SPEC:Landroid/app/appsearch/SearchSpec;

    iput-object v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mNestedSearchSpec:Landroid/app/appsearch/SearchSpec;

    const/16 v0, 0xa

    .line 11
    iput v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mMaxJoinedResultCount:I

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mAggregationScoringStrategy:I

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p1}, Landroid/app/appsearch/JoinSpec;->getNestedQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mNestedQuery:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/app/appsearch/JoinSpec;->getNestedSearchSpec()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mNestedSearchSpec:Landroid/app/appsearch/SearchSpec;

    .line 16
    invoke-virtual {p1}, Landroid/app/appsearch/JoinSpec;->getChildPropertyExpression()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mChildPropertyExpression:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/app/appsearch/JoinSpec;->getMaxJoinedResultCount()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mMaxJoinedResultCount:I

    .line 18
    invoke-virtual {p1}, Landroid/app/appsearch/JoinSpec;->getAggregationScoringStrategy()I

    move-result p1

    iput p1, p0, Landroid/app/appsearch/JoinSpec$Builder;->mAggregationScoringStrategy:I

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mNestedQuery:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/app/appsearch/JoinSpec$Builder;->EMPTY_SEARCH_SPEC:Landroid/app/appsearch/SearchSpec;

    iput-object v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mNestedSearchSpec:Landroid/app/appsearch/SearchSpec;

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mMaxJoinedResultCount:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/app/appsearch/JoinSpec$Builder;->mAggregationScoringStrategy:I

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iput-object p1, p0, Landroid/app/appsearch/JoinSpec$Builder;->mChildPropertyExpression:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/appsearch/JoinSpec;
    .registers 7

    .line 1
    new-instance v0, Landroid/app/appsearch/JoinSpec;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/appsearch/JoinSpec$Builder;->mNestedQuery:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/JoinSpec$Builder;->mNestedSearchSpec:Landroid/app/appsearch/SearchSpec;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/app/appsearch/JoinSpec$Builder;->mChildPropertyExpression:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Landroid/app/appsearch/JoinSpec$Builder;->mMaxJoinedResultCount:I

    .line 10
    .line 11
    iget v5, p0, Landroid/app/appsearch/JoinSpec$Builder;->mAggregationScoringStrategy:I

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Landroid/app/appsearch/JoinSpec;-><init>(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Ljava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public whitelist setAggregationScoringStrategy(I)Landroid/app/appsearch/JoinSpec$Builder;
    .registers 5

    .line 1
    const/4 v0, 0x5

    .line 2
    const-string v1, "aggregationScoringStrategy"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroid/app/appsearch/JoinSpec$Builder;->mAggregationScoringStrategy:I

    .line 9
    .line 10
    return-object p0
.end method

.method public whitelist setChildPropertyExpression(Ljava/lang/String;)Landroid/app/appsearch/JoinSpec$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/JoinSpec$Builder;->mChildPropertyExpression:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public whitelist setMaxJoinedResultCount(I)Landroid/app/appsearch/JoinSpec$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/JoinSpec$Builder;->mMaxJoinedResultCount:I

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist setNestedSearch(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/JoinSpec$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/JoinSpec$Builder;->mNestedQuery:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Landroid/app/appsearch/JoinSpec$Builder;->mNestedSearchSpec:Landroid/app/appsearch/SearchSpec;

    .line 10
    .line 11
    return-object p0
.end method
