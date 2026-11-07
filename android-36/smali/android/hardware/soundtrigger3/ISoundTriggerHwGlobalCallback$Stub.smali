.class public abstract Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerHwGlobalCallback.java"

# interfaces
.implements Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_onResourcesAvailable:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;->markVintfStability()V

    .line 47
    sget-object v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    sget-object v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    sget-object v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 71
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 75
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return v2

    .line 78
    :cond_16
    if-ne p1, v1, :cond_23

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v2

    .line 83
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v2

    .line 88
    :cond_33
    packed-switch p1, :pswitch_data_44

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 92
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;->onResourcesAvailable()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    nop

    .line 101
    return v2

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3b
    .end packed-switch
.end method
