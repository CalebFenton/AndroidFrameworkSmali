.class public abstract Landroid/app/trust/ITrustManager$Stub;
.super Landroid/os/Binder;
.source "ITrustManager.java"

# interfaces
.implements Landroid/app/trust/ITrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/ITrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/ITrustManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.trust.ITrustManager"

.field static final TRANSACTION_isDeviceLocked:I = 0x7

.field static final TRANSACTION_isDeviceSecure:I = 0x8

.field static final TRANSACTION_isTrustUsuallyManaged:I = 0x9

.field static final TRANSACTION_registerTrustListener:I = 0x3

.field static final TRANSACTION_reportEnabledTrustAgentsChanged:I = 0x2

.field static final TRANSACTION_reportKeyguardShowingChanged:I = 0x5

.field static final TRANSACTION_reportUnlockAttempt:I = 0x1

.field static final TRANSACTION_setDeviceLockedForUser:I = 0x6

.field static final TRANSACTION_unregisterTrustListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.app.trust.ITrustManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/trust/ITrustManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;
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
    const-string/jumbo v1, "android.app.trust.ITrustManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/trust/ITrustManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/app/trust/ITrustManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/trust/ITrustManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/trust/ITrustManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v6

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@14
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_0

    #@1d
    const/4 v2, 0x1

    #@1e
    .line 56
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    .line 57
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->reportUnlockAttempt(ZI)V

    #@25
    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    .line 59
    return v6

    #@29
    .line 54
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_arg0":Z
    goto :goto_0

    #@2b
    .line 63
    .end local v2    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@2e
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    .line 66
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->reportEnabledTrustAgentsChanged(I)V

    #@38
    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b
    .line 68
    return v6

    #@3c
    .line 72
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@3f
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@45
    move-result-object v7

    #@46
    invoke-static {v7}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    #@49
    move-result-object v1

    #@4a
    .line 75
    .local v1, "_arg0":Landroid/app/trust/ITrustListener;
    invoke-virtual {p0, v1}, Landroid/app/trust/ITrustManager$Stub;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    #@4d
    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@50
    .line 77
    return v6

    #@51
    .line 81
    .end local v1    # "_arg0":Landroid/app/trust/ITrustListener;
    :sswitch_4
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@54
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57
    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5a
    move-result-object v7

    #@5b
    invoke-static {v7}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    #@5e
    move-result-object v1

    #@5f
    .line 84
    .restart local v1    # "_arg0":Landroid/app/trust/ITrustListener;
    invoke-virtual {p0, v1}, Landroid/app/trust/ITrustManager$Stub;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V

    #@62
    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@65
    .line 86
    return v6

    #@66
    .line 90
    .end local v1    # "_arg0":Landroid/app/trust/ITrustListener;
    :sswitch_5
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@69
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    .line 91
    invoke-virtual {p0}, Landroid/app/trust/ITrustManager$Stub;->reportKeyguardShowingChanged()V

    #@6f
    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@72
    .line 93
    return v6

    #@73
    .line 97
    :sswitch_6
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@76
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@79
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7c
    move-result v0

    #@7d
    .line 101
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v7

    #@81
    if-eqz v7, :cond_1

    #@83
    move v4, v6

    #@84
    .line 102
    .local v4, "_arg1":Z
    :cond_1
    invoke-virtual {p0, v0, v4}, Landroid/app/trust/ITrustManager$Stub;->setDeviceLockedForUser(IZ)V

    #@87
    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    .line 104
    return v6

    #@8b
    .line 108
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Z
    :sswitch_7
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@8e
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@91
    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v0

    #@95
    .line 111
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->isDeviceLocked(I)Z

    #@98
    move-result v5

    #@99
    .line 112
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c
    .line 113
    if-eqz v5, :cond_2

    #@9e
    move v4, v6

    #@9f
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a2
    .line 114
    return v6

    #@a3
    .line 118
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_8
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@a6
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a9
    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ac
    move-result v0

    #@ad
    .line 121
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->isDeviceSecure(I)Z

    #@b0
    move-result v5

    #@b1
    .line 122
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b4
    .line 123
    if-eqz v5, :cond_3

    #@b6
    move v4, v6

    #@b7
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@ba
    .line 124
    return v6

    #@bb
    .line 128
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_9
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@be
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c1
    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v0

    #@c5
    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->isTrustUsuallyManaged(I)Z

    #@c8
    move-result v5

    #@c9
    .line 132
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cc
    .line 133
    if-eqz v5, :cond_4

    #@ce
    move v4, v6

    #@cf
    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@d2
    .line 134
    return v6

    #@d3
    .line 43
    nop

    #@d4
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
