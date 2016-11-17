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
        "Ljava/util/Comparator",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x690c62b248f521b8L


# instance fields
.field private final nullFirst:Z

.field private final real:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/Comparator;)V
    .locals 0
    .param p1, "nullFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p2, "real":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    iput-boolean p1, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    #@5
    .line 73
    iput-object p2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    #@7
    .line 71
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v1, -0x1

    #@3
    .line 78
    if-nez p1, :cond_2

    #@5
    .line 79
    if-nez p2, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    iget-boolean v0, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    move v0, v1

    #@d
    goto :goto_0

    #@e
    :cond_1
    move v0, v2

    #@f
    goto :goto_0

    #@10
    .line 80
    :cond_2
    if-nez p2, :cond_4

    #@12
    .line 81
    iget-boolean v0, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    #@14
    if-eqz v0, :cond_3

    #@16
    :goto_1
    return v2

    #@17
    :cond_3
    move v2, v1

    #@18
    goto :goto_1

    #@19
    .line 83
    :cond_4
    iget-object v1, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    #@1b
    if-nez v1, :cond_5

    #@1d
    :goto_2
    return v0

    #@1e
    :cond_5
    iget-object v0, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    #@20
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@23
    move-result v0

    #@24
    goto :goto_2
.end method

.method public reversed()Ljava/util/Comparator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 95
    new-instance v2, Ljava/util/Comparators$NullComparator;

    #@3
    iget-boolean v0, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x0

    #@8
    :goto_0
    iget-object v3, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    #@a
    if-nez v3, :cond_1

    #@c
    :goto_1
    invoke-direct {v2, v0, v1}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    #@f
    return-object v2

    #@10
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0

    #@12
    :cond_1
    iget-object v1, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    #@14
    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    #@17
    move-result-object v1

    #@18
    goto :goto_1
.end method

.method public thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    .local p0, "this":Ljava/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p1, "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 90
    new-instance v0, Ljava/util/Comparators$NullComparator;

    #@5
    iget-boolean v1, p0, Ljava/util/Comparators$NullComparator;->nullFirst:Z

    #@7
    iget-object v2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    #@9
    if-nez v2, :cond_0

    #@b
    .end local p1    # "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_0
    invoke-direct {v0, v1, p1}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    #@e
    return-object v0

    #@f
    .restart local p1    # "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :cond_0
    iget-object v2, p0, Ljava/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    #@11
    invoke-interface {v2, p1}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@14
    move-result-object p1

    #@15
    goto :goto_0
.end method
