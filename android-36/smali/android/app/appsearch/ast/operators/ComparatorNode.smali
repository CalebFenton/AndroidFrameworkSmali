.class public final Landroid/app/appsearch/ast/operators/ComparatorNode;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/ast/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/ast/operators/ComparatorNode$Comparator;
    }
.end annotation


# static fields
.field public static final blacklist EQUALS:I = 0x0

.field public static final blacklist GREATER_EQUALS:I = 0x4

.field public static final blacklist GREATER_THAN:I = 0x3

.field public static final blacklist LESS_EQUALS:I = 0x2

.field public static final blacklist LESS_THAN:I = 0x1

.field private static final blacklist MAX_COMPARATOR_VALUE:I = 0x4


# instance fields
.field private blacklist mComparator:I

.field private blacklist mPropertyPath:Landroid/app/appsearch/PropertyPath;

.field private blacklist mValue:J


# direct methods
.method public constructor blacklist <init>(ILandroid/app/appsearch/PropertyPath;J)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    const-string v1, "Comparator intDef"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iput p1, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mComparator:I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 17
    .line 18
    iput-wide p3, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mValue:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Landroid/app/appsearch/ast/operators/ComparatorNode;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/ast/operators/ComparatorNode;

    .line 12
    .line 13
    iget v1, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mComparator:I

    .line 14
    .line 15
    iget v3, p1, Landroid/app/appsearch/ast/operators/ComparatorNode;->mComparator:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_25

    .line 18
    .line 19
    iget-wide v3, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mValue:J

    .line 20
    .line 21
    iget-wide v5, p1, Landroid/app/appsearch/ast/operators/ComparatorNode;->mValue:J

    .line 22
    .line 23
    cmp-long v1, v3, v5

    .line 24
    .line 25
    if-nez v1, :cond_25

    .line 26
    .line 27
    iget-object p0, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 28
    .line 29
    iget-object p1, p1, Landroid/app/appsearch/ast/operators/ComparatorNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 30
    .line 31
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_25

    .line 36
    .line 37
    return v0

    .line 38
    :cond_25
    return v2
.end method

.method public blacklist getComparator()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mComparator:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getPropertyPath()Landroid/app/appsearch/PropertyPath;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getValue()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mValue:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1
    iget v0, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mComparator:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 8
    .line 9
    iget-wide v2, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mValue:J

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public blacklist setComparator(I)V
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "Comparator intDef"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mComparator:I

    .line 9
    .line 10
    return-void
.end method

.method public blacklist setPropertyPath(Landroid/app/appsearch/PropertyPath;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 5
    .line 6
    return-void
.end method

.method public blacklist setValue(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mValue:J

    .line 2
    .line 3
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mComparator:I

    .line 2
    .line 3
    if-eqz v0, :cond_1f

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1c

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_19

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_16

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_13

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    goto :goto_21

    .line 20
    :cond_13
    const-string v0, ">="

    .line 21
    .line 22
    goto :goto_21

    .line 23
    :cond_16
    const-string v0, ">"

    .line 24
    .line 25
    goto :goto_21

    .line 26
    :cond_19
    const-string v0, "<="

    .line 27
    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    const-string v0, "<"

    .line 30
    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const-string v0, "=="

    .line 33
    .line 34
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "("

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, " "

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-wide v2, p0, Landroid/app/appsearch/ast/operators/ComparatorNode;->mValue:J

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p0, ")"

    .line 63
    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method
