.class public abstract Landroid/net/sip/ISipSession$Stub;
.super Landroid/os/Binder;
.source "ISipSession.java"

# interfaces
.implements Landroid/net/sip/ISipSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/ISipSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.sip.ISipSession"

.field static final TRANSACTION_answerCall:I = 0xb

.field static final TRANSACTION_changeCall:I = 0xd

.field static final TRANSACTION_endCall:I = 0xc

.field static final TRANSACTION_getCallId:I = 0x6

.field static final TRANSACTION_getLocalIp:I = 0x1

.field static final TRANSACTION_getLocalProfile:I = 0x2

.field static final TRANSACTION_getPeerProfile:I = 0x3

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_isInCall:I = 0x5

.field static final TRANSACTION_makeCall:I = 0xa

.field static final TRANSACTION_register:I = 0x8

.field static final TRANSACTION_setListener:I = 0x7

.field static final TRANSACTION_unregister:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.net.sip.ISipSession"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/sip/ISipSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;
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
    const-string/jumbo v1, "android.net.sip.ISipSession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/sip/ISipSession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/net/sip/ISipSession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/sip/ISipSession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/sip/ISipSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 183
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 48
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->getLocalIp()Ljava/lang/String;

    #@19
    move-result-object v9

    #@1a
    .line 54
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    .line 55
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 56
    const/4 v11, 0x1

    #@21
    return v11

    #@22
    .line 60
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@25
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 61
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->getLocalProfile()Landroid/net/sip/SipProfile;

    #@2b
    move-result-object v8

    #@2c
    .line 62
    .local v8, "_result":Landroid/net/sip/SipProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f
    .line 63
    if-eqz v8, :cond_0

    #@31
    .line 64
    const/4 v11, 0x1

    #@32
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 65
    const/4 v11, 0x1

    #@36
    invoke-virtual {v8, p3, v11}, Landroid/net/sip/SipProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@39
    .line 70
    :goto_0
    const/4 v11, 0x1

    #@3a
    return v11

    #@3b
    .line 68
    :cond_0
    const/4 v11, 0x0

    #@3c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    goto :goto_0

    #@40
    .line 74
    .end local v8    # "_result":Landroid/net/sip/SipProfile;
    :sswitch_3
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@43
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 75
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->getPeerProfile()Landroid/net/sip/SipProfile;

    #@49
    move-result-object v8

    #@4a
    .line 76
    .restart local v8    # "_result":Landroid/net/sip/SipProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d
    .line 77
    if-eqz v8, :cond_1

    #@4f
    .line 78
    const/4 v11, 0x1

    #@50
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 79
    const/4 v11, 0x1

    #@54
    invoke-virtual {v8, p3, v11}, Landroid/net/sip/SipProfile;->writeToParcel(Landroid/os/Parcel;I)V

    #@57
    .line 84
    :goto_1
    const/4 v11, 0x1

    #@58
    return v11

    #@59
    .line 82
    :cond_1
    const/4 v11, 0x0

    #@5a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    goto :goto_1

    #@5e
    .line 88
    .end local v8    # "_result":Landroid/net/sip/SipProfile;
    :sswitch_4
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@61
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 89
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->getState()I

    #@67
    move-result v7

    #@68
    .line 90
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b
    .line 91
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 92
    const/4 v11, 0x1

    #@6f
    return v11

    #@70
    .line 96
    .end local v7    # "_result":I
    :sswitch_5
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@73
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 97
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->isInCall()Z

    #@79
    move-result v10

    #@7a
    .line 98
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d
    .line 99
    if-eqz v10, :cond_2

    #@7f
    const/4 v11, 0x1

    #@80
    :goto_2
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@83
    .line 100
    const/4 v11, 0x1

    #@84
    return v11

    #@85
    .line 99
    :cond_2
    const/4 v11, 0x0

    #@86
    goto :goto_2

    #@87
    .line 104
    .end local v10    # "_result":Z
    :sswitch_6
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@8a
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d
    .line 105
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->getCallId()Ljava/lang/String;

    #@90
    move-result-object v9

    #@91
    .line 106
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    .line 107
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@97
    .line 108
    const/4 v11, 0x1

    #@98
    return v11

    #@99
    .line 112
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@9c
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9f
    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a2
    move-result-object v11

    #@a3
    invoke-static {v11}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    #@a6
    move-result-object v1

    #@a7
    .line 115
    .local v1, "_arg0":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p0, v1}, Landroid/net/sip/ISipSession$Stub;->setListener(Landroid/net/sip/ISipSessionListener;)V

    #@aa
    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ad
    .line 117
    const/4 v11, 0x1

    #@ae
    return v11

    #@af
    .line 121
    .end local v1    # "_arg0":Landroid/net/sip/ISipSessionListener;
    :sswitch_8
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@b2
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b8
    move-result v0

    #@b9
    .line 124
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/sip/ISipSession$Stub;->register(I)V

    #@bc
    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bf
    .line 126
    const/4 v11, 0x1

    #@c0
    return v11

    #@c1
    .line 130
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@c4
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7
    .line 131
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->unregister()V

    #@ca
    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd
    .line 133
    const/4 v11, 0x1

    #@ce
    return v11

    #@cf
    .line 137
    :sswitch_a
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@d2
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d5
    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d8
    move-result v11

    #@d9
    if-eqz v11, :cond_3

    #@db
    .line 140
    sget-object v11, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dd
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e0
    move-result-object v2

    #@e1
    check-cast v2, Landroid/net/sip/SipProfile;

    #@e3
    .line 146
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e6
    move-result-object v5

    #@e7
    .line 148
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ea
    move-result v6

    #@eb
    .line 149
    .local v6, "_arg2":I
    invoke-virtual {p0, v2, v5, v6}, Landroid/net/sip/ISipSession$Stub;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    #@ee
    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1
    .line 151
    const/4 v11, 0x1

    #@f2
    return v11

    #@f3
    .line 143
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    :cond_3
    const/4 v2, 0x0

    #@f4
    .local v2, "_arg0":Landroid/net/sip/SipProfile;
    goto :goto_3

    #@f5
    .line 155
    .end local v2    # "_arg0":Landroid/net/sip/SipProfile;
    :sswitch_b
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@f8
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb
    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fe
    move-result-object v3

    #@ff
    .line 159
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@102
    move-result v4

    #@103
    .line 160
    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Landroid/net/sip/ISipSession$Stub;->answerCall(Ljava/lang/String;I)V

    #@106
    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@109
    .line 162
    const/4 v11, 0x1

    #@10a
    return v11

    #@10b
    .line 166
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_c
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@10e
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@111
    .line 167
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->endCall()V

    #@114
    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 169
    const/4 v11, 0x1

    #@118
    return v11

    #@119
    .line 173
    :sswitch_d
    const-string/jumbo v11, "android.net.sip.ISipSession"

    #@11c
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@122
    move-result-object v3

    #@123
    .line 177
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@126
    move-result v4

    #@127
    .line 178
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v3, v4}, Landroid/net/sip/ISipSession$Stub;->changeCall(Ljava/lang/String;I)V

    #@12a
    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12d
    .line 180
    const/4 v11, 0x1

    #@12e
    return v11

    #@12f
    .line 43
    nop

    #@130
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
