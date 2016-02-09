.class public Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
.super Ljava/lang/Object;
.source "ActivityRecognitionProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProviderWatcher"

.field private static sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

.field private static final sWatcherLock:Ljava/lang/Object;


# instance fields
.field private mActivityRecognitionProvider:Lcom/android/location/provider/ActivityRecognitionProvider;

.field private mWatcherStub:Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;


# direct methods
.method static synthetic -set0(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;Lcom/android/location/provider/ActivityRecognitionProvider;)Lcom/android/location/provider/ActivityRecognitionProvider;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mActivityRecognitionProvider:Lcom/android/location/provider/ActivityRecognitionProvider;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcherLock:Ljava/lang/Object;

    #@7
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;-><init>(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;)V

    #@8
    .line 51
    iput-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mWatcherStub:Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;

    #@a
    .line 40
    return-void
.end method

.method public static getInstance()Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
    .locals 2

    #@0
    .prologue
    .line 43
    sget-object v1, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcherLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 44
    :try_start_0
    sget-object v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 45
    new-instance v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    #@9
    invoke-direct {v0}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;-><init>()V

    #@c
    sput-object v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    #@e
    .line 47
    :cond_0
    sget-object v0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->sWatcher:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 43
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method


# virtual methods
.method public getActivityRecognitionProvider()Lcom/android/location/provider/ActivityRecognitionProvider;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mActivityRecognitionProvider:Lcom/android/location/provider/ActivityRecognitionProvider;

    #@2
    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->mWatcherStub:Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;

    #@2
    return-object v0
.end method
