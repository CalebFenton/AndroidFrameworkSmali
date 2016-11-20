.class public Lcom/android/server/wifi/WifiInjector;
.super Ljava/lang/Object;
.source "WifiInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiInjector$LazyHolder;
    }
.end annotation


# instance fields
.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mPropertyService:Lcom/android/server/wifi/PropertyService;

.field private final mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Lcom/android/server/wifi/Clock;

    #@5
    invoke-direct {v0}, Lcom/android/server/wifi/Clock;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    #@a
    .line 36
    new-instance v0, Lcom/android/server/wifi/WifiMetrics;

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    #@e
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMetrics;-><init>(Lcom/android/server/wifi/Clock;)V

    #@11
    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@13
    .line 38
    new-instance v0, Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@15
    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@17
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;-><init>(Lcom/android/server/wifi/WifiMetrics;)V

    #@1a
    .line 37
    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@1c
    .line 39
    new-instance v0, Lcom/android/server/wifi/SystemPropertyService;

    #@1e
    invoke-direct {v0}, Lcom/android/server/wifi/SystemPropertyService;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    #@23
    .line 40
    new-instance v0, Lcom/android/server/wifi/SystemBuildProperties;

    #@25
    invoke-direct {v0}, Lcom/android/server/wifi/SystemBuildProperties;-><init>()V

    #@28
    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    #@2a
    .line 41
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mKeyStore:Landroid/security/KeyStore;

    #@30
    .line 25
    return-void
.end method

.method public static getInstance()Lcom/android/server/wifi/WifiInjector;
    .locals 1

    #@0
    .prologue
    .line 32
    sget-object v0, Lcom/android/server/wifi/WifiInjector$LazyHolder;->sInstance:Lcom/android/server/wifi/WifiInjector;

    #@2
    return-object v0
.end method


# virtual methods
.method public getBuildProperties()Lcom/android/server/wifi/BuildProperties;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    #@2
    return-object v0
.end method

.method public getClock()Lcom/android/server/wifi/Clock;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    #@2
    return-object v0
.end method

.method public getKeyStore()Landroid/security/KeyStore;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mKeyStore:Landroid/security/KeyStore;

    #@2
    return-object v0
.end method

.method public getPropertyService()Lcom/android/server/wifi/PropertyService;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    #@2
    return-object v0
.end method

.method public getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@2
    return-object v0
.end method

.method public getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@2
    return-object v0
.end method
