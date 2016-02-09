.class abstract Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
    name = "StaticServiceFetcher"
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
.field private mCachedInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 782
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract createService()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "unused"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 787
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<TT;>;"
    monitor-enter p0

    #@1
    .line 788
    :try_start_0
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 789
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->createService()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    #@b
    .line 791
    :cond_0
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v0

    #@f
    .line 787
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method
