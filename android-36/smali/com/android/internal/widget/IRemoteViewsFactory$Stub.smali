.class public abstract Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.super Landroid/os/Binder;
.source "IRemoteViewsFactory.java"

# interfaces
.implements Lcom/android/internal/widget/IRemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/IRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.IRemoteViewsFactory"

.field static final greylist-max-o TRANSACTION_getCount:I = 0x4

.field static final greylist-max-o TRANSACTION_getItemId:I = 0x8

.field static final greylist-max-o TRANSACTION_getLoadingView:I = 0x6

.field static final blacklist TRANSACTION_getRemoteCollectionItems:I = 0xb

.field static final greylist-max-o TRANSACTION_getViewAt:I = 0x5

.field static final greylist-max-o TRANSACTION_getViewTypeCount:I = 0x7

.field static final greylist-max-o TRANSACTION_hasStableIds:I = 0x9

.field static final greylist-max-o TRANSACTION_isCreated:I = 0xa

.field static final greylist-max-o TRANSACTION_onDataSetChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onDataSetChangedAsync:I = 0x2

.field static final greylist-max-o TRANSACTION_onDestroy:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_4
    const-string v0, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/widget/IRemoteViewsFactory;

    if-eqz v1, :cond_14

    .line 82
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/IRemoteViewsFactory;

    return-object v1

    .line 84
    :cond_14
    new-instance v1, Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 93
    packed-switch p0, :pswitch_data_26

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 137
    :pswitch_5
    const-string v0, "getRemoteCollectionItems"

    return-object v0

    .line 133
    :pswitch_8
    const-string v0, "isCreated"

    return-object v0

    .line 129
    :pswitch_b
    const-string v0, "hasStableIds"

    return-object v0

    .line 125
    :pswitch_e
    const-string v0, "getItemId"

    return-object v0

    .line 121
    :pswitch_11
    const-string v0, "getViewTypeCount"

    return-object v0

    .line 117
    :pswitch_14
    const-string v0, "getLoadingView"

    return-object v0

    .line 113
    :pswitch_17
    const-string v0, "getViewAt"

    return-object v0

    .line 109
    :pswitch_1a
    const-string v0, "getCount"

    return-object v0

    .line 105
    :pswitch_1d
    const-string v0, "onDestroy"

    return-object v0

    .line 101
    :pswitch_20
    const-string v0, "onDataSetChangedAsync"

    return-object v0

    .line 97
    :pswitch_23
    const-string v0, "onDataSetChanged"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
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

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 464
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 148
    invoke-static {p1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 152
    const-string v0, "com.android.internal.widget.IRemoteViewsFactory"

    .line 153
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 154
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v1

    .line 160
    :cond_16
    packed-switch p1, :pswitch_data_ac

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 239
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getRemoteCollectionItems(II)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v4

    .line 244
    .local v4, "_result":Landroid/widget/RemoteViews$RemoteCollectionItems;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 246
    goto/16 :goto_aa

    .line 231
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/widget/RemoteViews$RemoteCollectionItems;
    :pswitch_35
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->isCreated()Z

    move-result v2

    .line 232
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 234
    goto :goto_aa

    .line 224
    .end local v2    # "_result":Z
    :pswitch_40
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->hasStableIds()Z

    move-result v2

    .line 225
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 227
    goto :goto_aa

    .line 215
    .end local v2    # "_result":Z
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getItemId(I)J

    move-result-wide v3

    .line 218
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    goto :goto_aa

    .line 207
    .end local v2    # "_arg0":I
    .end local v3    # "_result":J
    :pswitch_5d
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getViewTypeCount()I

    move-result v2

    .line 208
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    goto :goto_aa

    .line 200
    .end local v2    # "_result":I
    :pswitch_68
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 201
    .local v2, "_result":Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 203
    goto :goto_aa

    .line 191
    .end local v2    # "_result":Landroid/widget/RemoteViews;
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 194
    .local v3, "_result":Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 196
    goto :goto_aa

    .line 183
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/widget/RemoteViews;
    :pswitch_85
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getCount()I

    move-result v2

    .line 184
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    goto :goto_aa

    .line 176
    .end local v2    # "_result":I
    :pswitch_90
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 177
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDestroy(Landroid/content/Intent;)V

    .line 179
    goto :goto_aa

    .line 170
    .end local v2    # "_arg0":Landroid/content/Intent;
    :pswitch_9f
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDataSetChangedAsync()V

    .line 171
    goto :goto_aa

    .line 164
    :pswitch_a3
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDataSetChanged()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    nop

    .line 253
    :goto_aa
    return v1

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_9f
        :pswitch_90
        :pswitch_85
        :pswitch_73
        :pswitch_68
        :pswitch_5d
        :pswitch_4b
        :pswitch_40
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
