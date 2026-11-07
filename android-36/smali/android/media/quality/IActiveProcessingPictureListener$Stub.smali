.class public abstract Landroid/media/quality/IActiveProcessingPictureListener$Stub;
.super Landroid/os/Binder;
.source "IActiveProcessingPictureListener.java"

# interfaces
.implements Landroid/media/quality/IActiveProcessingPictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/IActiveProcessingPictureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/IActiveProcessingPictureListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onActiveProcessingPicturesChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.media.quality.IActiveProcessingPictureListener"

    invoke-virtual {p0, p0, v0}, Landroid/media/quality/IActiveProcessingPictureListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/quality/IActiveProcessingPictureListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "android.media.quality.IActiveProcessingPictureListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/quality/IActiveProcessingPictureListener;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/media/quality/IActiveProcessingPictureListener;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Landroid/media/quality/IActiveProcessingPictureListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/quality/IActiveProcessingPictureListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string v0, "android.media.quality.IActiveProcessingPictureListener"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 62
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 65
    :cond_16
    packed-switch p1, :pswitch_data_2c

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 70
    :pswitch_1e
    sget-object v2, Landroid/media/quality/ActiveProcessingPicture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ActiveProcessingPicture;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 72
    invoke-virtual {p0, v2}, Landroid/media/quality/IActiveProcessingPictureListener$Stub;->onActiveProcessingPicturesChanged(Ljava/util/List;)V

    .line 73
    nop

    .line 80
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ActiveProcessingPicture;>;"
    return v1

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
