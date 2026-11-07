.class public abstract Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 143
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_4
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 155
    instance-of v1, v0, Lcom/android/internal/telephony/IIccPhoneBook;

    if-eqz v1, :cond_13

    .line 156
    check-cast v0, Lcom/android/internal/telephony/IIccPhoneBook;

    return-object v0

    .line 158
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 168
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 171
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    packed-switch p1, :pswitch_data_f8

    .line 286
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 277
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsCapacityForSubscriber(I)Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object p0

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_f7

    .line 265
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-interface {p0, p1, p4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSizeForSubscriber(II)[I

    move-result-object p0

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_f7

    .line 255
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object p0

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_f7

    .line 237
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 241
    sget-object p1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/content/ContentValues;

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 247
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexForSubscriber(IILandroid/content/ContentValues;ILjava/lang/String;)Z

    move-result p0

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_f7

    :pswitch_84
    move-object v2, p0

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 225
    sget-object p4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/ContentValues;

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-interface {v2, p0, p1, p4, v0}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result p0

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_f7

    :pswitch_a7
    move-object v2, p0

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_f7

    :pswitch_ce
    move-object v2, p0

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-interface {v2, p0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object p0

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_f7

    :pswitch_e5
    move-object v2, p0

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object p0

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    :goto_f7
    return v1

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_ce
        :pswitch_a7
        :pswitch_84
        :pswitch_5b
        :pswitch_48
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
