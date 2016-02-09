.class public abstract Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.super Landroid/os/Binder;
.source "IImsVideoCallProvider.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsVideoCallProvider"

.field static final TRANSACTION_requestCallDataUsage:I = 0xa

.field static final TRANSACTION_requestCameraCapabilities:I = 0x9

.field static final TRANSACTION_sendSessionModifyRequest:I = 0x7

.field static final TRANSACTION_sendSessionModifyResponse:I = 0x8

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setCamera:I = 0x2

.field static final TRANSACTION_setDeviceOrientation:I = 0x5

.field static final TRANSACTION_setDisplaySurface:I = 0x4

.field static final TRANSACTION_setPauseImage:I = 0xb

.field static final TRANSACTION_setPreviewSurface:I = 0x3

.field static final TRANSACTION_setZoom:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 33
    const-string/jumbo v0, "com.android.ims.internal.IImsVideoCallProvider"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 41
    if-nez p0, :cond_0

    #@3
    .line 42
    return-object v1

    #@4
    .line 44
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.IImsVideoCallProvider"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 46
    check-cast v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 48
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 52
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
    .line 56
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v8

    #@8
    return v8

    #@9
    .line 60
    :sswitch_0
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 61
    return v9

    #@10
    .line 65
    :sswitch_1
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@13
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v8

    #@1a
    invoke-static {v8}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallCallback;

    #@1d
    move-result-object v5

    #@1e
    .line 68
    .local v5, "_arg0":Lcom/android/ims/internal/IImsVideoCallCallback;
    invoke-virtual {p0, v5}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    #@21
    .line 69
    return v9

    #@22
    .line 73
    .end local v5    # "_arg0":Lcom/android/ims/internal/IImsVideoCallCallback;
    :sswitch_2
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@25
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    .line 76
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCamera(Ljava/lang/String;)V

    #@2f
    .line 77
    return v9

    #@30
    .line 81
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@33
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v8

    #@3a
    if-eqz v8, :cond_0

    #@3c
    .line 84
    sget-object v8, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Landroid/view/Surface;

    #@44
    .line 89
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    #@47
    .line 90
    return v9

    #@48
    .line 87
    :cond_0
    const/4 v4, 0x0

    #@49
    .local v4, "_arg0":Landroid/view/Surface;
    goto :goto_0

    #@4a
    .line 94
    .end local v4    # "_arg0":Landroid/view/Surface;
    :sswitch_4
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@4d
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v8

    #@54
    if-eqz v8, :cond_1

    #@56
    .line 97
    sget-object v8, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@58
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5b
    move-result-object v4

    #@5c
    check-cast v4, Landroid/view/Surface;

    #@5e
    .line 102
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    #@61
    .line 103
    return v9

    #@62
    .line 100
    :cond_1
    const/4 v4, 0x0

    #@63
    .restart local v4    # "_arg0":Landroid/view/Surface;
    goto :goto_1

    #@64
    .line 107
    .end local v4    # "_arg0":Landroid/view/Surface;
    :sswitch_5
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@67
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v1

    #@6e
    .line 110
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDeviceOrientation(I)V

    #@71
    .line 111
    return v9

    #@72
    .line 115
    .end local v1    # "_arg0":I
    :sswitch_6
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@75
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@7b
    move-result v0

    #@7c
    .line 118
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setZoom(F)V

    #@7f
    .line 119
    return v9

    #@80
    .line 123
    .end local v0    # "_arg0":F
    :sswitch_7
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@83
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v8

    #@8a
    if-eqz v8, :cond_2

    #@8c
    .line 126
    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8e
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@91
    move-result-object v3

    #@92
    check-cast v3, Landroid/telecom/VideoProfile;

    #@94
    .line 132
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@97
    move-result v8

    #@98
    if-eqz v8, :cond_3

    #@9a
    .line 133
    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9c
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9f
    move-result-object v7

    #@a0
    check-cast v7, Landroid/telecom/VideoProfile;

    #@a2
    .line 138
    :goto_3
    invoke-virtual {p0, v3, v7}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    #@a5
    .line 139
    return v9

    #@a6
    .line 129
    :cond_2
    const/4 v3, 0x0

    #@a7
    .local v3, "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_2

    #@a8
    .line 136
    .end local v3    # "_arg0":Landroid/telecom/VideoProfile;
    :cond_3
    const/4 v7, 0x0

    #@a9
    .local v7, "_arg1":Landroid/telecom/VideoProfile;
    goto :goto_3

    #@aa
    .line 143
    .end local v7    # "_arg1":Landroid/telecom/VideoProfile;
    :sswitch_8
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@ad
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0
    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v8

    #@b4
    if-eqz v8, :cond_4

    #@b6
    .line 146
    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b8
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bb
    move-result-object v3

    #@bc
    check-cast v3, Landroid/telecom/VideoProfile;

    #@be
    .line 151
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    #@c1
    .line 152
    return v9

    #@c2
    .line 149
    :cond_4
    const/4 v3, 0x0

    #@c3
    .restart local v3    # "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_4

    #@c4
    .line 156
    .end local v3    # "_arg0":Landroid/telecom/VideoProfile;
    :sswitch_9
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@c7
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    .line 157
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCameraCapabilities()V

    #@cd
    .line 158
    return v9

    #@ce
    .line 162
    :sswitch_a
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@d1
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d4
    .line 163
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCallDataUsage()V

    #@d7
    .line 164
    return v9

    #@d8
    .line 168
    :sswitch_b
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallProvider"

    #@db
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@de
    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v8

    #@e2
    if-eqz v8, :cond_5

    #@e4
    .line 171
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e6
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e9
    move-result-object v2

    #@ea
    check-cast v2, Landroid/net/Uri;

    #@ec
    .line 176
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    #@ef
    .line 177
    return v9

    #@f0
    .line 174
    :cond_5
    const/4 v2, 0x0

    #@f1
    .local v2, "_arg0":Landroid/net/Uri;
    goto :goto_5

    #@f2
    .line 56
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
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
