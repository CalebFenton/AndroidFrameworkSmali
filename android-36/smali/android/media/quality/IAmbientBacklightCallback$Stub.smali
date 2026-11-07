.class public abstract Landroid/media/quality/IAmbientBacklightCallback$Stub;
.super Landroid/os/Binder;
.source "IAmbientBacklightCallback.java"

# interfaces
.implements Landroid/media/quality/IAmbientBacklightCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/IAmbientBacklightCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/IAmbientBacklightCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAmbientBacklightEvent:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.media.quality.IAmbientBacklightCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/quality/IAmbientBacklightCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/quality/IAmbientBacklightCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "android.media.quality.IAmbientBacklightCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/quality/IAmbientBacklightCallback;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Landroid/media/quality/IAmbientBacklightCallback;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Landroid/media/quality/IAmbientBacklightCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/quality/IAmbientBacklightCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
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

    .line 54
    const-string v0, "android.media.quality.IAmbientBacklightCallback"

    .line 55
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v1

    .line 62
    :cond_16
    packed-switch p1, :pswitch_data_2e

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 67
    :pswitch_1e
    sget-object v2, Landroid/media/quality/AmbientBacklightEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/AmbientBacklightEvent;

    .line 68
    .local v2, "_arg0":Landroid/media/quality/AmbientBacklightEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 69
    invoke-virtual {p0, v2}, Landroid/media/quality/IAmbientBacklightCallback$Stub;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V

    .line 70
    nop

    .line 77
    .end local v2    # "_arg0":Landroid/media/quality/AmbientBacklightEvent;
    return v1

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
