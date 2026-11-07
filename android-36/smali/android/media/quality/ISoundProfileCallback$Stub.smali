.class public abstract Landroid/media/quality/ISoundProfileCallback$Stub;
.super Landroid/os/Binder;
.source "ISoundProfileCallback.java"

# interfaces
.implements Landroid/media/quality/ISoundProfileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/ISoundProfileCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/ISoundProfileCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onError:I = 0x5

.field static final blacklist TRANSACTION_onParameterCapabilitiesChanged:I = 0x4

.field static final blacklist TRANSACTION_onSoundProfileAdded:I = 0x1

.field static final blacklist TRANSACTION_onSoundProfileRemoved:I = 0x3

.field static final blacklist TRANSACTION_onSoundProfileUpdated:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.media.quality.ISoundProfileCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/quality/ISoundProfileCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/quality/ISoundProfileCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.media.quality.ISoundProfileCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/quality/ISoundProfileCallback;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/media/quality/ISoundProfileCallback;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/media/quality/ISoundProfileCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/quality/ISoundProfileCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
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

    .line 69
    const-string v0, "android.media.quality.ISoundProfileCallback"

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
    packed-switch p1, :pswitch_data_78

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 122
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/ISoundProfileCallback$Stub;->onError(Ljava/lang/String;I)V

    .line 127
    goto :goto_77

    .line 112
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/quality/ParameterCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 115
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/ISoundProfileCallback$Stub;->onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 117
    goto :goto_77

    .line 102
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/quality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/quality/SoundProfile;

    .line 105
    .local v3, "_arg1":Landroid/media/quality/SoundProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/ISoundProfileCallback$Stub;->onSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    .line 107
    goto :goto_77

    .line 92
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/quality/SoundProfile;
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/quality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/quality/SoundProfile;

    .line 95
    .restart local v3    # "_arg1":Landroid/media/quality/SoundProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/ISoundProfileCallback$Stub;->onSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    .line 97
    goto :goto_77

    .line 82
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/quality/SoundProfile;
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/quality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/quality/SoundProfile;

    .line 85
    .restart local v3    # "_arg1":Landroid/media/quality/SoundProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    invoke-virtual {p0, v2, v3}, Landroid/media/quality/ISoundProfileCallback$Stub;->onSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    .line 87
    nop

    .line 134
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/quality/SoundProfile;
    :goto_77
    return v1

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_64
        :pswitch_51
        :pswitch_3e
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
