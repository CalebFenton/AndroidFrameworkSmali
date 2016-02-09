.class public abstract Lcom/android/internal/telecom/IInCallService$Stub;
.super Landroid/os/Binder;
.source "IInCallService.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallService"

.field static final TRANSACTION_addCall:I = 0x2

.field static final TRANSACTION_bringToForeground:I = 0x7

.field static final TRANSACTION_onCallAudioStateChanged:I = 0x6

.field static final TRANSACTION_onCanAddCallChanged:I = 0x8

.field static final TRANSACTION_setInCallAdapter:I = 0x1

.field static final TRANSACTION_setPostDial:I = 0x4

.field static final TRANSACTION_setPostDialWait:I = 0x5

.field static final TRANSACTION_updateCall:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "com.android.internal.telecom.IInCallService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    if-nez p0, :cond_0

    #@3
    .line 31
    return-object v1

    #@4
    .line 33
    :cond_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telecom/IInCallService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    #@1
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v6

    #@8
    return v6

    #@9
    .line 49
    :sswitch_0
    const-string/jumbo v6, "com.android.internal.telecom.IInCallService"

    #@c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 50
    return v7

    #@10
    .line 54
    :sswitch_1
    const-string/jumbo v6, "com.android.internal.telecom.IInCallService"

    #@13
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v6

    #@1a
    invoke-static {v6}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;

    #@1d
    move-result-object v2

    #@1e
    .line 57
    .local v2, "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    #@21
    .line 58
    return v7

    #@22
    .line 62
    .end local v2    # "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    :sswitch_2
    const-string/jumbo v6, "com.android.internal.telecom.IInCallService"

    #@25
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_0

    #@2e
    .line 65
    sget-object v6, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Landroid/telecom/ParcelableCall;

    #@36
    .line 70
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->addCall(Landroid/telecom/ParcelableCall;)V

    #@39
    .line 71
    return v7

    #@3a
    .line 68
    :cond_0
    const/4 v1, 0x0

    #@3b
    .local v1, "_arg0":Landroid/telecom/ParcelableCall;
    goto :goto_0

    #@3c
    .line 75
    .end local v1    # "_arg0":Landroid/telecom/ParcelableCall;
    :sswitch_3
    const-string/jumbo v6, "com.android.internal.telecom.IInCallService"

    #@3f
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_1

    #@48
    .line 78
    sget-object v6, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Landroid/telecom/ParcelableCall;

    #@50
    .line 83
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    #@53
    .line 84
    return v7

    #@54
    .line 81
    :cond_1
    const/4 v1, 0x0

    #@55
    .restart local v1    # "_arg0":Landroid/telecom/ParcelableCall;
    goto :goto_1

    #@56
    .line 88
    .end local v1    # "_arg0":Landroid/telecom/ParcelableCall;
    :sswitch_4
    const-string/jumbo v6, "com.android.internal.telecom.IInCallService"

    #@59
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .line 92
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    .line 93
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDial(Ljava/lang/String;Ljava/lang/String;)V

    #@67
    .line 94
    return v7

    #@68
    .line 98
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v6, "com.android.internal.telecom.IInCallService"

    #@6b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    .line 102
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    .line 103
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    #@79
    .line 104
    return v7

    #@7a
    .line 108
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v6, "com.android.internal.telecom.IInCallService"

    #@7d
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80
    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v6

    #@84
    if-eqz v6, :cond_2

    #@86
    .line 111
    sget-object v6, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@88
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8b
    move-result-object v0

    #@8c
    check-cast v0, Landroid/telecom/CallAudioState;

    #@8e
    .line 116
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    #@91
    .line 117
    return v7

    #@92
    .line 114
    :cond_2
    const/4 v0, 0x0

    #@93
    .local v0, "_arg0":Landroid/telecom/CallAudioState;
    goto :goto_2

    #@94
    .line 121
    .end local v0    # "_arg0":Landroid/telecom/CallAudioState;
    :sswitch_7
    const-string/jumbo v6, "com.android.internal.telecom.IInCallService"

    #@97
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9a
    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9d
    move-result v6

    #@9e
    if-eqz v6, :cond_3

    #@a0
    const/4 v4, 0x1

    #@a1
    .line 124
    .local v4, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IInCallService$Stub;->bringToForeground(Z)V

    #@a4
    .line 125
    return v7

    #@a5
    .line 123
    .end local v4    # "_arg0":Z
    :cond_3
    const/4 v4, 0x0

    #@a6
    .restart local v4    # "_arg0":Z
    goto :goto_3

    #@a7
    .line 129
    .end local v4    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v6, "com.android.internal.telecom.IInCallService"

    #@aa
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ad
    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b0
    move-result v6

    #@b1
    if-eqz v6, :cond_4

    #@b3
    const/4 v4, 0x1

    #@b4
    .line 132
    .restart local v4    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IInCallService$Stub;->onCanAddCallChanged(Z)V

    #@b7
    .line 133
    return v7

    #@b8
    .line 131
    .end local v4    # "_arg0":Z
    :cond_4
    const/4 v4, 0x0

    #@b9
    .restart local v4    # "_arg0":Z
    goto :goto_4

    #@ba
    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
