.class public abstract Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;
.super Landroid/os/Binder;
.source "IContextHubEndpointCallback.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHubEndpointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHubEndpointCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onMessageReceived:I = 0x4

.field static final blacklist TRANSACTION_onSessionClosed:I = 0x2

.field static final blacklist TRANSACTION_onSessionOpenComplete:I = 0x3

.field static final blacklist TRANSACTION_onSessionOpenRequest:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.hardware.contexthub.IContextHubEndpointCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpointCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "android.hardware.contexthub.IContextHubEndpointCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/contexthub/IContextHubEndpointCallback;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/hardware/contexthub/IContextHubEndpointCallback;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_12

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_5
    const-string v0, "onMessageReceived"

    return-object v0

    .line 103
    :pswitch_8
    const-string v0, "onSessionOpenComplete"

    return-object v0

    .line 99
    :pswitch_b
    const-string v0, "onSessionClosed"

    return-object v0

    .line 95
    :pswitch_e
    const-string v0, "onSessionOpenRequest"

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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 281
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const-string v0, "android.hardware.contexthub.IContextHubEndpointCallback"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 130
    :cond_16
    packed-switch p1, :pswitch_data_64

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/contexthub/HubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubMessage;

    .line 168
    .local v3, "_arg1":Landroid/hardware/contexthub/HubMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V

    .line 170
    goto :goto_62

    .line 157
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/HubMessage;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->onSessionOpenComplete(I)V

    .line 160
    goto :goto_62

    .line 147
    .end local v2    # "_arg0":I
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2, v3}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->onSessionClosed(II)V

    .line 152
    goto :goto_62

    .line 135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/contexthub/HubEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 139
    .local v3, "_arg1":Landroid/hardware/contexthub/HubEndpointInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 142
    nop

    .line 177
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_62
    return v1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_3c
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
