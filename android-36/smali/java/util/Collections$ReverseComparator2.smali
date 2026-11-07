.class Ljava/util/Collections$ReverseComparator2;
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
    accessFlags = 0xa
    name = "ReverseComparator2"
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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final whitelist serialVersionUID:J = 0x3fa6c354d51L


# instance fields
.field final greylist-max-o cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5703
    const-class v0, Ljava/util/Collections;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 5719
    .local p0, "this":Ljava/util/Collections$ReverseComparator2;, "Ljava/util/Collections$ReverseComparator2<TT;>;"
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5720
    nop

    .line 5721
    iput-object p1, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    .line 5722
    return-void
.end method


# virtual methods
.method public whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 5725
    .local p0, "this":Ljava/util/Collections$ReverseComparator2;, "Ljava/util/Collections$ReverseComparator2<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 5729
    .local p0, "this":Ljava/util/Collections$ReverseComparator2;, "Ljava/util/Collections$ReverseComparator2<TT;>;"
    if-eq p1, p0, :cond_16

    instance-of v0, p1, Ljava/util/Collections$ReverseComparator2;

    if-eqz v0, :cond_14

    .line 5730
    move-object v0, p1

    check-cast v0, Ljava/util/Collections$ReverseComparator2;

    .local v0, "that":Ljava/util/Collections$ReverseComparator2;, "Ljava/util/Collections$ReverseComparator2<*>;"
    iget-object v1, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    iget-object v2, v0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    .line 5731
    invoke-interface {v1, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_16

    .end local v0    # "that":Ljava/util/Collections$ReverseComparator2;, "Ljava/util/Collections$ReverseComparator2<*>;"
    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 5729
    :goto_17
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 5735
    .local p0, "this":Ljava/util/Collections$ReverseComparator2;, "Ljava/util/Collections$ReverseComparator2<TT;>;"
    iget-object v0, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/high16 v1, -0x80000000

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api reversed()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 5740
    .local p0, "this":Ljava/util/Collections$ReverseComparator2;, "Ljava/util/Collections$ReverseComparator2<TT;>;"
    iget-object v0, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    return-object v0
.end method
