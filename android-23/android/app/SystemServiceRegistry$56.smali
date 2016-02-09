.class final Landroid/app/SystemServiceRegistry$56;
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
        "Landroid/media/session/MediaSessionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 597
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/media/session/MediaSessionManager;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 600
    new-instance v0, Landroid/media/session/MediaSessionManager;

    #@2
    invoke-direct {v0, p1}, Landroid/media/session/MediaSessionManager;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 599
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$56;->createService(Landroid/app/ContextImpl;)Landroid/media/session/MediaSessionManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
