.class public abstract Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.super Landroid/os/Binder;
.source "IImsRegistrationListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsRegistrationListener"

.field static final TRANSACTION_registrationAssociatedUriChanged:I = 0xb

.field static final TRANSACTION_registrationConnected:I = 0x1

.field static final TRANSACTION_registrationConnectedWithRadioTech:I = 0x3

.field static final TRANSACTION_registrationDisconnected:I = 0x5

.field static final TRANSACTION_registrationFeatureCapabilityChanged:I = 0x9

.field static final TRANSACTION_registrationProgressing:I = 0x2

.field static final TRANSACTION_registrationProgressingWithRadioTech:I = 0x4

.field static final TRANSACTION_registrationResumed:I = 0x6

.field static final TRANSACTION_registrationServiceCapabilityChanged:I = 0x8

.field static final TRANSACTION_registrationSuspended:I = 0x7

.field static final TRANSACTION_voiceMessageCountUpdate:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "com.android.ims.internal.IImsRegistrationListener"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.IImsRegistrationListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/IImsRegistrationListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Lcom/android/ims/internal/IImsRegistrationListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v6

    #@8
    return v6

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v7

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@13
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationConnected()V

    #@19
    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c
    .line 56
    return v7

    #@1d
    .line 60
    :sswitch_2
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@20
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23
    .line 61
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationProgressing()V

    #@26
    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 63
    return v7

    #@2a
    .line 67
    :sswitch_3
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@2d
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    .line 70
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationConnectedWithRadioTech(I)V

    #@37
    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a
    .line 72
    return v7

    #@3b
    .line 76
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@3e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v0

    #@45
    .line 79
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationProgressingWithRadioTech(I)V

    #@48
    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b
    .line 81
    return v7

    #@4c
    .line 85
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@4f
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v6

    #@56
    if-eqz v6, :cond_0

    #@58
    .line 88
    sget-object v6, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5a
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    #@60
    .line 93
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationDisconnected(Lcom/android/ims/ImsReasonInfo;)V

    #@63
    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@66
    .line 95
    return v7

    #@67
    .line 91
    :cond_0
    const/4 v1, 0x0

    #@68
    .local v1, "_arg0":Lcom/android/ims/ImsReasonInfo;
    goto :goto_0

    #@69
    .line 99
    .end local v1    # "_arg0":Lcom/android/ims/ImsReasonInfo;
    :sswitch_6
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@6c
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f
    .line 100
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationResumed()V

    #@72
    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    .line 102
    return v7

    #@76
    .line 106
    :sswitch_7
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@79
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    .line 107
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationSuspended()V

    #@7f
    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@82
    .line 109
    return v7

    #@83
    .line 113
    :sswitch_8
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@86
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89
    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v0

    #@8d
    .line 117
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@90
    move-result v3

    #@91
    .line 118
    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationServiceCapabilityChanged(II)V

    #@94
    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@97
    .line 120
    return v7

    #@98
    .line 124
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_9
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@9b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e
    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a1
    move-result v0

    #@a2
    .line 128
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@a5
    move-result-object v4

    #@a6
    .line 130
    .local v4, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@a9
    move-result-object v5

    #@aa
    .line 131
    .local v5, "_arg2":[I
    invoke-virtual {p0, v0, v4, v5}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationFeatureCapabilityChanged(I[I[I)V

    #@ad
    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b0
    .line 133
    return v7

    #@b1
    .line 137
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_arg2":[I
    :sswitch_a
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@b4
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b7
    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ba
    move-result v0

    #@bb
    .line 140
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->voiceMessageCountUpdate(I)V

    #@be
    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c1
    .line 142
    return v7

    #@c2
    .line 146
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string/jumbo v6, "com.android.ims.internal.IImsRegistrationListener"

    #@c5
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    .line 148
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ca
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@cd
    move-result-object v2

    #@ce
    check-cast v2, [Landroid/net/Uri;

    #@d0
    .line 149
    .local v2, "_arg0":[Landroid/net/Uri;
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    #@d3
    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6
    .line 151
    return v7

    #@d7
    .line 44
    nop

    #@d8
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
