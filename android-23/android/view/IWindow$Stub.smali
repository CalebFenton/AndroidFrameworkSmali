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

.field static final TRANSACTION_dispatchSystemUiVisibilityChanged:I = 0xb

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x9

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x8

.field static final TRANSACTION_dispatchWindowShown:I = 0xe

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_moved:I = 0x3

.field static final TRANSACTION_onAnimationStarted:I = 0xc

.field static final TRANSACTION_onAnimationStopped:I = 0xd

.field static final TRANSACTION_resized:I = 0x2

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
    .locals 33
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
    .line 254
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
    move-result-object v21

    #@1e
    .line 57
    .local v21, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v30

    #@22
    .line 59
    .local v30, "_arg1":Ljava/lang/String;
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
    move-result-object v32

    #@30
    check-cast v32, Landroid/os/ParcelFileDescriptor;

    #@32
    .line 65
    :goto_0
    move-object/from16 v0, p0

    #@34
    move-object/from16 v1, v21

    #@36
    move-object/from16 v2, v30

    #@38
    move-object/from16 v3, v32

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
    const/16 v32, 0x0

    #@41
    .local v32, "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    #@42
    .line 70
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v32    # "_arg2":Landroid/os/ParcelFileDescriptor;
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
    :goto_8
    move-object/from16 v5, p0

    #@c3
    .line 122
    invoke-virtual/range {v5 .. v13}, Landroid/view/IWindow$Stub;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    #@c6
    .line 123
    const/4 v5, 0x1

    #@c7
    return v5

    #@c8
    .line 76
    .end local v12    # "_arg6":Z
    :cond_1
    const/4 v6, 0x0

    #@c9
    .local v6, "_arg0":Landroid/graphics/Rect;
    goto :goto_1

    #@ca
    .line 83
    .end local v6    # "_arg0":Landroid/graphics/Rect;
    :cond_2
    const/4 v7, 0x0

    #@cb
    .local v7, "_arg1":Landroid/graphics/Rect;
    goto :goto_2

    #@cc
    .line 90
    .end local v7    # "_arg1":Landroid/graphics/Rect;
    :cond_3
    const/4 v8, 0x0

    #@cd
    .local v8, "_arg2":Landroid/graphics/Rect;
    goto :goto_3

    #@ce
    .line 97
    .end local v8    # "_arg2":Landroid/graphics/Rect;
    :cond_4
    const/4 v9, 0x0

    #@cf
    .local v9, "_arg3":Landroid/graphics/Rect;
    goto :goto_4

    #@d0
    .line 104
    .end local v9    # "_arg3":Landroid/graphics/Rect;
    :cond_5
    const/4 v10, 0x0

    #@d1
    .local v10, "_arg4":Landroid/graphics/Rect;
    goto :goto_5

    #@d2
    .line 111
    .end local v10    # "_arg4":Landroid/graphics/Rect;
    :cond_6
    const/4 v11, 0x0

    #@d3
    .local v11, "_arg5":Landroid/graphics/Rect;
    goto :goto_6

    #@d4
    .line 114
    .end local v11    # "_arg5":Landroid/graphics/Rect;
    :cond_7
    const/4 v12, 0x0

    #@d5
    .restart local v12    # "_arg6":Z
    goto :goto_7

    #@d6
    .line 120
    :cond_8
    const/4 v13, 0x0

    #@d7
    .local v13, "_arg7":Landroid/content/res/Configuration;
    goto :goto_8

    #@d8
    .line 127
    .end local v12    # "_arg6":Z
    .end local v13    # "_arg7":Landroid/content/res/Configuration;
    :sswitch_3
    const-string/jumbo v5, "android.view.IWindow"

    #@db
    move-object/from16 v0, p2

    #@dd
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e0
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e3
    move-result v27

    #@e4
    .line 131
    .local v27, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e7
    move-result v22

    #@e8
    .line 132
    .local v22, "_arg1":I
    move-object/from16 v0, p0

    #@ea
    move/from16 v1, v27

    #@ec
    move/from16 v2, v22

    #@ee
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->moved(II)V

    #@f1
    .line 133
    const/4 v5, 0x1

    #@f2
    return v5

    #@f3
    .line 137
    .end local v22    # "_arg1":I
    .end local v27    # "_arg0":I
    :sswitch_4
    const-string/jumbo v5, "android.view.IWindow"

    #@f6
    move-object/from16 v0, p2

    #@f8
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb
    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v5

    #@ff
    if-eqz v5, :cond_9

    #@101
    const/16 v29, 0x1

    #@103
    .line 140
    .local v29, "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    #@105
    move/from16 v1, v29

    #@107
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    #@10a
    .line 141
    const/4 v5, 0x1

    #@10b
    return v5

    #@10c
    .line 139
    .end local v29    # "_arg0":Z
    :cond_9
    const/16 v29, 0x0

    #@10e
    .restart local v29    # "_arg0":Z
    goto :goto_9

    #@10f
    .line 145
    .end local v29    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v5, "android.view.IWindow"

    #@112
    move-object/from16 v0, p2

    #@114
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@117
    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    #@11a
    .line 147
    const/4 v5, 0x1

    #@11b
    return v5

    #@11c
    .line 151
    :sswitch_6
    const-string/jumbo v5, "android.view.IWindow"

    #@11f
    move-object/from16 v0, p2

    #@121
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@124
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@127
    move-result v5

    #@128
    if-eqz v5, :cond_a

    #@12a
    const/16 v29, 0x1

    #@12c
    .line 155
    .restart local v29    # "_arg0":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12f
    move-result v5

    #@130
    if-eqz v5, :cond_b

    #@132
    const/16 v31, 0x1

    #@134
    .line 156
    .local v31, "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    #@136
    move/from16 v1, v29

    #@138
    move/from16 v2, v31

    #@13a
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    #@13d
    .line 157
    const/4 v5, 0x1

    #@13e
    return v5

    #@13f
    .line 153
    .end local v29    # "_arg0":Z
    .end local v31    # "_arg1":Z
    :cond_a
    const/16 v29, 0x0

    #@141
    .restart local v29    # "_arg0":Z
    goto :goto_a

    #@142
    .line 155
    :cond_b
    const/16 v31, 0x0

    #@144
    .restart local v31    # "_arg1":Z
    goto :goto_b

    #@145
    .line 161
    .end local v29    # "_arg0":Z
    .end local v31    # "_arg1":Z
    :sswitch_7
    const-string/jumbo v5, "android.view.IWindow"

    #@148
    move-object/from16 v0, p2

    #@14a
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14d
    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@150
    move-result-object v21

    #@151
    .line 164
    .restart local v21    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@153
    move-object/from16 v1, v21

    #@155
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    #@158
    .line 165
    const/4 v5, 0x1

    #@159
    return v5

    #@15a
    .line 169
    .end local v21    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v5, "android.view.IWindow"

    #@15d
    move-object/from16 v0, p2

    #@15f
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@162
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@165
    move-result v15

    #@166
    .line 173
    .local v15, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@169
    move-result v16

    #@16a
    .line 175
    .local v16, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@16d
    move-result v17

    #@16e
    .line 177
    .local v17, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@171
    move-result v18

    #@172
    .line 179
    .local v18, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v5

    #@176
    if-eqz v5, :cond_c

    #@178
    const/16 v19, 0x1

    #@17a
    .local v19, "_arg4":Z
    :goto_c
    move-object/from16 v14, p0

    #@17c
    .line 180
    invoke-virtual/range {v14 .. v19}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFZ)V

    #@17f
    .line 181
    const/4 v5, 0x1

    #@180
    return v5

    #@181
    .line 179
    .end local v19    # "_arg4":Z
    :cond_c
    const/16 v19, 0x0

    #@183
    .restart local v19    # "_arg4":Z
    goto :goto_c

    #@184
    .line 185
    .end local v15    # "_arg0":F
    .end local v16    # "_arg1":F
    .end local v17    # "_arg2":F
    .end local v18    # "_arg3":F
    .end local v19    # "_arg4":Z
    :sswitch_9
    const-string/jumbo v5, "android.view.IWindow"

    #@187
    move-object/from16 v0, p2

    #@189
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18c
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18f
    move-result-object v21

    #@190
    .line 189
    .restart local v21    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@193
    move-result v22

    #@194
    .line 191
    .restart local v22    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@197
    move-result v23

    #@198
    .line 193
    .local v23, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19b
    move-result v24

    #@19c
    .line 195
    .local v24, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19f
    move-result v5

    #@1a0
    if-eqz v5, :cond_d

    #@1a2
    .line 196
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a4
    move-object/from16 v0, p2

    #@1a6
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a9
    move-result-object v25

    #@1aa
    check-cast v25, Landroid/os/Bundle;

    #@1ac
    .line 202
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1af
    move-result v5

    #@1b0
    if-eqz v5, :cond_e

    #@1b2
    const/16 v26, 0x1

    #@1b4
    .local v26, "_arg5":Z
    :goto_e
    move-object/from16 v20, p0

    #@1b6
    .line 203
    invoke-virtual/range {v20 .. v26}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    #@1b9
    .line 204
    const/4 v5, 0x1

    #@1ba
    return v5

    #@1bb
    .line 199
    .end local v26    # "_arg5":Z
    :cond_d
    const/16 v25, 0x0

    #@1bd
    .local v25, "_arg4":Landroid/os/Bundle;
    goto :goto_d

    #@1be
    .line 202
    .end local v25    # "_arg4":Landroid/os/Bundle;
    :cond_e
    const/16 v26, 0x0

    #@1c0
    .restart local v26    # "_arg5":Z
    goto :goto_e

    #@1c1
    .line 208
    .end local v21    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":I
    .end local v23    # "_arg2":I
    .end local v24    # "_arg3":I
    .end local v26    # "_arg5":Z
    :sswitch_a
    const-string/jumbo v5, "android.view.IWindow"

    #@1c4
    move-object/from16 v0, p2

    #@1c6
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c9
    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cc
    move-result v5

    #@1cd
    if-eqz v5, :cond_f

    #@1cf
    .line 211
    sget-object v5, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d1
    move-object/from16 v0, p2

    #@1d3
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d6
    move-result-object v28

    #@1d7
    check-cast v28, Landroid/view/DragEvent;

    #@1d9
    .line 216
    :goto_f
    move-object/from16 v0, p0

    #@1db
    move-object/from16 v1, v28

    #@1dd
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    #@1e0
    .line 217
    const/4 v5, 0x1

    #@1e1
    return v5

    #@1e2
    .line 214
    :cond_f
    const/16 v28, 0x0

    #@1e4
    .local v28, "_arg0":Landroid/view/DragEvent;
    goto :goto_f

    #@1e5
    .line 221
    .end local v28    # "_arg0":Landroid/view/DragEvent;
    :sswitch_b
    const-string/jumbo v5, "android.view.IWindow"

    #@1e8
    move-object/from16 v0, p2

    #@1ea
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ed
    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f0
    move-result v27

    #@1f1
    .line 225
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f4
    move-result v22

    #@1f5
    .line 227
    .restart local v22    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f8
    move-result v23

    #@1f9
    .line 229
    .restart local v23    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fc
    move-result v24

    #@1fd
    .line 230
    .restart local v24    # "_arg3":I
    move-object/from16 v0, p0

    #@1ff
    move/from16 v1, v27

    #@201
    move/from16 v2, v22

    #@203
    move/from16 v3, v23

    #@205
    move/from16 v4, v24

    #@207
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindow$Stub;->dispatchSystemUiVisibilityChanged(IIII)V

    #@20a
    .line 231
    const/4 v5, 0x1

    #@20b
    return v5

    #@20c
    .line 235
    .end local v22    # "_arg1":I
    .end local v23    # "_arg2":I
    .end local v24    # "_arg3":I
    .end local v27    # "_arg0":I
    :sswitch_c
    const-string/jumbo v5, "android.view.IWindow"

    #@20f
    move-object/from16 v0, p2

    #@211
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@214
    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@217
    move-result v27

    #@218
    .line 238
    .restart local v27    # "_arg0":I
    move-object/from16 v0, p0

    #@21a
    move/from16 v1, v27

    #@21c
    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->onAnimationStarted(I)V

    #@21f
    .line 239
    const/4 v5, 0x1

    #@220
    return v5

    #@221
    .line 243
    .end local v27    # "_arg0":I
    :sswitch_d
    const-string/jumbo v5, "android.view.IWindow"

    #@224
    move-object/from16 v0, p2

    #@226
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@229
    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->onAnimationStopped()V

    #@22c
    .line 245
    const/4 v5, 0x1

    #@22d
    return v5

    #@22e
    .line 249
    :sswitch_e
    const-string/jumbo v5, "android.view.IWindow"

    #@231
    move-object/from16 v0, p2

    #@233
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@236
    .line 250
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    #@239
    .line 251
    const/4 v5, 0x1

    #@23a
    return v5

    #@23b
    .line 44
    nop

    #@23c
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
