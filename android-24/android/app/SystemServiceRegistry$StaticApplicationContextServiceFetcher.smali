.class abstract Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;
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
    name = "StaticApplicationContextServiceFetcher"
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
    .line 877
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract createService(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 2
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
    .line 882
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher<TT;>;"
    monitor-enter p0

    #@1
    .line 883
    :try_start_0
    iget-object v1, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 884
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getApplicationContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    .line 889
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    #@b
    .end local v0    # "appContext":Landroid/content/Context;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->createService(Landroid/content/Context;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    #@11
    .line 891
    :cond_0
    iget-object v1, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    return-object v1

    #@15
    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_1
    move-object v0, p1

    #@16
    .line 889
    goto :goto_0

    #@17
    .line 882
    .end local v0    # "appContext":Landroid/content/Context;
    :catchall_0
    move-exception v1

    #@18
    monitor-exit p0

    #@19
    throw v1
.end method
