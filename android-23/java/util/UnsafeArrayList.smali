.class public Ljava/util/UnsafeArrayList;
.super Ljava/util/AbstractList;
.source "UnsafeArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 31
    .local p0, "this":Ljava/util/UnsafeArrayList;, "Ljava/util/UnsafeArrayList<TT;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 32
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [Ljava/lang/Object;

    #@9
    iput-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    #@b
    .line 33
    iput-object p1, p0, Ljava/util/UnsafeArrayList;->elementType:Ljava/lang/Class;

    #@d
    .line 31
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/UnsafeArrayList;, "Ljava/util/UnsafeArrayList<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    #@1
    .line 37
    iget v1, p0, Ljava/util/UnsafeArrayList;->size:I

    #@3
    iget-object v2, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    #@5
    array-length v2, v2

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 38
    iget-object v1, p0, Ljava/util/UnsafeArrayList;->elementType:Ljava/lang/Class;

    #@a
    iget v2, p0, Ljava/util/UnsafeArrayList;->size:I

    #@c
    mul-int/lit8 v2, v2, 0x2

    #@e
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/lang/Object;

    #@14
    .line 39
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    #@16
    iget v2, p0, Ljava/util/UnsafeArrayList;->size:I

    #@18
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    .line 40
    iput-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    #@1d
    .line 42
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v1, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    #@1f
    iget v2, p0, Ljava/util/UnsafeArrayList;->size:I

    #@21
    add-int/lit8 v3, v2, 0x1

    #@23
    iput v3, p0, Ljava/util/UnsafeArrayList;->size:I

    #@25
    aput-object p1, v1, v2

    #@27
    .line 43
    iget v1, p0, Ljava/util/UnsafeArrayList;->modCount:I

    #@29
    add-int/lit8 v1, v1, 0x1

    #@2b
    iput v1, p0, Ljava/util/UnsafeArrayList;->modCount:I

    #@2d
    .line 44
    const/4 v1, 0x1

    #@2e
    return v1
.end method

.method public array()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 48
    .local p0, "this":Ljava/util/UnsafeArrayList;, "Ljava/util/UnsafeArrayList<TT;>;"
    iget-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p0, "this":Ljava/util/UnsafeArrayList;, "Ljava/util/UnsafeArrayList<TT;>;"
    iget-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 56
    .local p0, "this":Ljava/util/UnsafeArrayList;, "Ljava/util/UnsafeArrayList<TT;>;"
    iget v0, p0, Ljava/util/UnsafeArrayList;->size:I

    #@2
    return v0
.end method
