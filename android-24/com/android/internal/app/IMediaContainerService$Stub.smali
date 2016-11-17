.class public abstract Lcom/android/internal/app/IMediaContainerService$Stub;
.super Landroid/os/Binder;
.source "IMediaContainerService.java"

# interfaces
.implements Lcom/android/internal/app/IMediaContainerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IMediaContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IMediaContainerService"

.field static final TRANSACTION_calculateDirectorySize:I = 0x5

.field static final TRANSACTION_calculateInstalledSize:I = 0x8

.field static final TRANSACTION_clearDirectory:I = 0x7

.field static final TRANSACTION_copyPackage:I = 0x2

.field static final TRANSACTION_copyPackageToContainer:I = 0x1

.field static final TRANSACTION_getFileSystemStats:I = 0x6

.field static final TRANSACTION_getMinimalPackageInfo:I = 0x3

.field static final TRANSACTION_getObbInfo:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.app.IMediaContainerService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IMediaContainerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 23
    if-nez p0, :cond_0

    #@3
    .line 24
    return-object v1

    #@4
    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.internal.app.IMediaContainerService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/app/IMediaContainerService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/app/IMediaContainerService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 157
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 42
    :sswitch_0
    const-string/jumbo v2, "com.android.internal.app.IMediaContainerService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 43
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 47
    :sswitch_1
    const-string/jumbo v2, "com.android.internal.app.IMediaContainerService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 51
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 53
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 55
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    const/4 v6, 0x1

    #@2d
    .line 57
    .local v6, "_arg3":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_1

    #@33
    const/4 v7, 0x1

    #@34
    .line 59
    .local v7, "_arg4":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    .local v8, "_arg5":Ljava/lang/String;
    move-object/from16 v2, p0

    #@3a
    .line 60
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/app/IMediaContainerService$Stub;->copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v17

    #@3e
    .line 61
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41
    .line 62
    move-object/from16 v0, p3

    #@43
    move-object/from16 v1, v17

    #@45
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@48
    .line 63
    const/4 v2, 0x1

    #@49
    return v2

    #@4a
    .line 55
    .end local v6    # "_arg3":Z
    .end local v7    # "_arg4":Z
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v17    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    #@4b
    .restart local v6    # "_arg3":Z
    goto :goto_0

    #@4c
    .line 57
    :cond_1
    const/4 v7, 0x0

    #@4d
    .restart local v7    # "_arg4":Z
    goto :goto_1

    #@4e
    .line 67
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Z
    .end local v7    # "_arg4":Z
    :sswitch_2
    const-string/jumbo v2, "com.android.internal.app.IMediaContainerService"

    #@51
    move-object/from16 v0, p2

    #@53
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    .line 71
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v2}, Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IParcelFileDescriptorFactory;

    #@61
    move-result-object v10

    #@62
    .line 72
    .local v10, "_arg1":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    move-object/from16 v0, p0

    #@64
    invoke-virtual {v0, v3, v10}, Lcom/android/internal/app/IMediaContainerService$Stub;->copyPackage(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    #@67
    move-result v12

    #@68
    .line 73
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b
    .line 74
    move-object/from16 v0, p3

    #@6d
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    #@70
    .line 75
    const/4 v2, 0x1

    #@71
    return v2

    #@72
    .line 79
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .end local v12    # "_result":I
    :sswitch_3
    const-string/jumbo v2, "com.android.internal.app.IMediaContainerService"

    #@75
    move-object/from16 v0, p2

    #@77
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    .line 83
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v9

    #@82
    .line 85
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@85
    move-result-object v5

    #@86
    .line 86
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@88
    invoke-virtual {v0, v3, v9, v5}, Lcom/android/internal/app/IMediaContainerService$Stub;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    #@8b
    move-result-object v13

    #@8c
    .line 87
    .local v13, "_result":Landroid/content/pm/PackageInfoLite;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f
    .line 88
    if-eqz v13, :cond_2

    #@91
    .line 89
    const/4 v2, 0x1

    #@92
    move-object/from16 v0, p3

    #@94
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@97
    .line 90
    const/4 v2, 0x1

    #@98
    move-object/from16 v0, p3

    #@9a
    invoke-virtual {v13, v0, v2}, Landroid/content/pm/PackageInfoLite;->writeToParcel(Landroid/os/Parcel;I)V

    #@9d
    .line 95
    :goto_2
    const/4 v2, 0x1

    #@9e
    return v2

    #@9f
    .line 93
    :cond_2
    const/4 v2, 0x0

    #@a0
    move-object/from16 v0, p3

    #@a2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@a5
    goto :goto_2

    #@a6
    .line 99
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v13    # "_result":Landroid/content/pm/PackageInfoLite;
    :sswitch_4
    const-string/jumbo v2, "com.android.internal.app.IMediaContainerService"

    #@a9
    move-object/from16 v0, p2

    #@ab
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae
    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    .line 102
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b4
    invoke-virtual {v0, v3}, Lcom/android/internal/app/IMediaContainerService$Stub;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    #@b7
    move-result-object v16

    #@b8
    .line 103
    .local v16, "_result":Landroid/content/res/ObbInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bb
    .line 104
    if-eqz v16, :cond_3

    #@bd
    .line 105
    const/4 v2, 0x1

    #@be
    move-object/from16 v0, p3

    #@c0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c3
    .line 106
    const/4 v2, 0x1

    #@c4
    move-object/from16 v0, v16

    #@c6
    move-object/from16 v1, p3

    #@c8
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ObbInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@cb
    .line 111
    :goto_3
    const/4 v2, 0x1

    #@cc
    return v2

    #@cd
    .line 109
    :cond_3
    const/4 v2, 0x0

    #@ce
    move-object/from16 v0, p3

    #@d0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@d3
    goto :goto_3

    #@d4
    .line 115
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Landroid/content/res/ObbInfo;
    :sswitch_5
    const-string/jumbo v2, "com.android.internal.app.IMediaContainerService"

    #@d7
    move-object/from16 v0, p2

    #@d9
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dc
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@df
    move-result-object v3

    #@e0
    .line 118
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e2
    invoke-virtual {v0, v3}, Lcom/android/internal/app/IMediaContainerService$Stub;->calculateDirectorySize(Ljava/lang/String;)J

    #@e5
    move-result-wide v14

    #@e6
    .line 119
    .local v14, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e9
    .line 120
    move-object/from16 v0, p3

    #@eb
    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    #@ee
    .line 121
    const/4 v2, 0x1

    #@ef
    return v2

    #@f0
    .line 125
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":J
    :sswitch_6
    const-string/jumbo v2, "com.android.internal.app.IMediaContainerService"

    #@f3
    move-object/from16 v0, p2

    #@f5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f8
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fb
    move-result-object v3

    #@fc
    .line 128
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@fe
    invoke-virtual {v0, v3}, Lcom/android/internal/app/IMediaContainerService$Stub;->getFileSystemStats(Ljava/lang/String;)[J

    #@101
    move-result-object v18

    #@102
    .line 129
    .local v18, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@105
    .line 130
    move-object/from16 v0, p3

    #@107
    move-object/from16 v1, v18

    #@109
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    #@10c
    .line 131
    const/4 v2, 0x1

    #@10d
    return v2

    #@10e
    .line 135
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":[J
    :sswitch_7
    const-string/jumbo v2, "com.android.internal.app.IMediaContainerService"

    #@111
    move-object/from16 v0, p2

    #@113
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@116
    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@119
    move-result-object v3

    #@11a
    .line 138
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@11c
    invoke-virtual {v0, v3}, Lcom/android/internal/app/IMediaContainerService$Stub;->clearDirectory(Ljava/lang/String;)V

    #@11f
    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@122
    .line 140
    const/4 v2, 0x1

    #@123
    return v2

    #@124
    .line 144
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v2, "com.android.internal.app.IMediaContainerService"

    #@127
    move-object/from16 v0, p2

    #@129
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12c
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12f
    move-result-object v3

    #@130
    .line 148
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@133
    move-result v2

    #@134
    if-eqz v2, :cond_4

    #@136
    const/4 v11, 0x1

    #@137
    .line 150
    .local v11, "_arg1":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13a
    move-result-object v5

    #@13b
    .line 151
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@13d
    invoke-virtual {v0, v3, v11, v5}, Lcom/android/internal/app/IMediaContainerService$Stub;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    #@140
    move-result-wide v14

    #@141
    .line 152
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@144
    .line 153
    move-object/from16 v0, p3

    #@146
    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    #@149
    .line 154
    const/4 v2, 0x1

    #@14a
    return v2

    #@14b
    .line 148
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg1":Z
    .end local v14    # "_result":J
    :cond_4
    const/4 v11, 0x0

    #@14c
    .restart local v11    # "_arg1":Z
    goto :goto_4

    #@14d
    .line 38
    nop

    #@14e
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
