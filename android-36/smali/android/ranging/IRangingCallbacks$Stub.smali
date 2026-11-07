.class public abstract Landroid/ranging/IRangingCallbacks$Stub;
.super Landroid/os/Binder;
.source "IRangingCallbacks.java"

# interfaces
.implements Landroid/ranging/IRangingCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/IRangingCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/IRangingCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onClosed:I = 0x6

.field static final blacklist TRANSACTION_onOpenFailed:I = 0x2

.field static final blacklist TRANSACTION_onOpened:I = 0x1

.field static final blacklist TRANSACTION_onResults:I = 0x4

.field static final blacklist TRANSACTION_onStarted:I = 0x3

.field static final blacklist TRANSACTION_onStopped:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.ranging.IRangingCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/ranging/IRangingCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/ranging/IRangingCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.ranging.IRangingCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/ranging/IRangingCallbacks;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/ranging/IRangingCallbacks;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/ranging/IRangingCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/ranging/IRangingCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_18

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_5
    const-string v0, "onClosed"

    return-object v0

    .line 90
    :pswitch_8
    const-string v0, "onStopped"

    return-object v0

    .line 86
    :pswitch_b
    const-string v0, "onResults"

    return-object v0

    .line 82
    :pswitch_e
    const-string v0, "onStarted"

    return-object v0

    .line 78
    :pswitch_11
    const-string v0, "onOpenFailed"

    return-object v0

    .line 74
    :pswitch_14
    const-string v0, "onOpened"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 295
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Landroid/ranging/IRangingCallbacks$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    const-string v0, "android.ranging.IRangingCallbacks"

    .line 110
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_16
    packed-switch p1, :pswitch_data_aa

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 176
    :pswitch_1e
    sget-object v2, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/SessionHandle;

    .line 178
    .local v2, "_arg0":Landroid/ranging/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 179
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3}, Landroid/ranging/IRangingCallbacks$Stub;->onClosed(Landroid/ranging/SessionHandle;I)V

    .line 181
    goto/16 :goto_a9

    .line 164
    .end local v2    # "_arg0":Landroid/ranging/SessionHandle;
    .end local v3    # "_arg1":I
    :pswitch_32
    sget-object v2, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/SessionHandle;

    .line 166
    .restart local v2    # "_arg0":Landroid/ranging/SessionHandle;
    sget-object v3, Landroid/ranging/RangingDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/ranging/RangingDevice;

    .line 168
    .local v3, "_arg1":Landroid/ranging/RangingDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3, v4}, Landroid/ranging/IRangingCallbacks$Stub;->onStopped(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;I)V

    .line 171
    goto :goto_a9

    .line 152
    .end local v2    # "_arg0":Landroid/ranging/SessionHandle;
    .end local v3    # "_arg1":Landroid/ranging/RangingDevice;
    .end local v4    # "_arg2":I
    :pswitch_4d
    sget-object v2, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/SessionHandle;

    .line 154
    .restart local v2    # "_arg0":Landroid/ranging/SessionHandle;
    sget-object v3, Landroid/ranging/RangingDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/ranging/RangingDevice;

    .line 156
    .restart local v3    # "_arg1":Landroid/ranging/RangingDevice;
    sget-object v4, Landroid/ranging/RangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/ranging/RangingData;

    .line 157
    .local v4, "_arg2":Landroid/ranging/RangingData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2, v3, v4}, Landroid/ranging/IRangingCallbacks$Stub;->onResults(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V

    .line 159
    goto :goto_a9

    .line 140
    .end local v2    # "_arg0":Landroid/ranging/SessionHandle;
    .end local v3    # "_arg1":Landroid/ranging/RangingDevice;
    .end local v4    # "_arg2":Landroid/ranging/RangingData;
    :pswitch_6c
    sget-object v2, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/SessionHandle;

    .line 142
    .restart local v2    # "_arg0":Landroid/ranging/SessionHandle;
    sget-object v3, Landroid/ranging/RangingDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/ranging/RangingDevice;

    .line 144
    .restart local v3    # "_arg1":Landroid/ranging/RangingDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 145
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2, v3, v4}, Landroid/ranging/IRangingCallbacks$Stub;->onStarted(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;I)V

    .line 147
    goto :goto_a9

    .line 130
    .end local v2    # "_arg0":Landroid/ranging/SessionHandle;
    .end local v3    # "_arg1":Landroid/ranging/RangingDevice;
    .end local v4    # "_arg2":I
    :pswitch_87
    sget-object v2, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/SessionHandle;

    .line 132
    .restart local v2    # "_arg0":Landroid/ranging/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2, v3}, Landroid/ranging/IRangingCallbacks$Stub;->onOpenFailed(Landroid/ranging/SessionHandle;I)V

    .line 135
    goto :goto_a9

    .line 122
    .end local v2    # "_arg0":Landroid/ranging/SessionHandle;
    .end local v3    # "_arg1":I
    :pswitch_9a
    sget-object v2, Landroid/ranging/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/SessionHandle;

    .line 123
    .restart local v2    # "_arg0":Landroid/ranging/SessionHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Landroid/ranging/IRangingCallbacks$Stub;->onOpened(Landroid/ranging/SessionHandle;)V

    .line 125
    nop

    .line 188
    .end local v2    # "_arg0":Landroid/ranging/SessionHandle;
    :goto_a9
    return v1

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_87
        :pswitch_6c
        :pswitch_4d
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
