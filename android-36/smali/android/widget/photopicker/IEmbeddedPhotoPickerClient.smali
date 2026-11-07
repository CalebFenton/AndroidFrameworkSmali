.class public interface abstract Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;
.super Ljava/lang/Object;
.source "IEmbeddedPhotoPickerClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$_Parcel;,
        Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;,
        Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.widget.photopicker.IEmbeddedPhotoPickerClient"


# virtual methods
.method public abstract blacklist onSelectionComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSessionError(Landroid/widget/photopicker/ParcelableException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSessionOpened(Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUriPermissionGranted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUriPermissionRevoked(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
