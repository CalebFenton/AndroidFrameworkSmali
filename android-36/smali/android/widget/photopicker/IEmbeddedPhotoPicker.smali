.class public interface abstract Landroid/widget/photopicker/IEmbeddedPhotoPicker;
.super Ljava/lang/Object;
.source "IEmbeddedPhotoPicker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub;,
        Landroid/widget/photopicker/IEmbeddedPhotoPicker$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.widget.photopicker.IEmbeddedPhotoPicker"


# virtual methods
.method public abstract blacklist openSession(Ljava/lang/String;Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
