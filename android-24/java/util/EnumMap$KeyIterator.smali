.class Ljava/util/EnumMap$KeyIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<TK;TV;>.EnumMapIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 1

    #@0
    .prologue
    .line 546
    .local p0, "this":Ljava/util/EnumMap$KeyIterator;, "Ljava/util/EnumMap<TK;TV;>.KeyIterator;"
    .local p1, "this$0":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/EnumMap$KeyIterator;->this$0:Ljava/util/EnumMap;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EnumMapIterator;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$KeyIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/EnumMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$KeyIterator;, "Ljava/util/EnumMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$KeyIterator;-><init>(Ljava/util/EnumMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 548
    .local p0, "this":Ljava/util/EnumMap$KeyIterator;, "Ljava/util/EnumMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Ljava/util/EnumMap$KeyIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 549
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v0

    #@c
    .line 550
    :cond_0
    iget v0, p0, Ljava/util/EnumMap$KeyIterator;->index:I

    #@e
    add-int/lit8 v1, v0, 0x1

    #@10
    iput v1, p0, Ljava/util/EnumMap$KeyIterator;->index:I

    #@12
    iput v0, p0, Ljava/util/EnumMap$KeyIterator;->lastReturnedIndex:I

    #@14
    .line 551
    iget-object v0, p0, Ljava/util/EnumMap$KeyIterator;->this$0:Ljava/util/EnumMap;

    #@16
    invoke-static {v0}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    #@19
    move-result-object v0

    #@1a
    iget v1, p0, Ljava/util/EnumMap$KeyIterator;->lastReturnedIndex:I

    #@1c
    aget-object v0, v0, v1

    #@1e
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 547
    .local p0, "this":Ljava/util/EnumMap$KeyIterator;, "Ljava/util/EnumMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Ljava/util/EnumMap$KeyIterator;->next()Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
