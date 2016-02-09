.class abstract Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CachedServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCacheIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 756
    .local p0, "this":Landroid/app/SystemServiceRegistry$CachedServiceFetcher;, "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 757
    invoke-static {}, Landroid/app/SystemServiceRegistry;->-get0()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v1, v0, 0x1

    #@9
    invoke-static {v1}, Landroid/app/SystemServiceRegistry;->-set0(I)I

    #@c
    iput v0, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    #@e
    .line 756
    return-void
.end method


# virtual methods
.method public abstract createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 763
    .local p0, "this":Landroid/app/SystemServiceRegistry$CachedServiceFetcher;, "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<TT;>;"
    iget-object v0, p1, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    #@2
    .line 764
    .local v0, "cache":[Ljava/lang/Object;
    monitor-enter v0

    #@3
    .line 766
    :try_start_0
    iget v2, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    #@5
    aget-object v1, v0, v2

    #@7
    .line 767
    .local v1, "service":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@9
    .line 768
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->createService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    .line 769
    iget v2, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    #@f
    aput-object v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit v0

    #@12
    .line 771
    return-object v1

    #@13
    .line 764
    .end local v1    # "service":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    #@14
    monitor-exit v0

    #@15
    throw v2
.end method
