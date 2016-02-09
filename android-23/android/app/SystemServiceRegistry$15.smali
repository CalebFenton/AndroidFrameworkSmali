.class final Landroid/app/SystemServiceRegistry$15;
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
        "Landroid/os/BatteryManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 254
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService()Landroid/os/BatteryManager;
    .locals 1

    #@0
    .prologue
    .line 257
    new-instance v0, Landroid/os/BatteryManager;

    #@2
    invoke-direct {v0}, Landroid/os/BatteryManager;-><init>()V

    #@5
    return-object v0
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$15;->createService()Landroid/os/BatteryManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
