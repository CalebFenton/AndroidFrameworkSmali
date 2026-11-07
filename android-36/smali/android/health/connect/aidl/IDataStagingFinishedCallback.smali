.class public interface abstract Landroid/health/connect/aidl/IDataStagingFinishedCallback;
.super Ljava/lang/Object;
.source "IDataStagingFinishedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/aidl/IDataStagingFinishedCallback$Stub;,
        Landroid/health/connect/aidl/IDataStagingFinishedCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.health.connect.aidl.IDataStagingFinishedCallback"


# virtual methods
.method public abstract blacklist onError(Landroid/health/connect/restore/StageRemoteDataException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
