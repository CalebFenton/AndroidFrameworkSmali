.class public interface abstract Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;
.super Ljava/lang/Object;
.source "IGetChangesForBackupResponseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback$Stub;,
        Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.health.connect.aidl.IGetChangesForBackupResponseCallback"


# virtual methods
.method public abstract blacklist onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/health/connect/backuprestore/GetChangesForBackupResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
