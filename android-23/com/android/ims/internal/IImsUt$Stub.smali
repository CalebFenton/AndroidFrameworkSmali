.class public abstract Lcom/android/ims/internal/IImsUt$Stub;
.super Landroid/os/Binder;
.source "IImsUt.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUt"

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_queryCLIP:I = 0x6

.field static final TRANSACTION_queryCLIR:I = 0x5

.field static final TRANSACTION_queryCOLP:I = 0x8

.field static final TRANSACTION_queryCOLR:I = 0x7

.field static final TRANSACTION_queryCallBarring:I = 0x2

.field static final TRANSACTION_queryCallForward:I = 0x3

.field static final TRANSACTION_queryCallWaiting:I = 0x4

.field static final TRANSACTION_setListener:I = 0x11

.field static final TRANSACTION_transact:I = 0x9

.field static final TRANSACTION_updateCLIP:I = 0xe

.field static final TRANSACTION_updateCLIR:I = 0xd

.field static final TRANSACTION_updateCOLP:I = 0x10

.field static final TRANSACTION_updateCOLR:I = 0xf

.field static final TRANSACTION_updateCallBarring:I = 0xa

.field static final TRANSACTION_updateCallForward:I = 0xb

.field static final TRANSACTION_updateCallWaiting:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/IImsUt;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Lcom/android/ims/internal/IImsUt;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsUt$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 228
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->close()V

    #@1d
    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20
    .line 55
    const/4 v1, 0x1

    #@21
    return v1

    #@22
    .line 59
    :sswitch_2
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@25
    move-object/from16 v0, p2

    #@27
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v2

    #@2e
    .line 62
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarring(I)I

    #@31
    move-result v13

    #@32
    .line 63
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35
    .line 64
    move-object/from16 v0, p3

    #@37
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 65
    const/4 v1, 0x1

    #@3b
    return v1

    #@3c
    .line 69
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_3
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v2

    #@48
    .line 73
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b
    move-result-object v10

    #@4c
    .line 74
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v10}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallForward(ILjava/lang/String;)I

    #@4f
    move-result v13

    #@50
    .line 75
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@53
    .line 76
    move-object/from16 v0, p3

    #@55
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 77
    const/4 v1, 0x1

    #@59
    return v1

    #@5a
    .line 81
    .end local v2    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_4
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@5d
    move-object/from16 v0, p2

    #@5f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62
    .line 82
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallWaiting()I

    #@65
    move-result v13

    #@66
    .line 83
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@69
    .line 84
    move-object/from16 v0, p3

    #@6b
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 85
    const/4 v1, 0x1

    #@6f
    return v1

    #@70
    .line 89
    .end local v13    # "_result":I
    :sswitch_5
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@73
    move-object/from16 v0, p2

    #@75
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78
    .line 90
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIR()I

    #@7b
    move-result v13

    #@7c
    .line 91
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f
    .line 92
    move-object/from16 v0, p3

    #@81
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@84
    .line 93
    const/4 v1, 0x1

    #@85
    return v1

    #@86
    .line 97
    .end local v13    # "_result":I
    :sswitch_6
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@89
    move-object/from16 v0, p2

    #@8b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e
    .line 98
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIP()I

    #@91
    move-result v13

    #@92
    .line 99
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@95
    .line 100
    move-object/from16 v0, p3

    #@97
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@9a
    .line 101
    const/4 v1, 0x1

    #@9b
    return v1

    #@9c
    .line 105
    .end local v13    # "_result":I
    :sswitch_7
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@9f
    move-object/from16 v0, p2

    #@a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4
    .line 106
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLR()I

    #@a7
    move-result v13

    #@a8
    .line 107
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ab
    .line 108
    move-object/from16 v0, p3

    #@ad
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@b0
    .line 109
    const/4 v1, 0x1

    #@b1
    return v1

    #@b2
    .line 113
    .end local v13    # "_result":I
    :sswitch_8
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@b5
    move-object/from16 v0, p2

    #@b7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba
    .line 114
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLP()I

    #@bd
    move-result v13

    #@be
    .line 115
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c1
    .line 116
    move-object/from16 v0, p3

    #@c3
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@c6
    .line 117
    const/4 v1, 0x1

    #@c7
    return v1

    #@c8
    .line 121
    .end local v13    # "_result":I
    :sswitch_9
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@cb
    move-object/from16 v0, p2

    #@cd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d3
    move-result v1

    #@d4
    if-eqz v1, :cond_0

    #@d6
    .line 124
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d8
    move-object/from16 v0, p2

    #@da
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@dd
    move-result-object v7

    #@de
    check-cast v7, Landroid/os/Bundle;

    #@e0
    .line 129
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/ims/internal/IImsUt$Stub;->transact(Landroid/os/Bundle;)I

    #@e3
    move-result v13

    #@e4
    .line 130
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e7
    .line 131
    move-object/from16 v0, p3

    #@e9
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@ec
    .line 132
    const/4 v1, 0x1

    #@ed
    return v1

    #@ee
    .line 127
    .end local v13    # "_result":I
    :cond_0
    const/4 v7, 0x0

    #@ef
    .local v7, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    #@f0
    .line 136
    .end local v7    # "_arg0":Landroid/os/Bundle;
    :sswitch_a
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@f3
    move-object/from16 v0, p2

    #@f5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f8
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fb
    move-result v2

    #@fc
    .line 140
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v1

    #@100
    if-eqz v1, :cond_1

    #@102
    const/4 v11, 0x1

    #@103
    .line 142
    .local v11, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@106
    move-result-object v12

    #@107
    .line 143
    .local v12, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v2, v11, v12}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarring(IZ[Ljava/lang/String;)I

    #@10a
    move-result v13

    #@10b
    .line 144
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10e
    .line 145
    move-object/from16 v0, p3

    #@110
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@113
    .line 146
    const/4 v1, 0x1

    #@114
    return v1

    #@115
    .line 140
    .end local v11    # "_arg1":Z
    .end local v12    # "_arg2":[Ljava/lang/String;
    .end local v13    # "_result":I
    :cond_1
    const/4 v11, 0x0

    #@116
    .restart local v11    # "_arg1":Z
    goto :goto_1

    #@117
    .line 150
    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":Z
    :sswitch_b
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@11a
    move-object/from16 v0, p2

    #@11c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f
    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@122
    move-result v2

    #@123
    .line 154
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@126
    move-result v3

    #@127
    .line 156
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12a
    move-result-object v4

    #@12b
    .line 158
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12e
    move-result v5

    #@12f
    .line 160
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@132
    move-result v6

    #@133
    .local v6, "_arg4":I
    move-object v1, p0

    #@134
    .line 161
    invoke-virtual/range {v1 .. v6}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallForward(IILjava/lang/String;II)I

    #@137
    move-result v13

    #@138
    .line 162
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13b
    .line 163
    move-object/from16 v0, p3

    #@13d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@140
    .line 164
    const/4 v1, 0x1

    #@141
    return v1

    #@142
    .line 168
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v13    # "_result":I
    :sswitch_c
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@145
    move-object/from16 v0, p2

    #@147
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a
    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14d
    move-result v1

    #@14e
    if-eqz v1, :cond_2

    #@150
    const/4 v9, 0x1

    #@151
    .line 172
    .local v9, "_arg0":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@154
    move-result v3

    #@155
    .line 173
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v9, v3}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallWaiting(ZI)I

    #@158
    move-result v13

    #@159
    .line 174
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15c
    .line 175
    move-object/from16 v0, p3

    #@15e
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@161
    .line 176
    const/4 v1, 0x1

    #@162
    return v1

    #@163
    .line 170
    .end local v3    # "_arg1":I
    .end local v9    # "_arg0":Z
    .end local v13    # "_result":I
    :cond_2
    const/4 v9, 0x0

    #@164
    .restart local v9    # "_arg0":Z
    goto :goto_2

    #@165
    .line 180
    .end local v9    # "_arg0":Z
    :sswitch_d
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@168
    move-object/from16 v0, p2

    #@16a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16d
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@170
    move-result v2

    #@171
    .line 183
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIR(I)I

    #@174
    move-result v13

    #@175
    .line 184
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@178
    .line 185
    move-object/from16 v0, p3

    #@17a
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@17d
    .line 186
    const/4 v1, 0x1

    #@17e
    return v1

    #@17f
    .line 190
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_e
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@182
    move-object/from16 v0, p2

    #@184
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@187
    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18a
    move-result v1

    #@18b
    if-eqz v1, :cond_3

    #@18d
    const/4 v9, 0x1

    #@18e
    .line 193
    .restart local v9    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIP(Z)I

    #@191
    move-result v13

    #@192
    .line 194
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@195
    .line 195
    move-object/from16 v0, p3

    #@197
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@19a
    .line 196
    const/4 v1, 0x1

    #@19b
    return v1

    #@19c
    .line 192
    .end local v9    # "_arg0":Z
    .end local v13    # "_result":I
    :cond_3
    const/4 v9, 0x0

    #@19d
    .restart local v9    # "_arg0":Z
    goto :goto_3

    #@19e
    .line 200
    .end local v9    # "_arg0":Z
    :sswitch_f
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@1a1
    move-object/from16 v0, p2

    #@1a3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a6
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a9
    move-result v2

    #@1aa
    .line 203
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLR(I)I

    #@1ad
    move-result v13

    #@1ae
    .line 204
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b1
    .line 205
    move-object/from16 v0, p3

    #@1b3
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@1b6
    .line 206
    const/4 v1, 0x1

    #@1b7
    return v1

    #@1b8
    .line 210
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_10
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@1bb
    move-object/from16 v0, p2

    #@1bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c0
    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c3
    move-result v1

    #@1c4
    if-eqz v1, :cond_4

    #@1c6
    const/4 v9, 0x1

    #@1c7
    .line 213
    .restart local v9    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v9}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLP(Z)I

    #@1ca
    move-result v13

    #@1cb
    .line 214
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ce
    .line 215
    move-object/from16 v0, p3

    #@1d0
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@1d3
    .line 216
    const/4 v1, 0x1

    #@1d4
    return v1

    #@1d5
    .line 212
    .end local v9    # "_arg0":Z
    .end local v13    # "_result":I
    :cond_4
    const/4 v9, 0x0

    #@1d6
    .restart local v9    # "_arg0":Z
    goto :goto_4

    #@1d7
    .line 220
    .end local v9    # "_arg0":Z
    :sswitch_11
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@1da
    move-object/from16 v0, p2

    #@1dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1df
    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e2
    move-result-object v1

    #@1e3
    invoke-static {v1}, Lcom/android/ims/internal/IImsUtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;

    #@1e6
    move-result-object v8

    #@1e7
    .line 223
    .local v8, "_arg0":Lcom/android/ims/internal/IImsUtListener;
    invoke-virtual {p0, v8}, Lcom/android/ims/internal/IImsUt$Stub;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    #@1ea
    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ed
    .line 225
    const/4 v1, 0x1

    #@1ee
    return v1

    #@1ef
    .line 43
    nop

    #@1f0
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
