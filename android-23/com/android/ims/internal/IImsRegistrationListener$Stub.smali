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

.field static final TRANSACTION_registrationConnected:I = 0x1

.field static final TRANSACTION_registrationDisconnected:I = 0x3

.field static final TRANSACTION_registrationFeatureCapabilityChanged:I = 0x7

.field static final TRANSACTION_registrationProgressing:I = 0x2

.field static final TRANSACTION_registrationResumed:I = 0x4

.field static final TRANSACTION_registrationServiceCapabilityChanged:I = 0x6

.field static final TRANSACTION_registrationSuspended:I = 0x5


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
    const/4 v8, 0x1

    #@1
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v7

    #@8
    return v7

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    #@c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v8

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    #@13
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationConnected()V

    #@19
    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c
    .line 56
    return v8

    #@1d
    .line 60
    :sswitch_2
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    #@20
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23
    .line 61
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationProgressing()V

    #@26
    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 63
    return v8

    #@2a
    .line 67
    :sswitch_3
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    #@2d
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_0

    #@36
    .line 70
    sget-object v7, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Lcom/android/ims/ImsReasonInfo;

    #@3e
    .line 75
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationDisconnected(Lcom/android/ims/ImsReasonInfo;)V

    #@41
    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@44
    .line 77
    return v8

    #@45
    .line 73
    :cond_0
    const/4 v1, 0x0

    #@46
    .local v1, "_arg0":Lcom/android/ims/ImsReasonInfo;
    goto :goto_0

    #@47
    .line 81
    .end local v1    # "_arg0":Lcom/android/ims/ImsReasonInfo;
    :sswitch_4
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    #@4a
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d
    .line 82
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationResumed()V

    #@50
    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@53
    .line 84
    return v8

    #@54
    .line 88
    :sswitch_5
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    #@57
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    .line 89
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationSuspended()V

    #@5d
    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@60
    .line 91
    return v8

    #@61
    .line 95
    :sswitch_6
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    #@64
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67
    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v0

    #@6b
    .line 99
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v2

    #@6f
    .line 100
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationServiceCapabilityChanged(II)V

    #@72
    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    .line 102
    return v8

    #@76
    .line 106
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_7
    const-string/jumbo v7, "com.android.ims.internal.IImsRegistrationListener"

    #@79
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v0

    #@80
    .line 110
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v4

    #@84
    .line 111
    .local v4, "_arg1_length":I
    if-gez v4, :cond_1

    #@86
    .line 112
    const/4 v3, 0x0

    #@87
    .line 118
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8a
    move-result v6

    #@8b
    .line 119
    .local v6, "_arg2_length":I
    if-gez v6, :cond_2

    #@8d
    .line 120
    const/4 v5, 0x0

    #@8e
    .line 125
    :goto_2
    invoke-virtual {p0, v0, v3, v5}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationFeatureCapabilityChanged(I[I[I)V

    #@91
    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    #@97
    .line 128
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    #@9a
    .line 129
    return v8

    #@9b
    .line 115
    .end local v6    # "_arg2_length":I
    :cond_1
    new-array v3, v4, [I

    #@9d
    .local v3, "_arg1":[I
    goto :goto_1

    #@9e
    .line 123
    .end local v3    # "_arg1":[I
    .restart local v6    # "_arg2_length":I
    :cond_2
    new-array v5, v6, [I

    #@a0
    .local v5, "_arg2":[I
    goto :goto_2

    #@a1
    .line 44
    nop

    #@a2
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
