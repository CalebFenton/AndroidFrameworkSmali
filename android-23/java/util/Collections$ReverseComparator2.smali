.class final Ljava/util/Collections$ReverseComparator2;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReverseComparator2"
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
.field private static final serialVersionUID:J = 0x3fa6c354d51L


# instance fields
.field private final cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/Collections$ReverseComparator2;)Ljava/util/Comparator;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    #@2
    return-object v0
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 209
    .local p0, "this":Ljava/util/Collections$ReverseComparator2;, "Ljava/util/Collections$ReverseComparator2<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 210
    iput-object p1, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    #@5
    .line 209
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 214
    .local p0, "this":Ljava/util/Collections$ReverseComparator2;, "Ljava/util/Collections$ReverseComparator2<TT;>;"
    .local p1, "o1":Ljava/lang/Object;, "TT;"
    .local p2, "o2":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    #@2
    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 218
    .local p0, "this":Ljava/util/Collections$ReverseComparator2;, "Ljava/util/Collections$ReverseComparator2<TT;>;"
    instance-of v0, p1, Ljava/util/Collections$ReverseComparator2;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 219
    check-cast p1, Ljava/util/Collections$ReverseComparator2;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    #@8
    iget-object v1, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    #@a
    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 218
    :goto_0
    return v0

    #@f
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 223
    .local p0, "this":Ljava/util/Collections$ReverseComparator2;, "Ljava/util/Collections$ReverseComparator2<TT;>;"
    iget-object v0, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    not-int v0, v0

    #@7
    return v0
.end method
