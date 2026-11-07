.class public interface abstract Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback;
.super Ljava/lang/Object;
.source "IGetHealthConnectMigrationUiStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback$Stub;,
        Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.health.connect.aidl.IGetHealthConnectMigrationUiStateCallback"


# virtual methods
.method public abstract blacklist onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/health/connect/migration/HealthConnectMigrationUiState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
