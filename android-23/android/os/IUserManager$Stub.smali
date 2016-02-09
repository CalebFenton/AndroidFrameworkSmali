.class public abstract Landroid/os/IUserManager$Stub;
.super Landroid/os/Binder;
.source "IUserManager.java"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IUserManager"

.field static final TRANSACTION_canAddMoreManagedProfiles:I = 0xb

.field static final TRANSACTION_createProfileForUser:I = 0x3

.field static final TRANSACTION_createUser:I = 0x2

.field static final TRANSACTION_getApplicationRestrictions:I = 0x18

.field static final TRANSACTION_getApplicationRestrictionsForUser:I = 0x19

.field static final TRANSACTION_getCredentialOwnerProfile:I = 0x1

.field static final TRANSACTION_getDefaultGuestRestrictions:I = 0x1c

.field static final TRANSACTION_getProfileParent:I = 0xc

.field static final TRANSACTION_getProfiles:I = 0xa

.field static final TRANSACTION_getUserCreationTime:I = 0xe

.field static final TRANSACTION_getUserHandle:I = 0x11

.field static final TRANSACTION_getUserIcon:I = 0x8

.field static final TRANSACTION_getUserInfo:I = 0xd

.field static final TRANSACTION_getUserRestrictions:I = 0x12

.field static final TRANSACTION_getUserSerialNumber:I = 0x10

.field static final TRANSACTION_getUsers:I = 0x9

.field static final TRANSACTION_hasUserRestriction:I = 0x13

.field static final TRANSACTION_isRestricted:I = 0xf

.field static final TRANSACTION_markGuestForDeletion:I = 0x1d

.field static final TRANSACTION_removeRestrictions:I = 0x1a

.field static final TRANSACTION_removeUser:I = 0x5

.field static final TRANSACTION_setApplicationRestrictions:I = 0x17

.field static final TRANSACTION_setDefaultGuestRestrictions:I = 0x1b

.field static final TRANSACTION_setSystemControlledUserRestriction:I = 0x16

.field static final TRANSACTION_setUserEnabled:I = 0x4

.field static final TRANSACTION_setUserIcon:I = 0x7

.field static final TRANSACTION_setUserName:I = 0x6

.field static final TRANSACTION_setUserRestriction:I = 0x15

