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

.field static final TRANSACTION_canAddMoreManagedProfiles:I = 0xe

.field static final TRANSACTION_canHaveRestrictedProfile:I = 0x16

.field static final TRANSACTION_clearSeedAccountData:I = 0x2b

.field static final TRANSACTION_createProfileForUser:I = 0x3

.field static final TRANSACTION_createRestrictedProfile:I = 0x4

.field static final TRANSACTION_createUser:I = 0x2

.field static final TRANSACTION_getApplicationRestrictions:I = 0x1f

.field static final TRANSACTION_getApplicationRestrictionsForUser:I = 0x20

.field static final TRANSACTION_getCredentialOwnerProfile:I = 0x1

.field static final TRANSACTION_getDefaultGuestRestrictions:I = 0x22

.field static final TRANSACTION_getPrimaryUser:I = 0xa

.field static final TRANSACTION_getProfileIds:I = 0xd

.field static final TRANSACTION_getProfileParent:I = 0xf

.field static final TRANSACTION_getProfiles:I = 0xc

.field static final TRANSACTION_getSeedAccountName:I = 0x28

.field static final TRANSACTION_getSeedAccountOptions:I = 0x2a

.field static final TRANSACTION_getSeedAccountType:I = 0x29

.field static final TRANSACTION_getUserAccount:I = 0x12

.field static final TRANSACTION_getUserCreationTime:I = 0x14

.field static final TRANSACTION_getUserHandle:I = 0x18

.field static final TRANSACTION_getUserIcon:I = 0x9

.field static final TRANSACTION_getUserInfo:I = 0x11

.field static final TRANSACTION_getUserRestrictionSource:I = 0x19

.field static final TRANSACTION_getUserRestrictions:I = 0x1a

.field static final TRANSACTION_getUserSerialNumber:I = 0x17

.field static final TRANSACTION_getUsers:I = 0xb

.field static final TRANSACTION_hasBaseUserRestriction:I = 0x1b

.field static final TRANSACTION_hasUserRestriction:I = 0x1c

.field static final TRANSACTION_isManagedProfile:I = 0x2d

.field static final TRANSACTION_isQuietModeEnabled:I = 0x25

.field static final TRANSACTION_isRestricted:I = 0x15

.field static final TRANSACTION_isSameProfileGroup:I = 0x10

.field static final TRANSACTION_markGuestForDeletion:I = 0x23

.field static final TRANSACTION_removeUser:I = 0x6

.field static final TRANSACTION_setApplicationRestrictions:I = 0x1e

.field static final TRANSACTION_setDefaultGuestRestrictions:I = 0x21

.field static final TRANSACTION_setQuietModeEnabled:I = 0x24

.field static final TRANSACTION_setSeedAccountData:I = 0x27

.field static final TRANSACTION_setUserAccount:I = 0x13

.field static final TRANSACTION_setUserEnabled:I = 0x5

.field static final TRANSACTION_setUserIcon:I = 0x8

.field static final TRANSACTION_setUserName:I = 0x7

.field static final TRANSACTION_setUserRestriction:I = 0x1d

.field static final TRANSACTION_someUserHasSeedAccount:I = 0x2c

