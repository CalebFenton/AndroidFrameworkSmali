.class public final Landroid/app/appsearch/ast/query/SemanticSearchNode;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/ast/FunctionNode;


# instance fields
.field private blacklist mDistanceMetric:I

.field private blacklist mLowerBound:F

.field private blacklist mUpperBound:F

.field private blacklist mVectorIndex:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 11
    invoke-direct {p0, p1, v0}, Landroid/app/appsearch/ast/query/SemanticSearchNode;-><init>(IF)V

    return-void
.end method

.method public constructor blacklist <init>(IF)V
    .registers 4

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 10
    invoke-direct {p0, p1, p2, v0}, Landroid/app/appsearch/ast/query/SemanticSearchNode;-><init>(IFF)V

    return-void
.end method

.method public constructor blacklist <init>(IFF)V
    .registers 5

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/appsearch/ast/query/SemanticSearchNode;-><init>(IFFI)V

    return-void
.end method

.method public constructor blacklist <init>(IFFI)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    .line 2
    :goto_a
    const-string v3, "Vector index must be non-negative."

    invoke-static {v2, v3}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    cmpg-float v2, p2, p3

    if-gtz v2, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    .line 3
    :goto_15
    const-string v2, "Provided lower bound must be less than or equal to the provided upper bound."

    invoke-static {v0, v2}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x3

    .line 4
    const-string v2, "Embedding search metric type"

    invoke-static {p4, v1, v0, v2}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 5
    iput p1, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mVectorIndex:I

    .line 6
    iput p2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mLowerBound:F

    .line 7
    iput p3, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mUpperBound:F

    .line 8
    iput p4, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mDistanceMetric:I

    return-void
.end method

.method private blacklist formatBound(Ljava/lang/StringBuilder;F)V
    .registers 3

    .line 1
    const-string p0, ", "

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_f

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 17
    .line 18
    cmpl-float p0, p2, p0

    .line 19
    .line 20
    if-nez p0, :cond_1c

    .line 21
    .line 22
    const p0, -0x800001

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private blacklist getEmbeddingMetricString()Ljava/lang/String;
    .registers 2

    .line 1
    iget p0, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mDistanceMetric:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_19

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_16

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p0, v0, :cond_e

    .line 11
    .line 12
    const-string p0, "\"EUCLIDEAN\""

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "Invalid Metric Type"

    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_16
    const-string p0, "\"DOT_PRODUCT\""

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_19
    const-string p0, "\"COSINE\""

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_33

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Landroid/app/appsearch/ast/query/SemanticSearchNode;

    .line 13
    .line 14
    if-eq v3, v2, :cond_10

    .line 15
    .line 16
    goto :goto_33

    .line 17
    :cond_10
    check-cast p1, Landroid/app/appsearch/ast/query/SemanticSearchNode;

    .line 18
    .line 19
    iget v2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mVectorIndex:I

    .line 20
    .line 21
    iget v3, p1, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mVectorIndex:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_33

    .line 24
    .line 25
    iget v2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mLowerBound:F

    .line 26
    .line 27
    iget v3, p1, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mLowerBound:F

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_33

    .line 34
    .line 35
    iget v2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mUpperBound:F

    .line 36
    .line 37
    iget v3, p1, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mUpperBound:F

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_33

    .line 44
    .line 45
    iget p0, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mDistanceMetric:I

    .line 46
    .line 47
    iget p1, p1, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mDistanceMetric:I

    .line 48
    .line 49
    if-ne p0, p1, :cond_33

    .line 50
    .line 51
    return v0

    .line 52
    :cond_33
    :goto_33
    return v1
.end method

.method public blacklist getDistanceMetric()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mDistanceMetric:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getFunctionName()Ljava/lang/String;
    .registers 1

    .line 1
    const-string p0, "semanticSearch"

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getLowerBound()F
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mLowerBound:F

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getUpperBound()F
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mUpperBound:F

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getVectorIndex()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mVectorIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mVectorIndex:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mLowerBound:F

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mUpperBound:F

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget p0, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mDistanceMetric:I

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public blacklist setBounds(FF)V
    .registers 5

    .line 1
    cmpg-float v0, p1, p2

    .line 2
    .line 3
    if-gtz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "Provided lower bound must be less than or equal to the provided upper bound"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mLowerBound:F

    .line 14
    .line 15
    iput p2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mUpperBound:F

    .line 16
    .line 17
    return-void
.end method

.method public blacklist setDistanceMetric(I)V
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "Embedding search metric type"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mDistanceMetric:I

    .line 9
    .line 10
    return-void
.end method

.method public blacklist setVectorIndex(I)V
    .registers 4

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    const-string v1, "Vector Index must be non-negative."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput p1, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mVectorIndex:I

    .line 12
    .line 13
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "semanticSearch"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "(getEmbeddingParameter("

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mVectorIndex:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ")"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mDistanceMetric:I

    .line 24
    .line 25
    if-eqz v2, :cond_31

    .line 26
    .line 27
    iget v2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mLowerBound:F

    .line 28
    .line 29
    invoke-direct {p0, v0, v2}, Landroid/app/appsearch/ast/query/SemanticSearchNode;->formatBound(Ljava/lang/StringBuilder;F)V

    .line 30
    .line 31
    .line 32
    iget v2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mUpperBound:F

    .line 33
    .line 34
    invoke-direct {p0, v0, v2}, Landroid/app/appsearch/ast/query/SemanticSearchNode;->formatBound(Ljava/lang/StringBuilder;F)V

    .line 35
    .line 36
    .line 37
    const-string v2, ", "

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroid/app/appsearch/ast/query/SemanticSearchNode;->getEmbeddingMetricString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    goto :goto_4f

    .line 50
    :cond_31
    iget v2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mUpperBound:F

    .line 51
    .line 52
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 53
    .line 54
    cmpl-float v2, v2, v3

    .line 55
    .line 56
    if-eqz v2, :cond_44

    .line 57
    .line 58
    iget v2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mLowerBound:F

    .line 59
    .line 60
    invoke-direct {p0, v0, v2}, Landroid/app/appsearch/ast/query/SemanticSearchNode;->formatBound(Ljava/lang/StringBuilder;F)V

    .line 61
    .line 62
    .line 63
    iget v2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mUpperBound:F

    .line 64
    .line 65
    invoke-direct {p0, v0, v2}, Landroid/app/appsearch/ast/query/SemanticSearchNode;->formatBound(Ljava/lang/StringBuilder;F)V

    .line 66
    .line 67
    .line 68
    goto :goto_4f

    .line 69
    :cond_44
    iget v2, p0, Landroid/app/appsearch/ast/query/SemanticSearchNode;->mLowerBound:F

    .line 70
    .line 71
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    .line 72
    .line 73
    cmpl-float v3, v2, v3

    .line 74
    .line 75
    if-eqz v3, :cond_4f

    .line 76
    .line 77
    invoke-direct {p0, v0, v2}, Landroid/app/appsearch/ast/query/SemanticSearchNode;->formatBound(Ljava/lang/StringBuilder;F)V

    .line 78
    .line 79
    .line 80
    :cond_4f
    :goto_4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method
