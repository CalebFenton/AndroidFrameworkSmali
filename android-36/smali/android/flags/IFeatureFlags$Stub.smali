.class public abstract Landroid/flags/IFeatureFlags$Stub;
.super Landroid/os/Binder;
.source "IFeatureFlags.java"

# interfaces
.implements Landroid/flags/IFeatureFlags;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/flags/IFeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/flags/IFeatureFlags$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_overrideFlag:I = 0x5

.field static final blacklist TRANSACTION_queryFlags:I = 0x4

.field static final blacklist TRANSACTION_registerCallback:I = 0x2

.field static final blacklist TRANSACTION_resetFlag:I = 0x6

.field static final blacklist TRANSACTION_syncFlags:I = 0x1

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.flags.IFeatureFlags"

    invoke-virtual {p0, p0, v0}, Landroid/flags/IFeatureFlags$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/flags/IFeatureFlags;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_4
    const-string v0, "android.flags.IFeatureFlags"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/flags/IFeatureFlags;

    if-eqz v1, :cond_14

    .line 115
    move-object v1, v0

    check-cast v1, Landroid/flags/IFeatureFlags;

    return-object v1

    .line 117
    :cond_14
    new-instance v1, Landroid/flags/IFeatureFlags$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/flags/IFeatureFlags$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 126
    packed-switch p0, :pswitch_data_1e

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 150
    :pswitch_5
    const-string/jumbo v0, "resetFlag"

    return-object v0

    .line 146
    :pswitch_9
    const-string/jumbo v0, "overrideFlag"

    return-object v0

    .line 142
    :pswitch_d
    const-string/jumbo v0, "queryFlags"

    return-object v0

    .line 138
    :pswitch_11
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 134
    :pswitch_15
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 130
    :pswitch_19
    const-string/jumbo v0, "syncFlags"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 121
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 402
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 161
    invoke-static {p1}, Landroid/flags/IFeatureFlags$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    const-string v0, "android.flags.IFeatureFlags"

    .line 166
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 170
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return v1

    .line 173
    :cond_16
    packed-switch p1, :pswitch_data_90

    .line 233
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 225
    :pswitch_1e
    sget-object v2, Landroid/flags/SyncableFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/flags/SyncableFlag;

    .line 226
    .local v2, "_arg0":Landroid/flags/SyncableFlag;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/flags/IFeatureFlags$Stub;->resetFlag(Landroid/flags/SyncableFlag;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_8e

    .line 216
    .end local v2    # "_arg0":Landroid/flags/SyncableFlag;
    :pswitch_30
    sget-object v2, Landroid/flags/SyncableFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/flags/SyncableFlag;

    .line 217
    .restart local v2    # "_arg0":Landroid/flags/SyncableFlag;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2}, Landroid/flags/IFeatureFlags$Stub;->overrideFlag(Landroid/flags/SyncableFlag;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto :goto_8e

    .line 206
    .end local v2    # "_arg0":Landroid/flags/SyncableFlag;
    :pswitch_42
    sget-object v2, Landroid/flags/SyncableFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 207
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Landroid/flags/IFeatureFlags$Stub;->queryFlags(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 209
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 211
    goto :goto_8e

    .line 197
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/flags/IFeatureFlagsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/flags/IFeatureFlagsCallback;

    move-result-object v2

    .line 198
    .local v2, "_arg0":Landroid/flags/IFeatureFlagsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/flags/IFeatureFlags$Stub;->unregisterCallback(Landroid/flags/IFeatureFlagsCallback;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_8e

    .line 188
    .end local v2    # "_arg0":Landroid/flags/IFeatureFlagsCallback;
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/flags/IFeatureFlagsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/flags/IFeatureFlagsCallback;

    move-result-object v2

    .line 189
    .restart local v2    # "_arg0":Landroid/flags/IFeatureFlagsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2}, Landroid/flags/IFeatureFlags$Stub;->registerCallback(Landroid/flags/IFeatureFlagsCallback;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_8e

    .line 178
    .end local v2    # "_arg0":Landroid/flags/IFeatureFlagsCallback;
    :pswitch_7a
    sget-object v2, Landroid/flags/SyncableFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 179
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2}, Landroid/flags/IFeatureFlags$Stub;->syncFlags(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 181
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 183
    nop

    .line 236
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/flags/SyncableFlag;>;"
    :goto_8e
    return v1

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_68
        :pswitch_56
        :pswitch_42
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
