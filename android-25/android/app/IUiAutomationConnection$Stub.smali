.class public abstract Landroid/app/IUiAutomationConnection$Stub;
.super Landroid/os/Binder;
.source "IUiAutomationConnection.java"

# interfaces
.implements Landroid/app/IUiAutomationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiAutomationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiAutomationConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUiAutomationConnection"

.field static final TRANSACTION_clearWindowAnimationFrameStats:I = 0x8

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x6

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_executeShellCommand:I = 0xa

.field static final TRANSACTION_getWindowAnimationFrameStats:I = 0x9

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x7

.field static final TRANSACTION_grantRuntimePermission:I = 0xb

.field static final TRANSACTION_injectInputEvent:I = 0x3

.field static final TRANSACTION_revokeRuntimePermission:I = 0xc

.field static final TRANSACTION_setRotation:I = 0x4

.field static final TRANSACTION_shutdown:I = 0xd

.field static final TRANSACTION_takeScreenshot:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 24
    const-string/jumbo v0, "android.app.IUiAutomationConnection"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IUiAutomationConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    if-nez p0, :cond_0

    #@3
    .line 33
    return-object v1

    #@4
    .line 35
    :cond_0
    const-string/jumbo v1, "android.app.IUiAutomationConnection"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IUiAutomationConnection;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 37
    check-cast v0, Landroid/app/IUiAutomationConnection;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 39
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IUiAutomationConnection$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IUiAutomationConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 43
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
    .line 47
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 213
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v14

    #@7
    return v14

    #@8
    .line 51
    :sswitch_0
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 52
    const/4 v14, 0x1

    #@11
    return v14

    #@12
    .line 56
    :sswitch_1
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v14

    #@1e
    invoke-static {v14}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@21
    move-result-object v2

    #@22
    .line 60
    .local v2, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v5

    #@26
    .line 61
    .local v5, "_arg1":I
    invoke-virtual {p0, v2, v5}, Landroid/app/IUiAutomationConnection$Stub;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    #@29
    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 63
    const/4 v14, 0x1

    #@2d
    return v14

    #@2e
    .line 67
    .end local v2    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v5    # "_arg1":I
    :sswitch_2
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 68
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->disconnect()V

    #@39
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c
    .line 70
    const/4 v14, 0x1

    #@3d
    return v14

    #@3e
    .line 74
    :sswitch_3
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@41
    move-object/from16 v0, p2

    #@43
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v14

    #@4a
    if-eqz v14, :cond_0

    #@4c
    .line 77
    sget-object v14, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    move-object/from16 v0, p2

    #@50
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@53
    move-result-object v3

    #@54
    check-cast v3, Landroid/view/InputEvent;

    #@56
    .line 83
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v14

    #@5a
    if-eqz v14, :cond_1

    #@5c
    const/4 v8, 0x1

    #@5d
    .line 84
    .local v8, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v3, v8}, Landroid/app/IUiAutomationConnection$Stub;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    #@60
    move-result v13

    #@61
    .line 85
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64
    .line 86
    if-eqz v13, :cond_2

    #@66
    const/4 v14, 0x1

    #@67
    :goto_2
    move-object/from16 v0, p3

    #@69
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@6c
    .line 87
    const/4 v14, 0x1

    #@6d
    return v14

    #@6e
    .line 80
    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@6f
    .local v3, "_arg0":Landroid/view/InputEvent;
    goto :goto_0

    #@70
    .line 83
    .end local v3    # "_arg0":Landroid/view/InputEvent;
    :cond_1
    const/4 v8, 0x0

    #@71
    goto :goto_1

    #@72
    .line 86
    .restart local v8    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_2
    const/4 v14, 0x0

    #@73
    goto :goto_2

    #@74
    .line 91
    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_4
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@77
    move-object/from16 v0, p2

    #@79
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v1

    #@80
    .line 94
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IUiAutomationConnection$Stub;->setRotation(I)Z

    #@83
    move-result v13

    #@84
    .line 95
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@87
    .line 96
    if-eqz v13, :cond_3

    #@89
    const/4 v14, 0x1

    #@8a
    :goto_3
    move-object/from16 v0, p3

    #@8c
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@8f
    .line 97
    const/4 v14, 0x1

    #@90
    return v14

    #@91
    .line 96
    :cond_3
    const/4 v14, 0x0

    #@92
    goto :goto_3

    #@93
    .line 101
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_5
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@96
    move-object/from16 v0, p2

    #@98
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v1

    #@9f
    .line 105
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a2
    move-result v5

    #@a3
    .line 106
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v1, v5}, Landroid/app/IUiAutomationConnection$Stub;->takeScreenshot(II)Landroid/graphics/Bitmap;

    #@a6
    move-result-object v10

    #@a7
    .line 107
    .local v10, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@aa
    .line 108
    if-eqz v10, :cond_4

    #@ac
    .line 109
    const/4 v14, 0x1

    #@ad
    move-object/from16 v0, p3

    #@af
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@b2
    .line 110
    const/4 v14, 0x1

    #@b3
    move-object/from16 v0, p3

    #@b5
    invoke-virtual {v10, v0, v14}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@b8
    .line 115
    :goto_4
    const/4 v14, 0x1

    #@b9
    return v14

    #@ba
    .line 113
    :cond_4
    const/4 v14, 0x0

    #@bb
    move-object/from16 v0, p3

    #@bd
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@c0
    goto :goto_4

    #@c1
    .line 119
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v10    # "_result":Landroid/graphics/Bitmap;
    :sswitch_6
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@c4
    move-object/from16 v0, p2

    #@c6
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c9
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v1

    #@cd
    .line 122
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IUiAutomationConnection$Stub;->clearWindowContentFrameStats(I)Z

    #@d0
    move-result v13

    #@d1
    .line 123
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d4
    .line 124
    if-eqz v13, :cond_5

    #@d6
    const/4 v14, 0x1

    #@d7
    :goto_5
    move-object/from16 v0, p3

    #@d9
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@dc
    .line 125
    const/4 v14, 0x1

    #@dd
    return v14

    #@de
    .line 124
    :cond_5
    const/4 v14, 0x0

    #@df
    goto :goto_5

    #@e0
    .line 129
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_7
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@e3
    move-object/from16 v0, p2

    #@e5
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e8
    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@eb
    move-result v1

    #@ec
    .line 132
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IUiAutomationConnection$Stub;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;

    #@ef
    move-result-object v12

    #@f0
    .line 133
    .local v12, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f3
    .line 134
    if-eqz v12, :cond_6

    #@f5
    .line 135
    const/4 v14, 0x1

    #@f6
    move-object/from16 v0, p3

    #@f8
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@fb
    .line 136
    const/4 v14, 0x1

    #@fc
    move-object/from16 v0, p3

    #@fe
    invoke-virtual {v12, v0, v14}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@101
    .line 141
    :goto_6
    const/4 v14, 0x1

    #@102
    return v14

    #@103
    .line 139
    :cond_6
    const/4 v14, 0x0

    #@104
    move-object/from16 v0, p3

    #@106
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@109
    goto :goto_6

    #@10a
    .line 145
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Landroid/view/WindowContentFrameStats;
    :sswitch_8
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@10d
    move-object/from16 v0, p2

    #@10f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@112
    .line 146
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->clearWindowAnimationFrameStats()V

    #@115
    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@118
    .line 148
    const/4 v14, 0x1

    #@119
    return v14

    #@11a
    .line 152
    :sswitch_9
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@11d
    move-object/from16 v0, p2

    #@11f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@122
    .line 153
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;

    #@125
    move-result-object v11

    #@126
    .line 154
    .local v11, "_result":Landroid/view/WindowAnimationFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@129
    .line 155
    if-eqz v11, :cond_7

    #@12b
    .line 156
    const/4 v14, 0x1

    #@12c
    move-object/from16 v0, p3

    #@12e
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@131
    .line 157
    const/4 v14, 0x1

    #@132
    move-object/from16 v0, p3

    #@134
    invoke-virtual {v11, v0, v14}, Landroid/view/WindowAnimationFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@137
    .line 162
    :goto_7
    const/4 v14, 0x1

    #@138
    return v14

    #@139
    .line 160
    :cond_7
    const/4 v14, 0x0

    #@13a
    move-object/from16 v0, p3

    #@13c
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@13f
    goto :goto_7

    #@140
    .line 166
    .end local v11    # "_result":Landroid/view/WindowAnimationFrameStats;
    :sswitch_a
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@143
    move-object/from16 v0, p2

    #@145
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@148
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14b
    move-result-object v4

    #@14c
    .line 170
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14f
    move-result v14

    #@150
    if-eqz v14, :cond_8

    #@152
    .line 171
    sget-object v14, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@154
    move-object/from16 v0, p2

    #@156
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@159
    move-result-object v6

    #@15a
    check-cast v6, Landroid/os/ParcelFileDescriptor;

    #@15c
    .line 176
    :goto_8
    invoke-virtual {p0, v4, v6}, Landroid/app/IUiAutomationConnection$Stub;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    #@15f
    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@162
    .line 178
    const/4 v14, 0x1

    #@163
    return v14

    #@164
    .line 174
    :cond_8
    const/4 v6, 0x0

    #@165
    .local v6, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    #@166
    .line 182
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_b
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@169
    move-object/from16 v0, p2

    #@16b
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16e
    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@171
    move-result-object v4

    #@172
    .line 186
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@175
    move-result-object v7

    #@176
    .line 188
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@179
    move-result v9

    #@17a
    .line 189
    .local v9, "_arg2":I
    invoke-virtual {p0, v4, v7, v9}, Landroid/app/IUiAutomationConnection$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    #@17d
    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@180
    .line 191
    const/4 v14, 0x1

    #@181
    return v14

    #@182
    .line 195
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_c
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@185
    move-object/from16 v0, p2

    #@187
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18a
    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18d
    move-result-object v4

    #@18e
    .line 199
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@191
    move-result-object v7

    #@192
    .line 201
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@195
    move-result v9

    #@196
    .line 202
    .restart local v9    # "_arg2":I
    invoke-virtual {p0, v4, v7, v9}, Landroid/app/IUiAutomationConnection$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    #@199
    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19c
    .line 204
    const/4 v14, 0x1

    #@19d
    return v14

    #@19e
    .line 208
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_d
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    #@1a1
    move-object/from16 v0, p2

    #@1a3
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a6
    .line 209
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->shutdown()V

    #@1a9
    .line 210
    const/4 v14, 0x1

    #@1aa
    return v14

    #@1ab
    .line 47
    nop

    #@1ac
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
