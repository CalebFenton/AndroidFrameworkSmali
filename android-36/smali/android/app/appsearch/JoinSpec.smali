.class public final Landroid/app/appsearch/JoinSpec;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/JoinSpec$Builder;,
        Landroid/app/appsearch/JoinSpec$AggregationScoringStrategy;
    }
.end annotation


# static fields
.field public static final whitelist AGGREGATION_SCORING_AVG_RANKING_SIGNAL:I = 0x3

.field public static final whitelist AGGREGATION_SCORING_MAX_RANKING_SIGNAL:I = 0x4

.field public static final whitelist AGGREGATION_SCORING_MIN_RANKING_SIGNAL:I = 0x2

.field public static final whitelist AGGREGATION_SCORING_OUTER_RESULT_RANKING_SIGNAL:I = 0x0

.field public static final whitelist AGGREGATION_SCORING_RESULT_COUNT:I = 0x1

.field public static final whitelist AGGREGATION_SCORING_SUM_RANKING_SIGNAL:I = 0x5

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/JoinSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_MAX_JOINED_RESULT_COUNT:I = 0xa

.field public static final blacklist QUALIFIED_ID:Ljava/lang/String; = "this.qualifiedId()"


# instance fields
.field private final blacklist mAggregationScoringStrategy:I

.field private final blacklist mChildPropertyExpression:Ljava/lang/String;

.field private final blacklist mMaxJoinedResultCount:I

.field private final blacklist mNestedQuery:Ljava/lang/String;

.field private final blacklist mNestedSearchSpec:Landroid/app/appsearch/SearchSpec;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/JoinSpecCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/JoinSpecCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/JoinSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Ljava/lang/String;II)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/JoinSpec;->mNestedQuery:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/JoinSpec;->mNestedSearchSpec:Landroid/app/appsearch/SearchSpec;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Landroid/app/appsearch/JoinSpec;->mChildPropertyExpression:Ljava/lang/String;

    .line 18
    .line 19
    iput p4, p0, Landroid/app/appsearch/JoinSpec;->mMaxJoinedResultCount:I

    .line 20
    .line 21
    iput p5, p0, Landroid/app/appsearch/JoinSpec;->mAggregationScoringStrategy:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public whitelist getAggregationScoringStrategy()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/JoinSpec;->mAggregationScoringStrategy:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getChildPropertyExpression()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/JoinSpec;->mChildPropertyExpression:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getMaxJoinedResultCount()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/JoinSpec;->mMaxJoinedResultCount:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getNestedQuery()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/JoinSpec;->mNestedQuery:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getNestedSearchSpec()Landroid/app/appsearch/SearchSpec;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/JoinSpec;->mNestedSearchSpec:Landroid/app/appsearch/SearchSpec;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/JoinSpecCreator;->writeToParcel(Landroid/app/appsearch/JoinSpec;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
