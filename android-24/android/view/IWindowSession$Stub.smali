.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addToDisplay:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x4

.field static final TRANSACTION_addWithoutInputChannel:I = 0x3

.field static final TRANSACTION_cancelDragAndDrop:I = 0x15

.field static final TRANSACTION_dragRecipientEntered:I = 0x16

.field static final TRANSACTION_dragRecipientExited:I = 0x17

.field static final TRANSACTION_finishDrawing:I = 0xe

.field static final TRANSACTION_getDisplayFrame:I = 0xd

.field static final TRANSACTION_getInTouchMode:I = 0x10

.field static final TRANSACTION_getWindowId:I = 0x1e

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1d

.field static final TRANSACTION_outOfMemory:I = 0xa

.field static final TRANSACTION_performDeferredDestroy:I = 0x9

.field static final TRANSACTION_performDrag:I = 0x13

.field static final TRANSACTION_performHapticFeedback:I = 0x11

.field static final TRANSACTION_pokeDrawLock:I = 0x1f

.field static final TRANSACTION_prepareDrag:I = 0x12

.field static final TRANSACTION_prepareToReplaceWindows:I = 0x8

.field static final TRANSACTION_relayout:I = 0x6

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_reportDropResult:I = 0x14

.field static final TRANSACTION_repositionChild:I = 0x7

.field static final TRANSACTION_sendWallpaperCommand:I = 0x1b

.field static final TRANSACTION_setInTouchMode:I = 0xf

.field static final TRANSACTION_setInsets:I = 0xc

.field static final TRANSACTION_setTransparentRegion:I = 0xb

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x1a

.field static final TRANSACTION_setWallpaperPosition:I = 0x18

.field static final TRANSACTION_startMovingTask:I = 0x20

