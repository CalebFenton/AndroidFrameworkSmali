.class public abstract Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;
.super Landroid/os/Binder;
.source "IAudioPolicyCallback.java"

# interfaces
.implements Landroid/media/audiopolicy/IAudioPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/IAudioPolicyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.audiopolicy.IAudioPolicyCallback"

.field static final TRANSACTION_notifyAudioFocusGrant:I = 0x1

.field static final TRANSACTION_notifyAudioFocusLoss:I = 0x2

.field static final TRANSACTION_notifyMixStateUpdate:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.media.audiopolicy.IAudioPolicyCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.media.audiopolicy.IAudioPolicyCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.media.audiopolicy.IAudioPolicyCallback"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v5

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.media.audiopolicy.IAudioPolicyCallback"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 53
    sget-object v4, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/media/AudioFocusInfo;

    #@24
    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v2

    #@28
    .line 60
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V

    #@2b
    .line 61
    return v5

    #@2c
    .line 56
    .end local v2    # "_arg1":I
    :cond_0
    const/4 v0, 0x0

    #@2d
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    goto :goto_0

    #@2e
    .line 65
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    :sswitch_2
    const-string/jumbo v4, "android.media.audiopolicy.IAudioPolicyCallback"

    #@31
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_1

    #@3a
    .line 68
    sget-object v4, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/media/AudioFocusInfo;

    #@42
    .line 74
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_2

    #@48
    const/4 v3, 0x1

    #@49
    .line 75
    .local v3, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V

    #@4c
    .line 76
    return v5

    #@4d
    .line 71
    .end local v3    # "_arg1":Z
    :cond_1
    const/4 v0, 0x0

    #@4e
    .restart local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    goto :goto_1

    #@4f
    .line 74
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    :cond_2
    const/4 v3, 0x0

    #@50
    .restart local v3    # "_arg1":Z
    goto :goto_2

    #@51
    .line 80
    .end local v3    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v4, "android.media.audiopolicy.IAudioPolicyCallback"

    #@54
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    .line 84
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v2

    #@5f
    .line 85
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyMixStateUpdate(Ljava/lang/String;I)V

    #@62
    .line 86
    return v5

    #@63
    .line 41
    nop

    #@64
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
