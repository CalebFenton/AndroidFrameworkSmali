.class public abstract Lcom/android/ims/internal/uce/options/IOptionsService$Stub;
.super Landroid/os/Binder;
.source "IOptionsService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.options.IOptionsService"

.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_getContactCap:I = 0x6

.field static final TRANSACTION_getContactListCap:I = 0x7

.field static final TRANSACTION_getMyInfo:I = 0x5

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_responseIncomingOptions:I = 0x8

.field static final TRANSACTION_setMyInfo:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "com.android.ims.internal.uce.options.IOptionsService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/uce/options/IOptionsService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Lcom/android/ims/internal/uce/options/IOptionsService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 232
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v2

    #@1e
    .line 51
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    #@21
    move-result-object v14

    #@22
    .line 52
    .local v14, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 53
    if-eqz v14, :cond_0

    #@27
    .line 54
    const/4 v1, 0x1

    #@28
    move-object/from16 v0, p3

    #@2a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 55
    const/4 v1, 0x1

    #@2e
    move-object/from16 v0, p3

    #@30
    invoke-virtual {v14, v0, v1}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 60
    :goto_0
    const/4 v1, 0x1

    #@34
    return v1

    #@35
    .line 58
    :cond_0
    const/4 v1, 0x0

    #@36
    move-object/from16 v0, p3

    #@38
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    goto :goto_0

    #@3c
    .line 64
    .end local v2    # "_arg0":I
    .end local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_2
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsService"

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v2

    #@48
    .line 68
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4b
    move-result-object v1

    #@4c
    invoke-static {v1}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    #@4f
    move-result-object v10

    #@50
    .line 70
    .local v10, "_arg1":Lcom/android/ims/internal/uce/options/IOptionsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_1

    #@56
    .line 71
    sget-object v1, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    #@58
    move-object/from16 v0, p2

    #@5a
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5d
    move-result-object v13

    #@5e
    check-cast v13, Lcom/android/ims/internal/uce/common/UceLong;

    #@60
    .line 76
    :goto_1
    invoke-virtual {p0, v2, v10, v13}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->addListener(ILcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    #@63
    move-result-object v14

    #@64
    .line 77
    .restart local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    .line 78
    if-eqz v14, :cond_2

    #@69
    .line 79
    const/4 v1, 0x1

    #@6a
    move-object/from16 v0, p3

    #@6c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 80
    const/4 v1, 0x1

    #@70
    move-object/from16 v0, p3

    #@72
    invoke-virtual {v14, v0, v1}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@75
    .line 85
    :goto_2
    if-eqz v13, :cond_3

    #@77
    .line 86
    const/4 v1, 0x1

    #@78
    move-object/from16 v0, p3

    #@7a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    .line 87
    const/4 v1, 0x1

    #@7e
    move-object/from16 v0, p3

    #@80
    invoke-virtual {v13, v0, v1}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    #@83
    .line 92
    :goto_3
    const/4 v1, 0x1

    #@84
    return v1

    #@85
    .line 74
    .end local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_1
    const/4 v13, 0x0

    #@86
    .local v13, "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_1

    #@87
    .line 83
    .end local v13    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_2
    const/4 v1, 0x0

    #@88
    move-object/from16 v0, p3

    #@8a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8d
    goto :goto_2

    #@8e
    .line 90
    :cond_3
    const/4 v1, 0x0

    #@8f
    move-object/from16 v0, p3

    #@91
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@94
    goto :goto_3

    #@95
    .line 96
    .end local v2    # "_arg0":I
    .end local v10    # "_arg1":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_3
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsService"

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v2

    #@a1
    .line 100
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a4
    move-result v1

    #@a5
    if-eqz v1, :cond_4

    #@a7
    .line 101
    sget-object v1, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a9
    move-object/from16 v0, p2

    #@ab
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ae
    move-result-object v9

    #@af
    check-cast v9, Lcom/android/ims/internal/uce/common/UceLong;

    #@b1
    .line 106
    :goto_4
    invoke-virtual {p0, v2, v9}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    #@b4
    move-result-object v14

    #@b5
    .line 107
    .restart local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    .line 108
    if-eqz v14, :cond_5

    #@ba
    .line 109
    const/4 v1, 0x1

    #@bb
    move-object/from16 v0, p3

    #@bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c0
    .line 110
    const/4 v1, 0x1

    #@c1
    move-object/from16 v0, p3

    #@c3
    invoke-virtual {v14, v0, v1}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@c6
    .line 115
    :goto_5
    const/4 v1, 0x1

    #@c7
    return v1

    #@c8
    .line 104
    .end local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_4
    const/4 v9, 0x0

    #@c9
    .local v9, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_4

    #@ca
    .line 113
    .end local v9    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_5
    const/4 v1, 0x0

    #@cb
    move-object/from16 v0, p3

    #@cd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d0
    goto :goto_5

    #@d1
    .line 119
    .end local v2    # "_arg0":I
    .end local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_4
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsService"

    #@d4
    move-object/from16 v0, p2

    #@d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dc
    move-result v2

    #@dd
    .line 123
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e0
    move-result v1

    #@e1
    if-eqz v1, :cond_6

    #@e3
    .line 124
    sget-object v1, Lcom/android/ims/internal/uce/common/CapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e5
    move-object/from16 v0, p2

    #@e7
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ea
    move-result-object v8

    #@eb
    check-cast v8, Lcom/android/ims/internal/uce/common/CapInfo;

    #@ed
    .line 130
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f0
    move-result v4

    #@f1
    .line 131
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v8, v4}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->setMyInfo(ILcom/android/ims/internal/uce/common/CapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    #@f4
    move-result-object v14

    #@f5
    .line 132
    .restart local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f8
    .line 133
    if-eqz v14, :cond_7

    #@fa
    .line 134
    const/4 v1, 0x1

    #@fb
    move-object/from16 v0, p3

    #@fd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@100
    .line 135
    const/4 v1, 0x1

    #@101
    move-object/from16 v0, p3

    #@103
    invoke-virtual {v14, v0, v1}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@106
    .line 140
    :goto_7
    const/4 v1, 0x1

    #@107
    return v1

    #@108
    .line 127
    .end local v4    # "_arg2":I
    .end local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_6
    const/4 v8, 0x0

    #@109
    .local v8, "_arg1":Lcom/android/ims/internal/uce/common/CapInfo;
    goto :goto_6

    #@10a
    .line 138
    .end local v8    # "_arg1":Lcom/android/ims/internal/uce/common/CapInfo;
    .restart local v4    # "_arg2":I
    .restart local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_7
    const/4 v1, 0x0

    #@10b
    move-object/from16 v0, p3

    #@10d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@110
    goto :goto_7

    #@111
    .line 144
    .end local v2    # "_arg0":I
    .end local v4    # "_arg2":I
    .end local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_5
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsService"

    #@114
    move-object/from16 v0, p2

    #@116
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@119
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11c
    move-result v2

    #@11d
    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120
    move-result v3

    #@121
    .line 149
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getMyInfo(II)Lcom/android/ims/internal/uce/common/StatusCode;

    #@124
    move-result-object v14

    #@125
    .line 150
    .restart local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@128
    .line 151
    if-eqz v14, :cond_8

    #@12a
    .line 152
    const/4 v1, 0x1

    #@12b
    move-object/from16 v0, p3

    #@12d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@130
    .line 153
    const/4 v1, 0x1

    #@131
    move-object/from16 v0, p3

    #@133
    invoke-virtual {v14, v0, v1}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@136
    .line 158
    :goto_8
    const/4 v1, 0x1

    #@137
    return v1

    #@138
    .line 156
    :cond_8
    const/4 v1, 0x0

    #@139
    move-object/from16 v0, p3

    #@13b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13e
    goto :goto_8

    #@13f
    .line 162
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_6
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsService"

    #@142
    move-object/from16 v0, p2

    #@144
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@147
    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14a
    move-result v2

    #@14b
    .line 166
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14e
    move-result-object v11

    #@14f
    .line 168
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@152
    move-result v4

    #@153
    .line 169
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v11, v4}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    #@156
    move-result-object v14

    #@157
    .line 170
    .restart local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15a
    .line 171
    if-eqz v14, :cond_9

    #@15c
    .line 172
    const/4 v1, 0x1

    #@15d
    move-object/from16 v0, p3

    #@15f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@162
    .line 173
    const/4 v1, 0x1

    #@163
    move-object/from16 v0, p3

    #@165
    invoke-virtual {v14, v0, v1}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@168
    .line 178
    :goto_9
    const/4 v1, 0x1

    #@169
    return v1

    #@16a
    .line 176
    :cond_9
    const/4 v1, 0x0

    #@16b
    move-object/from16 v0, p3

    #@16d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@170
    goto :goto_9

    #@171
    .line 182
    .end local v2    # "_arg0":I
    .end local v4    # "_arg2":I
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_7
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsService"

    #@174
    move-object/from16 v0, p2

    #@176
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17c
    move-result v2

    #@17d
    .line 186
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@180
    move-result-object v12

    #@181
    .line 188
    .local v12, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@184
    move-result v4

    #@185
    .line 189
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v12, v4}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    #@188
    move-result-object v14

    #@189
    .line 190
    .restart local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18c
    .line 191
    if-eqz v14, :cond_a

    #@18e
    .line 192
    const/4 v1, 0x1

    #@18f
    move-object/from16 v0, p3

    #@191
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@194
    .line 193
    const/4 v1, 0x1

    #@195
    move-object/from16 v0, p3

    #@197
    invoke-virtual {v14, v0, v1}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@19a
    .line 198
    :goto_a
    const/4 v1, 0x1

    #@19b
    return v1

    #@19c
    .line 196
    :cond_a
    const/4 v1, 0x0

    #@19d
    move-object/from16 v0, p3

    #@19f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a2
    goto :goto_a

    #@1a3
    .line 202
    .end local v2    # "_arg0":I
    .end local v4    # "_arg2":I
    .end local v12    # "_arg1":[Ljava/lang/String;
    .end local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_8
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsService"

    #@1a6
    move-object/from16 v0, p2

    #@1a8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ab
    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ae
    move-result v2

    #@1af
    .line 206
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b2
    move-result v3

    #@1b3
    .line 208
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b6
    move-result v4

    #@1b7
    .line 210
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ba
    move-result-object v5

    #@1bb
    .line 212
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1be
    move-result v1

    #@1bf
    if-eqz v1, :cond_b

    #@1c1
    .line 213
    sget-object v1, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c3
    move-object/from16 v0, p2

    #@1c5
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c8
    move-result-object v6

    #@1c9
    check-cast v6, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    #@1cb
    .line 219
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ce
    move-result v1

    #@1cf
    if-eqz v1, :cond_c

    #@1d1
    const/4 v7, 0x1

    #@1d2
    .local v7, "_arg5":Z
    :goto_c
    move-object v1, p0

    #@1d3
    .line 220
    invoke-virtual/range {v1 .. v7}, Lcom/android/ims/internal/uce/options/IOptionsService$Stub;->responseIncomingOptions(IIILjava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;Z)Lcom/android/ims/internal/uce/common/StatusCode;

    #@1d6
    move-result-object v14

    #@1d7
    .line 221
    .restart local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1da
    .line 222
    if-eqz v14, :cond_d

    #@1dc
    .line 223
    const/4 v1, 0x1

    #@1dd
    move-object/from16 v0, p3

    #@1df
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e2
    .line 224
    const/4 v1, 0x1

    #@1e3
    move-object/from16 v0, p3

    #@1e5
    invoke-virtual {v14, v0, v1}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e8
    .line 229
    :goto_d
    const/4 v1, 0x1

    #@1e9
    return v1

    #@1ea
    .line 216
    .end local v7    # "_arg5":Z
    .end local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_b
    const/4 v6, 0x0

    #@1eb
    .local v6, "_arg4":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    goto :goto_b

    #@1ec
    .line 219
    .end local v6    # "_arg4":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    :cond_c
    const/4 v7, 0x0

    #@1ed
    goto :goto_c

    #@1ee
    .line 227
    .restart local v7    # "_arg5":Z
    .restart local v14    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_d
    const/4 v1, 0x0

    #@1ef
    move-object/from16 v0, p3

    #@1f1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f4
    goto :goto_d

    #@1f5
    .line 39
    nop

    #@1f6
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
