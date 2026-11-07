.class public abstract Landroid/hardware/contexthub/IContextHubCallback$Stub;
.super Landroid/os/Binder;
.source "IContextHubCallback.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHubCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHubCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IContextHubCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getName:I = 0x8

.field static final blacklist TRANSACTION_getUuid:I = 0x7

.field static final blacklist TRANSACTION_handleContextHubAsyncEvent:I = 0x3

.field static final blacklist TRANSACTION_handleContextHubMessage:I = 0x2

.field static final blacklist TRANSACTION_handleMessageDeliveryStatus:I = 0x6

.field static final blacklist TRANSACTION_handleNanSessionRequest:I = 0x5

.field static final blacklist TRANSACTION_handleNanoappInfo:I = 0x1

.field static final blacklist TRANSACTION_handleTransactionResult:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->markVintfStability()V

    .line 70
    sget-object v0, Landroid/hardware/contexthub/IContextHubCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_4
    sget-object v0, Landroid/hardware/contexthub/IContextHubCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/contexthub/IContextHubCallback;

    if-eqz v1, :cond_14

    .line 83
    move-object v1, v0

    check-cast v1, Landroid/hardware/contexthub/IContextHubCallback;

    return-object v1

    .line 85
    :cond_14
    new-instance v1, Landroid/hardware/contexthub/IContextHubCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 89
    return-object p0
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

    .line 93
    sget-object v0, Landroid/hardware/contexthub/IContextHubCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v2

    .line 101
    :cond_16
    if-ne p1, v1, :cond_23

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return v2

    .line 106
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v2

    .line 111
    :cond_33
    packed-switch p1, :pswitch_data_ca

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 182
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->getName()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    goto/16 :goto_c9

    .line 175
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_47
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->getUuid()[B

    move-result-object v1

    .line 176
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    const/16 v3, 0x10

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 178
    goto :goto_c9

    .line 165
    .end local v1    # "_result":[B
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    .line 167
    .local v1, "_arg0":C
    sget-object v3, Landroid/hardware/contexthub/MessageDeliveryStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/MessageDeliveryStatus;

    .line 168
    .local v3, "_arg1":Landroid/hardware/contexthub/MessageDeliveryStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->handleMessageDeliveryStatus(CLandroid/hardware/contexthub/MessageDeliveryStatus;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_c9

    .line 156
    .end local v1    # "_arg0":C
    .end local v3    # "_arg1":Landroid/hardware/contexthub/MessageDeliveryStatus;
    :pswitch_6f
    sget-object v1, Landroid/hardware/contexthub/NanSessionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/NanSessionRequest;

    .line 157
    .local v1, "_arg0":Landroid/hardware/contexthub/NanSessionRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v1}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->handleNanSessionRequest(Landroid/hardware/contexthub/NanSessionRequest;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_c9

    .line 145
    .end local v1    # "_arg0":Landroid/hardware/contexthub/NanSessionRequest;
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 148
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->handleTransactionResult(IZ)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_c9

    .line 136
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v1}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->handleContextHubAsyncEvent(I)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto :goto_c9

    .line 125
    .end local v1    # "_arg0":I
    :pswitch_a1
    sget-object v1, Landroid/hardware/contexthub/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/ContextHubMessage;

    .line 127
    .local v1, "_arg0":Landroid/hardware/contexthub/ContextHubMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->handleContextHubMessage(Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_c9

    .line 116
    .end local v1    # "_arg0":Landroid/hardware/contexthub/ContextHubMessage;
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_b7
    sget-object v1, Landroid/hardware/contexthub/NanoappInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/contexthub/NanoappInfo;

    .line 117
    .local v1, "_arg0":[Landroid/hardware/contexthub/NanoappInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v1}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->handleNanoappInfo([Landroid/hardware/contexthub/NanoappInfo;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    nop

    .line 192
    .end local v1    # "_arg0":[Landroid/hardware/contexthub/NanoappInfo;
    :goto_c9
    return v2

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_a1
        :pswitch_93
        :pswitch_81
        :pswitch_6f
        :pswitch_58
        :pswitch_47
        :pswitch_3b
    .end packed-switch
.end method
