.class public abstract Landroid/apphibernation/IAppHibernationService$Stub;
.super Landroid/os/Binder;
.source "IAppHibernationService.java"

# interfaces
.implements Landroid/apphibernation/IAppHibernationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apphibernation/IAppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/apphibernation/IAppHibernationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getHibernatingPackagesForUser:I = 0x5

.field static final blacklist TRANSACTION_getHibernationStatsForUser:I = 0x6

.field static final blacklist TRANSACTION_isHibernatingForUser:I = 0x1

.field static final blacklist TRANSACTION_isHibernatingGlobally:I = 0x3

.field static final blacklist TRANSACTION_isOatArtifactDeletionEnabled:I = 0x7

.field static final blacklist TRANSACTION_setHibernatingForUser:I = 0x2

.field static final blacklist TRANSACTION_setHibernatingGlobally:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.apphibernation.IAppHibernationService"

    invoke-virtual {p0, p0, v0}, Landroid/apphibernation/IAppHibernationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/apphibernation/IAppHibernationService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    const-string v0, "android.apphibernation.IAppHibernationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/apphibernation/IAppHibernationService;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/apphibernation/IAppHibernationService;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_20

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_5
    const-string/jumbo v0, "isOatArtifactDeletionEnabled"

    return-object v0

    .line 105
    :pswitch_9
    const-string v0, "getHibernationStatsForUser"

    return-object v0

    .line 101
    :pswitch_c
    const-string v0, "getHibernatingPackagesForUser"

    return-object v0

    .line 97
    :pswitch_f
    const-string/jumbo v0, "setHibernatingGlobally"

    return-object v0

    .line 93
    :pswitch_13
    const-string/jumbo v0, "isHibernatingGlobally"

    return-object v0

    .line 89
    :pswitch_17
    const-string/jumbo v0, "setHibernatingForUser"

    return-object v0

    .line 85
    :pswitch_1b
    const-string/jumbo v0, "isHibernatingForUser"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/apphibernation/HibernationStats;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/apphibernation/HibernationStats;

    .line 204
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 383
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Landroid/apphibernation/IAppHibernationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 124
    const-string v0, "android.apphibernation.IAppHibernationService"

    .line 125
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 132
    :cond_16
    packed-switch p1, :pswitch_data_b6

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 212
    :pswitch_1e
    invoke-virtual {p0}, Landroid/apphibernation/IAppHibernationService$Stub;->isOatArtifactDeletionEnabled()Z

    move-result v2

    .line 213
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    goto/16 :goto_b5

    .line 193
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 195
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 196
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3}, Landroid/apphibernation/IAppHibernationService$Stub;->getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v4

    .line 198
    .local v4, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/apphibernation/HibernationStats;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-nez v4, :cond_43

    .line 200
    const/4 v5, -0x1

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b5

    .line 202
    :cond_43
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    new-instance v5, Landroid/apphibernation/IAppHibernationService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v5, p3}, Landroid/apphibernation/IAppHibernationService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 208
    goto :goto_b5

    .line 183
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/apphibernation/HibernationStats;>;"
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/apphibernation/IAppHibernationService$Stub;->getHibernatingPackagesForUser(I)Ljava/util/List;

    move-result-object v3

    .line 186
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 188
    goto :goto_b5

    .line 172
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 175
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3}, Landroid/apphibernation/IAppHibernationService$Stub;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_b5

    .line 162
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2}, Landroid/apphibernation/IAppHibernationService$Stub;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v3

    .line 165
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 167
    goto :goto_b5

    .line 149
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 153
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 154
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3, v4}, Landroid/apphibernation/IAppHibernationService$Stub;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_b5

    .line 137
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 140
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2, v3}, Landroid/apphibernation/IAppHibernationService$Stub;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v4

    .line 142
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 144
    nop

    .line 222
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :goto_b5
    return v1

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_89
        :pswitch_77
        :pswitch_65
        :pswitch_53
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
