.class public abstract Lcom/android/internal/telecom/IVideoCallback$Stub;
.super Landroid/os/Binder;
.source "IVideoCallback.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IVideoCallback"

.field static final TRANSACTION_changeCallDataUsage:I = 0x5

.field static final TRANSACTION_changeCameraCapabilities:I = 0x6

.field static final TRANSACTION_changePeerDimensions:I = 0x4

.field static final TRANSACTION_changeVideoQuality:I = 0x7

.field static final TRANSACTION_handleCallSessionEvent:I = 0x3

.field static final TRANSACTION_receiveSessionModifyRequest:I = 0x1

.field static final TRANSACTION_receiveSessionModifyResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 23
    const-string/jumbo v0, "com.android.internal.telecom.IVideoCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 31
    if-nez p0, :cond_0

    #@3
    .line 32
    return-object v1

    #@4
    .line 34
    :cond_0
    const-string/jumbo v1, "com.android.internal.telecom.IVideoCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telecom/IVideoCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 36
    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 38
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IVideoCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v9, 0x1

    #@1
    .line 46
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v8

    #@8
    return v8

    #@9
    .line 50
    :sswitch_0
    const-string/jumbo v8, "com.android.internal.telecom.IVideoCallback"

    #@c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 51
    return v9

    #@10
    .line 55
    :sswitch_1
    const-string/jumbo v8, "com.android.internal.telecom.IVideoCallback"

    #@13
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v8

    #@1a
    if-eqz v8, :cond_0

    #@1c
    .line 58
    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Landroid/telecom/VideoProfile;

    #@24
    .line 63
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IVideoCallback$Stub;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    #@27
    .line 64
    return v9

    #@28
    .line 61
    :cond_0
    const/4 v4, 0x0

    #@29
    .local v4, "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_0

    #@2a
    .line 68
    .end local v4    # "_arg0":Landroid/telecom/VideoProfile;
    :sswitch_2
    const-string/jumbo v8, "com.android.internal.telecom.IVideoCallback"

    #@2d
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    .line 72
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v8

    #@38
    if-eqz v8, :cond_1

    #@3a
    .line 73
    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v6

    #@40
    check-cast v6, Landroid/telecom/VideoProfile;

    #@42
    .line 79
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v8

    #@46
    if-eqz v8, :cond_2

    #@48
    .line 80
    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d
    move-result-object v7

    #@4e
    check-cast v7, Landroid/telecom/VideoProfile;

    #@50
    .line 85
    :goto_2
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/internal/telecom/IVideoCallback$Stub;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    #@53
    .line 86
    return v9

    #@54
    .line 76
    :cond_1
    const/4 v6, 0x0

    #@55
    .local v6, "_arg1":Landroid/telecom/VideoProfile;
    goto :goto_1

    #@56
    .line 83
    .end local v6    # "_arg1":Landroid/telecom/VideoProfile;
    :cond_2
    const/4 v7, 0x0

    #@57
    .local v7, "_arg2":Landroid/telecom/VideoProfile;
    goto :goto_2

    #@58
    .line 90
    .end local v0    # "_arg0":I
    .end local v7    # "_arg2":Landroid/telecom/VideoProfile;
    :sswitch_3
    const-string/jumbo v8, "com.android.internal.telecom.IVideoCallback"

    #@5b
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v0

    #@62
    .line 93
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->handleCallSessionEvent(I)V

    #@65
    .line 94
    return v9

    #@66
    .line 98
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v8, "com.android.internal.telecom.IVideoCallback"

    #@69
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v0

    #@70
    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@73
    move-result v5

    #@74
    .line 103
    .local v5, "_arg1":I
    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telecom/IVideoCallback$Stub;->changePeerDimensions(II)V

    #@77
    .line 104
    return v9

    #@78
    .line 108
    .end local v0    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_5
    const-string/jumbo v8, "com.android.internal.telecom.IVideoCallback"

    #@7b
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e
    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@81
    move-result-wide v2

    #@82
    .line 111
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IVideoCallback$Stub;->changeCallDataUsage(J)V

    #@85
    .line 112
    return v9

    #@86
    .line 116
    .end local v2    # "_arg0":J
    :sswitch_6
    const-string/jumbo v8, "com.android.internal.telecom.IVideoCallback"

    #@89
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v8

    #@90
    if-eqz v8, :cond_3

    #@92
    .line 119
    sget-object v8, Landroid/telecom/VideoProfile$CameraCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@94
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@97
    move-result-object v1

    #@98
    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    #@9a
    .line 124
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IVideoCallback$Stub;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    #@9d
    .line 125
    return v9

    #@9e
    .line 122
    :cond_3
    const/4 v1, 0x0

    #@9f
    .local v1, "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    goto :goto_3

    #@a0
    .line 129
    .end local v1    # "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    :sswitch_7
    const-string/jumbo v8, "com.android.internal.telecom.IVideoCallback"

    #@a3
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v0

    #@aa
    .line 132
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoCallback$Stub;->changeVideoQuality(I)V

    #@ad
    .line 133
    return v9

    #@ae
    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
