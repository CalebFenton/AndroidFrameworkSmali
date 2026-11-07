.class public interface abstract Landroid/health/connect/aidl/IMigrationCallback;
.super Ljava/lang/Object;
.source "IMigrationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/aidl/IMigrationCallback$Stub;,
        Landroid/health/connect/aidl/IMigrationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.health.connect.aidl.IMigrationCallback"


# virtual methods
.method public abstract blacklist onError(Landroid/health/connect/migration/MigrationException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
