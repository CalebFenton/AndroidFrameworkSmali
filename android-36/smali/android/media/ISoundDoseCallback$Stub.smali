.class public abstract Landroid/media/ISoundDoseCallback$Stub;
.super Landroid/os/Binder;
.source "ISoundDoseCallback.java"

# interfaces
.implements Landroid/media/ISoundDoseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ISoundDoseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISoundDoseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onMomentaryExposure:I = 0x1

.field static final blacklist TRANSACTION_onNewCsdValue:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.media.ISoundDoseCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/ISoundDoseCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/ISoundDoseCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.media.ISoundDoseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/ISoundDoseCallback;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/media/ISoundDoseCallback;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/media/ISoundDoseCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/ISoundDoseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
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

    .line 66
    const-string v0, "android.media.ISoundDoseCallback"

    .line 67
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v1

    .line 74
    :cond_16
    packed-switch p1, :pswitch_data_42

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 89
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 91
    .local v2, "_arg0":F
    sget-object v3, Landroid/media/SoundDoseRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/SoundDoseRecord;

    .line 92
    .local v3, "_arg1":[Landroid/media/SoundDoseRecord;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, v2, v3}, Landroid/media/ISoundDoseCallback$Stub;->onNewCsdValue(F[Landroid/media/SoundDoseRecord;)V

    .line 94
    goto :goto_40

    .line 79
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":[Landroid/media/SoundDoseRecord;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 81
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 82
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    invoke-virtual {p0, v2, v3}, Landroid/media/ISoundDoseCallback$Stub;->onMomentaryExposure(FI)V

    .line 84
    nop

    .line 101
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":I
    :goto_40
    return v1

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
