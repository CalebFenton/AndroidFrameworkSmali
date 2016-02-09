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


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IIccPhoneBook"

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsInEfForSubscriber:I = 0x2

.field static final TRANSACTION_getAdnRecordsSize:I = 0x7

.field static final TRANSACTION_getAdnRecordsSizeForSubscriber:I = 0x8

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x5

.field static final TRANSACTION_updateAdnRecordsInEfByIndexForSubscriber:I = 0x6

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x3

.field static final TRANSACTION_updateAdnRecordsInEfBySearchForSubscriber:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 28
    const-string/jumbo v0, "com.android.internal.telephony.IIccPhoneBook"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 36
    if-nez p0, :cond_0

    #@3
    .line 37
    return-object v1

    #@4
    .line 39
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.IIccPhoneBook"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telephony/IIccPhoneBook;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 41
    check-cast v0, Lcom/android/internal/telephony/IIccPhoneBook;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 43
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
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
    .line 51
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 183
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 55
    :sswitch_0
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 56
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 60
    :sswitch_1
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v3

    #@1e
    .line 63
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    #@23
    move-result-object v23

    #@24
    .line 64
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 65
    move-object/from16 v0, p3

    #@29
    move-object/from16 v1, v23

    #@2b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@2e
    .line 66
    const/4 v2, 0x1

    #@2f
    return v2

    #@30
    .line 70
    .end local v3    # "_arg0":I
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_2
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    #@33
    move-object/from16 v0, p2

    #@35
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v3

    #@3c
    .line 74
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v11

    #@40
    .line 75
    .local v11, "_arg1":I
    move-object/from16 v0, p0

    #@42
    invoke-virtual {v0, v3, v11}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    #@45
    move-result-object v23

    #@46
    .line 76
    .restart local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    .line 77
    move-object/from16 v0, p3

    #@4b
    move-object/from16 v1, v23

    #@4d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@50
    .line 78
    const/4 v2, 0x1

    #@51
    return v2

    #@52
    .line 82
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_3
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    #@55
    move-object/from16 v0, p2

    #@57
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v3

    #@5e
    .line 86
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    .line 88
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    .line 90
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    .line 92
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    .line 94
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@71
    move-result-object v8

    #@72
    .local v8, "_arg5":Ljava/lang/String;
    move-object/from16 v2, p0

    #@74
    .line 95
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@77
    move-result v24

    #@78
    .line 96
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    .line 97
    if-eqz v24, :cond_0

    #@7d
    const/4 v2, 0x1

    #@7e
    :goto_0
    move-object/from16 v0, p3

    #@80
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@83
    .line 98
    const/4 v2, 0x1

    #@84
    return v2

    #@85
    .line 97
    :cond_0
    const/4 v2, 0x0

    #@86
    goto :goto_0

    #@87
    .line 102
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v24    # "_result":Z
    :sswitch_4
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    #@8a
    move-object/from16 v0, p2

    #@8c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f
    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v3

    #@93
    .line 106
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@96
    move-result v11

    #@97
    .line 108
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    .line 110
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9e
    move-result-object v6

    #@9f
    .line 112
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a2
    move-result-object v7

    #@a3
    .line 114
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a6
    move-result-object v8

    #@a7
    .line 116
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aa
    move-result-object v16

    #@ab
    .local v16, "_arg6":Ljava/lang/String;
    move-object/from16 v9, p0

    #@ad
    move v10, v3

    #@ae
    move-object v12, v5

    #@af
    move-object v13, v6

    #@b0
    move-object v14, v7

    #@b1
    move-object v15, v8

    #@b2
    .line 117
    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@b5
    move-result v24

    #@b6
    .line 118
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b9
    .line 119
    if-eqz v24, :cond_1

    #@bb
    const/4 v2, 0x1

    #@bc
    :goto_1
    move-object/from16 v0, p3

    #@be
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c1
    .line 120
    const/4 v2, 0x1

    #@c2
    return v2

    #@c3
    .line 119
    :cond_1
    const/4 v2, 0x0

    #@c4
    goto :goto_1

    #@c5
    .line 124
    .end local v3    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v16    # "_arg6":Ljava/lang/String;
    .end local v24    # "_result":Z
    :sswitch_5
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    #@c8
    move-object/from16 v0, p2

    #@ca
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cd
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d0
    move-result v3

    #@d1
    .line 128
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d4
    move-result-object v4

    #@d5
    .line 130
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d8
    move-result-object v5

    #@d9
    .line 132
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dc
    move-result v21

    #@dd
    .line 134
    .local v21, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e0
    move-result-object v7

    #@e1
    .restart local v7    # "_arg4":Ljava/lang/String;
    move-object/from16 v17, p0

    #@e3
    move/from16 v18, v3

    #@e5
    move-object/from16 v19, v4

    #@e7
    move-object/from16 v20, v5

    #@e9
    move-object/from16 v22, v7

    #@eb
    .line 135
    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    #@ee
    move-result v24

    #@ef
    .line 136
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f2
    .line 137
    if-eqz v24, :cond_2

    #@f4
    const/4 v2, 0x1

    #@f5
    :goto_2
    move-object/from16 v0, p3

    #@f7
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@fa
    .line 138
    const/4 v2, 0x1

    #@fb
    return v2

    #@fc
    .line 137
    :cond_2
    const/4 v2, 0x0

    #@fd
    goto :goto_2

    #@fe
    .line 142
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg3":I
    .end local v24    # "_result":Z
    :sswitch_6
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    #@101
    move-object/from16 v0, p2

    #@103
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@106
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@109
    move-result v3

    #@10a
    .line 146
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v11

    #@10e
    .line 148
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@111
    move-result-object v5

    #@112
    .line 150
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@115
    move-result-object v6

    #@116
    .line 152
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@119
    move-result v14

    #@11a
    .line 154
    .local v14, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11d
    move-result-object v8

    #@11e
    .restart local v8    # "_arg5":Ljava/lang/String;
    move-object/from16 v9, p0

    #@120
    move v10, v3

    #@121
    move-object v12, v5

    #@122
    move-object v13, v6

    #@123
    move-object v15, v8

    #@124
    .line 155
    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    #@127
    move-result v24

    #@128
    .line 156
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12b
    .line 157
    if-eqz v24, :cond_3

    #@12d
    const/4 v2, 0x1

    #@12e
    :goto_3
    move-object/from16 v0, p3

    #@130
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@133
    .line 158
    const/4 v2, 0x1

    #@134
    return v2

    #@135
    .line 157
    :cond_3
    const/4 v2, 0x0

    #@136
    goto :goto_3

    #@137
    .line 162
    .end local v3    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v14    # "_arg4":I
    .end local v24    # "_result":Z
    :sswitch_7
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    #@13a
    move-object/from16 v0, p2

    #@13c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13f
    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@142
    move-result v3

    #@143
    .line 165
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@145
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSize(I)[I

    #@148
    move-result-object v25

    #@149
    .line 166
    .local v25, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14c
    .line 167
    move-object/from16 v0, p3

    #@14e
    move-object/from16 v1, v25

    #@150
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@153
    .line 168
    const/4 v2, 0x1

    #@154
    return v2

    #@155
    .line 172
    .end local v3    # "_arg0":I
    .end local v25    # "_result":[I
    :sswitch_8
    const-string/jumbo v2, "com.android.internal.telephony.IIccPhoneBook"

    #@158
    move-object/from16 v0, p2

    #@15a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15d
    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@160
    move-result v3

    #@161
    .line 176
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@164
    move-result v11

    #@165
    .line 177
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@167
    invoke-virtual {v0, v3, v11}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSizeForSubscriber(II)[I

    #@16a
    move-result-object v25

    #@16b
    .line 178
    .restart local v25    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16e
    .line 179
    move-object/from16 v0, p3

    #@170
    move-object/from16 v1, v25

    #@172
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@175
    .line 180
    const/4 v2, 0x1

    #@176
    return v2

    #@177
    .line 51
    nop

    #@178
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
