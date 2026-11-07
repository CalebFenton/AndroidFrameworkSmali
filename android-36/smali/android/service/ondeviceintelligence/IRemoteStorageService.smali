.class public interface abstract Landroid/service/ondeviceintelligence/IRemoteStorageService;
.super Ljava/lang/Object;
.source "IRemoteStorageService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;,
        Landroid/service/ondeviceintelligence/IRemoteStorageService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.ondeviceintelligence.IRemoteStorageService"


# virtual methods
.method public abstract blacklist getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
