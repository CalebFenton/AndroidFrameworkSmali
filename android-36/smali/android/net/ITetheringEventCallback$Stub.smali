.class public abstract Landroid/net/ITetheringEventCallback$Stub;
.super Landroid/os/Binder;
.source "ITetheringEventCallback.java"

# interfaces
.implements Landroid/net/ITetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ITetheringEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ITetheringEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCallbackStarted:I = 0x1

.field static final blacklist TRANSACTION_onCallbackStopped:I = 0x2

.field static final blacklist TRANSACTION_onConfigurationChanged:I = 0x4

.field static final blacklist TRANSACTION_onOffloadStatusChanged:I = 0x7

.field static final blacklist TRANSACTION_onSupportedTetheringTypes:I = 0x8

.field static final blacklist TRANSACTION_onTetherClientsChanged:I = 0x6

.field static final blacklist TRANSACTION_onTetherStatesChanged:I = 0x5

.field static final blacklist TRANSACTION_onUpstreamChanged:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.net.ITetheringEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/ITetheringEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringEventCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    const-string v0, "android.net.ITetheringEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/ITetheringEventCallback;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/net/ITetheringEventCallback;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Landroid/net/ITetheringEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ITetheringEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 80
    packed-switch p0, :pswitch_data_1e

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 112
    :pswitch_5
    const-string v0, "onSupportedTetheringTypes"

    return-object v0

    .line 108
    :pswitch_8
    const-string v0, "onOffloadStatusChanged"

    return-object v0

    .line 104
    :pswitch_b
    const-string v0, "onTetherClientsChanged"

    return-object v0

    .line 100
    :pswitch_e
    const-string v0, "onTetherStatesChanged"

    return-object v0

    .line 96
    :pswitch_11
    const-string v0, "onConfigurationChanged"

    return-object v0

    .line 92
    :pswitch_14
    const-string v0, "onUpstreamChanged"

    return-object v0

    .line 88
    :pswitch_17
    const-string v0, "onCallbackStopped"

    return-object v0

    .line 84
    :pswitch_1a
    const-string v0, "onCallbackStarted"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 324
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 123
    invoke-static {p1}, Landroid/net/ITetheringEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 127
    const-string v0, "android.net.ITetheringEventCallback"

    .line 128
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 135
    :cond_16
    packed-switch p1, :pswitch_data_72

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 189
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 190
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/net/ITetheringEventCallback$Stub;->onSupportedTetheringTypes(J)V

    .line 191
    goto :goto_70

    .line 182
    .end local v2    # "_arg0":J
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/ITetheringEventCallback$Stub;->onOffloadStatusChanged(I)V

    .line 184
    goto :goto_70

    .line 175
    .end local v2    # "_arg0":I
    :pswitch_2e
    sget-object v2, Landroid/net/TetheredClient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 176
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/TetheredClient;>;"
    invoke-virtual {p0, v2}, Landroid/net/ITetheringEventCallback$Stub;->onTetherClientsChanged(Ljava/util/List;)V

    .line 177
    goto :goto_70

    .line 168
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/TetheredClient;>;"
    :pswitch_38
    sget-object v2, Landroid/net/TetherStatesParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetherStatesParcel;

    .line 169
    .local v2, "_arg0":Landroid/net/TetherStatesParcel;
    invoke-virtual {p0, v2}, Landroid/net/ITetheringEventCallback$Stub;->onTetherStatesChanged(Landroid/net/TetherStatesParcel;)V

    .line 170
    goto :goto_70

    .line 161
    .end local v2    # "_arg0":Landroid/net/TetherStatesParcel;
    :pswitch_44
    sget-object v2, Landroid/net/TetheringConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetheringConfigurationParcel;

    .line 162
    .local v2, "_arg0":Landroid/net/TetheringConfigurationParcel;
    invoke-virtual {p0, v2}, Landroid/net/ITetheringEventCallback$Stub;->onConfigurationChanged(Landroid/net/TetheringConfigurationParcel;)V

    .line 163
    goto :goto_70

    .line 154
    .end local v2    # "_arg0":Landroid/net/TetheringConfigurationParcel;
    :pswitch_50
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 155
    .local v2, "_arg0":Landroid/net/Network;
    invoke-virtual {p0, v2}, Landroid/net/ITetheringEventCallback$Stub;->onUpstreamChanged(Landroid/net/Network;)V

    .line 156
    goto :goto_70

    .line 147
    .end local v2    # "_arg0":Landroid/net/Network;
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/ITetheringEventCallback$Stub;->onCallbackStopped(I)V

    .line 149
    goto :goto_70

    .line 140
    .end local v2    # "_arg0":I
    :pswitch_64
    sget-object v2, Landroid/net/TetheringCallbackStartedParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetheringCallbackStartedParcel;

    .line 141
    .local v2, "_arg0":Landroid/net/TetheringCallbackStartedParcel;
    invoke-virtual {p0, v2}, Landroid/net/ITetheringEventCallback$Stub;->onCallbackStarted(Landroid/net/TetheringCallbackStartedParcel;)V

    .line 142
    nop

    .line 198
    .end local v2    # "_arg0":Landroid/net/TetheringCallbackStartedParcel;
    :goto_70
    return v1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2e
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
