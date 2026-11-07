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
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x5a7e7cbc5dec3d81L


# instance fields
.field private greylist-max-o fromKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private greylist-max-o fromStart:Z

.field final synthetic blacklist this$0:Ljava/util/TreeMap;

.field private greylist-max-o toEnd:Z

.field private greylist-max-o toKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/TreeMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2396
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    iput-object p1, p0, Ljava/util/TreeMap$SubMap;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2400
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/TreeMap$SubMap;->fromStart:Z

    iput-boolean p1, p0, Ljava/util/TreeMap$SubMap;->toEnd:Z

    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 9

    .line 2407
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->this$0:Ljava/util/TreeMap;

    iget-boolean v2, p0, Ljava/util/TreeMap$SubMap;->fromStart:Z

    iget-object v3, p0, Ljava/util/TreeMap$SubMap;->fromKey:Ljava/lang/Object;

    iget-boolean v5, p0, Ljava/util/TreeMap$SubMap;->toEnd:Z

    iget-object v6, p0, Ljava/util/TreeMap$SubMap;->toKey:Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 2417
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2411
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public whitelist test-api firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2413
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2415
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2412
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2414
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2416
    .local p0, "this":Ljava/util/TreeMap$SubMap;, "Ljava/util/TreeMap<TK;TV;>.SubMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method
