.class final Landroid/app/SystemServiceRegistry$17;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/os/DropBoxManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 268
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService()Landroid/os/DropBoxManager;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 271
    const-string/jumbo v2, "dropbox"

    #@4
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 272
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IDropBoxManagerService;

    #@b
    move-result-object v1

    #@c
    .line 273
    .local v1, "service":Lcom/android/internal/os/IDropBoxManagerService;
    if-nez v1, :cond_0

    #@e
    .line 278
    return-object v3

    #@f
    .line 280
    :cond_0
    new-instance v2, Landroid/os/DropBoxManager;

    #@11
    invoke-direct {v2, v1}, Landroid/os/DropBoxManager;-><init>(Lcom/android/internal/os/IDropBoxManagerService;)V

    #@14
    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$17;->createService()Landroid/os/DropBoxManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
