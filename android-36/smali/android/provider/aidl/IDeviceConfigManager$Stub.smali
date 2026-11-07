.class public abstract Landroid/provider/aidl/IDeviceConfigManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceConfigManager.java"

# interfaces
.implements Landroid/provider/aidl/IDeviceConfigManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/aidl/IDeviceConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/aidl/IDeviceConfigManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deleteProperty:I = 0x4

.field static final blacklist TRANSACTION_getProperties:I = 0x1

.field static final blacklist TRANSACTION_setProperties:I = 0x2

.field static final blacklist TRANSACTION_setProperty:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.provider.aidl.IDeviceConfigManager"

    invoke-virtual {p0, p0, v0}, Landroid/provider/aidl/IDeviceConfigManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/provider/aidl/IDeviceConfigManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.provider.aidl.IDeviceConfigManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/provider/aidl/IDeviceConfigManager;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/provider/aidl/IDeviceConfigManager;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/provider/aidl/IDeviceConfigManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/provider/aidl/IDeviceConfigManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_12

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_5
    const-string v0, "deleteProperty"

    return-object v0

    .line 81
    :pswitch_8
    const-string v0, "setProperty"

    return-object v0

    .line 77
    :pswitch_b
    const-string v0, "setProperties"

    return-object v0

    .line 73
    :pswitch_e
    const-string v0, "getProperties"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 124
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg1"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 139
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "v":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 305
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/provider/aidl/IDeviceConfigManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    const-string v0, "android.provider.aidl.IDeviceConfigManager"

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_16
    packed-switch p1, :pswitch_data_aa

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 170
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Landroid/provider/aidl/IDeviceConfigManager$Stub;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 175
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 177
    goto/16 :goto_a8

    .line 154
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 161
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/provider/aidl/IDeviceConfigManager$Stub;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 163
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 165
    goto :goto_a8

    .line 133
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Z
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 137
    .local v3, "N":I
    if-gez v3, :cond_5f

    const/4 v4, 0x0

    goto :goto_64

    :cond_5f
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v4, "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_64
    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Landroid/provider/aidl/IDeviceConfigManager$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v6, p2, v4}, Landroid/provider/aidl/IDeviceConfigManager$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 145
    .end local v3    # "N":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2, v4}, Landroid/provider/aidl/IDeviceConfigManager$Stub;->setProperties(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    .line 147
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 149
    goto :goto_a8

    .line 113
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    .end local v4    # "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2, v3}, Landroid/provider/aidl/IDeviceConfigManager$Stub;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 118
    .local v4, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-nez v4, :cond_98

    .line 120
    const/4 v5, -0x1

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a8

    .line 122
    :cond_98
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    new-instance v5, Landroid/provider/aidl/IDeviceConfigManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v5, p3}, Landroid/provider/aidl/IDeviceConfigManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 128
    nop

    .line 184
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_a8
    return v1

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_53
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
