.class public abstract Landroid/net/sip/ISipService$Stub;
.super Landroid/os/Binder;
.source "ISipService.java"

# interfaces
.implements Landroid/net/sip/ISipService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/ISipService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.sip.ISipService"

.field static final TRANSACTION_close:I = 0x3

.field static final TRANSACTION_createSession:I = 0x7

.field static final TRANSACTION_getListOfProfiles:I = 0x9

.field static final TRANSACTION_getPendingSession:I = 0x8

.field static final TRANSACTION_isOpened:I = 0x4

.field static final TRANSACTION_isRegistered:I = 0x5

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_open3:I = 0x2

.field static final TRANSACTION_setRegistrationListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.net.sip.ISipService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/sip/ISipService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.net.sip.ISipService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/sip/ISipService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/net/sip/ISipService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/sip/ISipService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/sip/ISipService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 179
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v11, "android.net.sip.ISipService"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 46
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v11, "android.net.sip.ISipService"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v11

    #@1a
    if-eqz v11, :cond_0

    #@1c
    .line 53
    sget-object v11, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/net/sip/SipProfile;

    #@24
    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 60
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Landroid/net/sip/ISipService$Stub;->open(Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    #@2b
    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e
    .line 62
    const/4 v11, 0x1

    #@2f
    return v11

    #@30
    .line 56
    .end local v4    # "_arg1":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    #@31
    .local v0, "_arg0":Landroid/net/sip/SipProfile;
    goto :goto_0

    #@32
    .line 66
    .end local v0    # "_arg0":Landroid/net/sip/SipProfile;
    :sswitch_2
    const-string/jumbo v11, "android.net.sip.ISipService"

    #@35
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v11

    #@3c
    if-eqz v11, :cond_1

    #@3e
    .line 69
    sget-object v11, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Landroid/net/sip/SipProfile;

    #@46
    .line 75
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v11

    #@4a
    if-eqz v11, :cond_2

    #@4c
    .line 76
    sget-object v11, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51
    move-result-object v2

    #@52
    check-cast v2, Landroid/app/PendingIntent;

    #@54
    .line 82
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@57
    move-result-object v11

    #@58
    invoke-static {v11}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    #@5b
    move-result-object v5

    #@5c
    .line 84
    .local v5, "_arg2":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    .line 85
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v5, v7}, Landroid/net/sip/ISipService$Stub;->open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V

    #@63
    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@66
    .line 87
    const/4 v11, 0x1

    #@67
    return v11

    #@68
    .line 72
    .end local v5    # "_arg2":Landroid/net/sip/ISipSessionListener;
    .end local v7    # "_arg3":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    #@69
    .restart local v0    # "_arg0":Landroid/net/sip/SipProfile;
    goto :goto_1

    #@6a
    .line 79
    .end local v0    # "_arg0":Landroid/net/sip/SipProfile;
    :cond_2
    const/4 v2, 0x0

    #@6b
    .local v2, "_arg1":Landroid/app/PendingIntent;
    goto :goto_2

    #@6c
    .line 91
    .end local v2    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3
    const-string/jumbo v11, "android.net.sip.ISipService"

    #@6f
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    .line 95
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    .line 96
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Landroid/net/sip/ISipService$Stub;->close(Ljava/lang/String;Ljava/lang/String;)V

    #@7d
    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@80
    .line 98
    const/4 v11, 0x1

    #@81
    return v11

    #@82
    .line 102
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v11, "android.net.sip.ISipService"

    #@85
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88
    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    .line 106
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8f
    move-result-object v4

    #@90
    .line 107
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Landroid/net/sip/ISipService$Stub;->isOpened(Ljava/lang/String;Ljava/lang/String;)Z

    #@93
    move-result v9

    #@94
    .line 108
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@97
    .line 109
    if-eqz v9, :cond_3

    #@99
    const/4 v11, 0x1

    #@9a
    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@9d
    .line 110
    const/4 v11, 0x1

    #@9e
    return v11

    #@9f
    .line 109
    :cond_3
    const/4 v11, 0x0

    #@a0
    goto :goto_3

    #@a1
    .line 114
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_5
    const-string/jumbo v11, "android.net.sip.ISipService"

    #@a4
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    .line 118
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    .line 119
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Landroid/net/sip/ISipService$Stub;->isRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    #@b2
    move-result v9

    #@b3
    .line 120
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    .line 121
    if-eqz v9, :cond_4

    #@b8
    const/4 v11, 0x1

    #@b9
    :goto_4
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@bc
    .line 122
    const/4 v11, 0x1

    #@bd
    return v11

    #@be
    .line 121
    :cond_4
    const/4 v11, 0x0

    #@bf
    goto :goto_4

    #@c0
    .line 126
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_6
    const-string/jumbo v11, "android.net.sip.ISipService"

    #@c3
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c6
    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c9
    move-result-object v1

    #@ca
    .line 130
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@cd
    move-result-object v11

    #@ce
    invoke-static {v11}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    #@d1
    move-result-object v3

    #@d2
    .line 132
    .local v3, "_arg1":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d5
    move-result-object v6

    #@d6
    .line 133
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v6}, Landroid/net/sip/ISipService$Stub;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V

    #@d9
    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@dc
    .line 135
    const/4 v11, 0x1

    #@dd
    return v11

    #@de
    .line 139
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/sip/ISipSessionListener;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v11, "android.net.sip.ISipService"

    #@e1
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e4
    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e7
    move-result v11

    #@e8
    if-eqz v11, :cond_5

    #@ea
    .line 142
    sget-object v11, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ec
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ef
    move-result-object v0

    #@f0
    check-cast v0, Landroid/net/sip/SipProfile;

    #@f2
    .line 148
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f5
    move-result-object v11

    #@f6
    invoke-static {v11}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    #@f9
    move-result-object v3

    #@fa
    .line 150
    .restart local v3    # "_arg1":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fd
    move-result-object v6

    #@fe
    .line 151
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v3, v6}, Landroid/net/sip/ISipService$Stub;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@101
    move-result-object v8

    #@102
    .line 152
    .local v8, "_result":Landroid/net/sip/ISipSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@105
    .line 153
    if-eqz v8, :cond_6

    #@107
    invoke-interface {v8}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@10a
    move-result-object v11

    #@10b
    :goto_6
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10e
    .line 154
    const/4 v11, 0x1

    #@10f
    return v11

    #@110
    .line 145
    .end local v3    # "_arg1":Landroid/net/sip/ISipSessionListener;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Landroid/net/sip/ISipSession;
    :cond_5
    const/4 v0, 0x0

    #@111
    .restart local v0    # "_arg0":Landroid/net/sip/SipProfile;
    goto :goto_5

    #@112
    .line 153
    .end local v0    # "_arg0":Landroid/net/sip/SipProfile;
    .restart local v3    # "_arg1":Landroid/net/sip/ISipSessionListener;
    .restart local v6    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_result":Landroid/net/sip/ISipSession;
    :cond_6
    const/4 v11, 0x0

    #@113
    goto :goto_6

    #@114
    .line 158
    .end local v3    # "_arg1":Landroid/net/sip/ISipSessionListener;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Landroid/net/sip/ISipSession;
    :sswitch_8
    const-string/jumbo v11, "android.net.sip.ISipService"

    #@117
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a
    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11d
    move-result-object v1

    #@11e
    .line 162
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@121
    move-result-object v4

    #@122
    .line 163
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Landroid/net/sip/ISipService$Stub;->getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    #@125
    move-result-object v8

    #@126
    .line 164
    .restart local v8    # "_result":Landroid/net/sip/ISipSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@129
    .line 165
    if-eqz v8, :cond_7

    #@12b
    invoke-interface {v8}, Landroid/net/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    #@12e
    move-result-object v11

    #@12f
    :goto_7
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@132
    .line 166
    const/4 v11, 0x1

    #@133
    return v11

    #@134
    .line 165
    :cond_7
    const/4 v11, 0x0

    #@135
    goto :goto_7

    #@136
    .line 170
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Landroid/net/sip/ISipSession;
    :sswitch_9
    const-string/jumbo v11, "android.net.sip.ISipService"

    #@139
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13c
    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13f
    move-result-object v1

    #@140
    .line 173
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/sip/ISipService$Stub;->getListOfProfiles(Ljava/lang/String;)[Landroid/net/sip/SipProfile;

    #@143
    move-result-object v10

    #@144
    .line 174
    .local v10, "_result":[Landroid/net/sip/SipProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@147
    .line 175
    const/4 v11, 0x1

    #@148
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@14b
    .line 176
    const/4 v11, 0x1

    #@14c
    return v11

    #@14d
    .line 41
    nop

    #@14e
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
