.class final Landroid/app/SystemServiceRegistry$70;
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
        "Landroid/os/HardwarePropertiesManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 736
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/HardwarePropertiesManager;
    .locals 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 739
    const-string/jumbo v2, "hardware_properties"

    #@4
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 741
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IHardwarePropertiesManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwarePropertiesManager;

    #@b
    move-result-object v1

    #@c
    .line 742
    .local v1, "service":Landroid/os/IHardwarePropertiesManager;
    if-nez v1, :cond_0

    #@e
    .line 743
    const-string/jumbo v2, "SystemServiceRegistry"

    #@11
    const-string/jumbo v3, "Failed to get hardwareproperties service."

    #@14
    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 744
    return-object v4

    #@18
    .line 746
    :cond_0
    new-instance v2, Landroid/os/HardwarePropertiesManager;

    #@1a
    invoke-direct {v2, p1, v1}, Landroid/os/HardwarePropertiesManager;-><init>(Landroid/content/Context;Landroid/os/IHardwarePropertiesManager;)V

    #@1d
    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 738
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$70;->createService(Landroid/app/ContextImpl;)Landroid/os/HardwarePropertiesManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
