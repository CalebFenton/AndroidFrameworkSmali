.class Ljava/util/TreeMap$SubMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a7e7cbc5dec3d81L


# instance fields
.field private fromKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private fromStart:Z

.field final synthetic this$0:Ljava/util/TreeMap;

.field private toEnd:Z

.field private toKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/TreeMap;)V
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 2069
    iput-object p1, p0, Ljava/util/TreeMap$SubMap;->this$0:Ljava/util/TreeMap;

    #@3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@6
    .line 2072
    iput-boolean v0, p0, Ljava/util/TreeMap$SubMap;->fromStart:Z

    #@8
    iput-boolean v0, p0, Ljava/util/TreeMap$SubMap;->toEnd:Z

    #@a
    .line 2069
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 8

    #@0
    .prologue
    .line 2075
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->this$0:Ljava/util/TreeMap;

    #@4
    .line 2076
    iget-boolean v2, p0, Ljava/util/TreeMap$SubMap;->fromStart:Z

    #@6
    iget-object v3, p0, Ljava/util/TreeMap$SubMap;->fromKey:Ljava/lang/Object;

    #@8
    .line 2077
    iget-boolean v5, p0, Ljava/util/TreeMap$SubMap;->toEnd:Z

    #@a
    iget-object v6, p0, Ljava/util/TreeMap$SubMap;->toKey:Ljava/lang/Object;

    #@c
    .line 2076
    const/4 v4, 0x1

    #@d
    .line 2077
    const/4 v7, 0x0

    #@e
    .line 2075
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    #@11
    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2085
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    new-instance v0, Ljava/lang/InternalError;

    #@2
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@5
    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2079
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    new-instance v0, Ljava/lang/InternalError;

    #@2
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@5
    throw v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2081
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    new-instance v0, Ljava/lang/InternalError;

    #@2
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@5
    throw v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2083
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/InternalError;

    #@2
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@5
    throw v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2080
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    new-instance v0, Ljava/lang/InternalError;

    #@2
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@5
    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2082
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/InternalError;

    #@2
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@5
    throw v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2084
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/InternalError;

    #@2
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@5
    throw v0
.end method
