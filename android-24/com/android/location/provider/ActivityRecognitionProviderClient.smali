.class public abstract Lcom/android/location/provider/ActivityRecognitionProviderClient;
.super Ljava/lang/Object;
.source "ActivityRecognitionProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/ActivityRecognitionProviderClient$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArProviderClient"


# instance fields
.field private mClient:Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Lcom/android/location/provider/ActivityRecognitionProviderClient$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/location/provider/ActivityRecognitionProviderClient$1;-><init>(Lcom/android/location/provider/ActivityRecognitionProviderClient;)V

    #@8
    .line 36
    iput-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderClient;->mClient:Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;

    #@a
    .line 34
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProviderClient;->mClient:Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;

    #@2
    return-object v0
.end method

.method public abstract onProviderChanged(ZLcom/android/location/provider/ActivityRecognitionProvider;)V
.end method
