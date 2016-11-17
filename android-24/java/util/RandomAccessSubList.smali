.class Ljava/util/RandomAccessSubList;
.super Ljava/util/SubList;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/SubList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/AbstractList;II)V
    .locals 0
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 775
    .local p0, "this":Ljava/util/RandomAccessSubList;, "Ljava/util/RandomAccessSubList<TE;>;"
    .local p1, "list":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/SubList;-><init>(Ljava/util/AbstractList;II)V

    #@3
    .line 774
    return-void
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 779
    .local p0, "this":Ljava/util/RandomAccessSubList;, "Ljava/util/RandomAccessSubList<TE;>;"
    new-instance v0, Ljava/util/RandomAccessSubList;

    #@2
    invoke-direct {v0, p0, p1, p2}, Ljava/util/RandomAccessSubList;-><init>(Ljava/util/AbstractList;II)V

    #@5
    return-object v0
.end method
