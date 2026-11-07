.class Ljava/util/AbstractList$RandomAccessSubList;
.super Ljava/util/AbstractList$SubList;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessSubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList$SubList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/AbstractList$RandomAccessSubList;II)V
    .registers 4
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList$RandomAccessSubList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 936
    .local p0, "this":Ljava/util/AbstractList$RandomAccessSubList;, "Ljava/util/AbstractList$RandomAccessSubList<TE;>;"
    .local p1, "parent":Ljava/util/AbstractList$RandomAccessSubList;, "Ljava/util/AbstractList$RandomAccessSubList<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/AbstractList$SubList;-><init>(Ljava/util/AbstractList$SubList;II)V

    .line 937
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/AbstractList;II)V
    .registers 4
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 928
    .local p0, "this":Ljava/util/AbstractList$RandomAccessSubList;, "Ljava/util/AbstractList$RandomAccessSubList<TE;>;"
    .local p1, "root":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/AbstractList$SubList;-><init>(Ljava/util/AbstractList;II)V

    .line 929
    return-void
.end method


# virtual methods
.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 940
    .local p0, "this":Ljava/util/AbstractList$RandomAccessSubList;, "Ljava/util/AbstractList$RandomAccessSubList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$RandomAccessSubList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/AbstractList$RandomAccessSubList;->subListRangeCheck(III)V

    .line 941
    new-instance v0, Ljava/util/AbstractList$RandomAccessSubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/AbstractList$RandomAccessSubList;-><init>(Ljava/util/AbstractList$RandomAccessSubList;II)V

    return-object v0
.end method
