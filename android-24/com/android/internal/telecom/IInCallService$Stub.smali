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

.field static final TRANSACTION_onConnectionEvent:I = 0xa

.field static final TRANSACTION_setInCallAdapter:I = 0x1

.field static final TRANSACTION_setPostDial:I = 0x4

.field static final TRANSACTION_setPostDialWait:I = 0x5

.field static final TRANSACTION_silenceRinger:I = 0x9

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
    .locals 9
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
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    return v7

    #@a
    .line 49
    :sswitch_0
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    #@d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 50
    return v7

    #@11
    .line 54
    :sswitch_1
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    #@14
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v8

    #@1b
    invoke-static {v8}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;

    #@1e
    move-result-object v2

    #@1f
    .line 57
    .local v2, "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    #@22
    .line 58
    return v7

    #@23
    .line 62
    .end local v2    # "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    :sswitch_2
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    #@26
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v8

    #@2d
    if-eqz v8, :cond_0

    #@2f
    .line 65
    sget-object v8, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Landroid/telecom/ParcelableCall;

    #@37
    .line 70
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->addCall(Landroid/telecom/ParcelableCall;)V

    #@3a
    .line 71
    return v7

    #@3b
    .line 68
    :cond_0
    const/4 v1, 0x0

    #@3c
    .local v1, "_arg0":Landroid/telecom/ParcelableCall;
    goto :goto_0

    #@3d
    .line 75
    .end local v1    # "_arg0":Landroid/telecom/ParcelableCall;
    :sswitch_3
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    #@40
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v8

    #@47
    if-eqz v8, :cond_1

    #@49
    .line 78
    sget-object v8, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4b
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4e
    move-result-object v1

    #@4f
    check-cast v1, Landroid/telecom/ParcelableCall;

    #@51
    .line 83
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    #@54
    .line 84
    return v7

    #@55
    .line 81
    :cond_1
    const/4 v1, 0x0

    #@56
    .restart local v1    # "_arg0":Landroid/telecom/ParcelableCall;
    goto :goto_1

    #@57
    .line 88
    .end local v1    # "_arg0":Landroid/telecom/ParcelableCall;
    :sswitch_4
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    #@5a
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d
    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    .line 92
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    .line 93
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDial(Ljava/lang/String;Ljava/lang/String;)V

    #@68
    .line 94
    return v7

    #@69
    .line 98
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    #@6c
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f
    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    .line 102
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    .line 103
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    #@7a
    .line 104
    return v7

    #@7b
    .line 108
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    #@7e
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@81
    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@84
    move-result v8

    #@85
    if-eqz v8, :cond_2

    #@87
    .line 111
    sget-object v8, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@89
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8c
    move-result-object v0

    #@8d
    check-cast v0, Landroid/telecom/CallAudioState;

    #@8f
    .line 116
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    #@92
    .line 117
    return v7

    #@93
    .line 114
    :cond_2
    const/4 v0, 0x0

    #@94
    .local v0, "_arg0":Landroid/telecom/CallAudioState;
    goto :goto_2

    #@95
    .line 121
    .end local v0    # "_arg0":Landroid/telecom/CallAudioState;
    :sswitch_7
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    #@98
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b
    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v8

    #@9f
    if-eqz v8, :cond_3

    #@a1
    move v4, v7

    #@a2
    .line 124
    .local v4, "_arg0":Z
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IInCallService$Stub;->bringToForeground(Z)V

    #@a5
    .line 125
    return v7

    #@a6
    .line 129
    .end local v4    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    #@a9
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ac
    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@af
    move-result v8

    #@b0
    if-eqz v8, :cond_4

    #@b2
    move v4, v7

    #@b3
    .line 132
    .restart local v4    # "_arg0":Z
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IInCallService$Stub;->onCanAddCallChanged(Z)V

    #@b6
    .line 133
    return v7

    #@b7
    .line 137
    .end local v4    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    #@ba
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd
    .line 138
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallService$Stub;->silenceRinger()V

    #@c0
    .line 139
    return v7

    #@c1
    .line 143
    :sswitch_a
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    #@c4
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7
    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ca
    move-result-object v3

    #@cb
    .line 147
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ce
    move-result-object v5

    #@cf
    .line 149
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d2
    move-result v8

    #@d3
    if-eqz v8, :cond_5

    #@d5
    .line 150
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d7
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@da
    move-result-object v6

    #@db
    check-cast v6, Landroid/os/Bundle;

    #@dd
    .line 155
    :goto_3
    invoke-virtual {p0, v3, v5, v6}, Lcom/android/internal/telecom/IInCallService$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@e0
    .line 156
    return v7

    #@e1
    .line 153
    :cond_5
    const/4 v6, 0x0

    #@e2
    .local v6, "_arg2":Landroid/os/Bundle;
    goto :goto_3

    #@e3
    .line 45
    nop

    #@e4
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
