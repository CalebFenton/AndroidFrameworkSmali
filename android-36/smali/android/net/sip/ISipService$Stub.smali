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
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.sip.ISipService"

.field static final greylist-max-o TRANSACTION_close:I = 0x3

.field static final greylist-max-o TRANSACTION_createSession:I = 0x7

.field static final greylist-max-o TRANSACTION_getPendingSession:I = 0x8

.field static final blacklist TRANSACTION_getProfiles:I = 0x9

.field static final greylist-max-o TRANSACTION_isOpened:I = 0x4

.field static final greylist-max-o TRANSACTION_isRegistered:I = 0x5

.field static final greylist-max-o TRANSACTION_open:I = 0x1

.field static final greylist-max-o TRANSACTION_open3:I = 0x2

.field static final greylist-max-o TRANSACTION_setRegistrationListener:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "android.net.sip.ISipService"

    invoke-virtual {p0, p0, v0}, Landroid/net/sip/ISipService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    const-string v0, "android.net.sip.ISipService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/sip/ISipService;

    if-eqz v1, :cond_14

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/net/sip/ISipService;

    return-object v1

    .line 75
    :cond_14
    new-instance v1, Landroid/net/sip/ISipService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/sip/ISipService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 79
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const-string v0, "android.net.sip.ISipService"

    .line 84
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 91
    :cond_16
    packed-switch p1, :pswitch_data_102

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 196
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipService$Stub;->getProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 199
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 201
    goto/16 :goto_100

    .line 184
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipService$Stub;->getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v4

    .line 189
    .local v4, "_result":Landroid/net/sip/ISipSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 191
    goto/16 :goto_100

    .line 170
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/sip/ISipSession;
    :pswitch_48
    sget-object v2, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 172
    .local v2, "_arg0":Landroid/net/sip/SipProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    move-result-object v3

    .line 174
    .local v3, "_arg1":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipService$Stub;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v5

    .line 177
    .local v5, "_result":Landroid/net/sip/ISipSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 179
    goto/16 :goto_100

    .line 157
    .end local v2    # "_arg0":Landroid/net/sip/SipProfile;
    .end local v3    # "_arg1":Landroid/net/sip/ISipSessionListener;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/net/sip/ISipSession;
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    move-result-object v3

    .line 161
    .restart local v3    # "_arg1":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipService$Stub;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto/16 :goto_100

    .line 145
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/sip/ISipSessionListener;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipService$Stub;->isRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 150
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 152
    goto :goto_100

    .line 133
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipService$Stub;->isOpened(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 138
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 140
    goto :goto_100

    .line 122
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipService$Stub;->close(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    goto :goto_100

    .line 107
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_c4
    sget-object v2, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 109
    .local v2, "_arg0":Landroid/net/sip/SipProfile;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 111
    .local v3, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    move-result-object v4

    .line 113
    .local v4, "_arg2":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/sip/ISipService$Stub;->open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    goto :goto_100

    .line 96
    .end local v2    # "_arg0":Landroid/net/sip/SipProfile;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v4    # "_arg2":Landroid/net/sip/ISipSessionListener;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_ea
    sget-object v2, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 98
    .restart local v2    # "_arg0":Landroid/net/sip/SipProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipService$Stub;->open(Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    nop

    .line 208
    .end local v2    # "_arg0":Landroid/net/sip/SipProfile;
    .end local v3    # "_arg1":Ljava/lang/String;
    :goto_100
    return v1

    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_ea
        :pswitch_c4
        :pswitch_b2
        :pswitch_9c
        :pswitch_86
        :pswitch_6b
        :pswitch_48
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
