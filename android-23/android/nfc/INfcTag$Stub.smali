.class public abstract Landroid/nfc/INfcTag$Stub;
.super Landroid/os/Binder;
.source "INfcTag.java"

# interfaces
.implements Landroid/nfc/INfcTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcTag$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcTag"

.field static final TRANSACTION_canMakeReadOnly:I = 0x11

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_formatNdef:I = 0xc

.field static final TRANSACTION_getExtendedLengthApdusSupported:I = 0x13

.field static final TRANSACTION_getMaxTransceiveLength:I = 0x12

.field static final TRANSACTION_getTechList:I = 0x4

.field static final TRANSACTION_getTimeout:I = 0xf

.field static final TRANSACTION_isNdef:I = 0x5

.field static final TRANSACTION_isPresent:I = 0x6

.field static final TRANSACTION_ndefIsWritable:I = 0xb

.field static final TRANSACTION_ndefMakeReadOnly:I = 0xa

.field static final TRANSACTION_ndefRead:I = 0x8

.field static final TRANSACTION_ndefWrite:I = 0x9

.field static final TRANSACTION_reconnect:I = 0x3

.field static final TRANSACTION_rediscover:I = 0xd

.field static final TRANSACTION_resetTimeouts:I = 0x10

.field static final TRANSACTION_setTimeout:I = 0xe

