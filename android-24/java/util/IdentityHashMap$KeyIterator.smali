.class Ljava/util/IdentityHashMap$KeyIterator;
.super Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap",
        "<TK;TV;>.IdentityHashMapIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 1

    #@0
    .prologue
    .line 828
    .local p0, "this":Ljava/util/IdentityHashMap$KeyIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeyIterator;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$KeyIterator;->this$0:Ljava/util/IdentityHashMap;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$IdentityHashMapIterator;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$KeyIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$KeyIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$KeyIterator;-><init>(Ljava/util/IdentityHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 831
    .local p0, "this":Ljava/util/IdentityHashMap$KeyIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeyIterator;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeyIterator;->traversalTable:[Ljava/lang/Object;

    #@2
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeyIterator;->nextIndex()I

    #@5
    move-result v1

    #@6
    aget-object v0, v0, v1

    #@8
    invoke-static {v0}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