.field static final TRANSACTION_setUserRestrictions:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.os.IUserManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/IUserManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;
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
    const-string/jumbo v1, "android.os.IUserManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/IUserManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/os/IUserManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IUserManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/IUserManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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
    .line 426
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v22

    #@7
    return v22

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v22, "android.os.IUserManager"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v22

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 46
    const/16 v22, 0x1

    #@14
    return v22

    #@15
    .line 50
    :sswitch_1
    const-string/jumbo v22, "android.os.IUserManager"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v22

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v4

    #@23
    .line 53
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    #@25
    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getCredentialOwnerProfile(I)I

    #@28
    move-result v14

    #@29
    .line 54
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 55
    move-object/from16 v0, p3

    #@2e
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 56
    const/16 v22, 0x1

    #@33
    return v22

    #@34
    .line 60
    .end local v4    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_2
    const-string/jumbo v22, "android.os.IUserManager"

    #@37
    move-object/from16 v0, p2

    #@39
    move-object/from16 v1, v22

    #@3b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    .line 64
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v8

    #@46
    .line 65
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    #@48
    invoke-virtual {v0, v6, v8}, Landroid/os/IUserManager$Stub;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@4b
    move-result-object v15

    #@4c
    .line 66
    .local v15, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    .line 67
    if-eqz v15, :cond_0

    #@51
    .line 68
    const/16 v22, 0x1

    #@53
    move-object/from16 v0, p3

    #@55
    move/from16 v1, v22

    #@57
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 69
    const/16 v22, 0x1

    #@5c
    move-object/from16 v0, p3

    #@5e
    move/from16 v1, v22

    #@60
    invoke-virtual {v15, v0, v1}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@63
    .line 74
    :goto_0
    const/16 v22, 0x1

    #@65
    return v22

    #@66
    .line 72
    :cond_0
    const/16 v22, 0x0

    #@68
    move-object/from16 v0, p3

    #@6a
    move/from16 v1, v22

    #@6c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    goto :goto_0

    #@70
    .line 78
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v15    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_3
    const-string/jumbo v22, "android.os.IUserManager"

    #@73
    move-object/from16 v0, p2

    #@75
    move-object/from16 v1, v22

    #@77
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    .line 82
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v8

    #@82
    .line 84
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@85
    move-result v13

    #@86
    .line 85
    .local v13, "_arg2":I
    move-object/from16 v0, p0

    #@88
    invoke-virtual {v0, v6, v8, v13}, Landroid/os/IUserManager$Stub;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@8b
    move-result-object v15

    #@8c
    .line 86
    .restart local v15    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f
    .line 87
    if-eqz v15, :cond_1

    #@91
    .line 88
    const/16 v22, 0x1

    #@93
    move-object/from16 v0, p3

    #@95
    move/from16 v1, v22

    #@97
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9a
    .line 89
    const/16 v22, 0x1

    #@9c
    move-object/from16 v0, p3

    #@9e
    move/from16 v1, v22

    #@a0
    invoke-virtual {v15, v0, v1}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@a3
    .line 94
    :goto_1
    const/16 v22, 0x1

    #@a5
    return v22

    #@a6
    .line 92
    :cond_1
    const/16 v22, 0x0

    #@a8
    move-object/from16 v0, p3

    #@aa
    move/from16 v1, v22

    #@ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@af
    goto :goto_1

    #@b0
    .line 98
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v15    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_4
    const-string/jumbo v22, "android.os.IUserManager"

    #@b3
    move-object/from16 v0, p2

    #@b5
    move-object/from16 v1, v22

    #@b7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bd
    move-result v4

    #@be
    .line 101
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@c0
    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->setUserEnabled(I)V

    #@c3
    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c6
    .line 103
    const/16 v22, 0x1

    #@c8
    return v22

    #@c9
    .line 107
    .end local v4    # "_arg0":I
    :sswitch_5
    const-string/jumbo v22, "android.os.IUserManager"

    #@cc
    move-object/from16 v0, p2

    #@ce
    move-object/from16 v1, v22

    #@d0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d3
    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d6
    move-result v4

    #@d7
    .line 110
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@d9
    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->removeUser(I)Z

    #@dc
    move-result v21

    #@dd
    .line 111
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0
    .line 112
    if-eqz v21, :cond_2

    #@e2
    const/16 v22, 0x1

    #@e4
    :goto_2
    move-object/from16 v0, p3

    #@e6
    move/from16 v1, v22

    #@e8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@eb
    .line 113
    const/16 v22, 0x1

    #@ed
    return v22

    #@ee
    .line 112
    :cond_2
    const/16 v22, 0x0

    #@f0
    goto :goto_2

    #@f1
    .line 117
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_6
    const-string/jumbo v22, "android.os.IUserManager"

    #@f4
    move-object/from16 v0, p2

    #@f6
    move-object/from16 v1, v22

    #@f8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v4

    #@ff
    .line 121
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@102
    move-result-object v11

    #@103
    .line 122
    .local v11, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@105
    invoke-virtual {v0, v4, v11}, Landroid/os/IUserManager$Stub;->setUserName(ILjava/lang/String;)V

    #@108
    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10b
    .line 124
    const/16 v22, 0x1

    #@10d
    return v22

    #@10e
    .line 128
    .end local v4    # "_arg0":I
    .end local v11    # "_arg1":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v22, "android.os.IUserManager"

    #@111
    move-object/from16 v0, p2

    #@113
    move-object/from16 v1, v22

    #@115
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@118
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11b
    move-result v4

    #@11c
    .line 132
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11f
    move-result v22

    #@120
    if-eqz v22, :cond_3

    #@122
    .line 133
    sget-object v22, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@124
    move-object/from16 v0, v22

    #@126
    move-object/from16 v1, p2

    #@128
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12b
    move-result-object v9

    #@12c
    check-cast v9, Landroid/graphics/Bitmap;

    #@12e
    .line 138
    :goto_3
    move-object/from16 v0, p0

    #@130
    invoke-virtual {v0, v4, v9}, Landroid/os/IUserManager$Stub;->setUserIcon(ILandroid/graphics/Bitmap;)V

    #@133
    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@136
    .line 140
    const/16 v22, 0x1

    #@138
    return v22

    #@139
    .line 136
    :cond_3
    const/4 v9, 0x0

    #@13a
    .local v9, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_3

    #@13b
    .line 144
    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_8
    const-string/jumbo v22, "android.os.IUserManager"

    #@13e
    move-object/from16 v0, p2

    #@140
    move-object/from16 v1, v22

    #@142
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@145
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@148
    move-result v4

    #@149
    .line 147
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@14b
    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    #@14e
    move-result-object v19

    #@14f
    .line 148
    .local v19, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152
    .line 149
    if-eqz v19, :cond_4

    #@154
    .line 150
    const/16 v22, 0x1

    #@156
    move-object/from16 v0, p3

    #@158
    move/from16 v1, v22

    #@15a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15d
    .line 151
    const/16 v22, 0x1

    #@15f
    move-object/from16 v0, v19

    #@161
    move-object/from16 v1, p3

    #@163
    move/from16 v2, v22

    #@165
    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@168
    .line 156
    :goto_4
    const/16 v22, 0x1

    #@16a
    return v22

    #@16b
    .line 154
    :cond_4
    const/16 v22, 0x0

    #@16d
    move-object/from16 v0, p3

    #@16f
    move/from16 v1, v22

    #@171
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@174
    goto :goto_4

    #@175
    .line 160
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_9
    const-string/jumbo v22, "android.os.IUserManager"

    #@178
    move-object/from16 v0, p2

    #@17a
    move-object/from16 v1, v22

    #@17c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f
    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@182
    move-result v22

    #@183
    if-eqz v22, :cond_5

    #@185
    const/4 v7, 0x1

    #@186
    .line 163
    .local v7, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    #@188
    invoke-virtual {v0, v7}, Landroid/os/IUserManager$Stub;->getUsers(Z)Ljava/util/List;

    #@18b
    move-result-object v20

    #@18c
    .line 164
    .local v20, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18f
    .line 165
    move-object/from16 v0, p3

    #@191
    move-object/from16 v1, v20

    #@193
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@196
    .line 166
    const/16 v22, 0x1

    #@198
    return v22

    #@199
    .line 162
    .end local v7    # "_arg0":Z
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    const/4 v7, 0x0

    #@19a
    .restart local v7    # "_arg0":Z
    goto :goto_5

    #@19b
    .line 170
    .end local v7    # "_arg0":Z
    :sswitch_a
    const-string/jumbo v22, "android.os.IUserManager"

    #@19e
    move-object/from16 v0, p2

    #@1a0
    move-object/from16 v1, v22

    #@1a2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a5
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a8
    move-result v4

    #@1a9
    .line 174
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ac
    move-result v22

    #@1ad
    if-eqz v22, :cond_6

    #@1af
    const/4 v12, 0x1

    #@1b0
    .line 175
    .local v12, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    #@1b2
    invoke-virtual {v0, v4, v12}, Landroid/os/IUserManager$Stub;->getProfiles(IZ)Ljava/util/List;

    #@1b5
    move-result-object v20

    #@1b6
    .line 176
    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b9
    .line 177
    move-object/from16 v0, p3

    #@1bb
    move-object/from16 v1, v20

    #@1bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1c0
    .line 178
    const/16 v22, 0x1

    #@1c2
    return v22

    #@1c3
    .line 174
    .end local v12    # "_arg1":Z
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    const/4 v12, 0x0

    #@1c4
    .restart local v12    # "_arg1":Z
    goto :goto_6

    #@1c5
    .line 182
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":Z
    :sswitch_b
    const-string/jumbo v22, "android.os.IUserManager"

    #@1c8
    move-object/from16 v0, p2

    #@1ca
    move-object/from16 v1, v22

    #@1cc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cf
    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->canAddMoreManagedProfiles()Z

    #@1d2
    move-result v21

    #@1d3
    .line 184
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d6
    .line 185
    if-eqz v21, :cond_7

    #@1d8
    const/16 v22, 0x1

    #@1da
    :goto_7
    move-object/from16 v0, p3

    #@1dc
    move/from16 v1, v22

    #@1de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e1
    .line 186
    const/16 v22, 0x1

    #@1e3
    return v22

    #@1e4
    .line 185
    :cond_7
    const/16 v22, 0x0

    #@1e6
    goto :goto_7

    #@1e7
    .line 190
    .end local v21    # "_result":Z
    :sswitch_c
    const-string/jumbo v22, "android.os.IUserManager"

    #@1ea
    move-object/from16 v0, p2

    #@1ec
    move-object/from16 v1, v22

    #@1ee
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f1
    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f4
    move-result v4

    #@1f5
    .line 193
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@1f7
    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@1fa
    move-result-object v15

    #@1fb
    .line 194
    .restart local v15    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fe
    .line 195
    if-eqz v15, :cond_8

    #@200
    .line 196
    const/16 v22, 0x1

    #@202
    move-object/from16 v0, p3

    #@204
    move/from16 v1, v22

    #@206
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@209
    .line 197
    const/16 v22, 0x1

    #@20b
    move-object/from16 v0, p3

    #@20d
    move/from16 v1, v22

    #@20f
    invoke-virtual {v15, v0, v1}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@212
    .line 202
    :goto_8
    const/16 v22, 0x1

    #@214
    return v22

    #@215
    .line 200
    :cond_8
    const/16 v22, 0x0

    #@217
    move-object/from16 v0, p3

    #@219
    move/from16 v1, v22

    #@21b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21e
    goto :goto_8

    #@21f
    .line 206
    .end local v4    # "_arg0":I
    .end local v15    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_d
    const-string/jumbo v22, "android.os.IUserManager"

    #@222
    move-object/from16 v0, p2

    #@224
    move-object/from16 v1, v22

    #@226
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@229
    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22c
    move-result v4

    #@22d
    .line 209
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@22f
    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@232
    move-result-object v15

    #@233
    .line 210
    .restart local v15    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@236
    .line 211
    if-eqz v15, :cond_9

    #@238
    .line 212
    const/16 v22, 0x1

    #@23a
    move-object/from16 v0, p3

    #@23c
    move/from16 v1, v22

    #@23e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@241
    .line 213
    const/16 v22, 0x1

    #@243
    move-object/from16 v0, p3

    #@245
    move/from16 v1, v22

    #@247
    invoke-virtual {v15, v0, v1}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@24a
    .line 218
    :goto_9
    const/16 v22, 0x1

    #@24c
    return v22

    #@24d
    .line 216
    :cond_9
    const/16 v22, 0x0

    #@24f
    move-object/from16 v0, p3

    #@251
    move/from16 v1, v22

    #@253
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@256
    goto :goto_9

    #@257
    .line 222
    .end local v4    # "_arg0":I
    .end local v15    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_e
    const-string/jumbo v22, "android.os.IUserManager"

    #@25a
    move-object/from16 v0, p2

    #@25c
    move-object/from16 v1, v22

    #@25e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@261
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@264
    move-result v4

    #@265
    .line 225
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@267
    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserCreationTime(I)J

    #@26a
    move-result-wide v16

    #@26b
    .line 226
    .local v16, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26e
    .line 227
    move-object/from16 v0, p3

    #@270
    move-wide/from16 v1, v16

    #@272
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@275
    .line 228
    const/16 v22, 0x1

    #@277
    return v22

    #@278
    .line 232
    .end local v4    # "_arg0":I
    .end local v16    # "_result":J
    :sswitch_f
    const-string/jumbo v22, "android.os.IUserManager"

    #@27b
    move-object/from16 v0, p2

    #@27d
    move-object/from16 v1, v22

    #@27f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@282
    .line 233
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->isRestricted()Z

    #@285
    move-result v21

    #@286
    .line 234
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@289
    .line 235
    if-eqz v21, :cond_a

    #@28b
    const/16 v22, 0x1

    #@28d
    :goto_a
    move-object/from16 v0, p3

    #@28f
    move/from16 v1, v22

    #@291
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@294
    .line 236
    const/16 v22, 0x1

    #@296
    return v22

    #@297
    .line 235
    :cond_a
    const/16 v22, 0x0

    #@299
    goto :goto_a

    #@29a
    .line 240
    .end local v21    # "_result":Z
    :sswitch_10
    const-string/jumbo v22, "android.os.IUserManager"

    #@29d
    move-object/from16 v0, p2

    #@29f
    move-object/from16 v1, v22

    #@2a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a4
    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a7
    move-result v4

    #@2a8
    .line 243
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@2aa
    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserSerialNumber(I)I

    #@2ad
    move-result v14

    #@2ae
    .line 244
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b1
    .line 245
    move-object/from16 v0, p3

    #@2b3
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@2b6
    .line 246
    const/16 v22, 0x1

    #@2b8
    return v22

    #@2b9
    .line 250
    .end local v4    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_11
    const-string/jumbo v22, "android.os.IUserManager"

    #@2bc
    move-object/from16 v0, p2

    #@2be
    move-object/from16 v1, v22

    #@2c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c3
    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c6
    move-result v4

    #@2c7
    .line 253
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@2c9
    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserHandle(I)I

    #@2cc
    move-result v14

    #@2cd
    .line 254
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d0
    .line 255
    move-object/from16 v0, p3

    #@2d2
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@2d5
    .line 256
    const/16 v22, 0x1

    #@2d7
    return v22

    #@2d8
    .line 260
    .end local v4    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_12
    const-string/jumbo v22, "android.os.IUserManager"

    #@2db
    move-object/from16 v0, p2

    #@2dd
    move-object/from16 v1, v22

    #@2df
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e2
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e5
    move-result v4

    #@2e6
    .line 263
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@2e8
    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserRestrictions(I)Landroid/os/Bundle;

    #@2eb
    move-result-object v18

    #@2ec
    .line 264
    .local v18, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ef
    .line 265
    if-eqz v18, :cond_b

    #@2f1
    .line 266
    const/16 v22, 0x1

    #@2f3
    move-object/from16 v0, p3

    #@2f5
    move/from16 v1, v22

    #@2f7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2fa
    .line 267
    const/16 v22, 0x1

    #@2fc
    move-object/from16 v0, v18

    #@2fe
    move-object/from16 v1, p3

    #@300
    move/from16 v2, v22

    #@302
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@305
    .line 272
    :goto_b
    const/16 v22, 0x1

    #@307
    return v22

    #@308
    .line 270
    :cond_b
    const/16 v22, 0x0

    #@30a
    move-object/from16 v0, p3

    #@30c
    move/from16 v1, v22

    #@30e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@311
    goto :goto_b

    #@312
    .line 276
    .end local v4    # "_arg0":I
    .end local v18    # "_result":Landroid/os/Bundle;
    :sswitch_13
    const-string/jumbo v22, "android.os.IUserManager"

    #@315
    move-object/from16 v0, p2

    #@317
    move-object/from16 v1, v22

    #@319
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31c
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31f
    move-result-object v6

    #@320
    .line 280
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@323
    move-result v8

    #@324
    .line 281
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@326
    invoke-virtual {v0, v6, v8}, Landroid/os/IUserManager$Stub;->hasUserRestriction(Ljava/lang/String;I)Z

    #@329
    move-result v21

    #@32a
    .line 282
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32d
    .line 283
    if-eqz v21, :cond_c

    #@32f
    const/16 v22, 0x1

    #@331
    :goto_c
    move-object/from16 v0, p3

    #@333
    move/from16 v1, v22

    #@335
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@338
    .line 284
    const/16 v22, 0x1

    #@33a
    return v22

    #@33b
    .line 283
    :cond_c
    const/16 v22, 0x0

    #@33d
    goto :goto_c

    #@33e
    .line 288
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v21    # "_result":Z
    :sswitch_14
    const-string/jumbo v22, "android.os.IUserManager"

    #@341
    move-object/from16 v0, p2

    #@343
    move-object/from16 v1, v22

    #@345
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@348
    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@34b
    move-result v22

    #@34c
    if-eqz v22, :cond_d

    #@34e
    .line 291
    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@350
    move-object/from16 v0, v22

    #@352
    move-object/from16 v1, p2

    #@354
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@357
    move-result-object v5

    #@358
    check-cast v5, Landroid/os/Bundle;

    #@35a
    .line 297
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35d
    move-result v8

    #@35e
    .line 298
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@360
    invoke-virtual {v0, v5, v8}, Landroid/os/IUserManager$Stub;->setUserRestrictions(Landroid/os/Bundle;I)V

    #@363
    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@366
    .line 300
    const/16 v22, 0x1

    #@368
    return v22

    #@369
    .line 294
    .end local v8    # "_arg1":I
    :cond_d
    const/4 v5, 0x0

    #@36a
    .local v5, "_arg0":Landroid/os/Bundle;
    goto :goto_d

    #@36b
    .line 304
    .end local v5    # "_arg0":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v22, "android.os.IUserManager"

    #@36e
    move-object/from16 v0, p2

    #@370
    move-object/from16 v1, v22

    #@372
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@375
    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@378
    move-result-object v6

    #@379
    .line 308
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37c
    move-result v22

    #@37d
    if-eqz v22, :cond_e

    #@37f
    const/4 v12, 0x1

    #@380
    .line 310
    .restart local v12    # "_arg1":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@383
    move-result v13

    #@384
    .line 311
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@386
    invoke-virtual {v0, v6, v12, v13}, Landroid/os/IUserManager$Stub;->setUserRestriction(Ljava/lang/String;ZI)V

    #@389
    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38c
    .line 313
    const/16 v22, 0x1

    #@38e
    return v22

    #@38f
    .line 308
    .end local v12    # "_arg1":Z
    .end local v13    # "_arg2":I
    :cond_e
    const/4 v12, 0x0

    #@390
    .restart local v12    # "_arg1":Z
    goto :goto_e

    #@391
    .line 317
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Z
    :sswitch_16
    const-string/jumbo v22, "android.os.IUserManager"

    #@394
    move-object/from16 v0, p2

    #@396
    move-object/from16 v1, v22

    #@398
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39b
    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39e
    move-result-object v6

    #@39f
    .line 321
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a2
    move-result v22

    #@3a3
    if-eqz v22, :cond_f

    #@3a5
    const/4 v12, 0x1

    #@3a6
    .line 323
    .restart local v12    # "_arg1":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a9
    move-result v13

    #@3aa
    .line 324
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@3ac
    invoke-virtual {v0, v6, v12, v13}, Landroid/os/IUserManager$Stub;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    #@3af
    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b2
    .line 326
    const/16 v22, 0x1

    #@3b4
    return v22

    #@3b5
    .line 321
    .end local v12    # "_arg1":Z
    .end local v13    # "_arg2":I
    :cond_f
    const/4 v12, 0x0

    #@3b6
    .restart local v12    # "_arg1":Z
    goto :goto_f

    #@3b7
    .line 330
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Z
    :sswitch_17
    const-string/jumbo v22, "android.os.IUserManager"

    #@3ba
    move-object/from16 v0, p2

    #@3bc
    move-object/from16 v1, v22

    #@3be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c1
    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c4
    move-result-object v6

    #@3c5
    .line 334
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c8
    move-result v22

    #@3c9
    if-eqz v22, :cond_10

    #@3cb
    .line 335
    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3cd
    move-object/from16 v0, v22

    #@3cf
    move-object/from16 v1, p2

    #@3d1
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d4
    move-result-object v10

    #@3d5
    check-cast v10, Landroid/os/Bundle;

    #@3d7
    .line 341
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3da
    move-result v13

    #@3db
    .line 342
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@3dd
    invoke-virtual {v0, v6, v10, v13}, Landroid/os/IUserManager$Stub;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V

    #@3e0
    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e3
    .line 344
    const/16 v22, 0x1

    #@3e5
    return v22

    #@3e6
    .line 338
    .end local v13    # "_arg2":I
    :cond_10
    const/4 v10, 0x0

    #@3e7
    .local v10, "_arg1":Landroid/os/Bundle;
    goto :goto_10

    #@3e8
    .line 348
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/os/Bundle;
    :sswitch_18
    const-string/jumbo v22, "android.os.IUserManager"

    #@3eb
    move-object/from16 v0, p2

    #@3ed
    move-object/from16 v1, v22

    #@3ef
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f2
    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f5
    move-result-object v6

    #@3f6
    .line 351
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3f8
    invoke-virtual {v0, v6}, Landroid/os/IUserManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    #@3fb
    move-result-object v18

    #@3fc
    .line 352
    .restart local v18    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ff
    .line 353
    if-eqz v18, :cond_11

    #@401
    .line 354
    const/16 v22, 0x1

    #@403
    move-object/from16 v0, p3

    #@405
    move/from16 v1, v22

    #@407
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@40a
    .line 355
    const/16 v22, 0x1

    #@40c
    move-object/from16 v0, v18

    #@40e
    move-object/from16 v1, p3

    #@410
    move/from16 v2, v22

    #@412
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@415
    .line 360
    :goto_11
    const/16 v22, 0x1

    #@417
    return v22

    #@418
    .line 358
    :cond_11
    const/16 v22, 0x0

    #@41a
    move-object/from16 v0, p3

    #@41c
    move/from16 v1, v22

    #@41e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@421
    goto :goto_11

    #@422
    .line 364
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":Landroid/os/Bundle;
    :sswitch_19
    const-string/jumbo v22, "android.os.IUserManager"

    #@425
    move-object/from16 v0, p2

    #@427
    move-object/from16 v1, v22

    #@429
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42c
    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42f
    move-result-object v6

    #@430
    .line 368
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@433
    move-result v8

    #@434
    .line 369
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@436
    invoke-virtual {v0, v6, v8}, Landroid/os/IUserManager$Stub;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    #@439
    move-result-object v18

    #@43a
    .line 370
    .restart local v18    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43d
    .line 371
    if-eqz v18, :cond_12

    #@43f
    .line 372
    const/16 v22, 0x1

    #@441
    move-object/from16 v0, p3

    #@443
    move/from16 v1, v22

    #@445
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@448
    .line 373
    const/16 v22, 0x1

    #@44a
    move-object/from16 v0, v18

    #@44c
    move-object/from16 v1, p3

    #@44e
    move/from16 v2, v22

    #@450
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@453
    .line 378
    :goto_12
    const/16 v22, 0x1

    #@455
    return v22

    #@456
    .line 376
    :cond_12
    const/16 v22, 0x0

    #@458
    move-object/from16 v0, p3

    #@45a
    move/from16 v1, v22

    #@45c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@45f
    goto :goto_12

    #@460
    .line 382
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v18    # "_result":Landroid/os/Bundle;
    :sswitch_1a
    const-string/jumbo v22, "android.os.IUserManager"

    #@463
    move-object/from16 v0, p2

    #@465
    move-object/from16 v1, v22

    #@467
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46a
    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->removeRestrictions()V

    #@46d
    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@470
    .line 385
    const/16 v22, 0x1

    #@472
    return v22

    #@473
    .line 389
    :sswitch_1b
    const-string/jumbo v22, "android.os.IUserManager"

    #@476
    move-object/from16 v0, p2

    #@478
    move-object/from16 v1, v22

    #@47a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47d
    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@480
    move-result v22

    #@481
    if-eqz v22, :cond_13

    #@483
    .line 392
    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@485
    move-object/from16 v0, v22

    #@487
    move-object/from16 v1, p2

    #@489
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@48c
    move-result-object v5

    #@48d
    check-cast v5, Landroid/os/Bundle;

    #@48f
    .line 397
    :goto_13
    move-object/from16 v0, p0

    #@491
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    #@494
    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@497
    .line 399
    const/16 v22, 0x1

    #@499
    return v22

    #@49a
    .line 395
    :cond_13
    const/4 v5, 0x0

    #@49b
    .restart local v5    # "_arg0":Landroid/os/Bundle;
    goto :goto_13

    #@49c
    .line 403
    .end local v5    # "_arg0":Landroid/os/Bundle;
    :sswitch_1c
    const-string/jumbo v22, "android.os.IUserManager"

    #@49f
    move-object/from16 v0, p2

    #@4a1
    move-object/from16 v1, v22

    #@4a3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a6
    .line 404
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    #@4a9
    move-result-object v18

    #@4aa
    .line 405
    .restart local v18    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ad
    .line 406
    if-eqz v18, :cond_14

    #@4af
    .line 407
    const/16 v22, 0x1

    #@4b1
    move-object/from16 v0, p3

    #@4b3
    move/from16 v1, v22

    #@4b5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b8
    .line 408
    const/16 v22, 0x1

    #@4ba
    move-object/from16 v0, v18

    #@4bc
    move-object/from16 v1, p3

    #@4be
    move/from16 v2, v22

    #@4c0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@4c3
    .line 413
    :goto_14
    const/16 v22, 0x1

    #@4c5
    return v22

    #@4c6
    .line 411
    :cond_14
    const/16 v22, 0x0

    #@4c8
    move-object/from16 v0, p3

    #@4ca
    move/from16 v1, v22

    #@4cc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4cf
    goto :goto_14

    #@4d0
    .line 417
    .end local v18    # "_result":Landroid/os/Bundle;
    :sswitch_1d
    const-string/jumbo v22, "android.os.IUserManager"

    #@4d3
    move-object/from16 v0, p2

    #@4d5
    move-object/from16 v1, v22

    #@4d7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4da
    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4dd
    move-result v4

    #@4de
    .line 420
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    #@4e0
    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->markGuestForDeletion(I)Z

    #@4e3
    move-result v21

    #@4e4
    .line 421
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e7
    .line 422
    if-eqz v21, :cond_15

    #@4e9
    const/16 v22, 0x1

    #@4eb
    :goto_15
    move-object/from16 v0, p3

    #@4ed
    move/from16 v1, v22

    #@4ef
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4f2
    .line 423
    const/16 v22, 0x1

    #@4f4
    return v22

    #@4f5
    .line 422
    :cond_15
    const/16 v22, 0x0

    #@4f7
    goto :goto_15

    #@4f8
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
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