.field static final TRANSACTION_transceive:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.nfc.INfcTag"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcTag$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.nfc.INfcTag"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/nfc/INfcTag;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/nfc/INfcTag;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcTag$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/nfc/INfcTag$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 269
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 46
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->close(I)I

    #@1d
    move-result v5

    #@1e
    .line 54
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 55
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 56
    const/4 v11, 0x1

    #@25
    return v11

    #@26
    .line 60
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_2
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@29
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v1

    #@34
    .line 65
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->connect(II)I

    #@37
    move-result v5

    #@38
    .line 66
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b
    .line 67
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 68
    const/4 v11, 0x1

    #@3f
    return v11

    #@40
    .line 72
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_3
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@43
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v0

    #@4a
    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->reconnect(I)I

    #@4d
    move-result v5

    #@4e
    .line 76
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    .line 77
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    .line 78
    const/4 v11, 0x1

    #@55
    return v11

    #@56
    .line 82
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_4
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@59
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v0

    #@60
    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getTechList(I)[I

    #@63
    move-result-object v10

    #@64
    .line 86
    .local v10, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    .line 87
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    #@6a
    .line 88
    const/4 v11, 0x1

    #@6b
    return v11

    #@6c
    .line 92
    .end local v0    # "_arg0":I
    .end local v10    # "_result":[I
    :sswitch_5
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@6f
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v0

    #@76
    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isNdef(I)Z

    #@79
    move-result v9

    #@7a
    .line 96
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d
    .line 97
    if-eqz v9, :cond_0

    #@7f
    const/4 v11, 0x1

    #@80
    :goto_0
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@83
    .line 98
    const/4 v11, 0x1

    #@84
    return v11

    #@85
    .line 97
    :cond_0
    const/4 v11, 0x0

    #@86
    goto :goto_0

    #@87
    .line 102
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_6
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@8a
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d
    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@90
    move-result v0

    #@91
    .line 105
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isPresent(I)Z

    #@94
    move-result v9

    #@95
    .line 106
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@98
    .line 107
    if-eqz v9, :cond_1

    #@9a
    const/4 v11, 0x1

    #@9b
    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@9e
    .line 108
    const/4 v11, 0x1

    #@9f
    return v11

    #@a0
    .line 107
    :cond_1
    const/4 v11, 0x0

    #@a1
    goto :goto_1

    #@a2
    .line 112
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_7
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@a5
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a8
    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ab
    move-result v0

    #@ac
    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@af
    move-result-object v3

    #@b0
    .line 118
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v11

    #@b4
    if-eqz v11, :cond_2

    #@b6
    const/4 v4, 0x1

    #@b7
    .line 119
    .local v4, "_arg2":Z
    :goto_2
    invoke-virtual {p0, v0, v3, v4}, Landroid/nfc/INfcTag$Stub;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    #@ba
    move-result-object v8

    #@bb
    .line 120
    .local v8, "_result":Landroid/nfc/TransceiveResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@be
    .line 121
    if-eqz v8, :cond_3

    #@c0
    .line 122
    const/4 v11, 0x1

    #@c1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@c4
    .line 123
    const/4 v11, 0x1

    #@c5
    invoke-virtual {v8, p3, v11}, Landroid/nfc/TransceiveResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@c8
    .line 128
    :goto_3
    const/4 v11, 0x1

    #@c9
    return v11

    #@ca
    .line 118
    .end local v4    # "_arg2":Z
    .end local v8    # "_result":Landroid/nfc/TransceiveResult;
    :cond_2
    const/4 v4, 0x0

    #@cb
    .restart local v4    # "_arg2":Z
    goto :goto_2

    #@cc
    .line 126
    .restart local v8    # "_result":Landroid/nfc/TransceiveResult;
    :cond_3
    const/4 v11, 0x0

    #@cd
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@d0
    goto :goto_3

    #@d1
    .line 132
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Z
    .end local v8    # "_result":Landroid/nfc/TransceiveResult;
    :sswitch_8
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@d4
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d7
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@da
    move-result v0

    #@db
    .line 135
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefRead(I)Landroid/nfc/NdefMessage;

    #@de
    move-result-object v6

    #@df
    .line 136
    .local v6, "_result":Landroid/nfc/NdefMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e2
    .line 137
    if-eqz v6, :cond_4

    #@e4
    .line 138
    const/4 v11, 0x1

    #@e5
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@e8
    .line 139
    const/4 v11, 0x1

    #@e9
    invoke-virtual {v6, p3, v11}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    #@ec
    .line 144
    :goto_4
    const/4 v11, 0x1

    #@ed
    return v11

    #@ee
    .line 142
    :cond_4
    const/4 v11, 0x0

    #@ef
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@f2
    goto :goto_4

    #@f3
    .line 148
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Landroid/nfc/NdefMessage;
    :sswitch_9
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@f6
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f9
    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fc
    move-result v0

    #@fd
    .line 152
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@100
    move-result v11

    #@101
    if-eqz v11, :cond_5

    #@103
    .line 153
    sget-object v11, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@105
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@108
    move-result-object v2

    #@109
    check-cast v2, Landroid/nfc/NdefMessage;

    #@10b
    .line 158
    :goto_5
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcTag$Stub;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    #@10e
    move-result v5

    #@10f
    .line 159
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@112
    .line 160
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@115
    .line 161
    const/4 v11, 0x1

    #@116
    return v11

    #@117
    .line 156
    .end local v5    # "_result":I
    :cond_5
    const/4 v2, 0x0

    #@118
    .local v2, "_arg1":Landroid/nfc/NdefMessage;
    goto :goto_5

    #@119
    .line 165
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/nfc/NdefMessage;
    :sswitch_a
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@11c
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@122
    move-result v0

    #@123
    .line 168
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefMakeReadOnly(I)I

    #@126
    move-result v5

    #@127
    .line 169
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12a
    .line 170
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@12d
    .line 171
    const/4 v11, 0x1

    #@12e
    return v11

    #@12f
    .line 175
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_b
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@132
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135
    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@138
    move-result v0

    #@139
    .line 178
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefIsWritable(I)Z

    #@13c
    move-result v9

    #@13d
    .line 179
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@140
    .line 180
    if-eqz v9, :cond_6

    #@142
    const/4 v11, 0x1

    #@143
    :goto_6
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@146
    .line 181
    const/4 v11, 0x1

    #@147
    return v11

    #@148
    .line 180
    :cond_6
    const/4 v11, 0x0

    #@149
    goto :goto_6

    #@14a
    .line 185
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_c
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@14d
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@150
    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@153
    move-result v0

    #@154
    .line 189
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@157
    move-result-object v3

    #@158
    .line 190
    .restart local v3    # "_arg1":[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/INfcTag$Stub;->formatNdef(I[B)I

    #@15b
    move-result v5

    #@15c
    .line 191
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15f
    .line 192
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@162
    .line 193
    const/4 v11, 0x1

    #@163
    return v11

    #@164
    .line 197
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v5    # "_result":I
    :sswitch_d
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@167
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16a
    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@16d
    move-result v0

    #@16e
    .line 200
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->rediscover(I)Landroid/nfc/Tag;

    #@171
    move-result-object v7

    #@172
    .line 201
    .local v7, "_result":Landroid/nfc/Tag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@175
    .line 202
    if-eqz v7, :cond_7

    #@177
    .line 203
    const/4 v11, 0x1

    #@178
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@17b
    .line 204
    const/4 v11, 0x1

    #@17c
    invoke-virtual {v7, p3, v11}, Landroid/nfc/Tag;->writeToParcel(Landroid/os/Parcel;I)V

    #@17f
    .line 209
    :goto_7
    const/4 v11, 0x1

    #@180
    return v11

    #@181
    .line 207
    :cond_7
    const/4 v11, 0x0

    #@182
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@185
    goto :goto_7

    #@186
    .line 213
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Landroid/nfc/Tag;
    :sswitch_e
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@189
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18c
    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@18f
    move-result v0

    #@190
    .line 217
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@193
    move-result v1

    #@194
    .line 218
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->setTimeout(II)I

    #@197
    move-result v5

    #@198
    .line 219
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@19b
    .line 220
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@19e
    .line 221
    const/4 v11, 0x1

    #@19f
    return v11

    #@1a0
    .line 225
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_f
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@1a3
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a6
    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a9
    move-result v0

    #@1aa
    .line 228
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getTimeout(I)I

    #@1ad
    move-result v5

    #@1ae
    .line 229
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b1
    .line 230
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1b4
    .line 231
    const/4 v11, 0x1

    #@1b5
    return v11

    #@1b6
    .line 235
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_10
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@1b9
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bc
    .line 236
    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->resetTimeouts()V

    #@1bf
    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c2
    .line 238
    const/4 v11, 0x1

    #@1c3
    return v11

    #@1c4
    .line 242
    :sswitch_11
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@1c7
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ca
    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1cd
    move-result v0

    #@1ce
    .line 245
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->canMakeReadOnly(I)Z

    #@1d1
    move-result v9

    #@1d2
    .line 246
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d5
    .line 247
    if-eqz v9, :cond_8

    #@1d7
    const/4 v11, 0x1

    #@1d8
    :goto_8
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@1db
    .line 248
    const/4 v11, 0x1

    #@1dc
    return v11

    #@1dd
    .line 247
    :cond_8
    const/4 v11, 0x0

    #@1de
    goto :goto_8

    #@1df
    .line 252
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_12
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@1e2
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e5
    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e8
    move-result v0

    #@1e9
    .line 255
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getMaxTransceiveLength(I)I

    #@1ec
    move-result v5

    #@1ed
    .line 256
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f0
    .line 257
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1f3
    .line 258
    const/4 v11, 0x1

    #@1f4
    return v11

    #@1f5
    .line 262
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_13
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@1f8
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fb
    .line 263
    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->getExtendedLengthApdusSupported()Z

    #@1fe
    move-result v9

    #@1ff
    .line 264
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@202
    .line 265
    if-eqz v9, :cond_9

    #@204
    const/4 v11, 0x1

    #@205
    :goto_9
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@208
    .line 266
    const/4 v11, 0x1

    #@209
    return v11

    #@20a
    .line 265
    :cond_9
    const/4 v11, 0x0

    #@20b
    goto :goto_9

    #@20c
    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
