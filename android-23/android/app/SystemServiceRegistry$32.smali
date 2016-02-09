.class final Landroid/app/SystemServiceRegistry$32;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/os/storage/StorageManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 403
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/storage/StorageManager;
    .locals 2
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 406
    new-instance v0, Landroid/os/storage/StorageManager;

    #@2
    iget-object v1, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@4
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, p1, v1}, Landroid/os/storage/StorageManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    #@f
    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$32;->createService(Landroid/app/ContextImpl;)Landroid/os/storage/StorageManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
