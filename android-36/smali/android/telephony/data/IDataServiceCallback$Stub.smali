.class public abstract Landroid/telephony/data/IDataServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IDataServiceCallback.java"

# interfaces
.implements Landroid/telephony/data/IDataServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.data.IDataServiceCallback"

.field static final blacklist TRANSACTION_onApnUnthrottled:I = 0x9

.field static final greylist-max-o TRANSACTION_onDataCallListChanged:I = 0x6

.field static final blacklist TRANSACTION_onDataProfileUnthrottled:I = 0xa

.field static final greylist-max-o TRANSACTION_onDeactivateDataCallComplete:I = 0x2

.field static final blacklist TRANSACTION_onHandoverCancelled:I = 0x8

.field static final blacklist TRANSACTION_onHandoverStarted:I = 0x7

.field static final blacklist TRANSACTION_onRequestDataCallListComplete:I = 0x5

.field static final greylist-max-o TRANSACTION_onSetDataProfileComplete:I = 0x4

.field static final greylist-max-o TRANSACTION_onSetInitialAttachApnComplete:I = 0x3

.field static final greylist-max-o TRANSACTION_onSetupDataCallComplete:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.telephony.data.IDataServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/data/IDataServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    const-string v0, "android.telephony.data.IDataServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/data/IDataServiceCallback;

    if-eqz v1, :cond_14

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/telephony/data/IDataServiceCallback;

    return-object v1

    .line 76
    :cond_14
    new-instance v1, Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_2e

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_5
    const-string/jumbo v0, "onDataProfileUnthrottled"

    return-object v0

    .line 121
    :pswitch_9
    const-string/jumbo v0, "onApnUnthrottled"

    return-object v0

    .line 117
    :pswitch_d
    const-string/jumbo v0, "onHandoverCancelled"

    return-object v0

    .line 113
    :pswitch_11
    const-string/jumbo v0, "onHandoverStarted"

    return-object v0

    .line 109
    :pswitch_15
    const-string/jumbo v0, "onDataCallListChanged"

    return-object v0

    .line 105
    :pswitch_19
    const-string/jumbo v0, "onRequestDataCallListComplete"

    return-object v0

    .line 101
    :pswitch_1d
    const-string/jumbo v0, "onSetDataProfileComplete"

    return-object v0

    .line 97
    :pswitch_21
    const-string/jumbo v0, "onSetInitialAttachApnComplete"

    return-object v0

    .line 93
    :pswitch_25
    const-string/jumbo v0, "onDeactivateDataCallComplete"

    return-object v0

    .line 89
    :pswitch_29
    const-string/jumbo v0, "onSetupDataCallComplete"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 394
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Landroid/telephony/data/IDataServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 140
    const-string v0, "android.telephony.data.IDataServiceCallback"

    .line 141
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 148
    :cond_16
    packed-switch p1, :pswitch_data_a2

    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 229
    :pswitch_1e
    sget-object v2, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 230
    .local v2, "_arg0":Landroid/telephony/data/DataProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    .line 232
    goto/16 :goto_a1

    .line 221
    .end local v2    # "_arg0":Landroid/telephony/data/DataProfile;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onApnUnthrottled(Ljava/lang/String;)V

    .line 224
    goto :goto_a1

    .line 213
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onHandoverCancelled(I)V

    .line 216
    goto :goto_a1

    .line 205
    .end local v2    # "_arg0":I
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onHandoverStarted(I)V

    .line 208
    goto :goto_a1

    .line 197
    .end local v2    # "_arg0":I
    :pswitch_4f
    sget-object v2, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 198
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onDataCallListChanged(Ljava/util/List;)V

    .line 200
    goto :goto_a1

    .line 187
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 190
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->onRequestDataCallListComplete(ILjava/util/List;)V

    .line 192
    goto :goto_a1

    .line 179
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetDataProfileComplete(I)V

    .line 182
    goto :goto_a1

    .line 171
    .end local v2    # "_arg0":I
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetInitialAttachApnComplete(I)V

    .line 174
    goto :goto_a1

    .line 163
    .end local v2    # "_arg0":I
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onDeactivateDataCallComplete(I)V

    .line 166
    goto :goto_a1

    .line 153
    .end local v2    # "_arg0":I
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataCallResponse;

    .line 156
    .local v3, "_arg1":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 158
    nop

    .line 239
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/data/DataCallResponse;
    :goto_a1
    return v1

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_83
        :pswitch_78
        :pswitch_6d
        :pswitch_5c
        :pswitch_4f
        :pswitch_44
        :pswitch_39
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