.field static final TRANSACTION_trySetQuietModeDisabled:I = 0x26


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
    .locals 30
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
    .line 624
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.os.IUserManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.os.IUserManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v5

    #@1e
    .line 53
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getCredentialOwnerProfile(I)I

    #@23
    move-result v19

    #@24
    .line 54
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 55
    move-object/from16 v0, p3

    #@29
    move/from16 v1, v19

    #@2b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 56
    const/4 v4, 0x1

    #@2f
    return v4

    #@30
    .line 60
    .end local v5    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_2
    const-string/jumbo v4, "android.os.IUserManager"

    #@33
    move-object/from16 v0, p2

    #@35
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b
    move-result-object v11

    #@3c
    .line 64
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v13

    #@40
    .line 65
    .local v13, "_arg1":I
    move-object/from16 v0, p0

    #@42
    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@45
    move-result-object v22

    #@46
    .line 66
    .local v22, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    .line 67
    if-eqz v22, :cond_0

    #@4b
    .line 68
    const/4 v4, 0x1

    #@4c
    move-object/from16 v0, p3

    #@4e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 69
    const/4 v4, 0x1

    #@52
    move-object/from16 v0, v22

    #@54
    move-object/from16 v1, p3

    #@56
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@59
    .line 74
    :goto_0
    const/4 v4, 0x1

    #@5a
    return v4

    #@5b
    .line 72
    :cond_0
    const/4 v4, 0x0

    #@5c
    move-object/from16 v0, p3

    #@5e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    goto :goto_0

    #@62
    .line 78
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_3
    const-string/jumbo v4, "android.os.IUserManager"

    #@65
    move-object/from16 v0, p2

    #@67
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d
    move-result-object v11

    #@6e
    .line 82
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v13

    #@72
    .line 84
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v18

    #@76
    .line 85
    .local v18, "_arg2":I
    move-object/from16 v0, p0

    #@78
    move/from16 v1, v18

    #@7a
    invoke-virtual {v0, v11, v13, v1}, Landroid/os/IUserManager$Stub;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@7d
    move-result-object v22

    #@7e
    .line 86
    .restart local v22    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@81
    .line 87
    if-eqz v22, :cond_1

    #@83
    .line 88
    const/4 v4, 0x1

    #@84
    move-object/from16 v0, p3

    #@86
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@89
    .line 89
    const/4 v4, 0x1

    #@8a
    move-object/from16 v0, v22

    #@8c
    move-object/from16 v1, p3

    #@8e
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@91
    .line 94
    :goto_1
    const/4 v4, 0x1

    #@92
    return v4

    #@93
    .line 92
    :cond_1
    const/4 v4, 0x0

    #@94
    move-object/from16 v0, p3

    #@96
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@99
    goto :goto_1

    #@9a
    .line 98
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_4
    const-string/jumbo v4, "android.os.IUserManager"

    #@9d
    move-object/from16 v0, p2

    #@9f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a5
    move-result-object v11

    #@a6
    .line 102
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v13

    #@aa
    .line 103
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    #@ac
    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@af
    move-result-object v22

    #@b0
    .line 104
    .restart local v22    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b3
    .line 105
    if-eqz v22, :cond_2

    #@b5
    .line 106
    const/4 v4, 0x1

    #@b6
    move-object/from16 v0, p3

    #@b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@bb
    .line 107
    const/4 v4, 0x1

    #@bc
    move-object/from16 v0, v22

    #@be
    move-object/from16 v1, p3

    #@c0
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@c3
    .line 112
    :goto_2
    const/4 v4, 0x1

    #@c4
    return v4

    #@c5
    .line 110
    :cond_2
    const/4 v4, 0x0

    #@c6
    move-object/from16 v0, p3

    #@c8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@cb
    goto :goto_2

    #@cc
    .line 116
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_5
    const-string/jumbo v4, "android.os.IUserManager"

    #@cf
    move-object/from16 v0, p2

    #@d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d4
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d7
    move-result v5

    #@d8
    .line 119
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@da
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->setUserEnabled(I)V

    #@dd
    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0
    .line 121
    const/4 v4, 0x1

    #@e1
    return v4

    #@e2
    .line 125
    .end local v5    # "_arg0":I
    :sswitch_6
    const-string/jumbo v4, "android.os.IUserManager"

    #@e5
    move-object/from16 v0, p2

    #@e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ea
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ed
    move-result v5

    #@ee
    .line 128
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@f0
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->removeUser(I)Z

    #@f3
    move-result v28

    #@f4
    .line 129
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f7
    .line 130
    if-eqz v28, :cond_3

    #@f9
    const/4 v4, 0x1

    #@fa
    :goto_3
    move-object/from16 v0, p3

    #@fc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@ff
    .line 131
    const/4 v4, 0x1

    #@100
    return v4

    #@101
    .line 130
    :cond_3
    const/4 v4, 0x0

    #@102
    goto :goto_3

    #@103
    .line 135
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_7
    const-string/jumbo v4, "android.os.IUserManager"

    #@106
    move-object/from16 v0, p2

    #@108
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10b
    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10e
    move-result v5

    #@10f
    .line 139
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@112
    move-result-object v6

    #@113
    .line 140
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@115
    invoke-virtual {v0, v5, v6}, Landroid/os/IUserManager$Stub;->setUserName(ILjava/lang/String;)V

    #@118
    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11b
    .line 142
    const/4 v4, 0x1

    #@11c
    return v4

    #@11d
    .line 146
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "android.os.IUserManager"

    #@120
    move-object/from16 v0, p2

    #@122
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@125
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@128
    move-result v5

    #@129
    .line 150
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12c
    move-result v4

    #@12d
    if-eqz v4, :cond_4

    #@12f
    .line 151
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@131
    move-object/from16 v0, p2

    #@133
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@136
    move-result-object v15

    #@137
    check-cast v15, Landroid/graphics/Bitmap;

    #@139
    .line 156
    :goto_4
    move-object/from16 v0, p0

    #@13b
    invoke-virtual {v0, v5, v15}, Landroid/os/IUserManager$Stub;->setUserIcon(ILandroid/graphics/Bitmap;)V

    #@13e
    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@141
    .line 158
    const/4 v4, 0x1

    #@142
    return v4

    #@143
    .line 154
    :cond_4
    const/4 v15, 0x0

    #@144
    .local v15, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_4

    #@145
    .line 162
    .end local v5    # "_arg0":I
    .end local v15    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_9
    const-string/jumbo v4, "android.os.IUserManager"

    #@148
    move-object/from16 v0, p2

    #@14a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14d
    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@150
    move-result v5

    #@151
    .line 165
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@153
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    #@156
    move-result-object v24

    #@157
    .line 166
    .local v24, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15a
    .line 167
    if-eqz v24, :cond_5

    #@15c
    .line 168
    const/4 v4, 0x1

    #@15d
    move-object/from16 v0, p3

    #@15f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@162
    .line 169
    const/4 v4, 0x1

    #@163
    move-object/from16 v0, v24

    #@165
    move-object/from16 v1, p3

    #@167
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@16a
    .line 174
    :goto_5
    const/4 v4, 0x1

    #@16b
    return v4

    #@16c
    .line 172
    :cond_5
    const/4 v4, 0x0

    #@16d
    move-object/from16 v0, p3

    #@16f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@172
    goto :goto_5

    #@173
    .line 178
    .end local v5    # "_arg0":I
    .end local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_a
    const-string/jumbo v4, "android.os.IUserManager"

    #@176
    move-object/from16 v0, p2

    #@178
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17b
    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getPrimaryUser()Landroid/content/pm/UserInfo;

    #@17e
    move-result-object v22

    #@17f
    .line 180
    .restart local v22    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@182
    .line 181
    if-eqz v22, :cond_6

    #@184
    .line 182
    const/4 v4, 0x1

    #@185
    move-object/from16 v0, p3

    #@187
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18a
    .line 183
    const/4 v4, 0x1

    #@18b
    move-object/from16 v0, v22

    #@18d
    move-object/from16 v1, p3

    #@18f
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@192
    .line 188
    :goto_6
    const/4 v4, 0x1

    #@193
    return v4

    #@194
    .line 186
    :cond_6
    const/4 v4, 0x0

    #@195
    move-object/from16 v0, p3

    #@197
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19a
    goto :goto_6

    #@19b
    .line 192
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_b
    const-string/jumbo v4, "android.os.IUserManager"

    #@19e
    move-object/from16 v0, p2

    #@1a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a3
    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a6
    move-result v4

    #@1a7
    if-eqz v4, :cond_7

    #@1a9
    const/4 v12, 0x1

    #@1aa
    .line 195
    .local v12, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    #@1ac
    invoke-virtual {v0, v12}, Landroid/os/IUserManager$Stub;->getUsers(Z)Ljava/util/List;

    #@1af
    move-result-object v27

    #@1b0
    .line 196
    .local v27, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b3
    .line 197
    move-object/from16 v0, p3

    #@1b5
    move-object/from16 v1, v27

    #@1b7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1ba
    .line 198
    const/4 v4, 0x1

    #@1bb
    return v4

    #@1bc
    .line 194
    .end local v12    # "_arg0":Z
    .end local v27    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    const/4 v12, 0x0

    #@1bd
    goto :goto_7

    #@1be
    .line 202
    :sswitch_c
    const-string/jumbo v4, "android.os.IUserManager"

    #@1c1
    move-object/from16 v0, p2

    #@1c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c6
    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c9
    move-result v5

    #@1ca
    .line 206
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cd
    move-result v4

    #@1ce
    if-eqz v4, :cond_8

    #@1d0
    const/16 v17, 0x1

    #@1d2
    .line 207
    .local v17, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    #@1d4
    move/from16 v1, v17

    #@1d6
    invoke-virtual {v0, v5, v1}, Landroid/os/IUserManager$Stub;->getProfiles(IZ)Ljava/util/List;

    #@1d9
    move-result-object v27

    #@1da
    .line 208
    .restart local v27    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dd
    .line 209
    move-object/from16 v0, p3

    #@1df
    move-object/from16 v1, v27

    #@1e1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1e4
    .line 210
    const/4 v4, 0x1

    #@1e5
    return v4

    #@1e6
    .line 206
    .end local v17    # "_arg1":Z
    .end local v27    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    const/16 v17, 0x0

    #@1e8
    goto :goto_8

    #@1e9
    .line 214
    .end local v5    # "_arg0":I
    :sswitch_d
    const-string/jumbo v4, "android.os.IUserManager"

    #@1ec
    move-object/from16 v0, p2

    #@1ee
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f1
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f4
    move-result v5

    #@1f5
    .line 218
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f8
    move-result v4

    #@1f9
    if-eqz v4, :cond_9

    #@1fb
    const/16 v17, 0x1

    #@1fd
    .line 219
    .restart local v17    # "_arg1":Z
    :goto_9
    move-object/from16 v0, p0

    #@1ff
    move/from16 v1, v17

    #@201
    invoke-virtual {v0, v5, v1}, Landroid/os/IUserManager$Stub;->getProfileIds(IZ)[I

    #@204
    move-result-object v29

    #@205
    .line 220
    .local v29, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@208
    .line 221
    move-object/from16 v0, p3

    #@20a
    move-object/from16 v1, v29

    #@20c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@20f
    .line 222
    const/4 v4, 0x1

    #@210
    return v4

    #@211
    .line 218
    .end local v17    # "_arg1":Z
    .end local v29    # "_result":[I
    :cond_9
    const/16 v17, 0x0

    #@213
    goto :goto_9

    #@214
    .line 226
    .end local v5    # "_arg0":I
    :sswitch_e
    const-string/jumbo v4, "android.os.IUserManager"

    #@217
    move-object/from16 v0, p2

    #@219
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21c
    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21f
    move-result v5

    #@220
    .line 230
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@223
    move-result v4

    #@224
    if-eqz v4, :cond_a

    #@226
    const/16 v17, 0x1

    #@228
    .line 231
    .restart local v17    # "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    #@22a
    move/from16 v1, v17

    #@22c
    invoke-virtual {v0, v5, v1}, Landroid/os/IUserManager$Stub;->canAddMoreManagedProfiles(IZ)Z

    #@22f
    move-result v28

    #@230
    .line 232
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@233
    .line 233
    if-eqz v28, :cond_b

    #@235
    const/4 v4, 0x1

    #@236
    :goto_b
    move-object/from16 v0, p3

    #@238
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23b
    .line 234
    const/4 v4, 0x1

    #@23c
    return v4

    #@23d
    .line 230
    .end local v17    # "_arg1":Z
    .end local v28    # "_result":Z
    :cond_a
    const/16 v17, 0x0

    #@23f
    goto :goto_a

    #@240
    .line 233
    .restart local v17    # "_arg1":Z
    .restart local v28    # "_result":Z
    :cond_b
    const/4 v4, 0x0

    #@241
    goto :goto_b

    #@242
    .line 238
    .end local v5    # "_arg0":I
    .end local v17    # "_arg1":Z
    .end local v28    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "android.os.IUserManager"

    #@245
    move-object/from16 v0, p2

    #@247
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24a
    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24d
    move-result v5

    #@24e
    .line 241
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@250
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@253
    move-result-object v22

    #@254
    .line 242
    .restart local v22    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@257
    .line 243
    if-eqz v22, :cond_c

    #@259
    .line 244
    const/4 v4, 0x1

    #@25a
    move-object/from16 v0, p3

    #@25c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@25f
    .line 245
    const/4 v4, 0x1

    #@260
    move-object/from16 v0, v22

    #@262
    move-object/from16 v1, p3

    #@264
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@267
    .line 250
    :goto_c
    const/4 v4, 0x1

    #@268
    return v4

    #@269
    .line 248
    :cond_c
    const/4 v4, 0x0

    #@26a
    move-object/from16 v0, p3

    #@26c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@26f
    goto :goto_c

    #@270
    .line 254
    .end local v5    # "_arg0":I
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_10
    const-string/jumbo v4, "android.os.IUserManager"

    #@273
    move-object/from16 v0, p2

    #@275
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@278
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27b
    move-result v5

    #@27c
    .line 258
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27f
    move-result v13

    #@280
    .line 259
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    #@282
    invoke-virtual {v0, v5, v13}, Landroid/os/IUserManager$Stub;->isSameProfileGroup(II)Z

    #@285
    move-result v28

    #@286
    .line 260
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@289
    .line 261
    if-eqz v28, :cond_d

    #@28b
    const/4 v4, 0x1

    #@28c
    :goto_d
    move-object/from16 v0, p3

    #@28e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@291
    .line 262
    const/4 v4, 0x1

    #@292
    return v4

    #@293
    .line 261
    :cond_d
    const/4 v4, 0x0

    #@294
    goto :goto_d

    #@295
    .line 266
    .end local v5    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "android.os.IUserManager"

    #@298
    move-object/from16 v0, p2

    #@29a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29d
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a0
    move-result v5

    #@2a1
    .line 269
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@2a3
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@2a6
    move-result-object v22

    #@2a7
    .line 270
    .restart local v22    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2aa
    .line 271
    if-eqz v22, :cond_e

    #@2ac
    .line 272
    const/4 v4, 0x1

    #@2ad
    move-object/from16 v0, p3

    #@2af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2b2
    .line 273
    const/4 v4, 0x1

    #@2b3
    move-object/from16 v0, v22

    #@2b5
    move-object/from16 v1, p3

    #@2b7
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2ba
    .line 278
    :goto_e
    const/4 v4, 0x1

    #@2bb
    return v4

    #@2bc
    .line 276
    :cond_e
    const/4 v4, 0x0

    #@2bd
    move-object/from16 v0, p3

    #@2bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2c2
    goto :goto_e

    #@2c3
    .line 282
    .end local v5    # "_arg0":I
    .end local v22    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_12
    const-string/jumbo v4, "android.os.IUserManager"

    #@2c6
    move-object/from16 v0, p2

    #@2c8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cb
    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ce
    move-result v5

    #@2cf
    .line 285
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@2d1
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserAccount(I)Ljava/lang/String;

    #@2d4
    move-result-object v26

    #@2d5
    .line 286
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d8
    .line 287
    move-object/from16 v0, p3

    #@2da
    move-object/from16 v1, v26

    #@2dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2df
    .line 288
    const/4 v4, 0x1

    #@2e0
    return v4

    #@2e1
    .line 292
    .end local v5    # "_arg0":I
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v4, "android.os.IUserManager"

    #@2e4
    move-object/from16 v0, p2

    #@2e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e9
    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ec
    move-result v5

    #@2ed
    .line 296
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f0
    move-result-object v6

    #@2f1
    .line 297
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2f3
    invoke-virtual {v0, v5, v6}, Landroid/os/IUserManager$Stub;->setUserAccount(ILjava/lang/String;)V

    #@2f6
    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f9
    .line 299
    const/4 v4, 0x1

    #@2fa
    return v4

    #@2fb
    .line 303
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v4, "android.os.IUserManager"

    #@2fe
    move-object/from16 v0, p2

    #@300
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@303
    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@306
    move-result v5

    #@307
    .line 306
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@309
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserCreationTime(I)J

    #@30c
    move-result-wide v20

    #@30d
    .line 307
    .local v20, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@310
    .line 308
    move-object/from16 v0, p3

    #@312
    move-wide/from16 v1, v20

    #@314
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@317
    .line 309
    const/4 v4, 0x1

    #@318
    return v4

    #@319
    .line 313
    .end local v5    # "_arg0":I
    .end local v20    # "_result":J
    :sswitch_15
    const-string/jumbo v4, "android.os.IUserManager"

    #@31c
    move-object/from16 v0, p2

    #@31e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@321
    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->isRestricted()Z

    #@324
    move-result v28

    #@325
    .line 315
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@328
    .line 316
    if-eqz v28, :cond_f

    #@32a
    const/4 v4, 0x1

    #@32b
    :goto_f
    move-object/from16 v0, p3

    #@32d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@330
    .line 317
    const/4 v4, 0x1

    #@331
    return v4

    #@332
    .line 316
    :cond_f
    const/4 v4, 0x0

    #@333
    goto :goto_f

    #@334
    .line 321
    .end local v28    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "android.os.IUserManager"

    #@337
    move-object/from16 v0, p2

    #@339
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33c
    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@33f
    move-result v5

    #@340
    .line 324
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@342
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->canHaveRestrictedProfile(I)Z

    #@345
    move-result v28

    #@346
    .line 325
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@349
    .line 326
    if-eqz v28, :cond_10

    #@34b
    const/4 v4, 0x1

    #@34c
    :goto_10
    move-object/from16 v0, p3

    #@34e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@351
    .line 327
    const/4 v4, 0x1

    #@352
    return v4

    #@353
    .line 326
    :cond_10
    const/4 v4, 0x0

    #@354
    goto :goto_10

    #@355
    .line 331
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.os.IUserManager"

    #@358
    move-object/from16 v0, p2

    #@35a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35d
    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@360
    move-result v5

    #@361
    .line 334
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@363
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserSerialNumber(I)I

    #@366
    move-result v19

    #@367
    .line 335
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@36a
    .line 336
    move-object/from16 v0, p3

    #@36c
    move/from16 v1, v19

    #@36e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@371
    .line 337
    const/4 v4, 0x1

    #@372
    return v4

    #@373
    .line 341
    .end local v5    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_18
    const-string/jumbo v4, "android.os.IUserManager"

    #@376
    move-object/from16 v0, p2

    #@378
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37b
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37e
    move-result v5

    #@37f
    .line 344
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@381
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserHandle(I)I

    #@384
    move-result v19

    #@385
    .line 345
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@388
    .line 346
    move-object/from16 v0, p3

    #@38a
    move/from16 v1, v19

    #@38c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38f
    .line 347
    const/4 v4, 0x1

    #@390
    return v4

    #@391
    .line 351
    .end local v5    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_19
    const-string/jumbo v4, "android.os.IUserManager"

    #@394
    move-object/from16 v0, p2

    #@396
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@399
    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39c
    move-result-object v11

    #@39d
    .line 355
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a0
    move-result v13

    #@3a1
    .line 356
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    #@3a3
    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->getUserRestrictionSource(Ljava/lang/String;I)I

    #@3a6
    move-result v19

    #@3a7
    .line 357
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3aa
    .line 358
    move-object/from16 v0, p3

    #@3ac
    move/from16 v1, v19

    #@3ae
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b1
    .line 359
    const/4 v4, 0x1

    #@3b2
    return v4

    #@3b3
    .line 363
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v19    # "_result":I
    :sswitch_1a
    const-string/jumbo v4, "android.os.IUserManager"

    #@3b6
    move-object/from16 v0, p2

    #@3b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bb
    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3be
    move-result v5

    #@3bf
    .line 366
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@3c1
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->getUserRestrictions(I)Landroid/os/Bundle;

    #@3c4
    move-result-object v23

    #@3c5
    .line 367
    .local v23, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c8
    .line 368
    if-eqz v23, :cond_11

    #@3ca
    .line 369
    const/4 v4, 0x1

    #@3cb
    move-object/from16 v0, p3

    #@3cd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3d0
    .line 370
    const/4 v4, 0x1

    #@3d1
    move-object/from16 v0, v23

    #@3d3
    move-object/from16 v1, p3

    #@3d5
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@3d8
    .line 375
    :goto_11
    const/4 v4, 0x1

    #@3d9
    return v4

    #@3da
    .line 373
    :cond_11
    const/4 v4, 0x0

    #@3db
    move-object/from16 v0, p3

    #@3dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3e0
    goto :goto_11

    #@3e1
    .line 379
    .end local v5    # "_arg0":I
    .end local v23    # "_result":Landroid/os/Bundle;
    :sswitch_1b
    const-string/jumbo v4, "android.os.IUserManager"

    #@3e4
    move-object/from16 v0, p2

    #@3e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e9
    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3ec
    move-result-object v11

    #@3ed
    .line 383
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f0
    move-result v13

    #@3f1
    .line 384
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    #@3f3
    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    #@3f6
    move-result v28

    #@3f7
    .line 385
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fa
    .line 386
    if-eqz v28, :cond_12

    #@3fc
    const/4 v4, 0x1

    #@3fd
    :goto_12
    move-object/from16 v0, p3

    #@3ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@402
    .line 387
    const/4 v4, 0x1

    #@403
    return v4

    #@404
    .line 386
    :cond_12
    const/4 v4, 0x0

    #@405
    goto :goto_12

    #@406
    .line 391
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_1c
    const-string/jumbo v4, "android.os.IUserManager"

    #@409
    move-object/from16 v0, p2

    #@40b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40e
    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@411
    move-result-object v11

    #@412
    .line 395
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@415
    move-result v13

    #@416
    .line 396
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    #@418
    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->hasUserRestriction(Ljava/lang/String;I)Z

    #@41b
    move-result v28

    #@41c
    .line 397
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41f
    .line 398
    if-eqz v28, :cond_13

    #@421
    const/4 v4, 0x1

    #@422
    :goto_13
    move-object/from16 v0, p3

    #@424
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@427
    .line 399
    const/4 v4, 0x1

    #@428
    return v4

    #@429
    .line 398
    :cond_13
    const/4 v4, 0x0

    #@42a
    goto :goto_13

    #@42b
    .line 403
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "android.os.IUserManager"

    #@42e
    move-object/from16 v0, p2

    #@430
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@433
    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@436
    move-result-object v11

    #@437
    .line 407
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43a
    move-result v4

    #@43b
    if-eqz v4, :cond_14

    #@43d
    const/16 v17, 0x1

    #@43f
    .line 409
    .local v17, "_arg1":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@442
    move-result v18

    #@443
    .line 410
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    #@445
    move/from16 v1, v17

    #@447
    move/from16 v2, v18

    #@449
    invoke-virtual {v0, v11, v1, v2}, Landroid/os/IUserManager$Stub;->setUserRestriction(Ljava/lang/String;ZI)V

    #@44c
    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44f
    .line 412
    const/4 v4, 0x1

    #@450
    return v4

    #@451
    .line 407
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":I
    :cond_14
    const/16 v17, 0x0

    #@453
    .restart local v17    # "_arg1":Z
    goto :goto_14

    #@454
    .line 416
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Z
    :sswitch_1e
    const-string/jumbo v4, "android.os.IUserManager"

    #@457
    move-object/from16 v0, p2

    #@459
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45c
    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45f
    move-result-object v11

    #@460
    .line 420
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@463
    move-result v4

    #@464
    if-eqz v4, :cond_15

    #@466
    .line 421
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@468
    move-object/from16 v0, p2

    #@46a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@46d
    move-result-object v16

    #@46e
    check-cast v16, Landroid/os/Bundle;

    #@470
    .line 427
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@473
    move-result v18

    #@474
    .line 428
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    #@476
    move-object/from16 v1, v16

    #@478
    move/from16 v2, v18

    #@47a
    invoke-virtual {v0, v11, v1, v2}, Landroid/os/IUserManager$Stub;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V

    #@47d
    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@480
    .line 430
    const/4 v4, 0x1

    #@481
    return v4

    #@482
    .line 424
    .end local v18    # "_arg2":I
    :cond_15
    const/16 v16, 0x0

    #@484
    .local v16, "_arg1":Landroid/os/Bundle;
    goto :goto_15

    #@485
    .line 434
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Landroid/os/Bundle;
    :sswitch_1f
    const-string/jumbo v4, "android.os.IUserManager"

    #@488
    move-object/from16 v0, p2

    #@48a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48d
    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@490
    move-result-object v11

    #@491
    .line 437
    .restart local v11    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@493
    invoke-virtual {v0, v11}, Landroid/os/IUserManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    #@496
    move-result-object v23

    #@497
    .line 438
    .restart local v23    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49a
    .line 439
    if-eqz v23, :cond_16

    #@49c
    .line 440
    const/4 v4, 0x1

    #@49d
    move-object/from16 v0, p3

    #@49f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4a2
    .line 441
    const/4 v4, 0x1

    #@4a3
    move-object/from16 v0, v23

    #@4a5
    move-object/from16 v1, p3

    #@4a7
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@4aa
    .line 446
    :goto_16
    const/4 v4, 0x1

    #@4ab
    return v4

    #@4ac
    .line 444
    :cond_16
    const/4 v4, 0x0

    #@4ad
    move-object/from16 v0, p3

    #@4af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4b2
    goto :goto_16

    #@4b3
    .line 450
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Landroid/os/Bundle;
    :sswitch_20
    const-string/jumbo v4, "android.os.IUserManager"

    #@4b6
    move-object/from16 v0, p2

    #@4b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4bb
    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4be
    move-result-object v11

    #@4bf
    .line 454
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c2
    move-result v13

    #@4c3
    .line 455
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    #@4c5
    invoke-virtual {v0, v11, v13}, Landroid/os/IUserManager$Stub;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    #@4c8
    move-result-object v23

    #@4c9
    .line 456
    .restart local v23    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4cc
    .line 457
    if-eqz v23, :cond_17

    #@4ce
    .line 458
    const/4 v4, 0x1

    #@4cf
    move-object/from16 v0, p3

    #@4d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4d4
    .line 459
    const/4 v4, 0x1

    #@4d5
    move-object/from16 v0, v23

    #@4d7
    move-object/from16 v1, p3

    #@4d9
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@4dc
    .line 464
    :goto_17
    const/4 v4, 0x1

    #@4dd
    return v4

    #@4de
    .line 462
    :cond_17
    const/4 v4, 0x0

    #@4df
    move-object/from16 v0, p3

    #@4e1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4e4
    goto :goto_17

    #@4e5
    .line 468
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v23    # "_result":Landroid/os/Bundle;
    :sswitch_21
    const-string/jumbo v4, "android.os.IUserManager"

    #@4e8
    move-object/from16 v0, p2

    #@4ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ed
    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f0
    move-result v4

    #@4f1
    if-eqz v4, :cond_18

    #@4f3
    .line 471
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4f5
    move-object/from16 v0, p2

    #@4f7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4fa
    move-result-object v10

    #@4fb
    check-cast v10, Landroid/os/Bundle;

    #@4fd
    .line 476
    :goto_18
    move-object/from16 v0, p0

    #@4ff
    invoke-virtual {v0, v10}, Landroid/os/IUserManager$Stub;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    #@502
    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@505
    .line 478
    const/4 v4, 0x1

    #@506
    return v4

    #@507
    .line 474
    :cond_18
    const/4 v10, 0x0

    #@508
    .local v10, "_arg0":Landroid/os/Bundle;
    goto :goto_18

    #@509
    .line 482
    .end local v10    # "_arg0":Landroid/os/Bundle;
    :sswitch_22
    const-string/jumbo v4, "android.os.IUserManager"

    #@50c
    move-object/from16 v0, p2

    #@50e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@511
    .line 483
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    #@514
    move-result-object v23

    #@515
    .line 484
    .restart local v23    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@518
    .line 485
    if-eqz v23, :cond_19

    #@51a
    .line 486
    const/4 v4, 0x1

    #@51b
    move-object/from16 v0, p3

    #@51d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@520
    .line 487
    const/4 v4, 0x1

    #@521
    move-object/from16 v0, v23

    #@523
    move-object/from16 v1, p3

    #@525
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@528
    .line 492
    :goto_19
    const/4 v4, 0x1

    #@529
    return v4

    #@52a
    .line 490
    :cond_19
    const/4 v4, 0x0

    #@52b
    move-object/from16 v0, p3

    #@52d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@530
    goto :goto_19

    #@531
    .line 496
    .end local v23    # "_result":Landroid/os/Bundle;
    :sswitch_23
    const-string/jumbo v4, "android.os.IUserManager"

    #@534
    move-object/from16 v0, p2

    #@536
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@539
    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53c
    move-result v5

    #@53d
    .line 499
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@53f
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->markGuestForDeletion(I)Z

    #@542
    move-result v28

    #@543
    .line 500
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@546
    .line 501
    if-eqz v28, :cond_1a

    #@548
    const/4 v4, 0x1

    #@549
    :goto_1a
    move-object/from16 v0, p3

    #@54b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@54e
    .line 502
    const/4 v4, 0x1

    #@54f
    return v4

    #@550
    .line 501
    :cond_1a
    const/4 v4, 0x0

    #@551
    goto :goto_1a

    #@552
    .line 506
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_24
    const-string/jumbo v4, "android.os.IUserManager"

    #@555
    move-object/from16 v0, p2

    #@557
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55a
    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55d
    move-result v5

    #@55e
    .line 510
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@561
    move-result v4

    #@562
    if-eqz v4, :cond_1b

    #@564
    const/16 v17, 0x1

    #@566
    .line 511
    .local v17, "_arg1":Z
    :goto_1b
    move-object/from16 v0, p0

    #@568
    move/from16 v1, v17

    #@56a
    invoke-virtual {v0, v5, v1}, Landroid/os/IUserManager$Stub;->setQuietModeEnabled(IZ)V

    #@56d
    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@570
    .line 513
    const/4 v4, 0x1

    #@571
    return v4

    #@572
    .line 510
    .end local v17    # "_arg1":Z
    :cond_1b
    const/16 v17, 0x0

    #@574
    goto :goto_1b

    #@575
    .line 517
    .end local v5    # "_arg0":I
    :sswitch_25
    const-string/jumbo v4, "android.os.IUserManager"

    #@578
    move-object/from16 v0, p2

    #@57a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57d
    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@580
    move-result v5

    #@581
    .line 520
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@583
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->isQuietModeEnabled(I)Z

    #@586
    move-result v28

    #@587
    .line 521
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@58a
    .line 522
    if-eqz v28, :cond_1c

    #@58c
    const/4 v4, 0x1

    #@58d
    :goto_1c
    move-object/from16 v0, p3

    #@58f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@592
    .line 523
    const/4 v4, 0x1

    #@593
    return v4

    #@594
    .line 522
    :cond_1c
    const/4 v4, 0x0

    #@595
    goto :goto_1c

    #@596
    .line 527
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_26
    const-string/jumbo v4, "android.os.IUserManager"

    #@599
    move-object/from16 v0, p2

    #@59b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59e
    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a1
    move-result v5

    #@5a2
    .line 531
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a5
    move-result v4

    #@5a6
    if-eqz v4, :cond_1d

    #@5a8
    .line 532
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5aa
    move-object/from16 v0, p2

    #@5ac
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5af
    move-result-object v14

    #@5b0
    check-cast v14, Landroid/content/IntentSender;

    #@5b2
    .line 537
    :goto_1d
    move-object/from16 v0, p0

    #@5b4
    invoke-virtual {v0, v5, v14}, Landroid/os/IUserManager$Stub;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z

    #@5b7
    move-result v28

    #@5b8
    .line 538
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5bb
    .line 539
    if-eqz v28, :cond_1e

    #@5bd
    const/4 v4, 0x1

    #@5be
    :goto_1e
    move-object/from16 v0, p3

    #@5c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5c3
    .line 540
    const/4 v4, 0x1

    #@5c4
    return v4

    #@5c5
    .line 535
    .end local v28    # "_result":Z
    :cond_1d
    const/4 v14, 0x0

    #@5c6
    .local v14, "_arg1":Landroid/content/IntentSender;
    goto :goto_1d

    #@5c7
    .line 539
    .end local v14    # "_arg1":Landroid/content/IntentSender;
    .restart local v28    # "_result":Z
    :cond_1e
    const/4 v4, 0x0

    #@5c8
    goto :goto_1e

    #@5c9
    .line 544
    .end local v5    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "android.os.IUserManager"

    #@5cc
    move-object/from16 v0, p2

    #@5ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d1
    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d4
    move-result v5

    #@5d5
    .line 548
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d8
    move-result-object v6

    #@5d9
    .line 550
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5dc
    move-result-object v7

    #@5dd
    .line 552
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e0
    move-result v4

    #@5e1
    if-eqz v4, :cond_1f

    #@5e3
    .line 553
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5e5
    move-object/from16 v0, p2

    #@5e7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5ea
    move-result-object v8

    #@5eb
    check-cast v8, Landroid/os/PersistableBundle;

    #@5ed
    .line 559
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f0
    move-result v4

    #@5f1
    if-eqz v4, :cond_20

    #@5f3
    const/4 v9, 0x1

    #@5f4
    .local v9, "_arg4":Z
    :goto_20
    move-object/from16 v4, p0

    #@5f6
    .line 560
    invoke-virtual/range {v4 .. v9}, Landroid/os/IUserManager$Stub;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    #@5f9
    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5fc
    .line 562
    const/4 v4, 0x1

    #@5fd
    return v4

    #@5fe
    .line 556
    .end local v9    # "_arg4":Z
    :cond_1f
    const/4 v8, 0x0

    #@5ff
    .local v8, "_arg3":Landroid/os/PersistableBundle;
    goto :goto_1f

    #@600
    .line 559
    .end local v8    # "_arg3":Landroid/os/PersistableBundle;
    :cond_20
    const/4 v9, 0x0

    #@601
    goto :goto_20

    #@602
    .line 566
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v4, "android.os.IUserManager"

    #@605
    move-object/from16 v0, p2

    #@607
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60a
    .line 567
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getSeedAccountName()Ljava/lang/String;

    #@60d
    move-result-object v26

    #@60e
    .line 568
    .restart local v26    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@611
    .line 569
    move-object/from16 v0, p3

    #@613
    move-object/from16 v1, v26

    #@615
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@618
    .line 570
    const/4 v4, 0x1

    #@619
    return v4

    #@61a
    .line 574
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v4, "android.os.IUserManager"

    #@61d
    move-object/from16 v0, p2

    #@61f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@622
    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getSeedAccountType()Ljava/lang/String;

    #@625
    move-result-object v26

    #@626
    .line 576
    .restart local v26    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@629
    .line 577
    move-object/from16 v0, p3

    #@62b
    move-object/from16 v1, v26

    #@62d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@630
    .line 578
    const/4 v4, 0x1

    #@631
    return v4

    #@632
    .line 582
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v4, "android.os.IUserManager"

    #@635
    move-object/from16 v0, p2

    #@637
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63a
    .line 583
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getSeedAccountOptions()Landroid/os/PersistableBundle;

    #@63d
    move-result-object v25

    #@63e
    .line 584
    .local v25, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@641
    .line 585
    if-eqz v25, :cond_21

    #@643
    .line 586
    const/4 v4, 0x1

    #@644
    move-object/from16 v0, p3

    #@646
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@649
    .line 587
    const/4 v4, 0x1

    #@64a
    move-object/from16 v0, v25

    #@64c
    move-object/from16 v1, p3

    #@64e
    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@651
    .line 592
    :goto_21
    const/4 v4, 0x1

    #@652
    return v4

    #@653
    .line 590
    :cond_21
    const/4 v4, 0x0

    #@654
    move-object/from16 v0, p3

    #@656
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@659
    goto :goto_21

    #@65a
    .line 596
    .end local v25    # "_result":Landroid/os/PersistableBundle;
    :sswitch_2b
    const-string/jumbo v4, "android.os.IUserManager"

    #@65d
    move-object/from16 v0, p2

    #@65f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@662
    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->clearSeedAccountData()V

    #@665
    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@668
    .line 599
    const/4 v4, 0x1

    #@669
    return v4

    #@66a
    .line 603
    :sswitch_2c
    const-string/jumbo v4, "android.os.IUserManager"

    #@66d
    move-object/from16 v0, p2

    #@66f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@672
    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@675
    move-result-object v11

    #@676
    .line 607
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@679
    move-result-object v6

    #@67a
    .line 608
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@67c
    invoke-virtual {v0, v11, v6}, Landroid/os/IUserManager$Stub;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    #@67f
    move-result v28

    #@680
    .line 609
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@683
    .line 610
    if-eqz v28, :cond_22

    #@685
    const/4 v4, 0x1

    #@686
    :goto_22
    move-object/from16 v0, p3

    #@688
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@68b
    .line 611
    const/4 v4, 0x1

    #@68c
    return v4

    #@68d
    .line 610
    :cond_22
    const/4 v4, 0x0

    #@68e
    goto :goto_22

    #@68f
    .line 615
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":Z
    :sswitch_2d
    const-string/jumbo v4, "android.os.IUserManager"

    #@692
    move-object/from16 v0, p2

    #@694
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@697
    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@69a
    move-result v5

    #@69b
    .line 618
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@69d
    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->isManagedProfile(I)Z

    #@6a0
    move-result v28

    #@6a1
    .line 619
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a4
    .line 620
    if-eqz v28, :cond_23

    #@6a6
    const/4 v4, 0x1

    #@6a7
    :goto_23
    move-object/from16 v0, p3

    #@6a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6ac
    .line 621
    const/4 v4, 0x1

    #@6ad
    return v4

    #@6ae
    .line 620
    :cond_23
    const/4 v4, 0x0

    #@6af
    goto :goto_23

    #@6b0
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
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
