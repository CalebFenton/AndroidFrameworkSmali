.class final Landroid/app/SystemServiceRegistry$14;
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
        "Landroid/app/DownloadManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 247
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/DownloadManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 250
    new-instance v0, Landroid/app/DownloadManager;

    #@2
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2}, Landroid/app/DownloadManager;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 249
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$14;->createService(Landroid/app/ContextImpl;)Landroid/app/DownloadManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
