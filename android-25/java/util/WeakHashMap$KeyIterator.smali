.class Ljava/util/WeakHashMap$KeyIterator;
.super Ljava/util/WeakHashMap$HashIterator;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap",
        "<TK;TV;>.HashIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 0

    #@0
    .prologue
    .line 820
    .local p0, "this":Ljava/util/WeakHashMap$KeyIterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeyIterator;"
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$KeyIterator;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;)V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$KeyIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/WeakHashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$KeyIterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$KeyIterator;-><init>(Ljava/util/WeakHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 822
    .local p0, "this":Ljava/util/WeakHashMap$KeyIterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$KeyIterator;->nextEntry()Ljava/util/WeakHashMap$Entry;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
