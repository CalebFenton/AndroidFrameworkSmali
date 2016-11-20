.class Ljava/util/EnumMap$ValueIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<TK;TV;>.EnumMapIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 1

    #@0
    .prologue
    .line 555
    .local p0, "this":Ljava/util/EnumMap$ValueIterator;, "Ljava/util/EnumMap<TK;TV;>.ValueIterator;"
    .local p1, "this$0":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/EnumMap$ValueIterator;->this$0:Ljava/util/EnumMap;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EnumMapIterator;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$ValueIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/EnumMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$ValueIterator;, "Ljava/util/EnumMap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$ValueIterator;-><init>(Ljava/util/EnumMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 557
    .local p0, "this":Ljava/util/EnumMap$ValueIterator;, "Ljava/util/EnumMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Ljava/util/EnumMap$ValueIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 558
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v0

    #@c
    .line 559
    :cond_0
    iget v0, p0, Ljava/util/EnumMap$ValueIterator;->index:I

    #@e
    add-int/lit8 v1, v0, 0x1

    #@10
    iput v1, p0, Ljava/util/EnumMap$ValueIterator;->index:I

    #@12
    iput v0, p0, Ljava/util/EnumMap$ValueIterator;->lastReturnedIndex:I

    #@14
    .line 560
    iget-object v0, p0, Ljava/util/EnumMap$ValueIterator;->this$0:Ljava/util/EnumMap;

    #@16
    iget-object v1, p0, Ljava/util/EnumMap$ValueIterator;->this$0:Ljava/util/EnumMap;

    #@18
    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    iget v2, p0, Ljava/util/EnumMap$ValueIterator;->lastReturnedIndex:I

    #@1e
    aget-object v1, v1, v2

    #@20
    invoke-static {v0, v1}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method
