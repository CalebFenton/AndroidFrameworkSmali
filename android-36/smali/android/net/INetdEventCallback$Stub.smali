.class public abstract Landroid/net/INetdEventCallback$Stub;
.super Landroid/os/Binder;
.source "INetdEventCallback.java"

# interfaces
.implements Landroid/net/INetdEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetdEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetdEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetdEventCallback"

.field static final greylist-max-o TRANSACTION_onConnectEvent:I = 0x4

.field static final greylist-max-o TRANSACTION_onDnsEvent:I = 0x1

.field static final blacklist TRANSACTION_onNat64PrefixEvent:I = 0x2

.field static final greylist-max-o TRANSACTION_onPrivateDnsValidationEvent:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "android.net.INetdEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetdEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/INetdEventCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_4
    const-string v0, "android.net.INetdEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetdEventCallback;

    if-eqz v1, :cond_14

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/net/INetdEventCallback;

    return-object v1

    .line 101
    :cond_14
    new-instance v1, Landroid/net/INetdEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetdEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 110
    packed-switch p0, :pswitch_data_16

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 126
    :pswitch_5
    const-string/jumbo v0, "onConnectEvent"

    return-object v0

    .line 122
    :pswitch_9
    const-string/jumbo v0, "onPrivateDnsValidationEvent"

    return-object v0

    .line 118
    :pswitch_d
    const-string/jumbo v0, "onNat64PrefixEvent"

    return-object v0

    .line 114
    :pswitch_11
    const-string/jumbo v0, "onDnsEvent"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 105
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 357
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 137
    invoke-static {p1}, Landroid/net/INetdEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    move/from16 v10, p1

    const-string v11, "android.net.INetdEventCallback"

    .line 142
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v10, v12, :cond_12

    const v0, 0xffffff

    if-gt v10, v0, :cond_12

    .line 143
    move-object/from16 v13, p2

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 142
    :cond_12
    move-object/from16 v13, p2

    .line 145
    :goto_14
    const v0, 0x5f4e5446

    if-ne v10, v0, :cond_1f

    .line 146
    move-object/from16 v14, p3

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v12

    .line 149
    :cond_1f
    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_98

    .line 217
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 204
    :pswitch_29
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 210
    .local v3, "_arg2":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 211
    .local v5, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetdEventCallback$Stub;->onConnectEvent(Ljava/lang/String;IJI)V

    .line 213
    goto :goto_97

    .line 190
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":I
    :pswitch_41
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 197
    .local v4, "_arg3":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/INetdEventCallback$Stub;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 199
    goto :goto_97

    .line 176
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    :pswitch_58
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 180
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 183
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/INetdEventCallback$Stub;->onNat64PrefixEvent(IZLjava/lang/String;I)V

    .line 185
    goto :goto_97

    .line 154
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_6f
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "_arg4":[Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 166
    .local v6, "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 168
    .local v7, "_arg6":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 169
    .local v9, "_arg7":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/net/INetdEventCallback$Stub;->onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V

    .line 171
    nop

    .line 220
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":[Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":J
    .end local v9    # "_arg7":I
    :goto_97
    return v12

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_58
        :pswitch_41
        :pswitch_29
    .end packed-switch
.end method
