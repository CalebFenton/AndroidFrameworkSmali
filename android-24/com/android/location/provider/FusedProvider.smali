.class public abstract Lcom/android/location/provider/FusedProvider;
.super Ljava/lang/Object;
.source "FusedProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/FusedProvider$1;
    }
.end annotation


# instance fields
.field private mProvider:Landroid/location/IFusedProvider$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Lcom/android/location/provider/FusedProvider$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/location/provider/FusedProvider$1;-><init>(Lcom/android/location/provider/FusedProvider;)V

    #@8
    iput-object v0, p0, Lcom/android/location/provider/FusedProvider;->mProvider:Landroid/location/IFusedProvider$Stub;

    #@a
    .line 32
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/location/provider/FusedProvider;->mProvider:Landroid/location/IFusedProvider$Stub;

    #@2
    return-object v0
.end method

.method public abstract setFusedLocationHardware(Lcom/android/location/provider/FusedLocationHardware;)V
.end method
