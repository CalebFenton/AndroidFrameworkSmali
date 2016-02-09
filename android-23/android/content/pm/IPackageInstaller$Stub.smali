.class public abstract Landroid/content/pm/IPackageInstaller$Stub;
.super Landroid/os/Binder;
.source "IPackageInstaller.java"

# interfaces
.implements Landroid/content/pm/IPackageInstaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstaller$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstaller"

.field static final TRANSACTION_abandonSession:I = 0x4

.field static final TRANSACTION_createSession:I = 0x1

.field static final TRANSACTION_getAllSessions:I = 0x7

.field static final TRANSACTION_getMySessions:I = 0x8

.field static final TRANSACTION_getSessionInfo:I = 0x6

.field static final TRANSACTION_openSession:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0x9

.field static final TRANSACTION_setPermissionsResult:I = 0xc

.field static final TRANSACTION_uninstall:I = 0xb

.field static final TRANSACTION_unregisterCallback:I = 0xa

.field static final TRANSACTION_updateSessionAppIcon:I = 0x2

.field static final TRANSACTION_updateSessionAppLabel:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.content.pm.IPackageInstaller"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstaller$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstaller;
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
    const-string/jumbo v1, "android.content.pm.IPackageInstaller"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/pm/IPackageInstaller;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/content/pm/IPackageInstaller;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageInstaller$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 18
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
    .line 215
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 51
    sget-object v2, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v10

    #@28
    check-cast v10, Landroid/content/pm/PackageInstaller$SessionParams;

    #@2a
    .line 57
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 59
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v5

    #@32
    .line 60
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v10, v4, v5}, Landroid/content/pm/IPackageInstaller$Stub;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    #@37
    move-result v14

    #@38
    .line 61
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b
    .line 62
    move-object/from16 v0, p3

    #@3d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 63
    const/4 v2, 0x1

    #@41
    return v2

    #@42
    .line 54
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v14    # "_result":I
    :cond_0
    const/4 v10, 0x0

    #@43
    .local v10, "_arg0":Landroid/content/pm/PackageInstaller$SessionParams;
    goto :goto_0

    #@44
    .line 67
    .end local v10    # "_arg0":Landroid/content/pm/PackageInstaller$SessionParams;
    :sswitch_2
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@47
    move-object/from16 v0, p2

    #@49
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v8

    #@50
    .line 71
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_1

    #@56
    .line 72
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@58
    move-object/from16 v0, p2

    #@5a
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5d
    move-result-object v12

    #@5e
    check-cast v12, Landroid/graphics/Bitmap;

    #@60
    .line 77
    :goto_1
    move-object/from16 v0, p0

    #@62
    invoke-virtual {v0, v8, v12}, Landroid/content/pm/IPackageInstaller$Stub;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V

    #@65
    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@68
    .line 79
    const/4 v2, 0x1

    #@69
    return v2

    #@6a
    .line 75
    :cond_1
    const/4 v12, 0x0

    #@6b
    .local v12, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_1

    #@6c
    .line 83
    .end local v8    # "_arg0":I
    .end local v12    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_3
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@6f
    move-object/from16 v0, p2

    #@71
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v8

    #@78
    .line 87
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7b
    move-result-object v4

    #@7c
    .line 88
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7e
    invoke-virtual {v0, v8, v4}, Landroid/content/pm/IPackageInstaller$Stub;->updateSessionAppLabel(ILjava/lang/String;)V

    #@81
    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@84
    .line 90
    const/4 v2, 0x1

    #@85
    return v2

    #@86
    .line 94
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg0":I
    :sswitch_4
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@89
    move-object/from16 v0, p2

    #@8b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e
    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@91
    move-result v8

    #@92
    .line 97
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    #@94
    invoke-virtual {v0, v8}, Landroid/content/pm/IPackageInstaller$Stub;->abandonSession(I)V

    #@97
    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a
    .line 99
    const/4 v2, 0x1

    #@9b
    return v2

    #@9c
    .line 103
    .end local v8    # "_arg0":I
    :sswitch_5
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@9f
    move-object/from16 v0, p2

    #@a1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4
    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a7
    move-result v8

    #@a8
    .line 106
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    #@aa
    invoke-virtual {v0, v8}, Landroid/content/pm/IPackageInstaller$Stub;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@ad
    move-result-object v15

    #@ae
    .line 107
    .local v15, "_result":Landroid/content/pm/IPackageInstallerSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b1
    .line 108
    if-eqz v15, :cond_2

    #@b3
    invoke-interface {v15}, Landroid/content/pm/IPackageInstallerSession;->asBinder()Landroid/os/IBinder;

    #@b6
    move-result-object v2

    #@b7
    :goto_2
    move-object/from16 v0, p3

    #@b9
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@bc
    .line 109
    const/4 v2, 0x1

    #@bd
    return v2

    #@be
    .line 108
    :cond_2
    const/4 v2, 0x0

    #@bf
    goto :goto_2

    #@c0
    .line 113
    .end local v8    # "_arg0":I
    .end local v15    # "_result":Landroid/content/pm/IPackageInstallerSession;
    :sswitch_6
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@c3
    move-object/from16 v0, p2

    #@c5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cb
    move-result v8

    #@cc
    .line 116
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    #@ce
    invoke-virtual {v0, v8}, Landroid/content/pm/IPackageInstaller$Stub;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    #@d1
    move-result-object v16

    #@d2
    .line 117
    .local v16, "_result":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d5
    .line 118
    if-eqz v16, :cond_3

    #@d7
    .line 119
    const/4 v2, 0x1

    #@d8
    move-object/from16 v0, p3

    #@da
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@dd
    .line 120
    const/4 v2, 0x1

    #@de
    move-object/from16 v0, v16

    #@e0
    move-object/from16 v1, p3

    #@e2
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@e5
    .line 125
    :goto_3
    const/4 v2, 0x1

    #@e6
    return v2

    #@e7
    .line 123
    :cond_3
    const/4 v2, 0x0

    #@e8
    move-object/from16 v0, p3

    #@ea
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@ed
    goto :goto_3

    #@ee
    .line 129
    .end local v8    # "_arg0":I
    .end local v16    # "_result":Landroid/content/pm/PackageInstaller$SessionInfo;
    :sswitch_7
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f6
    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f9
    move-result v8

    #@fa
    .line 132
    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    #@fc
    invoke-virtual {v0, v8}, Landroid/content/pm/IPackageInstaller$Stub;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    #@ff
    move-result-object v17

    #@100
    .line 133
    .local v17, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@103
    .line 134
    if-eqz v17, :cond_4

    #@105
    .line 135
    const/4 v2, 0x1

    #@106
    move-object/from16 v0, p3

    #@108
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@10b
    .line 136
    const/4 v2, 0x1

    #@10c
    move-object/from16 v0, v17

    #@10e
    move-object/from16 v1, p3

    #@110
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@113
    .line 141
    :goto_4
    const/4 v2, 0x1

    #@114
    return v2

    #@115
    .line 139
    :cond_4
    const/4 v2, 0x0

    #@116
    move-object/from16 v0, p3

    #@118
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11b
    goto :goto_4

    #@11c
    .line 145
    .end local v8    # "_arg0":I
    .end local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_8
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@11f
    move-object/from16 v0, p2

    #@121
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@124
    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@127
    move-result-object v3

    #@128
    .line 149
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12b
    move-result v11

    #@12c
    .line 150
    .local v11, "_arg1":I
    move-object/from16 v0, p0

    #@12e
    invoke-virtual {v0, v3, v11}, Landroid/content/pm/IPackageInstaller$Stub;->getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@131
    move-result-object v17

    #@132
    .line 151
    .restart local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@135
    .line 152
    if-eqz v17, :cond_5

    #@137
    .line 153
    const/4 v2, 0x1

    #@138
    move-object/from16 v0, p3

    #@13a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@13d
    .line 154
    const/4 v2, 0x1

    #@13e
    move-object/from16 v0, v17

    #@140
    move-object/from16 v1, p3

    #@142
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@145
    .line 159
    :goto_5
    const/4 v2, 0x1

    #@146
    return v2

    #@147
    .line 157
    :cond_5
    const/4 v2, 0x0

    #@148
    move-object/from16 v0, p3

    #@14a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14d
    goto :goto_5

    #@14e
    .line 163
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_9
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@151
    move-object/from16 v0, p2

    #@153
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@156
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@159
    move-result-object v2

    #@15a
    invoke-static {v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;

    #@15d
    move-result-object v9

    #@15e
    .line 167
    .local v9, "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@161
    move-result v11

    #@162
    .line 168
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    #@164
    invoke-virtual {v0, v9, v11}, Landroid/content/pm/IPackageInstaller$Stub;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V

    #@167
    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16a
    .line 170
    const/4 v2, 0x1

    #@16b
    return v2

    #@16c
    .line 174
    .end local v9    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    .end local v11    # "_arg1":I
    :sswitch_a
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@16f
    move-object/from16 v0, p2

    #@171
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@174
    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@177
    move-result-object v2

    #@178
    invoke-static {v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;

    #@17b
    move-result-object v9

    #@17c
    .line 177
    .restart local v9    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    move-object/from16 v0, p0

    #@17e
    invoke-virtual {v0, v9}, Landroid/content/pm/IPackageInstaller$Stub;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V

    #@181
    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@184
    .line 179
    const/4 v2, 0x1

    #@185
    return v2

    #@186
    .line 183
    .end local v9    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    :sswitch_b
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@189
    move-object/from16 v0, p2

    #@18b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18e
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@191
    move-result-object v3

    #@192
    .line 187
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@195
    move-result-object v4

    #@196
    .line 189
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@199
    move-result v5

    #@19a
    .line 191
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19d
    move-result v2

    #@19e
    if-eqz v2, :cond_6

    #@1a0
    .line 192
    sget-object v2, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a2
    move-object/from16 v0, p2

    #@1a4
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a7
    move-result-object v6

    #@1a8
    check-cast v6, Landroid/content/IntentSender;

    #@1aa
    .line 198
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ad
    move-result v7

    #@1ae
    .local v7, "_arg4":I
    move-object/from16 v2, p0

    #@1b0
    .line 199
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/IPackageInstaller$Stub;->uninstall(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    #@1b3
    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b6
    .line 201
    const/4 v2, 0x1

    #@1b7
    return v2

    #@1b8
    .line 195
    .end local v7    # "_arg4":I
    :cond_6
    const/4 v6, 0x0

    #@1b9
    .local v6, "_arg3":Landroid/content/IntentSender;
    goto :goto_6

    #@1ba
    .line 205
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/content/IntentSender;
    :sswitch_c
    const-string/jumbo v2, "android.content.pm.IPackageInstaller"

    #@1bd
    move-object/from16 v0, p2

    #@1bf
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c2
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c5
    move-result v8

    #@1c6
    .line 209
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c9
    move-result v2

    #@1ca
    if-eqz v2, :cond_7

    #@1cc
    const/4 v13, 0x1

    #@1cd
    .line 210
    .local v13, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    #@1cf
    invoke-virtual {v0, v8, v13}, Landroid/content/pm/IPackageInstaller$Stub;->setPermissionsResult(IZ)V

    #@1d2
    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d5
    .line 212
    const/4 v2, 0x1

    #@1d6
    return v2

    #@1d7
    .line 209
    .end local v13    # "_arg1":Z
    :cond_7
    const/4 v13, 0x0

    #@1d8
    .restart local v13    # "_arg1":Z
    goto :goto_7

    #@1d9
    .line 39
    nop

    #@1da
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
