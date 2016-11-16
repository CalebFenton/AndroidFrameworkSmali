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

.field static final TRANSACTION_canMakeReadOnly:I = 0x10

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_formatNdef:I = 0xb

.field static final TRANSACTION_getExtendedLengthApdusSupported:I = 0x12

.field static final TRANSACTION_getMaxTransceiveLength:I = 0x11

.field static final TRANSACTION_getTechList:I = 0x3

.field static final TRANSACTION_getTimeout:I = 0xe

.field static final TRANSACTION_isNdef:I = 0x4

.field static final TRANSACTION_isPresent:I = 0x5

.field static final TRANSACTION_ndefIsWritable:I = 0xa

.field static final TRANSACTION_ndefMakeReadOnly:I = 0x9

.field static final TRANSACTION_ndefRead:I = 0x7

.field static final TRANSACTION_ndefWrite:I = 0x8

.field static final TRANSACTION_reconnect:I = 0x2

.field static final TRANSACTION_rediscover:I = 0xc

.field static final TRANSACTION_resetTimeouts:I = 0xf

.field static final TRANSACTION_setTimeout:I = 0xd

.field static final TRANSACTION_transceive:I = 0x6


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
    .line 259
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
    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    .line 55
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->connect(II)I

    #@21
    move-result v5

    #@22
    .line 56
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 57
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 58
    const/4 v11, 0x1

    #@29
    return v11

    #@2a
    .line 62
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_2
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@2d
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    .line 65
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->reconnect(I)I

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
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getTechList(I)[I

    #@4d
    move-result-object v10

    #@4e
    .line 76
    .local v10, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    .line 77
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    #@54
    .line 78
    const/4 v11, 0x1

    #@55
    return v11

    #@56
    .line 82
    .end local v0    # "_arg0":I
    .end local v10    # "_result":[I
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
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isNdef(I)Z

    #@63
    move-result v9

    #@64
    .line 86
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    .line 87
    if-eqz v9, :cond_0

    #@69
    const/4 v11, 0x1

    #@6a
    :goto_0
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    .line 88
    const/4 v11, 0x1

    #@6e
    return v11

    #@6f
    .line 87
    :cond_0
    const/4 v11, 0x0

    #@70
    goto :goto_0

    #@71
    .line 92
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_5
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@74
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v0

    #@7b
    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isPresent(I)Z

    #@7e
    move-result v9

    #@7f
    .line 96
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@82
    .line 97
    if-eqz v9, :cond_1

    #@84
    const/4 v11, 0x1

    #@85
    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@88
    .line 98
    const/4 v11, 0x1

    #@89
    return v11

    #@8a
    .line 97
    :cond_1
    const/4 v11, 0x0

    #@8b
    goto :goto_1

    #@8c
    .line 102
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_6
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@8f
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92
    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v0

    #@96
    .line 106
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@99
    move-result-object v3

    #@9a
    .line 108
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9d
    move-result v11

    #@9e
    if-eqz v11, :cond_2

    #@a0
    const/4 v4, 0x1

    #@a1
    .line 109
    .local v4, "_arg2":Z
    :goto_2
    invoke-virtual {p0, v0, v3, v4}, Landroid/nfc/INfcTag$Stub;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    #@a4
    move-result-object v8

    #@a5
    .line 110
    .local v8, "_result":Landroid/nfc/TransceiveResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    .line 111
    if-eqz v8, :cond_3

    #@aa
    .line 112
    const/4 v11, 0x1

    #@ab
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@ae
    .line 113
    const/4 v11, 0x1

    #@af
    invoke-virtual {v8, p3, v11}, Landroid/nfc/TransceiveResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@b2
    .line 118
    :goto_3
    const/4 v11, 0x1

    #@b3
    return v11

    #@b4
    .line 108
    .end local v4    # "_arg2":Z
    .end local v8    # "_result":Landroid/nfc/TransceiveResult;
    :cond_2
    const/4 v4, 0x0

    #@b5
    goto :goto_2

    #@b6
    .line 116
    .restart local v4    # "_arg2":Z
    .restart local v8    # "_result":Landroid/nfc/TransceiveResult;
    :cond_3
    const/4 v11, 0x0

    #@b7
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@ba
    goto :goto_3

    #@bb
    .line 122
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Z
    .end local v8    # "_result":Landroid/nfc/TransceiveResult;
    :sswitch_7
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@be
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c1
    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v0

    #@c5
    .line 125
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefRead(I)Landroid/nfc/NdefMessage;

    #@c8
    move-result-object v6

    #@c9
    .line 126
    .local v6, "_result":Landroid/nfc/NdefMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cc
    .line 127
    if-eqz v6, :cond_4

    #@ce
    .line 128
    const/4 v11, 0x1

    #@cf
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@d2
    .line 129
    const/4 v11, 0x1

    #@d3
    invoke-virtual {v6, p3, v11}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    #@d6
    .line 134
    :goto_4
    const/4 v11, 0x1

    #@d7
    return v11

    #@d8
    .line 132
    :cond_4
    const/4 v11, 0x0

    #@d9
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@dc
    goto :goto_4

    #@dd
    .line 138
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Landroid/nfc/NdefMessage;
    :sswitch_8
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@e0
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e6
    move-result v0

    #@e7
    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ea
    move-result v11

    #@eb
    if-eqz v11, :cond_5

    #@ed
    .line 143
    sget-object v11, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ef
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f2
    move-result-object v2

    #@f3
    check-cast v2, Landroid/nfc/NdefMessage;

    #@f5
    .line 148
    :goto_5
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcTag$Stub;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    #@f8
    move-result v5

    #@f9
    .line 149
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc
    .line 150
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@ff
    .line 151
    const/4 v11, 0x1

    #@100
    return v11

    #@101
    .line 146
    .end local v5    # "_result":I
    :cond_5
    const/4 v2, 0x0

    #@102
    .local v2, "_arg1":Landroid/nfc/NdefMessage;
    goto :goto_5

    #@103
    .line 155
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/nfc/NdefMessage;
    :sswitch_9
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@106
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@109
    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10c
    move-result v0

    #@10d
    .line 158
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefMakeReadOnly(I)I

    #@110
    move-result v5

    #@111
    .line 159
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@114
    .line 160
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@117
    .line 161
    const/4 v11, 0x1

    #@118
    return v11

    #@119
    .line 165
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
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
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefIsWritable(I)Z

    #@126
    move-result v9

    #@127
    .line 169
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@12a
    .line 170
    if-eqz v9, :cond_6

    #@12c
    const/4 v11, 0x1

    #@12d
    :goto_6
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@130
    .line 171
    const/4 v11, 0x1

    #@131
    return v11

    #@132
    .line 170
    :cond_6
    const/4 v11, 0x0

    #@133
    goto :goto_6

    #@134
    .line 175
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_b
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@137
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13a
    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@13d
    move-result v0

    #@13e
    .line 179
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@141
    move-result-object v3

    #@142
    .line 180
    .restart local v3    # "_arg1":[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/INfcTag$Stub;->formatNdef(I[B)I

    #@145
    move-result v5

    #@146
    .line 181
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@149
    .line 182
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@14c
    .line 183
    const/4 v11, 0x1

    #@14d
    return v11

    #@14e
    .line 187
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v5    # "_result":I
    :sswitch_c
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@151
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@154
    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@157
    move-result v0

    #@158
    .line 190
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->rediscover(I)Landroid/nfc/Tag;

    #@15b
    move-result-object v7

    #@15c
    .line 191
    .local v7, "_result":Landroid/nfc/Tag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15f
    .line 192
    if-eqz v7, :cond_7

    #@161
    .line 193
    const/4 v11, 0x1

    #@162
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@165
    .line 194
    const/4 v11, 0x1

    #@166
    invoke-virtual {v7, p3, v11}, Landroid/nfc/Tag;->writeToParcel(Landroid/os/Parcel;I)V

    #@169
    .line 199
    :goto_7
    const/4 v11, 0x1

    #@16a
    return v11

    #@16b
    .line 197
    :cond_7
    const/4 v11, 0x0

    #@16c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@16f
    goto :goto_7

    #@170
    .line 203
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Landroid/nfc/Tag;
    :sswitch_d
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@173
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@176
    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@179
    move-result v0

    #@17a
    .line 207
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@17d
    move-result v1

    #@17e
    .line 208
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->setTimeout(II)I

    #@181
    move-result v5

    #@182
    .line 209
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@185
    .line 210
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@188
    .line 211
    const/4 v11, 0x1

    #@189
    return v11

    #@18a
    .line 215
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_e
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@18d
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@190
    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@193
    move-result v0

    #@194
    .line 218
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getTimeout(I)I

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
    .end local v5    # "_result":I
    :sswitch_f
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@1a3
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a6
    .line 226
    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->resetTimeouts()V

    #@1a9
    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ac
    .line 228
    const/4 v11, 0x1

    #@1ad
    return v11

    #@1ae
    .line 232
    :sswitch_10
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@1b1
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b4
    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1b7
    move-result v0

    #@1b8
    .line 235
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->canMakeReadOnly(I)Z

    #@1bb
    move-result v9

    #@1bc
    .line 236
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bf
    .line 237
    if-eqz v9, :cond_8

    #@1c1
    const/4 v11, 0x1

    #@1c2
    :goto_8
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@1c5
    .line 238
    const/4 v11, 0x1

    #@1c6
    return v11

    #@1c7
    .line 237
    :cond_8
    const/4 v11, 0x0

    #@1c8
    goto :goto_8

    #@1c9
    .line 242
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_11
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@1cc
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cf
    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d2
    move-result v0

    #@1d3
    .line 245
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getMaxTransceiveLength(I)I

    #@1d6
    move-result v5

    #@1d7
    .line 246
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1da
    .line 247
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@1dd
    .line 248
    const/4 v11, 0x1

    #@1de
    return v11

    #@1df
    .line 252
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_12
    const-string/jumbo v11, "android.nfc.INfcTag"

    #@1e2
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e5
    .line 253
    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->getExtendedLengthApdusSupported()Z

    #@1e8
    move-result v9

    #@1e9
    .line 254
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ec
    .line 255
    if-eqz v9, :cond_9

    #@1ee
    const/4 v11, 0x1

    #@1ef
    :goto_9
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@1f2
    .line 256
    const/4 v11, 0x1

    #@1f3
    return v11

    #@1f4
    .line 255
    :cond_9
    const/4 v11, 0x0

    #@1f5
    goto :goto_9

    #@1f6
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
