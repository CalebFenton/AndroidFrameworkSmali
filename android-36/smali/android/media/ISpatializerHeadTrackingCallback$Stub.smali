.class public abstract Landroid/media/ISpatializerHeadTrackingCallback$Stub;
.super Landroid/os/Binder;
.source "ISpatializerHeadTrackingCallback.java"

# interfaces
.implements Landroid/media/ISpatializerHeadTrackingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ISpatializerHeadTrackingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializerHeadTrackingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onHeadToSoundStagePoseUpdated:I = 0x2

.field static final blacklist TRANSACTION_onHeadTrackingModeChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.media.ISpatializerHeadTrackingCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.media.ISpatializerHeadTrackingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/ISpatializerHeadTrackingCallback;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/media/ISpatializerHeadTrackingCallback;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/media/ISpatializerHeadTrackingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/ISpatializerHeadTrackingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
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

    .line 69
    const-string v0, "android.media.ISpatializerHeadTrackingCallback"

    .line 70
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 71
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v1

    .line 77
    :cond_16
    packed-switch p1, :pswitch_data_36

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 90
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 91
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, v2}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;->onHeadToSoundStagePoseUpdated([F)V

    .line 93
    goto :goto_34

    .line 82
    .end local v2    # "_arg0":[F
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 83
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 84
    invoke-virtual {p0, v2}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;->onHeadTrackingModeChanged(B)V

    .line 85
    nop

    .line 100
    .end local v2    # "_arg0":B
    :goto_34
    return v1

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
