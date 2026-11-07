.class public Landroid/graphics/pdf/models/jni/ListOfList;
.super Ljava/util/AbstractList;
.source "ListOfList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist mIndexToFirstValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Landroid/graphics/pdf/models/jni/ListOfList;, "Landroid/graphics/pdf/models/jni/ListOfList<TT;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "indexToFirstValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 41
    const-string v0, "values cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/graphics/pdf/models/jni/ListOfList;->mValues:Ljava/util/List;

    .line 42
    const-string v0, "indexToFirstValue cannot be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/graphics/pdf/models/jni/ListOfList;->mIndexToFirstValue:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    .local p0, "this":Landroid/graphics/pdf/models/jni/ListOfList;, "Landroid/graphics/pdf/models/jni/ListOfList<TT;>;"
    invoke-virtual {p0, p1}, Landroid/graphics/pdf/models/jni/ListOfList;->get(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)Ljava/util/List;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 49
    .local p0, "this":Landroid/graphics/pdf/models/jni/ListOfList;, "Landroid/graphics/pdf/models/jni/ListOfList<TT;>;"
    if-ltz p1, :cond_25

    iget-object v0, p0, Landroid/graphics/pdf/models/jni/ListOfList;->mIndexToFirstValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 52
    invoke-virtual {p0, p1}, Landroid/graphics/pdf/models/jni/ListOfList;->indexToFirstValue(I)I

    move-result v0

    .line 53
    .local v0, "start":I
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/pdf/models/jni/ListOfList;->indexToFirstValue(I)I

    move-result v1

    .line 54
    .local v1, "stop":I
    if-ge v0, v1, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    const-string v3, "Empty inner lists are not allowed."

    invoke-static {v2, v3}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 55
    iget-object v2, p0, Landroid/graphics/pdf/models/jni/ListOfList;->mValues:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 50
    .end local v0    # "start":I
    .end local v1    # "stop":I
    :cond_25
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public blacklist indexToFirstValue(I)I
    .registers 3
    .param p1, "match"    # I

    .line 68
    .local p0, "this":Landroid/graphics/pdf/models/jni/ListOfList;, "Landroid/graphics/pdf/models/jni/ListOfList<TT;>;"
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/ListOfList;->mIndexToFirstValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Landroid/graphics/pdf/models/jni/ListOfList;->mIndexToFirstValue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1b

    :cond_15
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/ListOfList;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1b
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 60
    .local p0, "this":Landroid/graphics/pdf/models/jni/ListOfList;, "Landroid/graphics/pdf/models/jni/ListOfList<TT;>;"
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/ListOfList;->mIndexToFirstValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
