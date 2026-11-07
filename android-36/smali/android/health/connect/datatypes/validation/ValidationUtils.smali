.class public final Landroid/health/connect/datatypes/validation/ValidationUtils;
.super Ljava/lang/Object;
.source "ValidationUtils.java"


# static fields
.field public static final blacklist INTDEF_VALIDATION_ERROR_PREFIX:Ljava/lang/String; = "Unknown Intdef value"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist requireInRange(DDDLjava/lang/String;)V
    .registers 11
    .param p0, "value"    # D
    .param p2, "lowerBound"    # D
    .param p4, "upperBound"    # D
    .param p6, "name"    # Ljava/lang/String;

    .line 70
    cmpg-double v0, p0, p2

    const-string v1, ", currently "

    if-ltz v0, :cond_30

    .line 75
    cmpl-double v0, p0, p4

    if-gtz v0, :cond_b

    .line 79
    return-void

    .line 76
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not be more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not be less than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist requireInRange(IIILjava/lang/String;)V
    .registers 8
    .param p0, "value"    # I
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 36
    const-string v0, ", currently "

    if-lt p0, p1, :cond_2c

    .line 41
    if-gt p0, p2, :cond_7

    .line 45
    return-void

    .line 42
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not be more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not be less than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist requireInRange(JJJLjava/lang/String;)V
    .registers 11
    .param p0, "value"    # J
    .param p2, "lowerBound"    # J
    .param p4, "upperBound"    # J
    .param p6, "name"    # Ljava/lang/String;

    .line 49
    cmp-long v0, p0, p2

    const-string v1, ", currently "

    if-ltz v0, :cond_30

    .line 54
    cmp-long v0, p0, p4

    if-gtz v0, :cond_b

    .line 58
    return-void

    .line 55
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not be more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not be less than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist requireInRangeIfExists(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/String;)V
    .registers 8
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/Comparable<",
            "TT;>;TT;TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 113
    .local p0, "value":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    .local p1, "threshold":Ljava/lang/Comparable;, "TT;"
    .local p2, "limit":Ljava/lang/Comparable;, "TT;"
    const-string v0, ", currently "

    if-eqz p0, :cond_30

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_b

    goto :goto_30

    .line 114
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not be less than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_30
    :goto_30
    if-eqz p0, :cond_5e

    invoke-interface {p0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_39

    goto :goto_5e

    .line 119
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not be more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_5e
    :goto_5e
    return-void
.end method

.method public static blacklist requireNonNegative(DLjava/lang/String;)V
    .registers 6
    .param p0, "value"    # D
    .param p2, "name"    # Ljava/lang/String;

    .line 62
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_7

    .line 65
    return-void

    .line 63
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "must be non-negative, currently "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist sortAndValidateTimeIntervalHolders(Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .param p0, "parentStartTime"    # Ljava/time/Instant;
    .param p1, "parentEndTime"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            "Ljava/util/List<",
            "+",
            "Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;",
            ">;"
        }
    .end annotation

    .line 133
    .local p2, "intervalHolders":Ljava/util/List;, "Ljava/util/List<+Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    return-object p2

    .line 137
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;

    invoke-interface {v0}, Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "intervalsName":Ljava/lang/String;
    new-instance v1, Landroid/health/connect/datatypes/validation/ValidationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/health/connect/datatypes/validation/ValidationUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_99

    .line 141
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;

    invoke-interface {v2}, Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;->getInterval()Landroid/health/connect/datatypes/TimeInterval;

    move-result-object v2

    .line 142
    .local v2, "currentInterval":Landroid/health/connect/datatypes/TimeInterval;
    invoke-virtual {v2}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 143
    invoke-virtual {v2}, Landroid/health/connect/datatypes/TimeInterval;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 149
    if-eqz v1, :cond_7d

    .line 150
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;

    invoke-interface {v3}, Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;->getInterval()Landroid/health/connect/datatypes/TimeInterval;

    move-result-object v3

    .line 151
    .local v3, "previousInterval":Landroid/health/connect/datatypes/TimeInterval;
    invoke-virtual {v3}, Landroid/health/connect/datatypes/TimeInterval;->getEndTime()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v2}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v4

    if-nez v4, :cond_64

    goto :goto_7d

    .line 152
    :cond_64
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": time intervals must not overlap."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    .end local v3    # "previousInterval":Landroid/health/connect/datatypes/TimeInterval;
    :cond_7d
    :goto_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 144
    :cond_80
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": time intervals must be within parent session time interval."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    .end local v1    # "i":I
    .end local v2    # "currentInterval":Landroid/health/connect/datatypes/TimeInterval;
    :cond_99
    return-object p2
.end method

.method public static blacklist validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V
    .registers 6
    .param p0, "value"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 83
    .local p1, "allowedValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    return-void

    .line 84
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Intdef value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for Intdef: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist validateSampleStartAndEndTime(Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)V
    .registers 8
    .param p0, "sessionStartTime"    # Ljava/time/Instant;
    .param p1, "sessionEndTime"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            "Ljava/util/List<",
            "Ljava/time/Instant;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p2, "timeInstants":Ljava/util/List;, "Ljava/util/List<Ljava/time/Instant;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_47

    .line 93
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/Instant;

    .line 94
    .local v1, "minTime":Ljava/time/Instant;
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    .line 95
    .local v0, "maxTime":Ljava/time/Instant;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/Instant;

    .line 96
    .local v3, "instant":Ljava/time/Instant;
    invoke-virtual {v3, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 97
    move-object v1, v3

    .line 99
    :cond_2a
    invoke-virtual {v3, v0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 100
    move-object v0, v3

    .line 102
    .end local v3    # "instant":Ljava/time/Instant;
    :cond_31
    goto :goto_17

    .line 103
    :cond_32
    invoke-virtual {v1, p0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v0, p1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_47

    .line 104
    :cond_3f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Time instant values must be within session interval"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v0    # "maxTime":Ljava/time/Instant;
    .end local v1    # "minTime":Ljava/time/Instant;
    :cond_47
    :goto_47
    return-void
.end method