.field static final TRANSACTION_updatePointerIcon:I = 0x21

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x1c

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.view.IWindowSession"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
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
    const-string/jumbo v1, "android.view.IWindowSession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/view/IWindowSession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/view/IWindowSession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 79
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
    .line 757
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.view.IWindowSession"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.view.IWindowSession"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@21
    move-result-object v5

    #@22
    .line 56
    .local v5, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v6

    #@26
    .line 58
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_0

    #@2c
    .line 59
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    move-object/from16 v0, p2

    #@30
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v7

    #@34
    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    #@36
    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v8

    #@3a
    .line 67
    .local v8, "_arg3":I
    new-instance v9, Landroid/graphics/Rect;

    #@3c
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    #@3f
    .line 69
    .local v9, "_arg4":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    #@41
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    #@44
    .line 71
    .local v10, "_arg5":Landroid/graphics/Rect;
    new-instance v11, Landroid/view/InputChannel;

    #@46
    invoke-direct {v11}, Landroid/view/InputChannel;-><init>()V

    #@49
    .local v11, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v4, p0

    #@4b
    .line 72
    invoke-virtual/range {v4 .. v11}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    #@4e
    move-result v74

    #@4f
    .line 73
    .local v74, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52
    .line 74
    move-object/from16 v0, p3

    #@54
    move/from16 v1, v74

    #@56
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 75
    if-eqz v9, :cond_1

    #@5b
    .line 76
    const/4 v4, 0x1

    #@5c
    move-object/from16 v0, p3

    #@5e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    .line 77
    const/4 v4, 0x1

    #@62
    move-object/from16 v0, p3

    #@64
    invoke-virtual {v9, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@67
    .line 82
    :goto_1
    if-eqz v10, :cond_2

    #@69
    .line 83
    const/4 v4, 0x1

    #@6a
    move-object/from16 v0, p3

    #@6c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 84
    const/4 v4, 0x1

    #@70
    move-object/from16 v0, p3

    #@72
    invoke-virtual {v10, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@75
    .line 89
    :goto_2
    if-eqz v11, :cond_3

    #@77
    .line 90
    const/4 v4, 0x1

    #@78
    move-object/from16 v0, p3

    #@7a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    .line 91
    const/4 v4, 0x1

    #@7e
    move-object/from16 v0, p3

    #@80
    invoke-virtual {v11, v0, v4}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    #@83
    .line 96
    :goto_3
    const/4 v4, 0x1

    #@84
    return v4

    #@85
    .line 62
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v11    # "_arg6":Landroid/view/InputChannel;
    .end local v74    # "_result":I
    :cond_0
    const/4 v7, 0x0

    #@86
    .local v7, "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    #@87
    .line 80
    .end local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":Landroid/graphics/Rect;
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    .restart local v11    # "_arg6":Landroid/view/InputChannel;
    .restart local v74    # "_result":I
    :cond_1
    const/4 v4, 0x0

    #@88
    move-object/from16 v0, p3

    #@8a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8d
    goto :goto_1

    #@8e
    .line 87
    :cond_2
    const/4 v4, 0x0

    #@8f
    move-object/from16 v0, p3

    #@91
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@94
    goto :goto_2

    #@95
    .line 94
    :cond_3
    const/4 v4, 0x0

    #@96
    move-object/from16 v0, p3

    #@98
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9b
    goto :goto_3

    #@9c
    .line 100
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v11    # "_arg6":Landroid/view/InputChannel;
    .end local v74    # "_result":I
    :sswitch_2
    const-string/jumbo v4, "android.view.IWindowSession"

    #@9f
    move-object/from16 v0, p2

    #@a1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a7
    move-result-object v4

    #@a8
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@ab
    move-result-object v5

    #@ac
    .line 104
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@af
    move-result v6

    #@b0
    .line 106
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v4

    #@b4
    if-eqz v4, :cond_4

    #@b6
    .line 107
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bd
    move-result-object v7

    #@be
    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    #@c0
    .line 113
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c3
    move-result v8

    #@c4
    .line 115
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c7
    move-result v17

    #@c8
    .line 117
    .local v17, "_arg4":I
    new-instance v10, Landroid/graphics/Rect;

    #@ca
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    #@cd
    .line 119
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    #@cf
    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    #@d2
    .line 121
    .local v19, "_arg6":Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    #@d4
    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    #@d7
    .line 123
    .local v20, "_arg7":Landroid/graphics/Rect;
    new-instance v21, Landroid/view/InputChannel;

    #@d9
    invoke-direct/range {v21 .. v21}, Landroid/view/InputChannel;-><init>()V

    #@dc
    .local v21, "_arg8":Landroid/view/InputChannel;
    move-object/from16 v12, p0

    #@de
    move-object v13, v5

    #@df
    move v14, v6

    #@e0
    move-object v15, v7

    #@e1
    move/from16 v16, v8

    #@e3
    move-object/from16 v18, v10

    #@e5
    .line 124
    invoke-virtual/range {v12 .. v21}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    #@e8
    move-result v74

    #@e9
    .line 125
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ec
    .line 126
    move-object/from16 v0, p3

    #@ee
    move/from16 v1, v74

    #@f0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f3
    .line 127
    if-eqz v10, :cond_5

    #@f5
    .line 128
    const/4 v4, 0x1

    #@f6
    move-object/from16 v0, p3

    #@f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@fb
    .line 129
    const/4 v4, 0x1

    #@fc
    move-object/from16 v0, p3

    #@fe
    invoke-virtual {v10, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@101
    .line 134
    :goto_5
    if-eqz v19, :cond_6

    #@103
    .line 135
    const/4 v4, 0x1

    #@104
    move-object/from16 v0, p3

    #@106
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@109
    .line 136
    const/4 v4, 0x1

    #@10a
    move-object/from16 v0, v19

    #@10c
    move-object/from16 v1, p3

    #@10e
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@111
    .line 141
    :goto_6
    if-eqz v20, :cond_7

    #@113
    .line 142
    const/4 v4, 0x1

    #@114
    move-object/from16 v0, p3

    #@116
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@119
    .line 143
    const/4 v4, 0x1

    #@11a
    move-object/from16 v0, v20

    #@11c
    move-object/from16 v1, p3

    #@11e
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@121
    .line 148
    :goto_7
    if-eqz v21, :cond_8

    #@123
    .line 149
    const/4 v4, 0x1

    #@124
    move-object/from16 v0, p3

    #@126
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@129
    .line 150
    const/4 v4, 0x1

    #@12a
    move-object/from16 v0, v21

    #@12c
    move-object/from16 v1, p3

    #@12e
    invoke-virtual {v0, v1, v4}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    #@131
    .line 155
    :goto_8
    const/4 v4, 0x1

    #@132
    return v4

    #@133
    .line 110
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v17    # "_arg4":I
    .end local v19    # "_arg6":Landroid/graphics/Rect;
    .end local v20    # "_arg7":Landroid/graphics/Rect;
    .end local v21    # "_arg8":Landroid/view/InputChannel;
    .end local v74    # "_result":I
    :cond_4
    const/4 v7, 0x0

    #@134
    .restart local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_4

    #@135
    .line 132
    .end local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "_arg3":I
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    .restart local v17    # "_arg4":I
    .restart local v19    # "_arg6":Landroid/graphics/Rect;
    .restart local v20    # "_arg7":Landroid/graphics/Rect;
    .restart local v21    # "_arg8":Landroid/view/InputChannel;
    .restart local v74    # "_result":I
    :cond_5
    const/4 v4, 0x0

    #@136
    move-object/from16 v0, p3

    #@138
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@13b
    goto :goto_5

    #@13c
    .line 139
    :cond_6
    const/4 v4, 0x0

    #@13d
    move-object/from16 v0, p3

    #@13f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@142
    goto :goto_6

    #@143
    .line 146
    :cond_7
    const/4 v4, 0x0

    #@144
    move-object/from16 v0, p3

    #@146
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@149
    goto :goto_7

    #@14a
    .line 153
    :cond_8
    const/4 v4, 0x0

    #@14b
    move-object/from16 v0, p3

    #@14d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@150
    goto :goto_8

    #@151
    .line 159
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v17    # "_arg4":I
    .end local v19    # "_arg6":Landroid/graphics/Rect;
    .end local v20    # "_arg7":Landroid/graphics/Rect;
    .end local v21    # "_arg8":Landroid/view/InputChannel;
    .end local v74    # "_result":I
    :sswitch_3
    const-string/jumbo v4, "android.view.IWindowSession"

    #@154
    move-object/from16 v0, p2

    #@156
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@159
    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@15c
    move-result-object v4

    #@15d
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@160
    move-result-object v5

    #@161
    .line 163
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@164
    move-result v6

    #@165
    .line 165
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@168
    move-result v4

    #@169
    if-eqz v4, :cond_9

    #@16b
    .line 166
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16d
    move-object/from16 v0, p2

    #@16f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@172
    move-result-object v7

    #@173
    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    #@175
    .line 172
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@178
    move-result v8

    #@179
    .line 174
    .restart local v8    # "_arg3":I
    new-instance v9, Landroid/graphics/Rect;

    #@17b
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    #@17e
    .line 176
    .restart local v9    # "_arg4":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    #@180
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    #@183
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    move-object/from16 v4, p0

    #@185
    .line 177
    invoke-virtual/range {v4 .. v10}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@188
    move-result v74

    #@189
    .line 178
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18c
    .line 179
    move-object/from16 v0, p3

    #@18e
    move/from16 v1, v74

    #@190
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@193
    .line 180
    if-eqz v9, :cond_a

    #@195
    .line 181
    const/4 v4, 0x1

    #@196
    move-object/from16 v0, p3

    #@198
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19b
    .line 182
    const/4 v4, 0x1

    #@19c
    move-object/from16 v0, p3

    #@19e
    invoke-virtual {v9, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a1
    .line 187
    :goto_a
    if-eqz v10, :cond_b

    #@1a3
    .line 188
    const/4 v4, 0x1

    #@1a4
    move-object/from16 v0, p3

    #@1a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a9
    .line 189
    const/4 v4, 0x1

    #@1aa
    move-object/from16 v0, p3

    #@1ac
    invoke-virtual {v10, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@1af
    .line 194
    :goto_b
    const/4 v4, 0x1

    #@1b0
    return v4

    #@1b1
    .line 169
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v74    # "_result":I
    :cond_9
    const/4 v7, 0x0

    #@1b2
    .restart local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_9

    #@1b3
    .line 185
    .end local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":Landroid/graphics/Rect;
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    .restart local v74    # "_result":I
    :cond_a
    const/4 v4, 0x0

    #@1b4
    move-object/from16 v0, p3

    #@1b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b9
    goto :goto_a

    #@1ba
    .line 192
    :cond_b
    const/4 v4, 0x0

    #@1bb
    move-object/from16 v0, p3

    #@1bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c0
    goto :goto_b

    #@1c1
    .line 198
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v74    # "_result":I
    :sswitch_4
    const-string/jumbo v4, "android.view.IWindowSession"

    #@1c4
    move-object/from16 v0, p2

    #@1c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c9
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1cc
    move-result-object v4

    #@1cd
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@1d0
    move-result-object v5

    #@1d1
    .line 202
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d4
    move-result v6

    #@1d5
    .line 204
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d8
    move-result v4

    #@1d9
    if-eqz v4, :cond_c

    #@1db
    .line 205
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1dd
    move-object/from16 v0, p2

    #@1df
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e2
    move-result-object v7

    #@1e3
    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    #@1e5
    .line 211
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e8
    move-result v8

    #@1e9
    .line 213
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ec
    move-result v17

    #@1ed
    .line 215
    .restart local v17    # "_arg4":I
    new-instance v10, Landroid/graphics/Rect;

    #@1ef
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    #@1f2
    .line 217
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    #@1f4
    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    #@1f7
    .restart local v19    # "_arg6":Landroid/graphics/Rect;
    move-object/from16 v12, p0

    #@1f9
    move-object v13, v5

    #@1fa
    move v14, v6

    #@1fb
    move-object v15, v7

    #@1fc
    move/from16 v16, v8

    #@1fe
    move-object/from16 v18, v10

    #@200
    .line 218
    invoke-virtual/range {v12 .. v19}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@203
    move-result v74

    #@204
    .line 219
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@207
    .line 220
    move-object/from16 v0, p3

    #@209
    move/from16 v1, v74

    #@20b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@20e
    .line 221
    if-eqz v10, :cond_d

    #@210
    .line 222
    const/4 v4, 0x1

    #@211
    move-object/from16 v0, p3

    #@213
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@216
    .line 223
    const/4 v4, 0x1

    #@217
    move-object/from16 v0, p3

    #@219
    invoke-virtual {v10, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@21c
    .line 228
    :goto_d
    if-eqz v19, :cond_e

    #@21e
    .line 229
    const/4 v4, 0x1

    #@21f
    move-object/from16 v0, p3

    #@221
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@224
    .line 230
    const/4 v4, 0x1

    #@225
    move-object/from16 v0, v19

    #@227
    move-object/from16 v1, p3

    #@229
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@22c
    .line 235
    :goto_e
    const/4 v4, 0x1

    #@22d
    return v4

    #@22e
    .line 208
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v17    # "_arg4":I
    .end local v19    # "_arg6":Landroid/graphics/Rect;
    .end local v74    # "_result":I
    :cond_c
    const/4 v7, 0x0

    #@22f
    .restart local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_c

    #@230
    .line 226
    .end local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "_arg3":I
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    .restart local v17    # "_arg4":I
    .restart local v19    # "_arg6":Landroid/graphics/Rect;
    .restart local v74    # "_result":I
    :cond_d
    const/4 v4, 0x0

    #@231
    move-object/from16 v0, p3

    #@233
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@236
    goto :goto_d

    #@237
    .line 233
    :cond_e
    const/4 v4, 0x0

    #@238
    move-object/from16 v0, p3

    #@23a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23d
    goto :goto_e

    #@23e
    .line 239
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v17    # "_arg4":I
    .end local v19    # "_arg6":Landroid/graphics/Rect;
    .end local v74    # "_result":I
    :sswitch_5
    const-string/jumbo v4, "android.view.IWindowSession"

    #@241
    move-object/from16 v0, p2

    #@243
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@246
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@249
    move-result-object v4

    #@24a
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@24d
    move-result-object v5

    #@24e
    .line 242
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@250
    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    #@253
    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@256
    .line 244
    const/4 v4, 0x1

    #@257
    return v4

    #@258
    .line 248
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_6
    const-string/jumbo v4, "android.view.IWindowSession"

    #@25b
    move-object/from16 v0, p2

    #@25d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@260
    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@263
    move-result-object v4

    #@264
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@267
    move-result-object v5

    #@268
    .line 252
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26b
    move-result v6

    #@26c
    .line 254
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26f
    move-result v4

    #@270
    if-eqz v4, :cond_f

    #@272
    .line 255
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@274
    move-object/from16 v0, p2

    #@276
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@279
    move-result-object v7

    #@27a
    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    #@27c
    .line 261
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27f
    move-result v8

    #@280
    .line 263
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@283
    move-result v17

    #@284
    .line 265
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@287
    move-result v28

    #@288
    .line 267
    .local v28, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28b
    move-result v29

    #@28c
    .line 269
    .local v29, "_arg6":I
    new-instance v20, Landroid/graphics/Rect;

    #@28e
    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    #@291
    .line 271
    .restart local v20    # "_arg7":Landroid/graphics/Rect;
    new-instance v31, Landroid/graphics/Rect;

    #@293
    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    #@296
    .line 273
    .local v31, "_arg8":Landroid/graphics/Rect;
    new-instance v32, Landroid/graphics/Rect;

    #@298
    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    #@29b
    .line 275
    .local v32, "_arg9":Landroid/graphics/Rect;
    new-instance v33, Landroid/graphics/Rect;

    #@29d
    invoke-direct/range {v33 .. v33}, Landroid/graphics/Rect;-><init>()V

    #@2a0
    .line 277
    .local v33, "_arg10":Landroid/graphics/Rect;
    new-instance v34, Landroid/graphics/Rect;

    #@2a2
    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    #@2a5
    .line 279
    .local v34, "_arg11":Landroid/graphics/Rect;
    new-instance v35, Landroid/graphics/Rect;

    #@2a7
    invoke-direct/range {v35 .. v35}, Landroid/graphics/Rect;-><init>()V

    #@2aa
    .line 281
    .local v35, "_arg12":Landroid/graphics/Rect;
    new-instance v36, Landroid/graphics/Rect;

    #@2ac
    invoke-direct/range {v36 .. v36}, Landroid/graphics/Rect;-><init>()V

    #@2af
    .line 283
    .local v36, "_arg13":Landroid/graphics/Rect;
    new-instance v37, Landroid/content/res/Configuration;

    #@2b1
    invoke-direct/range {v37 .. v37}, Landroid/content/res/Configuration;-><init>()V

    #@2b4
    .line 285
    .local v37, "_arg14":Landroid/content/res/Configuration;
    new-instance v38, Landroid/view/Surface;

    #@2b6
    invoke-direct/range {v38 .. v38}, Landroid/view/Surface;-><init>()V

    #@2b9
    .local v38, "_arg15":Landroid/view/Surface;
    move-object/from16 v22, p0

    #@2bb
    move-object/from16 v23, v5

    #@2bd
    move/from16 v24, v6

    #@2bf
    move-object/from16 v25, v7

    #@2c1
    move/from16 v26, v8

    #@2c3
    move/from16 v27, v17

    #@2c5
    move-object/from16 v30, v20

    #@2c7
    .line 286
    invoke-virtual/range {v22 .. v38}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@2ca
    move-result v74

    #@2cb
    .line 287
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ce
    .line 288
    move-object/from16 v0, p3

    #@2d0
    move/from16 v1, v74

    #@2d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d5
    .line 289
    if-eqz v20, :cond_10

    #@2d7
    .line 290
    const/4 v4, 0x1

    #@2d8
    move-object/from16 v0, p3

    #@2da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2dd
    .line 291
    const/4 v4, 0x1

    #@2de
    move-object/from16 v0, v20

    #@2e0
    move-object/from16 v1, p3

    #@2e2
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e5
    .line 296
    :goto_10
    if-eqz v31, :cond_11

    #@2e7
    .line 297
    const/4 v4, 0x1

    #@2e8
    move-object/from16 v0, p3

    #@2ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2ed
    .line 298
    const/4 v4, 0x1

    #@2ee
    move-object/from16 v0, v31

    #@2f0
    move-object/from16 v1, p3

    #@2f2
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f5
    .line 303
    :goto_11
    if-eqz v32, :cond_12

    #@2f7
    .line 304
    const/4 v4, 0x1

    #@2f8
    move-object/from16 v0, p3

    #@2fa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2fd
    .line 305
    const/4 v4, 0x1

    #@2fe
    move-object/from16 v0, v32

    #@300
    move-object/from16 v1, p3

    #@302
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@305
    .line 310
    :goto_12
    if-eqz v33, :cond_13

    #@307
    .line 311
    const/4 v4, 0x1

    #@308
    move-object/from16 v0, p3

    #@30a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@30d
    .line 312
    const/4 v4, 0x1

    #@30e
    move-object/from16 v0, v33

    #@310
    move-object/from16 v1, p3

    #@312
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@315
    .line 317
    :goto_13
    if-eqz v34, :cond_14

    #@317
    .line 318
    const/4 v4, 0x1

    #@318
    move-object/from16 v0, p3

    #@31a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@31d
    .line 319
    const/4 v4, 0x1

    #@31e
    move-object/from16 v0, v34

    #@320
    move-object/from16 v1, p3

    #@322
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@325
    .line 324
    :goto_14
    if-eqz v35, :cond_15

    #@327
    .line 325
    const/4 v4, 0x1

    #@328
    move-object/from16 v0, p3

    #@32a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@32d
    .line 326
    const/4 v4, 0x1

    #@32e
    move-object/from16 v0, v35

    #@330
    move-object/from16 v1, p3

    #@332
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@335
    .line 331
    :goto_15
    if-eqz v36, :cond_16

    #@337
    .line 332
    const/4 v4, 0x1

    #@338
    move-object/from16 v0, p3

    #@33a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@33d
    .line 333
    const/4 v4, 0x1

    #@33e
    move-object/from16 v0, v36

    #@340
    move-object/from16 v1, p3

    #@342
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@345
    .line 338
    :goto_16
    if-eqz v37, :cond_17

    #@347
    .line 339
    const/4 v4, 0x1

    #@348
    move-object/from16 v0, p3

    #@34a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@34d
    .line 340
    const/4 v4, 0x1

    #@34e
    move-object/from16 v0, v37

    #@350
    move-object/from16 v1, p3

    #@352
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@355
    .line 345
    :goto_17
    if-eqz v38, :cond_18

    #@357
    .line 346
    const/4 v4, 0x1

    #@358
    move-object/from16 v0, p3

    #@35a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@35d
    .line 347
    const/4 v4, 0x1

    #@35e
    move-object/from16 v0, v38

    #@360
    move-object/from16 v1, p3

    #@362
    invoke-virtual {v0, v1, v4}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@365
    .line 352
    :goto_18
    const/4 v4, 0x1

    #@366
    return v4

    #@367
    .line 258
    .end local v8    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v20    # "_arg7":Landroid/graphics/Rect;
    .end local v28    # "_arg5":I
    .end local v29    # "_arg6":I
    .end local v31    # "_arg8":Landroid/graphics/Rect;
    .end local v32    # "_arg9":Landroid/graphics/Rect;
    .end local v33    # "_arg10":Landroid/graphics/Rect;
    .end local v34    # "_arg11":Landroid/graphics/Rect;
    .end local v35    # "_arg12":Landroid/graphics/Rect;
    .end local v36    # "_arg13":Landroid/graphics/Rect;
    .end local v37    # "_arg14":Landroid/content/res/Configuration;
    .end local v38    # "_arg15":Landroid/view/Surface;
    .end local v74    # "_result":I
    :cond_f
    const/4 v7, 0x0

    #@368
    .restart local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_f

    #@36a
    .line 294
    .end local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "_arg3":I
    .restart local v17    # "_arg4":I
    .restart local v20    # "_arg7":Landroid/graphics/Rect;
    .restart local v28    # "_arg5":I
    .restart local v29    # "_arg6":I
    .restart local v31    # "_arg8":Landroid/graphics/Rect;
    .restart local v32    # "_arg9":Landroid/graphics/Rect;
    .restart local v33    # "_arg10":Landroid/graphics/Rect;
    .restart local v34    # "_arg11":Landroid/graphics/Rect;
    .restart local v35    # "_arg12":Landroid/graphics/Rect;
    .restart local v36    # "_arg13":Landroid/graphics/Rect;
    .restart local v37    # "_arg14":Landroid/content/res/Configuration;
    .restart local v38    # "_arg15":Landroid/view/Surface;
    .restart local v74    # "_result":I
    :cond_10
    const/4 v4, 0x0

    #@36b
    move-object/from16 v0, p3

    #@36d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@370
    goto/16 :goto_10

    #@372
    .line 301
    :cond_11
    const/4 v4, 0x0

    #@373
    move-object/from16 v0, p3

    #@375
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@378
    goto/16 :goto_11

    #@37a
    .line 308
    :cond_12
    const/4 v4, 0x0

    #@37b
    move-object/from16 v0, p3

    #@37d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@380
    goto :goto_12

    #@381
    .line 315
    :cond_13
    const/4 v4, 0x0

    #@382
    move-object/from16 v0, p3

    #@384
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@387
    goto :goto_13

    #@388
    .line 322
    :cond_14
    const/4 v4, 0x0

    #@389
    move-object/from16 v0, p3

    #@38b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@38e
    goto :goto_14

    #@38f
    .line 329
    :cond_15
    const/4 v4, 0x0

    #@390
    move-object/from16 v0, p3

    #@392
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@395
    goto :goto_15

    #@396
    .line 336
    :cond_16
    const/4 v4, 0x0

    #@397
    move-object/from16 v0, p3

    #@399
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@39c
    goto :goto_16

    #@39d
    .line 343
    :cond_17
    const/4 v4, 0x0

    #@39e
    move-object/from16 v0, p3

    #@3a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3a3
    goto :goto_17

    #@3a4
    .line 350
    :cond_18
    const/4 v4, 0x0

    #@3a5
    move-object/from16 v0, p3

    #@3a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3aa
    goto :goto_18

    #@3ab
    .line 356
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v20    # "_arg7":Landroid/graphics/Rect;
    .end local v28    # "_arg5":I
    .end local v29    # "_arg6":I
    .end local v31    # "_arg8":Landroid/graphics/Rect;
    .end local v32    # "_arg9":Landroid/graphics/Rect;
    .end local v33    # "_arg10":Landroid/graphics/Rect;
    .end local v34    # "_arg11":Landroid/graphics/Rect;
    .end local v35    # "_arg12":Landroid/graphics/Rect;
    .end local v36    # "_arg13":Landroid/graphics/Rect;
    .end local v37    # "_arg14":Landroid/content/res/Configuration;
    .end local v38    # "_arg15":Landroid/view/Surface;
    .end local v74    # "_result":I
    :sswitch_7
    const-string/jumbo v4, "android.view.IWindowSession"

    #@3ae
    move-object/from16 v0, p2

    #@3b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b3
    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3b6
    move-result-object v4

    #@3b7
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@3ba
    move-result-object v5

    #@3bb
    .line 360
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3be
    move-result v6

    #@3bf
    .line 362
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c2
    move-result v43

    #@3c3
    .line 364
    .local v43, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c6
    move-result v8

    #@3c7
    .line 366
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ca
    move-result v17

    #@3cb
    .line 368
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@3ce
    move-result-wide v46

    #@3cf
    .line 370
    .local v46, "_arg5":J
    new-instance v19, Landroid/graphics/Rect;

    #@3d1
    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    #@3d4
    .restart local v19    # "_arg6":Landroid/graphics/Rect;
    move-object/from16 v40, p0

    #@3d6
    move-object/from16 v41, v5

    #@3d8
    move/from16 v42, v6

    #@3da
    move/from16 v44, v8

    #@3dc
    move/from16 v45, v17

    #@3de
    move-object/from16 v48, v19

    #@3e0
    .line 371
    invoke-virtual/range {v40 .. v48}, Landroid/view/IWindowSession$Stub;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V

    #@3e3
    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e6
    .line 373
    if-eqz v19, :cond_19

    #@3e8
    .line 374
    const/4 v4, 0x1

    #@3e9
    move-object/from16 v0, p3

    #@3eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3ee
    .line 375
    const/4 v4, 0x1

    #@3ef
    move-object/from16 v0, v19

    #@3f1
    move-object/from16 v1, p3

    #@3f3
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@3f6
    .line 380
    :goto_19
    const/4 v4, 0x1

    #@3f7
    return v4

    #@3f8
    .line 378
    :cond_19
    const/4 v4, 0x0

    #@3f9
    move-object/from16 v0, p3

    #@3fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3fe
    goto :goto_19

    #@3ff
    .line 384
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v19    # "_arg6":Landroid/graphics/Rect;
    .end local v43    # "_arg2":I
    .end local v46    # "_arg5":J
    :sswitch_8
    const-string/jumbo v4, "android.view.IWindowSession"

    #@402
    move-object/from16 v0, p2

    #@404
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@407
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@40a
    move-result-object v58

    #@40b
    .line 388
    .local v58, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40e
    move-result v4

    #@40f
    if-eqz v4, :cond_1a

    #@411
    const/16 v72, 0x1

    #@413
    .line 389
    .local v72, "_arg1":Z
    :goto_1a
    move-object/from16 v0, p0

    #@415
    move-object/from16 v1, v58

    #@417
    move/from16 v2, v72

    #@419
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V

    #@41c
    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41f
    .line 391
    const/4 v4, 0x1

    #@420
    return v4

    #@421
    .line 388
    .end local v72    # "_arg1":Z
    :cond_1a
    const/16 v72, 0x0

    #@423
    goto :goto_1a

    #@424
    .line 395
    .end local v58    # "_arg0":Landroid/os/IBinder;
    :sswitch_9
    const-string/jumbo v4, "android.view.IWindowSession"

    #@427
    move-object/from16 v0, p2

    #@429
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42c
    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@42f
    move-result-object v4

    #@430
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@433
    move-result-object v5

    #@434
    .line 398
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@436
    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->performDeferredDestroy(Landroid/view/IWindow;)V

    #@439
    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43c
    .line 400
    const/4 v4, 0x1

    #@43d
    return v4

    #@43e
    .line 404
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_a
    const-string/jumbo v4, "android.view.IWindowSession"

    #@441
    move-object/from16 v0, p2

    #@443
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@446
    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@449
    move-result-object v4

    #@44a
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@44d
    move-result-object v5

    #@44e
    .line 407
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@450
    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    #@453
    move-result v78

    #@454
    .line 408
    .local v78, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@457
    .line 409
    if-eqz v78, :cond_1b

    #@459
    const/4 v4, 0x1

    #@45a
    :goto_1b
    move-object/from16 v0, p3

    #@45c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@45f
    .line 410
    const/4 v4, 0x1

    #@460
    return v4

    #@461
    .line 409
    :cond_1b
    const/4 v4, 0x0

    #@462
    goto :goto_1b

    #@463
    .line 414
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v78    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "android.view.IWindowSession"

    #@466
    move-object/from16 v0, p2

    #@468
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46b
    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@46e
    move-result-object v4

    #@46f
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@472
    move-result-object v5

    #@473
    .line 418
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@476
    move-result v4

    #@477
    if-eqz v4, :cond_1c

    #@479
    .line 419
    sget-object v4, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@47b
    move-object/from16 v0, p2

    #@47d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@480
    move-result-object v70

    #@481
    check-cast v70, Landroid/graphics/Region;

    #@483
    .line 424
    :goto_1c
    move-object/from16 v0, p0

    #@485
    move-object/from16 v1, v70

    #@487
    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    #@48a
    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@48d
    .line 426
    const/4 v4, 0x1

    #@48e
    return v4

    #@48f
    .line 422
    :cond_1c
    const/16 v70, 0x0

    #@491
    .local v70, "_arg1":Landroid/graphics/Region;
    goto :goto_1c

    #@492
    .line 430
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v70    # "_arg1":Landroid/graphics/Region;
    :sswitch_c
    const-string/jumbo v4, "android.view.IWindowSession"

    #@495
    move-object/from16 v0, p2

    #@497
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49a
    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@49d
    move-result-object v4

    #@49e
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@4a1
    move-result-object v5

    #@4a2
    .line 434
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a5
    move-result v6

    #@4a6
    .line 436
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a9
    move-result v4

    #@4aa
    if-eqz v4, :cond_1d

    #@4ac
    .line 437
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4ae
    move-object/from16 v0, p2

    #@4b0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4b3
    move-result-object v25

    #@4b4
    check-cast v25, Landroid/graphics/Rect;

    #@4b6
    .line 443
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b9
    move-result v4

    #@4ba
    if-eqz v4, :cond_1e

    #@4bc
    .line 444
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4be
    move-object/from16 v0, p2

    #@4c0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4c3
    move-result-object v26

    #@4c4
    check-cast v26, Landroid/graphics/Rect;

    #@4c6
    .line 450
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c9
    move-result v4

    #@4ca
    if-eqz v4, :cond_1f

    #@4cc
    .line 451
    sget-object v4, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4ce
    move-object/from16 v0, p2

    #@4d0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d3
    move-result-object v27

    #@4d4
    check-cast v27, Landroid/graphics/Region;

    #@4d6
    :goto_1f
    move-object/from16 v22, p0

    #@4d8
    move-object/from16 v23, v5

    #@4da
    move/from16 v24, v6

    #@4dc
    .line 456
    invoke-virtual/range {v22 .. v27}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    #@4df
    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e2
    .line 458
    const/4 v4, 0x1

    #@4e3
    return v4

    #@4e4
    .line 440
    :cond_1d
    const/16 v25, 0x0

    #@4e6
    .local v25, "_arg2":Landroid/graphics/Rect;
    goto :goto_1d

    #@4e7
    .line 447
    .end local v25    # "_arg2":Landroid/graphics/Rect;
    :cond_1e
    const/16 v26, 0x0

    #@4e9
    .local v26, "_arg3":Landroid/graphics/Rect;
    goto :goto_1e

    #@4ea
    .line 454
    .end local v26    # "_arg3":Landroid/graphics/Rect;
    :cond_1f
    const/16 v27, 0x0

    #@4ec
    .local v27, "_arg4":Landroid/graphics/Region;
    goto :goto_1f

    #@4ed
    .line 462
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v27    # "_arg4":Landroid/graphics/Region;
    :sswitch_d
    const-string/jumbo v4, "android.view.IWindowSession"

    #@4f0
    move-object/from16 v0, p2

    #@4f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f5
    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4f8
    move-result-object v4

    #@4f9
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@4fc
    move-result-object v5

    #@4fd
    .line 466
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    new-instance v69, Landroid/graphics/Rect;

    #@4ff
    invoke-direct/range {v69 .. v69}, Landroid/graphics/Rect;-><init>()V

    #@502
    .line 467
    .local v69, "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@504
    move-object/from16 v1, v69

    #@506
    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    #@509
    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50c
    .line 469
    if-eqz v69, :cond_20

    #@50e
    .line 470
    const/4 v4, 0x1

    #@50f
    move-object/from16 v0, p3

    #@511
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@514
    .line 471
    const/4 v4, 0x1

    #@515
    move-object/from16 v0, v69

    #@517
    move-object/from16 v1, p3

    #@519
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@51c
    .line 476
    :goto_20
    const/4 v4, 0x1

    #@51d
    return v4

    #@51e
    .line 474
    :cond_20
    const/4 v4, 0x0

    #@51f
    move-object/from16 v0, p3

    #@521
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@524
    goto :goto_20

    #@525
    .line 480
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v69    # "_arg1":Landroid/graphics/Rect;
    :sswitch_e
    const-string/jumbo v4, "android.view.IWindowSession"

    #@528
    move-object/from16 v0, p2

    #@52a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52d
    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@530
    move-result-object v4

    #@531
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@534
    move-result-object v5

    #@535
    .line 483
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@537
    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    #@53a
    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@53d
    .line 485
    const/4 v4, 0x1

    #@53e
    return v4

    #@53f
    .line 489
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_f
    const-string/jumbo v4, "android.view.IWindowSession"

    #@542
    move-object/from16 v0, p2

    #@544
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@547
    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@54a
    move-result v4

    #@54b
    if-eqz v4, :cond_21

    #@54d
    const/16 v39, 0x1

    #@54f
    .line 492
    .local v39, "_arg0":Z
    :goto_21
    move-object/from16 v0, p0

    #@551
    move/from16 v1, v39

    #@553
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    #@556
    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@559
    .line 494
    const/4 v4, 0x1

    #@55a
    return v4

    #@55b
    .line 491
    .end local v39    # "_arg0":Z
    :cond_21
    const/16 v39, 0x0

    #@55d
    goto :goto_21

    #@55e
    .line 498
    :sswitch_10
    const-string/jumbo v4, "android.view.IWindowSession"

    #@561
    move-object/from16 v0, p2

    #@563
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@566
    .line 499
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    #@569
    move-result v78

    #@56a
    .line 500
    .restart local v78    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@56d
    .line 501
    if-eqz v78, :cond_22

    #@56f
    const/4 v4, 0x1

    #@570
    :goto_22
    move-object/from16 v0, p3

    #@572
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@575
    .line 502
    const/4 v4, 0x1

    #@576
    return v4

    #@577
    .line 501
    :cond_22
    const/4 v4, 0x0

    #@578
    goto :goto_22

    #@579
    .line 506
    .end local v78    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "android.view.IWindowSession"

    #@57c
    move-object/from16 v0, p2

    #@57e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@581
    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@584
    move-result-object v4

    #@585
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@588
    move-result-object v5

    #@589
    .line 510
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58c
    move-result v6

    #@58d
    .line 512
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@590
    move-result v4

    #@591
    if-eqz v4, :cond_23

    #@593
    const/16 v73, 0x1

    #@595
    .line 513
    .local v73, "_arg2":Z
    :goto_23
    move-object/from16 v0, p0

    #@597
    move/from16 v1, v73

    #@599
    invoke-virtual {v0, v5, v6, v1}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    #@59c
    move-result v78

    #@59d
    .line 514
    .restart local v78    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a0
    .line 515
    if-eqz v78, :cond_24

    #@5a2
    const/4 v4, 0x1

    #@5a3
    :goto_24
    move-object/from16 v0, p3

    #@5a5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5a8
    .line 516
    const/4 v4, 0x1

    #@5a9
    return v4

    #@5aa
    .line 512
    .end local v73    # "_arg2":Z
    .end local v78    # "_result":Z
    :cond_23
    const/16 v73, 0x0

    #@5ac
    goto :goto_23

    #@5ad
    .line 515
    .restart local v73    # "_arg2":Z
    .restart local v78    # "_result":Z
    :cond_24
    const/4 v4, 0x0

    #@5ae
    goto :goto_24

    #@5af
    .line 520
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v73    # "_arg2":Z
    .end local v78    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.view.IWindowSession"

    #@5b2
    move-object/from16 v0, p2

    #@5b4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b7
    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5ba
    move-result-object v4

    #@5bb
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@5be
    move-result-object v5

    #@5bf
    .line 524
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c2
    move-result v6

    #@5c3
    .line 526
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c6
    move-result v43

    #@5c7
    .line 528
    .restart local v43    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ca
    move-result v8

    #@5cb
    .line 530
    .restart local v8    # "_arg3":I
    new-instance v45, Landroid/view/Surface;

    #@5cd
    invoke-direct/range {v45 .. v45}, Landroid/view/Surface;-><init>()V

    #@5d0
    .local v45, "_arg4":Landroid/view/Surface;
    move-object/from16 v40, p0

    #@5d2
    move-object/from16 v41, v5

    #@5d4
    move/from16 v42, v6

    #@5d6
    move/from16 v44, v8

    #@5d8
    .line 531
    invoke-virtual/range {v40 .. v45}, Landroid/view/IWindowSession$Stub;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    #@5db
    move-result-object v76

    #@5dc
    .line 532
    .local v76, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5df
    .line 533
    move-object/from16 v0, p3

    #@5e1
    move-object/from16 v1, v76

    #@5e3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@5e6
    .line 534
    if-eqz v45, :cond_25

    #@5e8
    .line 535
    const/4 v4, 0x1

    #@5e9
    move-object/from16 v0, p3

    #@5eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5ee
    .line 536
    const/4 v4, 0x1

    #@5ef
    move-object/from16 v0, v45

    #@5f1
    move-object/from16 v1, p3

    #@5f3
    invoke-virtual {v0, v1, v4}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@5f6
    .line 541
    :goto_25
    const/4 v4, 0x1

    #@5f7
    return v4

    #@5f8
    .line 539
    :cond_25
    const/4 v4, 0x0

    #@5f9
    move-object/from16 v0, p3

    #@5fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5fe
    goto :goto_25

    #@5ff
    .line 545
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v43    # "_arg2":I
    .end local v45    # "_arg4":Landroid/view/Surface;
    .end local v76    # "_result":Landroid/os/IBinder;
    :sswitch_13
    const-string/jumbo v4, "android.view.IWindowSession"

    #@602
    move-object/from16 v0, p2

    #@604
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@607
    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@60a
    move-result-object v4

    #@60b
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@60e
    move-result-object v5

    #@60f
    .line 549
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@612
    move-result-object v50

    #@613
    .line 551
    .local v50, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@616
    move-result v43

    #@617
    .line 553
    .restart local v43    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@61a
    move-result v52

    #@61b
    .line 555
    .local v52, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@61e
    move-result v53

    #@61f
    .line 557
    .local v53, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@622
    move-result v54

    #@623
    .line 559
    .local v54, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@626
    move-result v55

    #@627
    .line 561
    .local v55, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62a
    move-result v4

    #@62b
    if-eqz v4, :cond_26

    #@62d
    .line 562
    sget-object v4, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62f
    move-object/from16 v0, p2

    #@631
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@634
    move-result-object v56

    #@635
    check-cast v56, Landroid/content/ClipData;

    #@637
    :goto_26
    move-object/from16 v48, p0

    #@639
    move-object/from16 v49, v5

    #@63b
    move/from16 v51, v43

    #@63d
    .line 567
    invoke-virtual/range {v48 .. v56}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    #@640
    move-result v78

    #@641
    .line 568
    .restart local v78    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@644
    .line 569
    if-eqz v78, :cond_27

    #@646
    const/4 v4, 0x1

    #@647
    :goto_27
    move-object/from16 v0, p3

    #@649
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@64c
    .line 570
    const/4 v4, 0x1

    #@64d
    return v4

    #@64e
    .line 565
    .end local v78    # "_result":Z
    :cond_26
    const/16 v56, 0x0

    #@650
    .local v56, "_arg7":Landroid/content/ClipData;
    goto :goto_26

    #@651
    .line 569
    .end local v56    # "_arg7":Landroid/content/ClipData;
    .restart local v78    # "_result":Z
    :cond_27
    const/4 v4, 0x0

    #@652
    goto :goto_27

    #@653
    .line 574
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v43    # "_arg2":I
    .end local v50    # "_arg1":Landroid/os/IBinder;
    .end local v52    # "_arg3":F
    .end local v53    # "_arg4":F
    .end local v54    # "_arg5":F
    .end local v55    # "_arg6":F
    .end local v78    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "android.view.IWindowSession"

    #@656
    move-object/from16 v0, p2

    #@658
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65b
    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@65e
    move-result-object v4

    #@65f
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@662
    move-result-object v5

    #@663
    .line 578
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@666
    move-result v4

    #@667
    if-eqz v4, :cond_28

    #@669
    const/16 v72, 0x1

    #@66b
    .line 579
    .restart local v72    # "_arg1":Z
    :goto_28
    move-object/from16 v0, p0

    #@66d
    move/from16 v1, v72

    #@66f
    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    #@672
    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@675
    .line 581
    const/4 v4, 0x1

    #@676
    return v4

    #@677
    .line 578
    .end local v72    # "_arg1":Z
    :cond_28
    const/16 v72, 0x0

    #@679
    goto :goto_28

    #@67a
    .line 585
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_15
    const-string/jumbo v4, "android.view.IWindowSession"

    #@67d
    move-object/from16 v0, p2

    #@67f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@682
    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@685
    move-result-object v58

    #@686
    .line 588
    .restart local v58    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@688
    move-object/from16 v1, v58

    #@68a
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;)V

    #@68d
    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@690
    .line 590
    const/4 v4, 0x1

    #@691
    return v4

    #@692
    .line 594
    .end local v58    # "_arg0":Landroid/os/IBinder;
    :sswitch_16
    const-string/jumbo v4, "android.view.IWindowSession"

    #@695
    move-object/from16 v0, p2

    #@697
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69a
    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@69d
    move-result-object v4

    #@69e
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@6a1
    move-result-object v5

    #@6a2
    .line 597
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@6a4
    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    #@6a7
    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6aa
    .line 599
    const/4 v4, 0x1

    #@6ab
    return v4

    #@6ac
    .line 603
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_17
    const-string/jumbo v4, "android.view.IWindowSession"

    #@6af
    move-object/from16 v0, p2

    #@6b1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b4
    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6b7
    move-result-object v4

    #@6b8
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@6bb
    move-result-object v5

    #@6bc
    .line 606
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@6be
    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    #@6c1
    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c4
    .line 608
    const/4 v4, 0x1

    #@6c5
    return v4

    #@6c6
    .line 612
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_18
    const-string/jumbo v4, "android.view.IWindowSession"

    #@6c9
    move-object/from16 v0, p2

    #@6cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ce
    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6d1
    move-result-object v58

    #@6d2
    .line 616
    .restart local v58    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@6d5
    move-result v59

    #@6d6
    .line 618
    .local v59, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@6d9
    move-result v60

    #@6da
    .line 620
    .local v60, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@6dd
    move-result v52

    #@6de
    .line 622
    .restart local v52    # "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@6e1
    move-result v53

    #@6e2
    .restart local v53    # "_arg4":F
    move-object/from16 v57, p0

    #@6e4
    move/from16 v61, v52

    #@6e6
    move/from16 v62, v53

    #@6e8
    .line 623
    invoke-virtual/range {v57 .. v62}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    #@6eb
    .line 624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6ee
    .line 625
    const/4 v4, 0x1

    #@6ef
    return v4

    #@6f0
    .line 629
    .end local v52    # "_arg3":F
    .end local v53    # "_arg4":F
    .end local v58    # "_arg0":Landroid/os/IBinder;
    .end local v59    # "_arg1":F
    .end local v60    # "_arg2":F
    :sswitch_19
    const-string/jumbo v4, "android.view.IWindowSession"

    #@6f3
    move-object/from16 v0, p2

    #@6f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f8
    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6fb
    move-result-object v58

    #@6fc
    .line 632
    .restart local v58    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@6fe
    move-object/from16 v1, v58

    #@700
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    #@703
    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@706
    .line 634
    const/4 v4, 0x1

    #@707
    return v4

    #@708
    .line 638
    .end local v58    # "_arg0":Landroid/os/IBinder;
    :sswitch_1a
    const-string/jumbo v4, "android.view.IWindowSession"

    #@70b
    move-object/from16 v0, p2

    #@70d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@710
    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@713
    move-result-object v58

    #@714
    .line 642
    .restart local v58    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@717
    move-result v6

    #@718
    .line 644
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71b
    move-result v43

    #@71c
    .line 645
    .restart local v43    # "_arg2":I
    move-object/from16 v0, p0

    #@71e
    move-object/from16 v1, v58

    #@720
    move/from16 v2, v43

    #@722
    invoke-virtual {v0, v1, v6, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    #@725
    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@728
    .line 647
    const/4 v4, 0x1

    #@729
    return v4

    #@72a
    .line 651
    .end local v6    # "_arg1":I
    .end local v43    # "_arg2":I
    .end local v58    # "_arg0":Landroid/os/IBinder;
    :sswitch_1b
    const-string/jumbo v4, "android.view.IWindowSession"

    #@72d
    move-object/from16 v0, p2

    #@72f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@732
    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@735
    move-result-object v58

    #@736
    .line 655
    .restart local v58    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@739
    move-result-object v63

    #@73a
    .line 657
    .local v63, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73d
    move-result v43

    #@73e
    .line 659
    .restart local v43    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@741
    move-result v8

    #@742
    .line 661
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@745
    move-result v17

    #@746
    .line 663
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@749
    move-result v4

    #@74a
    if-eqz v4, :cond_29

    #@74c
    .line 664
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@74e
    move-object/from16 v0, p2

    #@750
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@753
    move-result-object v67

    #@754
    check-cast v67, Landroid/os/Bundle;

    #@756
    .line 670
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@759
    move-result v4

    #@75a
    if-eqz v4, :cond_2a

    #@75c
    const/16 v68, 0x1

    #@75e
    .local v68, "_arg6":Z
    :goto_2a
    move-object/from16 v61, p0

    #@760
    move-object/from16 v62, v58

    #@762
    move/from16 v64, v43

    #@764
    move/from16 v65, v8

    #@766
    move/from16 v66, v17

    #@768
    .line 671
    invoke-virtual/range {v61 .. v68}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    #@76b
    move-result-object v75

    #@76c
    .line 672
    .local v75, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@76f
    .line 673
    if-eqz v75, :cond_2b

    #@771
    .line 674
    const/4 v4, 0x1

    #@772
    move-object/from16 v0, p3

    #@774
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@777
    .line 675
    const/4 v4, 0x1

    #@778
    move-object/from16 v0, v75

    #@77a
    move-object/from16 v1, p3

    #@77c
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@77f
    .line 680
    :goto_2b
    const/4 v4, 0x1

    #@780
    return v4

    #@781
    .line 667
    .end local v68    # "_arg6":Z
    .end local v75    # "_result":Landroid/os/Bundle;
    :cond_29
    const/16 v67, 0x0

    #@783
    .local v67, "_arg5":Landroid/os/Bundle;
    goto :goto_29

    #@784
    .line 670
    .end local v67    # "_arg5":Landroid/os/Bundle;
    :cond_2a
    const/16 v68, 0x0

    #@786
    goto :goto_2a

    #@787
    .line 678
    .restart local v68    # "_arg6":Z
    .restart local v75    # "_result":Landroid/os/Bundle;
    :cond_2b
    const/4 v4, 0x0

    #@788
    move-object/from16 v0, p3

    #@78a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@78d
    goto :goto_2b

    #@78e
    .line 684
    .end local v8    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v43    # "_arg2":I
    .end local v58    # "_arg0":Landroid/os/IBinder;
    .end local v63    # "_arg1":Ljava/lang/String;
    .end local v68    # "_arg6":Z
    .end local v75    # "_result":Landroid/os/Bundle;
    :sswitch_1c
    const-string/jumbo v4, "android.view.IWindowSession"

    #@791
    move-object/from16 v0, p2

    #@793
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@796
    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@799
    move-result-object v58

    #@79a
    .line 688
    .restart local v58    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@79d
    move-result v4

    #@79e
    if-eqz v4, :cond_2c

    #@7a0
    .line 689
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7a2
    move-object/from16 v0, p2

    #@7a4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7a7
    move-result-object v71

    #@7a8
    check-cast v71, Landroid/os/Bundle;

    #@7aa
    .line 694
    :goto_2c
    move-object/from16 v0, p0

    #@7ac
    move-object/from16 v1, v58

    #@7ae
    move-object/from16 v2, v71

    #@7b0
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    #@7b3
    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b6
    .line 696
    const/4 v4, 0x1

    #@7b7
    return v4

    #@7b8
    .line 692
    :cond_2c
    const/16 v71, 0x0

    #@7ba
    .local v71, "_arg1":Landroid/os/Bundle;
    goto :goto_2c

    #@7bb
    .line 700
    .end local v58    # "_arg0":Landroid/os/IBinder;
    .end local v71    # "_arg1":Landroid/os/Bundle;
    :sswitch_1d
    const-string/jumbo v4, "android.view.IWindowSession"

    #@7be
    move-object/from16 v0, p2

    #@7c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c3
    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7c6
    move-result-object v58

    #@7c7
    .line 704
    .restart local v58    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ca
    move-result v4

    #@7cb
    if-eqz v4, :cond_2d

    #@7cd
    .line 705
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7cf
    move-object/from16 v0, p2

    #@7d1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7d4
    move-result-object v69

    #@7d5
    check-cast v69, Landroid/graphics/Rect;

    #@7d7
    .line 710
    :goto_2d
    move-object/from16 v0, p0

    #@7d9
    move-object/from16 v1, v58

    #@7db
    move-object/from16 v2, v69

    #@7dd
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    #@7e0
    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e3
    .line 712
    const/4 v4, 0x1

    #@7e4
    return v4

    #@7e5
    .line 708
    :cond_2d
    const/16 v69, 0x0

    #@7e7
    .local v69, "_arg1":Landroid/graphics/Rect;
    goto :goto_2d

    #@7e8
    .line 716
    .end local v58    # "_arg0":Landroid/os/IBinder;
    .end local v69    # "_arg1":Landroid/graphics/Rect;
    :sswitch_1e
    const-string/jumbo v4, "android.view.IWindowSession"

    #@7eb
    move-object/from16 v0, p2

    #@7ed
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f0
    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7f3
    move-result-object v58

    #@7f4
    .line 719
    .restart local v58    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@7f6
    move-object/from16 v1, v58

    #@7f8
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    #@7fb
    move-result-object v77

    #@7fc
    .line 720
    .local v77, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ff
    .line 721
    if-eqz v77, :cond_2e

    #@801
    invoke-interface/range {v77 .. v77}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@804
    move-result-object v4

    #@805
    :goto_2e
    move-object/from16 v0, p3

    #@807
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@80a
    .line 722
    const/4 v4, 0x1

    #@80b
    return v4

    #@80c
    .line 721
    :cond_2e
    const/4 v4, 0x0

    #@80d
    goto :goto_2e

    #@80e
    .line 726
    .end local v58    # "_arg0":Landroid/os/IBinder;
    .end local v77    # "_result":Landroid/view/IWindowId;
    :sswitch_1f
    const-string/jumbo v4, "android.view.IWindowSession"

    #@811
    move-object/from16 v0, p2

    #@813
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@816
    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@819
    move-result-object v58

    #@81a
    .line 729
    .restart local v58    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@81c
    move-object/from16 v1, v58

    #@81e
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    #@821
    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@824
    .line 731
    const/4 v4, 0x1

    #@825
    return v4

    #@826
    .line 735
    .end local v58    # "_arg0":Landroid/os/IBinder;
    :sswitch_20
    const-string/jumbo v4, "android.view.IWindowSession"

    #@829
    move-object/from16 v0, p2

    #@82b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82e
    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@831
    move-result-object v4

    #@832
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@835
    move-result-object v5

    #@836
    .line 739
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@839
    move-result v59

    #@83a
    .line 741
    .restart local v59    # "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@83d
    move-result v60

    #@83e
    .line 742
    .restart local v60    # "_arg2":F
    move-object/from16 v0, p0

    #@840
    move/from16 v1, v59

    #@842
    move/from16 v2, v60

    #@844
    invoke-virtual {v0, v5, v1, v2}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    #@847
    move-result v78

    #@848
    .line 743
    .restart local v78    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@84b
    .line 744
    if-eqz v78, :cond_2f

    #@84d
    const/4 v4, 0x1

    #@84e
    :goto_2f
    move-object/from16 v0, p3

    #@850
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@853
    .line 745
    const/4 v4, 0x1

    #@854
    return v4

    #@855
    .line 744
    :cond_2f
    const/4 v4, 0x0

    #@856
    goto :goto_2f

    #@857
    .line 749
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v59    # "_arg1":F
    .end local v60    # "_arg2":F
    .end local v78    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.view.IWindowSession"

    #@85a
    move-object/from16 v0, p2

    #@85c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85f
    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@862
    move-result-object v4

    #@863
    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@866
    move-result-object v5

    #@867
    .line 752
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@869
    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->updatePointerIcon(Landroid/view/IWindow;)V

    #@86c
    .line 753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86f
    .line 754
    const/4 v4, 0x1

    #@870
    return v4

    #@871
    .line 43
    nop

    #@872
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
