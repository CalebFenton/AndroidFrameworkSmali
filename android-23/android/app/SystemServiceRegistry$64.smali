.class final Landroid/app/SystemServiceRegistry$64;
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
        "Landroid/service/persistentdata/PersistentDataBlockManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 661
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService()Landroid/service/persistentdata/PersistentDataBlockManager;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 664
    const-string/jumbo v2, "persistent_data_block"

    #@4
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 666
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;

    #@b
    move-result-object v1

    #@c
    .line 667
    .local v1, "persistentDataBlockService":Landroid/service/persistentdata/IPersistentDataBlockService;
    if-eqz v1, :cond_0

    #@e
    .line 668
    new-instance v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    #@10
    invoke-direct {v2, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;-><init>(Landroid/service/persistentdata/IPersistentDataBlockService;)V

    #@13
    return-object v2

    #@14
    .line 671
    :cond_0
    return-object v3
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 663
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$64;->createService()Landroid/service/persistentdata/PersistentDataBlockManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
