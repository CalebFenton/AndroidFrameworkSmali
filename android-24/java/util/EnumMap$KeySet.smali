.class Ljava/util/EnumMap$KeySet;
.super Ljava/util/AbstractSet;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 0

    #@0
    .prologue
    .line 389
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    .local p1, "this$0":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$KeySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/EnumMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$KeySet;-><init>(Ljava/util/EnumMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 405
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    #@5
    .line 404
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 397
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 391
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/EnumMap$KeyIterator;

    #@2
    iget-object v1, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$KeyIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$KeyIterator;)V

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 400
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-static {v1}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    #@5
    move-result v0

    #@6
    .line 401
    .local v0, "oldSize":I
    iget-object v1, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 402
    iget-object v1, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    #@d
    invoke-static {v1}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    #@10
    move-result v1

    #@11
    if-eq v1, v0, :cond_0

    #@13
    const/4 v1, 0x1

    #@14
    :goto_0
    return v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 394
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-static {v0}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
