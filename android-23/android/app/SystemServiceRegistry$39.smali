.class final Landroid/app/SystemServiceRegistry$39;
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
        "Landroid/hardware/SerialManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 453
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/hardware/SerialManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 456
    const-string/jumbo v1, "serial"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 457
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/hardware/SerialManager;

    #@9
    invoke-static {v0}, Landroid/hardware/ISerialManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISerialManager;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, p1, v2}, Landroid/hardware/SerialManager;-><init>(Landroid/content/Context;Landroid/hardware/ISerialManager;)V

    #@10
    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 455
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$39;->createService(Landroid/app/ContextImpl;)Landroid/hardware/SerialManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
