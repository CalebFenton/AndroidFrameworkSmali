.class public abstract Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;
.super Landroid/os/Binder;
.source "ITeletextPageSubCode.java"

# interfaces
.implements Landroid/media/tv/extension/teletext/ITeletextPageSubCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/teletext/ITeletextPageSubCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getTeletextHasTopInfo:I = 0x5

.field static final blacklist TRANSACTION_getTeletextPageNumber:I = 0x1

.field static final blacklist TRANSACTION_getTeletextPageSubCode:I = 0x3

.field static final blacklist TRANSACTION_getTeletextTopBlockList:I = 0x6

.field static final blacklist TRANSACTION_getTeletextTopGroupList:I = 0x7

.field static final blacklist TRANSACTION_getTeletextTopPageList:I = 0x8

.field static final blacklist TRANSACTION_setTeleltextPageNumber:I = 0x2

.field static final blacklist TRANSACTION_setTeletextPageSubCode:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.media.tv.extension.teletext.ITeletextPageSubCode"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/teletext/ITeletextPageSubCode;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const-string v0, "android.media.tv.extension.teletext.ITeletextPageSubCode"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/teletext/ITeletextPageSubCode;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/teletext/ITeletextPageSubCode;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 90
    packed-switch p0, :pswitch_data_26

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 122
    :pswitch_5
    const-string/jumbo v0, "getTeletextTopPageList"

    return-object v0

    .line 118
    :pswitch_9
    const-string/jumbo v0, "getTeletextTopGroupList"

    return-object v0

    .line 114
    :pswitch_d
    const-string/jumbo v0, "getTeletextTopBlockList"

    return-object v0

    .line 110
    :pswitch_11
    const-string/jumbo v0, "getTeletextHasTopInfo"

    return-object v0

    .line 106
    :pswitch_15
    const-string/jumbo v0, "setTeletextPageSubCode"

    return-object v0

    .line 102
    :pswitch_19
    const-string/jumbo v0, "getTeletextPageSubCode"

    return-object v0

    .line 98
    :pswitch_1d
    const-string/jumbo v0, "setTeleltextPageNumber"

    return-object v0

    .line 94
    :pswitch_21
    const-string/jumbo v0, "getTeletextPageNumber"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
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

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 417
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 133
    invoke-static {p1}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 137
    const-string v0, "android.media.tv.extension.teletext.ITeletextPageSubCode"

    .line 138
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_16
    packed-switch p1, :pswitch_data_b8

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 224
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextTopPageList(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    .line 229
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    goto/16 :goto_b7

    .line 212
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextTopGroupList(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    .line 217
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 219
    goto :goto_b7

    .line 202
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextTopBlockList(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 205
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 207
    goto :goto_b7

    .line 192
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextHasTopInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 195
    .restart local v3    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 197
    goto :goto_b7

    .line 181
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->setTeletextPageSubCode(Ljava/lang/String;I)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_b7

    .line 171
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextPageSubCode(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 174
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 176
    goto :goto_b7

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 163
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->setTeleltextPageNumber(Ljava/lang/String;I)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_b7

    .line 150
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextPageNumber(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 153
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    nop

    .line 238
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :goto_b7
    return v1

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_93
        :pswitch_81
        :pswitch_6f
        :pswitch_5d
        :pswitch_4b
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
