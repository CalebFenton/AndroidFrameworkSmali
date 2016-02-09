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

.field static final TRANSACTION_hasUserAuthenticatedSinceBoot:I = 0x9

.field static final TRANSACTION_isDeviceLocked:I = 0x7

.field static final TRANSACTION_isDeviceSecure:I = 0x8

.field static final TRANSACTION_registerTrustListener:I = 0x4

.field static final TRANSACTION_reportEnabledTrustAgentsChanged:I = 0x2

.field static final TRANSACTION_reportKeyguardShowingChanged:I = 0x6

.field static final TRANSACTION_reportRequireCredentialEntry:I = 0x3

.field static final TRANSACTION_reportUnlockAttempt:I = 0x1

.field static final TRANSACTION_unregisterTrustListener:I = 0x5


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
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v5, "android.app.trust.ITrustManager"

    #@d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v6

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v5, "android.app.trust.ITrustManager"

    #@14
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

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
    const-string/jumbo v5, "android.app.trust.ITrustManager"

    #@2e
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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
    const-string/jumbo v5, "android.app.trust.ITrustManager"

    #@3f
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->reportRequireCredentialEntry(I)V

    #@49
    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c
    .line 77
    return v6

    #@4d
    .line 81
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v5, "android.app.trust.ITrustManager"

    #@50
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53
    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@56
    move-result-object v5

    #@57
    invoke-static {v5}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    #@5a
    move-result-object v1

    #@5b
    .line 84
    .local v1, "_arg0":Landroid/app/trust/ITrustListener;
    invoke-virtual {p0, v1}, Landroid/app/trust/ITrustManager$Stub;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    #@5e
    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@61
    .line 86
    return v6

    #@62
    .line 90
    .end local v1    # "_arg0":Landroid/app/trust/ITrustListener;
    :sswitch_5
    const-string/jumbo v5, "android.app.trust.ITrustManager"

    #@65
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6b
    move-result-object v5

    #@6c
    invoke-static {v5}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    #@6f
    move-result-object v1

    #@70
    .line 93
    .restart local v1    # "_arg0":Landroid/app/trust/ITrustListener;
    invoke-virtual {p0, v1}, Landroid/app/trust/ITrustManager$Stub;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V

    #@73
    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@76
    .line 95
    return v6

    #@77
    .line 99
    .end local v1    # "_arg0":Landroid/app/trust/ITrustListener;
    :sswitch_6
    const-string/jumbo v5, "android.app.trust.ITrustManager"

    #@7a
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d
    .line 100
    invoke-virtual {p0}, Landroid/app/trust/ITrustManager$Stub;->reportKeyguardShowingChanged()V

    #@80
    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@83
    .line 102
    return v6

    #@84
    .line 106
    :sswitch_7
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@87
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a
    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v0

    #@8e
    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->isDeviceLocked(I)Z

    #@91
    move-result v4

    #@92
    .line 110
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@95
    .line 111
    if-eqz v4, :cond_1

    #@97
    move v5, v6

    #@98
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@9b
    .line 112
    return v6

    #@9c
    .line 116
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_8
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@9f
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v0

    #@a6
    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->isDeviceSecure(I)Z

    #@a9
    move-result v4

    #@aa
    .line 120
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ad
    .line 121
    if-eqz v4, :cond_2

    #@af
    move v5, v6

    #@b0
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@b3
    .line 122
    return v6

    #@b4
    .line 126
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_9
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    #@b7
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba
    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bd
    move-result v0

    #@be
    .line 129
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->hasUserAuthenticatedSinceBoot(I)Z

    #@c1
    move-result v4

    #@c2
    .line 130
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c5
    .line 131
    if-eqz v4, :cond_3

    #@c7
    move v5, v6

    #@c8
    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@cb
    .line 132
    return v6

    #@cc
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
