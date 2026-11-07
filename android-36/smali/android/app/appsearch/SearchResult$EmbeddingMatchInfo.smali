.class public final Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbeddingMatchInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEmbeddingSearchMetricType:I

.field private final blacklist mQueryEmbeddingVectorIndex:I

.field private final blacklist mSemanticScore:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/EmbeddingMatchInfoCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/EmbeddingMatchInfoCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(DII)V
    .registers 8

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    const-string v1, "Embedding search metric type"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p4, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iput-wide p1, p0, Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;->mSemanticScore:D

    .line 12
    .line 13
    iput p3, p0, Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;->mQueryEmbeddingVectorIndex:I

    .line 14
    .line 15
    iput p4, p0, Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;->mEmbeddingSearchMetricType:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public blacklist getEmbeddingSearchMetricType()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;->mEmbeddingSearchMetricType:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getQueryEmbeddingVectorIndex()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;->mQueryEmbeddingVectorIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getSemanticScore()D
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;->mSemanticScore:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/EmbeddingMatchInfoCreator;->writeToParcel(Landroid/app/appsearch/SearchResult$EmbeddingMatchInfo;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
