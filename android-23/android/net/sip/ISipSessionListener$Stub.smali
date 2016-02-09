.class public abstract Landroid/net/sip/ISipSessionListener$Stub;
.super Landroid/os/Binder;
.source "ISipSessionListener.java"

# interfaces
.implements Landroid/net/sip/ISipSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/ISipSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.sip.ISipSessionListener"

.field static final TRANSACTION_onCallBusy:I = 0x6

.field static final TRANSACTION_onCallChangeFailed:I = 0x9

.field static final TRANSACTION_onCallEnded:I = 0x5

.field static final TRANSACTION_onCallEstablished:I = 0x4

.field static final TRANSACTION_onCallTransferring:I = 0x7

.field static final TRANSACTION_onCalling:I = 0x1

.field static final TRANSACTION_onError:I = 0x8

.field static final TRANSACTION_onRegistering:I = 0xa

.field static final TRANSACTION_onRegistrationDone:I = 0xb

.field static final TRANSACTION_onRegistrationFailed:I = 0xc

.field static final TRANSACTION_onRegistrationTimeout:I = 0xd

.field static final TRANSACTION_onRinging:I = 0x2

.field static final TRANSACTION_onRingingBack:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.net.sip.ISipSessionListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.net.sip.ISipSessionListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/sip/ISipSessionListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/net/sip/ISipSessionListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/sip/ISipSessionListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/sip/ISipSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x1

    #@1
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v5

    #@8
    return v5

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v6

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@13
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v5

    #@1a
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@1d
    move-result-object v0

    #@1e
    .line 54
    .local v0, "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onCalling(Landroid/net/sip/ISipSession;)V

    #@21
    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 56
    return v6

    #@25
    .line 60
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    :sswitch_2
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@28
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@32
    move-result-object v0

    #@33
    .line 64
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_0

    #@39
    .line 65
    sget-object v5, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Landroid/net/sip/SipProfile;

    #@41
    .line 71
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    .line 72
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    #@48
    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b
    .line 74
    return v6

    #@4c
    .line 68
    .end local v4    # "_arg2":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@4d
    .local v2, "_arg1":Landroid/net/sip/SipProfile;
    goto :goto_0

    #@4e
    .line 78
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v2    # "_arg1":Landroid/net/sip/SipProfile;
    :sswitch_3
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@51
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@57
    move-result-object v5

    #@58
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@5b
    move-result-object v0

    #@5c
    .line 81
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onRingingBack(Landroid/net/sip/ISipSession;)V

    #@5f
    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    .line 83
    return v6

    #@63
    .line 87
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    :sswitch_4
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@66
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6c
    move-result-object v5

    #@6d
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@70
    move-result-object v0

    #@71
    .line 91
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    .line 92
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/net/sip/ISipSessionListener$Stub;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    #@78
    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    .line 94
    return v6

    #@7c
    .line 98
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@7f
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82
    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@85
    move-result-object v5

    #@86
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@89
    move-result-object v0

    #@8a
    .line 101
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onCallEnded(Landroid/net/sip/ISipSession;)V

    #@8d
    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@90
    .line 103
    return v6

    #@91
    .line 107
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    :sswitch_6
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@94
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@97
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9a
    move-result-object v5

    #@9b
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@9e
    move-result-object v0

    #@9f
    .line 110
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onCallBusy(Landroid/net/sip/ISipSession;)V

    #@a2
    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5
    .line 112
    return v6

    #@a6
    .line 116
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    :sswitch_7
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@a9
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ac
    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@af
    move-result-object v5

    #@b0
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@b3
    move-result-object v0

    #@b4
    .line 120
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    .line 121
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/net/sip/ISipSessionListener$Stub;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    #@bb
    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@be
    .line 123
    return v6

    #@bf
    .line 127
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@c2
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c5
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c8
    move-result-object v5

    #@c9
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@cc
    move-result-object v0

    #@cd
    .line 131
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d0
    move-result v1

    #@d1
    .line 133
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d4
    move-result-object v4

    #@d5
    .line 134
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@d8
    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@db
    .line 136
    return v6

    #@dc
    .line 140
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v1    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@df
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e5
    move-result-object v5

    #@e6
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@e9
    move-result-object v0

    #@ea
    .line 144
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ed
    move-result v1

    #@ee
    .line 146
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f1
    move-result-object v4

    #@f2
    .line 147
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@f5
    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f8
    .line 149
    return v6

    #@f9
    .line 153
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v1    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@fc
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ff
    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@102
    move-result-object v5

    #@103
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@106
    move-result-object v0

    #@107
    .line 156
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistering(Landroid/net/sip/ISipSession;)V

    #@10a
    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10d
    .line 158
    return v6

    #@10e
    .line 162
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    :sswitch_b
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@111
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@114
    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@117
    move-result-object v5

    #@118
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@11b
    move-result-object v0

    #@11c
    .line 166
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11f
    move-result v1

    #@120
    .line 167
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    #@123
    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@126
    .line 169
    return v6

    #@127
    .line 173
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v1    # "_arg1":I
    :sswitch_c
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@12a
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12d
    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@130
    move-result-object v5

    #@131
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@134
    move-result-object v0

    #@135
    .line 177
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@138
    move-result v1

    #@139
    .line 179
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13c
    move-result-object v4

    #@13d
    .line 180
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    #@140
    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@143
    .line 182
    return v6

    #@144
    .line 186
    .end local v0    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v1    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v5, "android.net.sip.ISipSessionListener"

    #@147
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a
    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14d
    move-result-object v5

    #@14e
    invoke-static {v5}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    #@151
    move-result-object v0

    #@152
    .line 189
    .restart local v0    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    #@155
    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@158
    .line 191
    return v6

    #@159
    .line 42
    nop

    #@15a
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
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
