.class public abstract Lcom/android/internal/telecom/IVideoProvider$Stub;
.super Landroid/os/Binder;
.source "IVideoProvider.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IVideoProvider"

.field static final TRANSACTION_addVideoCallback:I = 0x1

.field static final TRANSACTION_removeVideoCallback:I = 0x2

.field static final TRANSACTION_requestCallDataUsage:I = 0xb

.field static final TRANSACTION_requestCameraCapabilities:I = 0xa

.field static final TRANSACTION_sendSessionModifyRequest:I = 0x8

.field static final TRANSACTION_sendSessionModifyResponse:I = 0x9

.field static final TRANSACTION_setCamera:I = 0x3

.field static final TRANSACTION_setDeviceOrientation:I = 0x6

.field static final TRANSACTION_setDisplaySurface:I = 0x5

.field static final TRANSACTION_setPauseImage:I = 0xc

.field static final TRANSACTION_setPreviewSurface:I = 0x4

.field static final TRANSACTION_setZoom:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "com.android.internal.telecom.IVideoProvider"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "com.android.internal.telecom.IVideoProvider"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telecom/IVideoProvider;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Lcom/android/internal/telecom/IVideoProvider;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v8

    #@8
    return v8

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v9

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@13
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v3

    #@1a
    .line 55
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->addVideoCallback(Landroid/os/IBinder;)V

    #@1d
    .line 56
    return v9

    #@1e
    .line 60
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@21
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@27
    move-result-object v3

    #@28
    .line 63
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->removeVideoCallback(Landroid/os/IBinder;)V

    #@2b
    .line 64
    return v9

    #@2c
    .line 68
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :sswitch_3
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@2f
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    .line 71
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setCamera(Ljava/lang/String;)V

    #@39
    .line 72
    return v9

    #@3a
    .line 76
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@3d
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v8

    #@44
    if-eqz v8, :cond_0

    #@46
    .line 79
    sget-object v8, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@48
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4b
    move-result-object v5

    #@4c
    check-cast v5, Landroid/view/Surface;

    #@4e
    .line 84
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    #@51
    .line 85
    return v9

    #@52
    .line 82
    :cond_0
    const/4 v5, 0x0

    #@53
    .local v5, "_arg0":Landroid/view/Surface;
    goto :goto_0

    #@54
    .line 89
    .end local v5    # "_arg0":Landroid/view/Surface;
    :sswitch_5
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@57
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v8

    #@5e
    if-eqz v8, :cond_1

    #@60
    .line 92
    sget-object v8, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@65
    move-result-object v5

    #@66
    check-cast v5, Landroid/view/Surface;

    #@68
    .line 97
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    #@6b
    .line 98
    return v9

    #@6c
    .line 95
    :cond_1
    const/4 v5, 0x0

    #@6d
    .restart local v5    # "_arg0":Landroid/view/Surface;
    goto :goto_1

    #@6e
    .line 102
    .end local v5    # "_arg0":Landroid/view/Surface;
    :sswitch_6
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@71
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v1

    #@78
    .line 105
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDeviceOrientation(I)V

    #@7b
    .line 106
    return v9

    #@7c
    .line 110
    .end local v1    # "_arg0":I
    :sswitch_7
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@7f
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@85
    move-result v0

    #@86
    .line 113
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setZoom(F)V

    #@89
    .line 114
    return v9

    #@8a
    .line 118
    .end local v0    # "_arg0":F
    :sswitch_8
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@8d
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90
    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v8

    #@94
    if-eqz v8, :cond_2

    #@96
    .line 121
    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@98
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9b
    move-result-object v4

    #@9c
    check-cast v4, Landroid/telecom/VideoProfile;

    #@9e
    .line 127
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a1
    move-result v8

    #@a2
    if-eqz v8, :cond_3

    #@a4
    .line 128
    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a6
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a9
    move-result-object v7

    #@aa
    check-cast v7, Landroid/telecom/VideoProfile;

    #@ac
    .line 133
    :goto_3
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    #@af
    .line 134
    return v9

    #@b0
    .line 124
    :cond_2
    const/4 v4, 0x0

    #@b1
    .local v4, "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_2

    #@b2
    .line 131
    .end local v4    # "_arg0":Landroid/telecom/VideoProfile;
    :cond_3
    const/4 v7, 0x0

    #@b3
    .local v7, "_arg1":Landroid/telecom/VideoProfile;
    goto :goto_3

    #@b4
    .line 138
    .end local v7    # "_arg1":Landroid/telecom/VideoProfile;
    :sswitch_9
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@b7
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba
    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bd
    move-result v8

    #@be
    if-eqz v8, :cond_4

    #@c0
    .line 141
    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c2
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c5
    move-result-object v4

    #@c6
    check-cast v4, Landroid/telecom/VideoProfile;

    #@c8
    .line 146
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    #@cb
    .line 147
    return v9

    #@cc
    .line 144
    :cond_4
    const/4 v4, 0x0

    #@cd
    .restart local v4    # "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_4

    #@ce
    .line 151
    .end local v4    # "_arg0":Landroid/telecom/VideoProfile;
    :sswitch_a
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@d1
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d4
    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCameraCapabilities()V

    #@d7
    .line 153
    return v9

    #@d8
    .line 157
    :sswitch_b
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@db
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@de
    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCallDataUsage()V

    #@e1
    .line 159
    return v9

    #@e2
    .line 163
    :sswitch_c
    const-string/jumbo v8, "com.android.internal.telecom.IVideoProvider"

    #@e5
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e8
    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@eb
    move-result v8

    #@ec
    if-eqz v8, :cond_5

    #@ee
    .line 166
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f0
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f3
    move-result-object v2

    #@f4
    check-cast v2, Landroid/net/Uri;

    #@f6
    .line 171
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    #@f9
    .line 172
    return v9

    #@fa
    .line 169
    :cond_5
    const/4 v2, 0x0

    #@fb
    .local v2, "_arg0":Landroid/net/Uri;
    goto :goto_5

    #@fc
    .line 43
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
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
