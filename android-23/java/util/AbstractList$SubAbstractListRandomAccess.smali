.class final Ljava/util/AbstractList$SubAbstractListRandomAccess;
.super Ljava/util/AbstractList$SubAbstractList;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubAbstractListRandomAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList$SubAbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/AbstractList;II)V
    .locals 0
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 156
    .local p0, "this":Ljava/util/AbstractList$SubAbstractListRandomAccess;, "Ljava/util/AbstractList<TE;>.SubAbstractListRandomAccess<TE;>;"
    .local p1, "list":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/AbstractList$SubAbstractList;-><init>(Ljava/util/AbstractList;II)V

    #@3
    .line 155
    return-void
.end method
