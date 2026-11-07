.class public abstract Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;
.super Landroid/os/Binder;
.source "IMbmsGroupCallService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsGroupCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dispose:I = 0x5

.field static final blacklist TRANSACTION_initialize:I = 0x1

.field static final blacklist TRANSACTION_startGroupCall:I = 0x4

.field static final blacklist TRANSACTION_stopGroupCall:I = 0x2

.field static final blacklist TRANSACTION_updateGroupCall:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_18

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 89
    :pswitch_5
    const-string v0, "dispose"

    return-object v0

    .line 85
    :pswitch_8
    const-string/jumbo v0, "startGroupCall"

    return-object v0

    .line 81
    :pswitch_c
    const-string/jumbo v0, "updateGroupCall"

    return-object v0

    .line 77
    :pswitch_10
    const-string/jumbo v0, "stopGroupCall"

    return-object v0

    .line 73
    :pswitch_14
    const-string v0, "initialize"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 302
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 100
    invoke-static {p1}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    move-object v7, p2

    move-object/from16 v8, p3

    const-string v9, "android.telephony.mbms.vendor.IMbmsGroupCallService"

    .line 105
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_10

    const v1, 0xffffff

    if-gt p1, v1, :cond_10

    .line 106
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    :cond_10
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 109
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v10

    .line 112
    :cond_19
    packed-switch p1, :pswitch_data_b0

    .line 183
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 175
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->dispose(I)V

    .line 178
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto/16 :goto_ae

    .line 156
    .end local v1    # "_arg0":I
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 160
    .local v2, "_arg1":J
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 161
    .local v11, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 163
    .local v4, "_arg2":Ljava/util/List;
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    .line 165
    .local v5, "_arg3":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/mbms/IGroupCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IGroupCallCallback;

    move-result-object v6

    .line 166
    .local v6, "_arg4":Landroid/telephony/mbms/IGroupCallCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I

    move-result v12

    .line 168
    .local v12, "_result":I
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v8, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    goto :goto_ae

    .line 140
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Ljava/util/List;
    .end local v5    # "_arg3":Ljava/util/List;
    .end local v6    # "_arg4":Landroid/telephony/mbms/IGroupCallCallback;
    .end local v11    # "cl":Ljava/lang/ClassLoader;
    .end local v12    # "_result":I
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 144
    .restart local v2    # "_arg1":J
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 145
    .local v6, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 147
    .restart local v4    # "_arg2":Ljava/util/List;
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    .line 148
    .restart local v5    # "_arg3":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->updateGroupCall(IJLjava/util/List;Ljava/util/List;)V

    .line 150
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_ae

    .line 129
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Ljava/util/List;
    .end local v5    # "_arg3":Ljava/util/List;
    .end local v6    # "cl":Ljava/lang/ClassLoader;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 132
    .restart local v2    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->stopGroupCall(IJ)V

    .line 134
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    goto :goto_ae

    .line 117
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    move-result-object v1

    .line 119
    .local v1, "_arg0":Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I

    move-result v3

    .line 122
    .local v3, "_result":I
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    nop

    .line 186
    .end local v1    # "_arg0":Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :goto_ae
    return v10

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_94
        :pswitch_82
        :pswitch_5f
        :pswitch_30
        :pswitch_21
    .end packed-switch
.end method
