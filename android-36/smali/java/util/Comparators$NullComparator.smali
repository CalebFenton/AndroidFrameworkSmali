.class final Ljava/util/Comparators$NullComparator;
.super Ljava/lang/Object;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Comparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NullComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x690c62b248f521b8L


# instance fields
.field private final blacklist nullFirst:Z

.field private final blacklist real:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(ZLjava/util/Comparator;)V
    .registers 3
    .param p1, "nullFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p2, "real":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean p1, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    .line 75
    iput-object p2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 80
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_f

    .line 81
    if-nez p2, :cond_9

    move v0, v2

    goto :goto_e

    :cond_9
    iget-boolean v2, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    if-eqz v2, :cond_e

    move v0, v1

    :cond_e
    :goto_e
    return v0

    .line 82
    :cond_f
    if-nez p2, :cond_18

    .line 83
    iget-boolean v2, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0

    .line 85
    :cond_18
    iget-object v0, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v0, :cond_1d

    goto :goto_23

    :cond_1d
    iget-object v0, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    :goto_23
    return v2
.end method

.method public whitelist test-api reversed()Ljava/util/Comparator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 97
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    new-instance v0, Ljava/util/Comparators$NullComparator;

    iget-boolean v1, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_12

    :cond_c
    iget-object v2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    :goto_12
    invoke-direct {v0, v1, v2}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method

.method public whitelist test-api thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p1, "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/Comparators$NullComparator;

    iget-boolean v1, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    iget-object v2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v2, :cond_d

    move-object v2, p1

    goto :goto_13

    :cond_d
    iget-object v2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-interface {v2, p1}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    :goto_13
    invoke-direct {v0, v1, v2}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method
