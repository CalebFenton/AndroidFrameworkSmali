.class final Landroid/app/SystemServiceRegistry$12;
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
        "Landroid/location/CountryDetector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService()Landroid/location/CountryDetector;
    .locals 3

    #@0
    .prologue
    .line 235
    const-string/jumbo v1, "country_detector"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 236
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/location/CountryDetector;

    #@9
    invoke-static {v0}, Landroid/location/ICountryDetector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ICountryDetector;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Landroid/location/CountryDetector;-><init>(Landroid/location/ICountryDetector;)V

    #@10
    return-object v1
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$12;->createService()Landroid/location/CountryDetector;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
