.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x7

.field static final TRANSACTION_dispatchAppVisibility:I = 0x4

.field static final TRANSACTION_dispatchDragEvent:I = 0xa

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x5

.field static final TRANSACTION_dispatchSystemUiVisibilityChanged:I = 0xc

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x9

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x8

.field static final TRANSACTION_dispatchWindowShown:I = 0xd

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_moved:I = 0x3

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0xe

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_updatePointerIcon:I = 0xb

.field static final TRANSACTION_windowFocusChanged:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.view.IWindow"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "android.view.IWindow"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/view/IWindow;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/view/IWindow;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 37
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 271
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v5

    #@7
    return v5

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v5, "android.view.IWindow"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 49
    const/4 v5, 0x1

    #@11
    return v5

    #@12
    .line 53
    :sswitch_1
    const-string/jumbo v5, "android.view.IWindow"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v24

    #@1e
    .line 57
    .local v24, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v34

    #@22
    .line 59
    .local v34, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_0

    #@28
    .line 60
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    move-object/from16 v0, p2

    #@2c
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v36

    #@30
    check-cast v36, Landroid/os/ParcelFileDescriptor;

    #@32
    .line 65
    :goto_0
    move-object/from16 v0, p0

    #@34
    move-object/from16 v1, v24

    #@36
    move-object/from16 v2, v34

    #@38
    move-object/from16 v3, v36

    #@3a
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    #@3d
    .line 66
    const/4 v5, 0x1

    #@3e
    return v5

    #@3f
    .line 63
    :cond_0
    const/16 v36, 0x0

    #@41
    .local v36, "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@42
    .line 70
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":Ljava/lang/String;
    .end local v36    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v5, "android.view.IWindow"

    #@45
    move-object/from16 v0, p2

    #@47
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_1

    #@50
    .line 73
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@52
    move-object/from16 v0, p2

    #@54
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@57
    move-result-object v6

    #@58
    check-cast v6, Landroid/graphics/Rect;

    #@5a
    .line 79
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v5

    #@5e
    if-eqz v5, :cond_2

    #@60
    .line 80
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62
    move-object/from16 v0, p2

    #@64
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@67
    move-result-object v7

    #@68
    check-cast v7, Landroid/graphics/Rect;

    #@6a
    .line 86
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_3

    #@70
    .line 87
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@72
    move-object/from16 v0, p2

    #@74
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@77
    move-result-object v8

    #@78
    check-cast v8, Landroid/graphics/Rect;

    #@7a
    .line 93
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v5

    #@7e
    if-eqz v5, :cond_4

    #@80
    .line 94
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@82
    move-object/from16 v0, p2

    #@84
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@87
    move-result-object v9

    #@88
    check-cast v9, Landroid/graphics/Rect;

    #@8a
    .line 100
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v5

    #@8e
    if-eqz v5, :cond_5

    #@90
    .line 101
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@92
    move-object/from16 v0, p2

    #@94
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@97
    move-result-object v10

    #@98
    check-cast v10, Landroid/graphics/Rect;

    #@9a
    .line 107
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9d
    move-result v5

    #@9e
    if-eqz v5, :cond_6

    #@a0
    .line 108
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a2
    move-object/from16 v0, p2

    #@a4
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a7
    move-result-object v11

    #@a8
    check-cast v11, Landroid/graphics/Rect;

    #@aa
    .line 114
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v5

    #@ae
    if-eqz v5, :cond_7

    #@b0
    const/4 v12, 0x1

    #@b1
    .line 116
    .local v12, "_arg6":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b4
    move-result v5

    #@b5
    if-eqz v5, :cond_8

    #@b7
    .line 117
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b9
    move-object/from16 v0, p2

    #@bb
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@be
    move-result-object v13

    #@bf
    check-cast v13, Landroid/content/res/Configuration;

    #@c1
    .line 123
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v5

    #@c5
    if-eqz v5, :cond_9

    #@c7
    .line 124
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c9
    move-object/from16 v0, p2

    #@cb
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ce
    move-result-object v14

    #@cf
    check-cast v14, Landroid/graphics/Rect;

    #@d1
    .line 130
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d4
    move-result v5

    #@d5
    if-eqz v5, :cond_a

    #@d7
    const/4 v15, 0x1

    #@d8
    .line 132
    .local v15, "_arg9":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@db
    move-result v5

    #@dc
    if-eqz v5, :cond_b

    #@de
    const/16 v16, 0x1

    #@e0
    .local v16, "_arg10":Z
    :goto_b
    move-object/from16 v5, p0

    #@e2
    .line 133
    invoke-virtual/range {v5 .. v16}, Landroid/view/IWindow$Stub;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;ZZ)V

    #@e5
    .line 134
    const/4 v5, 0x1

    #@e6
    return v5

    #@e7
    .line 76
    .end local v12    # "_arg6":Z
    .end local v15    # "_arg9":Z
    .end local v16    # "_arg10":Z
    :cond_1
    const/4 v6, 0x0

    #@e8
    .local v6, "_arg0":Landroid/graphics/Rect;
    goto/16 :goto_1

    #@ea
    .line 83
    .end local v6    # "_arg0":Landroid/graphics/Rect;
    :cond_2
    const/4 v7, 0x0

    #@eb
    .local v7, "_arg1":Landroid/graphics/Rect;
    goto/16 :goto_2

    #@ed
    .line 90
    .end local v7    # "_arg1":Landroid/graphics/Rect;
    :cond_3
    const/4 v8, 0x0

    #@ee
    .local v8, "_arg2":Landroid/graphics/Rect;
    goto :goto_3

    #@ef
    .line 97
    .end local v8    # "_arg2":Landroid/graphics/Rect;
    :cond_4
    const/4 v9, 0x0

    #@f0
    .local v9, "_arg3":Landroid/graphics/Rect;
    goto :goto_4

    #@f1
    .line 104
    .end local v9    # "_arg3":Landroid/graphics/Rect;
    :cond_5
    const/4 v10, 0x0

    #@f2
    .local v10, "_arg4":Landroid/graphics/Rect;
    goto :goto_5

    #@f3
    .line 111
    .end local v10    # "_arg4":Landroid/graphics/Rect;
    :cond_6
    const/4 v11, 0x0

    #@f4
    .local v11, "_arg5":Landroid/graphics/Rect;
    goto :goto_6

    #@f5
    .line 114
    .end local v11    # "_arg5":Landroid/graphics/Rect;
    :cond_7
    const/4 v12, 0x0

    #@f6
    .restart local v12    # "_arg6":Z
    goto :goto_7

    #@f7
    .line 120
    :cond_8
    const/4 v13, 0x0

    #@f8
    .local v13, "_arg7":Landroid/content/res/Configuration;
    goto :goto_8

    #@f9
    .line 127
    .end local v13    # "_arg7":Landroid/content/res/Configuration;
    :cond_9
    const/4 v14, 0x0

    #@fa
    .local v14, "_arg8":Landroid/graphics/Rect;
    goto :goto_9

    #@fb
    .line 130
    .end local v14    # "_arg8":Landroid/graphics/Rect;
    :cond_a
    const/4 v15, 0x0

    #@fc
    .restart local v15    # "_arg9":Z
    goto :goto_a

    #@fd
    .line 132
    :cond_b
    const/16 v16, 0x0

    #@ff
    goto :goto_b

    #@100
    .line 138
    .end local v12    # "_arg6":Z
    .end local v15    # "_arg9":Z
    :sswitch_3
    const-string/jumbo v5, "android.view.IWindow"

    #@103
    move-object/from16 v0, p2

    #@105
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@108
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10b
    move-result v30

    #@10c
    .line 142
    .local v30, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10f
    move-result v25

    #@110
    .line 143
    .local v25, "_arg1":I
    move-object/from16 v0, p0

    #@112
    move/from16 v1, v30

    #@114
    move/from16 v2, v25

    #@116
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->moved(II)V

    #@119
    .line 144
    const/4 v5, 0x1

    #@11a
    return v5

    #@11b
    .line 148
    .end local v25    # "_arg1":I
    .end local v30    # "_arg0":I
    :sswitch_4
    const-string/jumbo v5, "android.view.IWindow"

    #@11e
    move-object/from16 v0, p2

    #@120
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@123
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@126
    move-result v5

    #@127
    if-eqz v5, :cond_c

    #@129
    const/16 v33, 0x1

    #@12b
    .line 151
    .local v33, "_arg0":Z
    :goto_c
    move-object/from16 v0, p0

    #@12d
    move/from16 v1, v33

    #@12f
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    #@132
    .line 152
    const/4 v5, 0x1

    #@133
    return v5

    #@134
    .line 150
    .end local v33    # "_arg0":Z
    :cond_c
    const/16 v33, 0x0

    #@136
    goto :goto_c

    #@137
    .line 156
    :sswitch_5
    const-string/jumbo v5, "android.view.IWindow"

    #@13a
    move-object/from16 v0, p2

    #@13c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13f
    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    #@142
    .line 158
    const/4 v5, 0x1

    #@143
    return v5

    #@144
    .line 162
    :sswitch_6
    const-string/jumbo v5, "android.view.IWindow"

    #@147
    move-object/from16 v0, p2

    #@149
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14c
    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14f
    move-result v5

    #@150
    if-eqz v5, :cond_d

    #@152
    const/16 v33, 0x1

    #@154
    .line 166
    .local v33, "_arg0":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@157
    move-result v5

    #@158
    if-eqz v5, :cond_e

    #@15a
    const/16 v35, 0x1

    #@15c
    .line 167
    .local v35, "_arg1":Z
    :goto_e
    move-object/from16 v0, p0

    #@15e
    move/from16 v1, v33

    #@160
    move/from16 v2, v35

    #@162
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    #@165
    .line 168
    const/4 v5, 0x1

    #@166
    return v5

    #@167
    .line 164
    .end local v33    # "_arg0":Z
    .end local v35    # "_arg1":Z
    :cond_d
    const/16 v33, 0x0

    #@169
    .restart local v33    # "_arg0":Z
    goto :goto_d

    #@16a
    .line 166
    :cond_e
    const/16 v35, 0x0

    #@16c
    goto :goto_e

    #@16d
    .line 172
    .end local v33    # "_arg0":Z
    :sswitch_7
    const-string/jumbo v5, "android.view.IWindow"

    #@170
    move-object/from16 v0, p2

    #@172
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@175
    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@178
    move-result-object v24

    #@179
    .line 175
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@17b
    move-object/from16 v1, v24

    #@17d
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    #@180
    .line 176
    const/4 v5, 0x1

    #@181
    return v5

    #@182
    .line 180
    .end local v24    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v5, "android.view.IWindow"

    #@185
    move-object/from16 v0, p2

    #@187
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18a
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@18d
    move-result v18

    #@18e
    .line 184
    .local v18, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@191
    move-result v19

    #@192
    .line 186
    .local v19, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@195
    move-result v20

    #@196
    .line 188
    .local v20, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@199
    move-result v21

    #@19a
    .line 190
    .local v21, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19d
    move-result v5

    #@19e
    if-eqz v5, :cond_f

    #@1a0
    const/16 v22, 0x1

    #@1a2
    .local v22, "_arg4":Z
    :goto_f
    move-object/from16 v17, p0

    #@1a4
    .line 191
    invoke-virtual/range {v17 .. v22}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFZ)V

    #@1a7
    .line 192
    const/4 v5, 0x1

    #@1a8
    return v5

    #@1a9
    .line 190
    .end local v22    # "_arg4":Z
    :cond_f
    const/16 v22, 0x0

    #@1ab
    goto :goto_f

    #@1ac
    .line 196
    .end local v18    # "_arg0":F
    .end local v19    # "_arg1":F
    .end local v20    # "_arg2":F
    .end local v21    # "_arg3":F
    :sswitch_9
    const-string/jumbo v5, "android.view.IWindow"

    #@1af
    move-object/from16 v0, p2

    #@1b1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b4
    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b7
    move-result-object v24

    #@1b8
    .line 200
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bb
    move-result v25

    #@1bc
    .line 202
    .restart local v25    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bf
    move-result v26

    #@1c0
    .line 204
    .local v26, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c3
    move-result v27

    #@1c4
    .line 206
    .local v27, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c7
    move-result v5

    #@1c8
    if-eqz v5, :cond_10

    #@1ca
    .line 207
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d1
    move-result-object v28

    #@1d2
    check-cast v28, Landroid/os/Bundle;

    #@1d4
    .line 213
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d7
    move-result v5

    #@1d8
    if-eqz v5, :cond_11

    #@1da
    const/16 v29, 0x1

    #@1dc
    .local v29, "_arg5":Z
    :goto_11
    move-object/from16 v23, p0

    #@1de
    .line 214
    invoke-virtual/range {v23 .. v29}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    #@1e1
    .line 215
    const/4 v5, 0x1

    #@1e2
    return v5

    #@1e3
    .line 210
    .end local v29    # "_arg5":Z
    :cond_10
    const/16 v28, 0x0

    #@1e5
    .local v28, "_arg4":Landroid/os/Bundle;
    goto :goto_10

    #@1e6
    .line 213
    .end local v28    # "_arg4":Landroid/os/Bundle;
    :cond_11
    const/16 v29, 0x0

    #@1e8
    goto :goto_11

    #@1e9
    .line 219
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":I
    .end local v26    # "_arg2":I
    .end local v27    # "_arg3":I
    :sswitch_a
    const-string/jumbo v5, "android.view.IWindow"

    #@1ec
    move-object/from16 v0, p2

    #@1ee
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f1
    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f4
    move-result v5

    #@1f5
    if-eqz v5, :cond_12

    #@1f7
    .line 222
    sget-object v5, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f9
    move-object/from16 v0, p2

    #@1fb
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fe
    move-result-object v31

    #@1ff
    check-cast v31, Landroid/view/DragEvent;

    #@201
    .line 227
    :goto_12
    move-object/from16 v0, p0

    #@203
    move-object/from16 v1, v31

    #@205
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    #@208
    .line 228
    const/4 v5, 0x1

    #@209
    return v5

    #@20a
    .line 225
    :cond_12
    const/16 v31, 0x0

    #@20c
    .local v31, "_arg0":Landroid/view/DragEvent;
    goto :goto_12

    #@20d
    .line 232
    .end local v31    # "_arg0":Landroid/view/DragEvent;
    :sswitch_b
    const-string/jumbo v5, "android.view.IWindow"

    #@210
    move-object/from16 v0, p2

    #@212
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@215
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@218
    move-result v18

    #@219
    .line 236
    .restart local v18    # "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@21c
    move-result v19

    #@21d
    .line 237
    .restart local v19    # "_arg1":F
    move-object/from16 v0, p0

    #@21f
    move/from16 v1, v18

    #@221
    move/from16 v2, v19

    #@223
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->updatePointerIcon(FF)V

    #@226
    .line 238
    const/4 v5, 0x1

    #@227
    return v5

    #@228
    .line 242
    .end local v18    # "_arg0":F
    .end local v19    # "_arg1":F
    :sswitch_c
    const-string/jumbo v5, "android.view.IWindow"

    #@22b
    move-object/from16 v0, p2

    #@22d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@230
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@233
    move-result v30

    #@234
    .line 246
    .restart local v30    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@237
    move-result v25

    #@238
    .line 248
    .restart local v25    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23b
    move-result v26

    #@23c
    .line 250
    .restart local v26    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23f
    move-result v27

    #@240
    .line 251
    .restart local v27    # "_arg3":I
    move-object/from16 v0, p0

    #@242
    move/from16 v1, v30

    #@244
    move/from16 v2, v25

    #@246
    move/from16 v3, v26

    #@248
    move/from16 v4, v27

    #@24a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindow$Stub;->dispatchSystemUiVisibilityChanged(IIII)V

    #@24d
    .line 252
    const/4 v5, 0x1

    #@24e
    return v5

    #@24f
    .line 256
    .end local v25    # "_arg1":I
    .end local v26    # "_arg2":I
    .end local v27    # "_arg3":I
    .end local v30    # "_arg0":I
    :sswitch_d
    const-string/jumbo v5, "android.view.IWindow"

    #@252
    move-object/from16 v0, p2

    #@254
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@257
    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    #@25a
    .line 258
    const/4 v5, 0x1

    #@25b
    return v5

    #@25c
    .line 262
    :sswitch_e
    const-string/jumbo v5, "android.view.IWindow"

    #@25f
    move-object/from16 v0, p2

    #@261
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@264
    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@267
    move-result-object v5

    #@268
    invoke-static {v5}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    #@26b
    move-result-object v32

    #@26c
    .line 266
    .local v32, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26f
    move-result v25

    #@270
    .line 267
    .restart local v25    # "_arg1":I
    move-object/from16 v0, p0

    #@272
    move-object/from16 v1, v32

    #@274
    move/from16 v2, v25

    #@276
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    #@279
    .line 268
    const/4 v5, 0x1

    #@27a
    return v5

    #@27b
    .line 44
    nop

    #@27c
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
