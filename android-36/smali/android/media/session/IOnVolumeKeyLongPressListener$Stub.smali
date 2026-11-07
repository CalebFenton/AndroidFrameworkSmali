.class public abstract Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;
.super Landroid/os/Binder;
.source "IOnVolumeKeyLongPressListener.java"

# interfaces
.implements Landroid/media/session/IOnVolumeKeyLongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/IOnVolumeKeyLongPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/IOnVolumeKeyLongPressListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.session.IOnVolumeKeyLongPressListener"

.field static final greylist-max-o TRANSACTION_onVolumeKeyLongPress:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.media.session.IOnVolumeKeyLongPressListener"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "android.media.session.IOnVolumeKeyLongPressListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/IOnVolumeKeyLongPressListener;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_8

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 62
    :pswitch_5
    const-string v0, "onVolumeKeyLongPress"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 73
    invoke-static {p1}, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 77
    const-string v0, "android.media.session.IOnVolumeKeyLongPressListener"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v1

    .line 85
    :cond_16
    packed-switch p1, :pswitch_data_2e

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 90
    :pswitch_1e
    sget-object v2, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 91
    .local v2, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, v2}, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;->onVolumeKeyLongPress(Landroid/view/KeyEvent;)V

    .line 93
    nop

    .line 100
    .end local v2    # "_arg0":Landroid/view/KeyEvent;
    return v1

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
