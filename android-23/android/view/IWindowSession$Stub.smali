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

.field static final TRANSACTION_dragRecipientEntered:I = 0x13

.field static final TRANSACTION_dragRecipientExited:I = 0x14

.field static final TRANSACTION_finishDrawing:I = 0xc

.field static final TRANSACTION_getDisplayFrame:I = 0xb

.field static final TRANSACTION_getInTouchMode:I = 0xe

.field static final TRANSACTION_getWindowId:I = 0x1b

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1a

.field static final TRANSACTION_outOfMemory:I = 0x8

.field static final TRANSACTION_performDeferredDestroy:I = 0x7

.field static final TRANSACTION_performDrag:I = 0x11

.field static final TRANSACTION_performHapticFeedback:I = 0xf

.field static final TRANSACTION_pokeDrawLock:I = 0x1c

.field static final TRANSACTION_prepareDrag:I = 0x10

.field static final TRANSACTION_relayout:I = 0x6

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_reportDropResult:I = 0x12

.field static final TRANSACTION_sendWallpaperCommand:I = 0x18

.field static final TRANSACTION_setInTouchMode:I = 0xd

.field static final TRANSACTION_setInsets:I = 0xa

.field static final TRANSACTION_setTransparentRegion:I = 0x9

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x17

.field static final TRANSACTION_setWallpaperPosition:I = 0x15

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x19

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x16


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
    .locals 73
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
    .line 675
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v3, "android.view.IWindowSession"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v3, "android.view.IWindowSession"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@21
    move-result-object v4

    #@22
    .line 56
    .local v4, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v5

    #@26
    .line 58
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 59
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    move-object/from16 v0, p2

    #@30
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v6

    #@34
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    #@36
    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v7

    #@3a
    .line 67
    .local v7, "_arg3":I
    new-instance v8, Landroid/graphics/Rect;

    #@3c
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    #@3f
    .line 69
    .local v8, "_arg4":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    #@41
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    #@44
    .line 71
    .local v9, "_arg5":Landroid/graphics/Rect;
    new-instance v10, Landroid/view/InputChannel;

    #@46
    invoke-direct {v10}, Landroid/view/InputChannel;-><init>()V

    #@49
    .local v10, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v3, p0

    #@4b
    .line 72
    invoke-virtual/range {v3 .. v10}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    #@4e
    move-result v68

    #@4f
    .line 73
    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52
    .line 74
    move-object/from16 v0, p3

    #@54
    move/from16 v1, v68

    #@56
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 75
    if-eqz v8, :cond_1

    #@5b
    .line 76
    const/4 v3, 0x1

    #@5c
    move-object/from16 v0, p3

    #@5e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    .line 77
    const/4 v3, 0x1

    #@62
    move-object/from16 v0, p3

    #@64
    invoke-virtual {v8, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@67
    .line 82
    :goto_1
    if-eqz v9, :cond_2

    #@69
    .line 83
    const/4 v3, 0x1

    #@6a
    move-object/from16 v0, p3

    #@6c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 84
    const/4 v3, 0x1

    #@70
    move-object/from16 v0, p3

    #@72
    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@75
    .line 89
    :goto_2
    if-eqz v10, :cond_3

    #@77
    .line 90
    const/4 v3, 0x1

    #@78
    move-object/from16 v0, p3

    #@7a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    .line 91
    const/4 v3, 0x1

    #@7e
    move-object/from16 v0, p3

    #@80
    invoke-virtual {v10, v0, v3}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    #@83
    .line 96
    :goto_3
    const/4 v3, 0x1

    #@84
    return v3

    #@85
    .line 62
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v10    # "_arg6":Landroid/view/InputChannel;
    .end local v68    # "_result":I
    :cond_0
    const/4 v6, 0x0

    #@86
    .local v6, "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    #@87
    .line 80
    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/graphics/Rect;
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v10    # "_arg6":Landroid/view/InputChannel;
    .restart local v68    # "_result":I
    :cond_1
    const/4 v3, 0x0

    #@88
    move-object/from16 v0, p3

    #@8a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@8d
    goto :goto_1

    #@8e
    .line 87
    :cond_2
    const/4 v3, 0x0

    #@8f
    move-object/from16 v0, p3

    #@91
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@94
    goto :goto_2

    #@95
    .line 94
    :cond_3
    const/4 v3, 0x0

    #@96
    move-object/from16 v0, p3

    #@98
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@9b
    goto :goto_3

    #@9c
    .line 100
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v10    # "_arg6":Landroid/view/InputChannel;
    .end local v68    # "_result":I
    :sswitch_2
    const-string/jumbo v3, "android.view.IWindowSession"

    #@9f
    move-object/from16 v0, p2

    #@a1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a7
    move-result-object v3

    #@a8
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@ab
    move-result-object v4

    #@ac
    .line 104
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@af
    move-result v5

    #@b0
    .line 106
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b3
    move-result v3

    #@b4
    if-eqz v3, :cond_4

    #@b6
    .line 107
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bd
    move-result-object v6

    #@be
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    #@c0
    .line 113
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c3
    move-result v7

    #@c4
    .line 115
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c7
    move-result v16

    #@c8
    .line 117
    .local v16, "_arg4":I
    new-instance v9, Landroid/graphics/Rect;

    #@ca
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    #@cd
    .line 119
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    #@cf
    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    #@d2
    .line 121
    .local v18, "_arg6":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    #@d4
    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    #@d7
    .line 123
    .local v19, "_arg7":Landroid/graphics/Rect;
    new-instance v20, Landroid/view/InputChannel;

    #@d9
    invoke-direct/range {v20 .. v20}, Landroid/view/InputChannel;-><init>()V

    #@dc
    .local v20, "_arg8":Landroid/view/InputChannel;
    move-object/from16 v11, p0

    #@de
    move-object v12, v4

    #@df
    move v13, v5

    #@e0
    move-object v14, v6

    #@e1
    move v15, v7

    #@e2
    move-object/from16 v17, v9

    #@e4
    .line 124
    invoke-virtual/range {v11 .. v20}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    #@e7
    move-result v68

    #@e8
    .line 125
    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@eb
    .line 126
    move-object/from16 v0, p3

    #@ed
    move/from16 v1, v68

    #@ef
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f2
    .line 127
    if-eqz v9, :cond_5

    #@f4
    .line 128
    const/4 v3, 0x1

    #@f5
    move-object/from16 v0, p3

    #@f7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@fa
    .line 129
    const/4 v3, 0x1

    #@fb
    move-object/from16 v0, p3

    #@fd
    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@100
    .line 134
    :goto_5
    if-eqz v18, :cond_6

    #@102
    .line 135
    const/4 v3, 0x1

    #@103
    move-object/from16 v0, p3

    #@105
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@108
    .line 136
    const/4 v3, 0x1

    #@109
    move-object/from16 v0, v18

    #@10b
    move-object/from16 v1, p3

    #@10d
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@110
    .line 141
    :goto_6
    if-eqz v19, :cond_7

    #@112
    .line 142
    const/4 v3, 0x1

    #@113
    move-object/from16 v0, p3

    #@115
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@118
    .line 143
    const/4 v3, 0x1

    #@119
    move-object/from16 v0, v19

    #@11b
    move-object/from16 v1, p3

    #@11d
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@120
    .line 148
    :goto_7
    if-eqz v20, :cond_8

    #@122
    .line 149
    const/4 v3, 0x1

    #@123
    move-object/from16 v0, p3

    #@125
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@128
    .line 150
    const/4 v3, 0x1

    #@129
    move-object/from16 v0, v20

    #@12b
    move-object/from16 v1, p3

    #@12d
    invoke-virtual {v0, v1, v3}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    #@130
    .line 155
    :goto_8
    const/4 v3, 0x1

    #@131
    return v3

    #@132
    .line 110
    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v20    # "_arg8":Landroid/view/InputChannel;
    .end local v68    # "_result":I
    :cond_4
    const/4 v6, 0x0

    #@133
    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_4

    #@134
    .line 132
    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v16    # "_arg4":I
    .restart local v18    # "_arg6":Landroid/graphics/Rect;
    .restart local v19    # "_arg7":Landroid/graphics/Rect;
    .restart local v20    # "_arg8":Landroid/view/InputChannel;
    .restart local v68    # "_result":I
    :cond_5
    const/4 v3, 0x0

    #@135
    move-object/from16 v0, p3

    #@137
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@13a
    goto :goto_5

    #@13b
    .line 139
    :cond_6
    const/4 v3, 0x0

    #@13c
    move-object/from16 v0, p3

    #@13e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@141
    goto :goto_6

    #@142
    .line 146
    :cond_7
    const/4 v3, 0x0

    #@143
    move-object/from16 v0, p3

    #@145
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@148
    goto :goto_7

    #@149
    .line 153
    :cond_8
    const/4 v3, 0x0

    #@14a
    move-object/from16 v0, p3

    #@14c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14f
    goto :goto_8

    #@150
    .line 159
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v20    # "_arg8":Landroid/view/InputChannel;
    .end local v68    # "_result":I
    :sswitch_3
    const-string/jumbo v3, "android.view.IWindowSession"

    #@153
    move-object/from16 v0, p2

    #@155
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@158
    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@15b
    move-result-object v3

    #@15c
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@15f
    move-result-object v4

    #@160
    .line 163
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@163
    move-result v5

    #@164
    .line 165
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@167
    move-result v3

    #@168
    if-eqz v3, :cond_9

    #@16a
    .line 166
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16c
    move-object/from16 v0, p2

    #@16e
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@171
    move-result-object v6

    #@172
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    #@174
    .line 172
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@177
    move-result v7

    #@178
    .line 174
    .restart local v7    # "_arg3":I
    new-instance v8, Landroid/graphics/Rect;

    #@17a
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    #@17d
    .line 176
    .restart local v8    # "_arg4":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    #@17f
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    #@182
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    move-object/from16 v3, p0

    #@184
    .line 177
    invoke-virtual/range {v3 .. v9}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@187
    move-result v68

    #@188
    .line 178
    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18b
    .line 179
    move-object/from16 v0, p3

    #@18d
    move/from16 v1, v68

    #@18f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@192
    .line 180
    if-eqz v8, :cond_a

    #@194
    .line 181
    const/4 v3, 0x1

    #@195
    move-object/from16 v0, p3

    #@197
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@19a
    .line 182
    const/4 v3, 0x1

    #@19b
    move-object/from16 v0, p3

    #@19d
    invoke-virtual {v8, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a0
    .line 187
    :goto_a
    if-eqz v9, :cond_b

    #@1a2
    .line 188
    const/4 v3, 0x1

    #@1a3
    move-object/from16 v0, p3

    #@1a5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a8
    .line 189
    const/4 v3, 0x1

    #@1a9
    move-object/from16 v0, p3

    #@1ab
    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@1ae
    .line 194
    :goto_b
    const/4 v3, 0x1

    #@1af
    return v3

    #@1b0
    .line 169
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v68    # "_result":I
    :cond_9
    const/4 v6, 0x0

    #@1b1
    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_9

    #@1b2
    .line 185
    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/graphics/Rect;
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v68    # "_result":I
    :cond_a
    const/4 v3, 0x0

    #@1b3
    move-object/from16 v0, p3

    #@1b5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b8
    goto :goto_a

    #@1b9
    .line 192
    :cond_b
    const/4 v3, 0x0

    #@1ba
    move-object/from16 v0, p3

    #@1bc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1bf
    goto :goto_b

    #@1c0
    .line 198
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v68    # "_result":I
    :sswitch_4
    const-string/jumbo v3, "android.view.IWindowSession"

    #@1c3
    move-object/from16 v0, p2

    #@1c5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c8
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1cb
    move-result-object v3

    #@1cc
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@1cf
    move-result-object v4

    #@1d0
    .line 202
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d3
    move-result v5

    #@1d4
    .line 204
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d7
    move-result v3

    #@1d8
    if-eqz v3, :cond_c

    #@1da
    .line 205
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1dc
    move-object/from16 v0, p2

    #@1de
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e1
    move-result-object v6

    #@1e2
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    #@1e4
    .line 211
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e7
    move-result v7

    #@1e8
    .line 213
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1eb
    move-result v16

    #@1ec
    .line 215
    .restart local v16    # "_arg4":I
    new-instance v9, Landroid/graphics/Rect;

    #@1ee
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    #@1f1
    .line 217
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    #@1f3
    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    #@1f6
    .restart local v18    # "_arg6":Landroid/graphics/Rect;
    move-object/from16 v11, p0

    #@1f8
    move-object v12, v4

    #@1f9
    move v13, v5

    #@1fa
    move-object v14, v6

    #@1fb
    move v15, v7

    #@1fc
    move-object/from16 v17, v9

    #@1fe
    .line 218
    invoke-virtual/range {v11 .. v18}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@201
    move-result v68

    #@202
    .line 219
    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@205
    .line 220
    move-object/from16 v0, p3

    #@207
    move/from16 v1, v68

    #@209
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@20c
    .line 221
    if-eqz v9, :cond_d

    #@20e
    .line 222
    const/4 v3, 0x1

    #@20f
    move-object/from16 v0, p3

    #@211
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@214
    .line 223
    const/4 v3, 0x1

    #@215
    move-object/from16 v0, p3

    #@217
    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@21a
    .line 228
    :goto_d
    if-eqz v18, :cond_e

    #@21c
    .line 229
    const/4 v3, 0x1

    #@21d
    move-object/from16 v0, p3

    #@21f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@222
    .line 230
    const/4 v3, 0x1

    #@223
    move-object/from16 v0, v18

    #@225
    move-object/from16 v1, p3

    #@227
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@22a
    .line 235
    :goto_e
    const/4 v3, 0x1

    #@22b
    return v3

    #@22c
    .line 208
    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v68    # "_result":I
    :cond_c
    const/4 v6, 0x0

    #@22d
    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_c

    #@22e
    .line 226
    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v16    # "_arg4":I
    .restart local v18    # "_arg6":Landroid/graphics/Rect;
    .restart local v68    # "_result":I
    :cond_d
    const/4 v3, 0x0

    #@22f
    move-object/from16 v0, p3

    #@231
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@234
    goto :goto_d

    #@235
    .line 233
    :cond_e
    const/4 v3, 0x0

    #@236
    move-object/from16 v0, p3

    #@238
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@23b
    goto :goto_e

    #@23c
    .line 239
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v68    # "_result":I
    :sswitch_5
    const-string/jumbo v3, "android.view.IWindowSession"

    #@23f
    move-object/from16 v0, p2

    #@241
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@244
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@247
    move-result-object v3

    #@248
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@24b
    move-result-object v4

    #@24c
    .line 242
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@24e
    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    #@251
    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@254
    .line 244
    const/4 v3, 0x1

    #@255
    return v3

    #@256
    .line 248
    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_6
    const-string/jumbo v3, "android.view.IWindowSession"

    #@259
    move-object/from16 v0, p2

    #@25b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25e
    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@261
    move-result-object v3

    #@262
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@265
    move-result-object v4

    #@266
    .line 252
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@269
    move-result v5

    #@26a
    .line 254
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26d
    move-result v3

    #@26e
    if-eqz v3, :cond_f

    #@270
    .line 255
    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@272
    move-object/from16 v0, p2

    #@274
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@277
    move-result-object v6

    #@278
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    #@27a
    .line 261
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27d
    move-result v7

    #@27e
    .line 263
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@281
    move-result v16

    #@282
    .line 265
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@285
    move-result v27

    #@286
    .line 267
    .local v27, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@289
    move-result v28

    #@28a
    .line 269
    .local v28, "_arg6":I
    new-instance v19, Landroid/graphics/Rect;

    #@28c
    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    #@28f
    .line 271
    .restart local v19    # "_arg7":Landroid/graphics/Rect;
    new-instance v30, Landroid/graphics/Rect;

    #@291
    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    #@294
    .line 273
    .local v30, "_arg8":Landroid/graphics/Rect;
    new-instance v31, Landroid/graphics/Rect;

    #@296
    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    #@299
    .line 275
    .local v31, "_arg9":Landroid/graphics/Rect;
    new-instance v32, Landroid/graphics/Rect;

    #@29b
    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    #@29e
    .line 277
    .local v32, "_arg10":Landroid/graphics/Rect;
    new-instance v33, Landroid/graphics/Rect;

    #@2a0
    invoke-direct/range {v33 .. v33}, Landroid/graphics/Rect;-><init>()V

    #@2a3
    .line 279
    .local v33, "_arg11":Landroid/graphics/Rect;
    new-instance v34, Landroid/graphics/Rect;

    #@2a5
    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    #@2a8
    .line 281
    .local v34, "_arg12":Landroid/graphics/Rect;
    new-instance v35, Landroid/content/res/Configuration;

    #@2aa
    invoke-direct/range {v35 .. v35}, Landroid/content/res/Configuration;-><init>()V

    #@2ad
    .line 283
    .local v35, "_arg13":Landroid/content/res/Configuration;
    new-instance v36, Landroid/view/Surface;

    #@2af
    invoke-direct/range {v36 .. v36}, Landroid/view/Surface;-><init>()V

    #@2b2
    .local v36, "_arg14":Landroid/view/Surface;
    move-object/from16 v21, p0

    #@2b4
    move-object/from16 v22, v4

    #@2b6
    move/from16 v23, v5

    #@2b8
    move-object/from16 v24, v6

    #@2ba
    move/from16 v25, v7

    #@2bc
    move/from16 v26, v16

    #@2be
    move-object/from16 v29, v19

    #@2c0
    .line 284
    invoke-virtual/range {v21 .. v36}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@2c3
    move-result v68

    #@2c4
    .line 285
    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c7
    .line 286
    move-object/from16 v0, p3

    #@2c9
    move/from16 v1, v68

    #@2cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2ce
    .line 287
    if-eqz v19, :cond_10

    #@2d0
    .line 288
    const/4 v3, 0x1

    #@2d1
    move-object/from16 v0, p3

    #@2d3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2d6
    .line 289
    const/4 v3, 0x1

    #@2d7
    move-object/from16 v0, v19

    #@2d9
    move-object/from16 v1, p3

    #@2db
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2de
    .line 294
    :goto_10
    if-eqz v30, :cond_11

    #@2e0
    .line 295
    const/4 v3, 0x1

    #@2e1
    move-object/from16 v0, p3

    #@2e3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2e6
    .line 296
    const/4 v3, 0x1

    #@2e7
    move-object/from16 v0, v30

    #@2e9
    move-object/from16 v1, p3

    #@2eb
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2ee
    .line 301
    :goto_11
    if-eqz v31, :cond_12

    #@2f0
    .line 302
    const/4 v3, 0x1

    #@2f1
    move-object/from16 v0, p3

    #@2f3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2f6
    .line 303
    const/4 v3, 0x1

    #@2f7
    move-object/from16 v0, v31

    #@2f9
    move-object/from16 v1, p3

    #@2fb
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2fe
    .line 308
    :goto_12
    if-eqz v32, :cond_13

    #@300
    .line 309
    const/4 v3, 0x1

    #@301
    move-object/from16 v0, p3

    #@303
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@306
    .line 310
    const/4 v3, 0x1

    #@307
    move-object/from16 v0, v32

    #@309
    move-object/from16 v1, p3

    #@30b
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@30e
    .line 315
    :goto_13
    if-eqz v33, :cond_14

    #@310
    .line 316
    const/4 v3, 0x1

    #@311
    move-object/from16 v0, p3

    #@313
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@316
    .line 317
    const/4 v3, 0x1

    #@317
    move-object/from16 v0, v33

    #@319
    move-object/from16 v1, p3

    #@31b
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@31e
    .line 322
    :goto_14
    if-eqz v34, :cond_15

    #@320
    .line 323
    const/4 v3, 0x1

    #@321
    move-object/from16 v0, p3

    #@323
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@326
    .line 324
    const/4 v3, 0x1

    #@327
    move-object/from16 v0, v34

    #@329
    move-object/from16 v1, p3

    #@32b
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@32e
    .line 329
    :goto_15
    if-eqz v35, :cond_16

    #@330
    .line 330
    const/4 v3, 0x1

    #@331
    move-object/from16 v0, p3

    #@333
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@336
    .line 331
    const/4 v3, 0x1

    #@337
    move-object/from16 v0, v35

    #@339
    move-object/from16 v1, p3

    #@33b
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@33e
    .line 336
    :goto_16
    if-eqz v36, :cond_17

    #@340
    .line 337
    const/4 v3, 0x1

    #@341
    move-object/from16 v0, p3

    #@343
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@346
    .line 338
    const/4 v3, 0x1

    #@347
    move-object/from16 v0, v36

    #@349
    move-object/from16 v1, p3

    #@34b
    invoke-virtual {v0, v1, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@34e
    .line 343
    :goto_17
    const/4 v3, 0x1

    #@34f
    return v3

    #@350
    .line 258
    .end local v7    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v27    # "_arg5":I
    .end local v28    # "_arg6":I
    .end local v30    # "_arg8":Landroid/graphics/Rect;
    .end local v31    # "_arg9":Landroid/graphics/Rect;
    .end local v32    # "_arg10":Landroid/graphics/Rect;
    .end local v33    # "_arg11":Landroid/graphics/Rect;
    .end local v34    # "_arg12":Landroid/graphics/Rect;
    .end local v35    # "_arg13":Landroid/content/res/Configuration;
    .end local v36    # "_arg14":Landroid/view/Surface;
    .end local v68    # "_result":I
    :cond_f
    const/4 v6, 0x0

    #@351
    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_f

    #@353
    .line 292
    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v16    # "_arg4":I
    .restart local v19    # "_arg7":Landroid/graphics/Rect;
    .restart local v27    # "_arg5":I
    .restart local v28    # "_arg6":I
    .restart local v30    # "_arg8":Landroid/graphics/Rect;
    .restart local v31    # "_arg9":Landroid/graphics/Rect;
    .restart local v32    # "_arg10":Landroid/graphics/Rect;
    .restart local v33    # "_arg11":Landroid/graphics/Rect;
    .restart local v34    # "_arg12":Landroid/graphics/Rect;
    .restart local v35    # "_arg13":Landroid/content/res/Configuration;
    .restart local v36    # "_arg14":Landroid/view/Surface;
    .restart local v68    # "_result":I
    :cond_10
    const/4 v3, 0x0

    #@354
    move-object/from16 v0, p3

    #@356
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@359
    goto :goto_10

    #@35a
    .line 299
    :cond_11
    const/4 v3, 0x0

    #@35b
    move-object/from16 v0, p3

    #@35d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@360
    goto :goto_11

    #@361
    .line 306
    :cond_12
    const/4 v3, 0x0

    #@362
    move-object/from16 v0, p3

    #@364
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@367
    goto :goto_12

    #@368
    .line 313
    :cond_13
    const/4 v3, 0x0

    #@369
    move-object/from16 v0, p3

    #@36b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@36e
    goto :goto_13

    #@36f
    .line 320
    :cond_14
    const/4 v3, 0x0

    #@370
    move-object/from16 v0, p3

    #@372
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@375
    goto :goto_14

    #@376
    .line 327
    :cond_15
    const/4 v3, 0x0

    #@377
    move-object/from16 v0, p3

    #@379
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@37c
    goto :goto_15

    #@37d
    .line 334
    :cond_16
    const/4 v3, 0x0

    #@37e
    move-object/from16 v0, p3

    #@380
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@383
    goto :goto_16

    #@384
    .line 341
    :cond_17
    const/4 v3, 0x0

    #@385
    move-object/from16 v0, p3

    #@387
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@38a
    goto :goto_17

    #@38b
    .line 347
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v27    # "_arg5":I
    .end local v28    # "_arg6":I
    .end local v30    # "_arg8":Landroid/graphics/Rect;
    .end local v31    # "_arg9":Landroid/graphics/Rect;
    .end local v32    # "_arg10":Landroid/graphics/Rect;
    .end local v33    # "_arg11":Landroid/graphics/Rect;
    .end local v34    # "_arg12":Landroid/graphics/Rect;
    .end local v35    # "_arg13":Landroid/content/res/Configuration;
    .end local v36    # "_arg14":Landroid/view/Surface;
    .end local v68    # "_result":I
    :sswitch_7
    const-string/jumbo v3, "android.view.IWindowSession"

    #@38e
    move-object/from16 v0, p2

    #@390
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@393
    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@396
    move-result-object v3

    #@397
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@39a
    move-result-object v4

    #@39b
    .line 350
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@39d
    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->performDeferredDestroy(Landroid/view/IWindow;)V

    #@3a0
    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a3
    .line 352
    const/4 v3, 0x1

    #@3a4
    return v3

    #@3a5
    .line 356
    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_8
    const-string/jumbo v3, "android.view.IWindowSession"

    #@3a8
    move-object/from16 v0, p2

    #@3aa
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ad
    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3b0
    move-result-object v3

    #@3b1
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@3b4
    move-result-object v4

    #@3b5
    .line 359
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@3b7
    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    #@3ba
    move-result v72

    #@3bb
    .line 360
    .local v72, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3be
    .line 361
    if-eqz v72, :cond_18

    #@3c0
    const/4 v3, 0x1

    #@3c1
    :goto_18
    move-object/from16 v0, p3

    #@3c3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3c6
    .line 362
    const/4 v3, 0x1

    #@3c7
    return v3

    #@3c8
    .line 361
    :cond_18
    const/4 v3, 0x0

    #@3c9
    goto :goto_18

    #@3ca
    .line 366
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v72    # "_result":Z
    :sswitch_9
    const-string/jumbo v3, "android.view.IWindowSession"

    #@3cd
    move-object/from16 v0, p2

    #@3cf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d2
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3d5
    move-result-object v3

    #@3d6
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@3d9
    move-result-object v4

    #@3da
    .line 370
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3dd
    move-result v3

    #@3de
    if-eqz v3, :cond_19

    #@3e0
    .line 371
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e2
    move-object/from16 v0, p2

    #@3e4
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e7
    move-result-object v64

    #@3e8
    check-cast v64, Landroid/graphics/Region;

    #@3ea
    .line 376
    :goto_19
    move-object/from16 v0, p0

    #@3ec
    move-object/from16 v1, v64

    #@3ee
    invoke-virtual {v0, v4, v1}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    #@3f1
    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f4
    .line 378
    const/4 v3, 0x1

    #@3f5
    return v3

    #@3f6
    .line 374
    :cond_19
    const/16 v64, 0x0

    #@3f8
    .local v64, "_arg1":Landroid/graphics/Region;
    goto :goto_19

    #@3f9
    .line 382
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v64    # "_arg1":Landroid/graphics/Region;
    :sswitch_a
    const-string/jumbo v3, "android.view.IWindowSession"

    #@3fc
    move-object/from16 v0, p2

    #@3fe
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@401
    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@404
    move-result-object v3

    #@405
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@408
    move-result-object v4

    #@409
    .line 386
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40c
    move-result v5

    #@40d
    .line 388
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@410
    move-result v3

    #@411
    if-eqz v3, :cond_1a

    #@413
    .line 389
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@415
    move-object/from16 v0, p2

    #@417
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41a
    move-result-object v24

    #@41b
    check-cast v24, Landroid/graphics/Rect;

    #@41d
    .line 395
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@420
    move-result v3

    #@421
    if-eqz v3, :cond_1b

    #@423
    .line 396
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@425
    move-object/from16 v0, p2

    #@427
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@42a
    move-result-object v25

    #@42b
    check-cast v25, Landroid/graphics/Rect;

    #@42d
    .line 402
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@430
    move-result v3

    #@431
    if-eqz v3, :cond_1c

    #@433
    .line 403
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@435
    move-object/from16 v0, p2

    #@437
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43a
    move-result-object v26

    #@43b
    check-cast v26, Landroid/graphics/Region;

    #@43d
    :goto_1c
    move-object/from16 v21, p0

    #@43f
    move-object/from16 v22, v4

    #@441
    move/from16 v23, v5

    #@443
    .line 408
    invoke-virtual/range {v21 .. v26}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    #@446
    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@449
    .line 410
    const/4 v3, 0x1

    #@44a
    return v3

    #@44b
    .line 392
    :cond_1a
    const/16 v24, 0x0

    #@44d
    .local v24, "_arg2":Landroid/graphics/Rect;
    goto :goto_1a

    #@44e
    .line 399
    .end local v24    # "_arg2":Landroid/graphics/Rect;
    :cond_1b
    const/16 v25, 0x0

    #@450
    .local v25, "_arg3":Landroid/graphics/Rect;
    goto :goto_1b

    #@451
    .line 406
    .end local v25    # "_arg3":Landroid/graphics/Rect;
    :cond_1c
    const/16 v26, 0x0

    #@453
    .local v26, "_arg4":Landroid/graphics/Region;
    goto :goto_1c

    #@454
    .line 414
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v26    # "_arg4":Landroid/graphics/Region;
    :sswitch_b
    const-string/jumbo v3, "android.view.IWindowSession"

    #@457
    move-object/from16 v0, p2

    #@459
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45c
    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@45f
    move-result-object v3

    #@460
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@463
    move-result-object v4

    #@464
    .line 418
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    new-instance v63, Landroid/graphics/Rect;

    #@466
    invoke-direct/range {v63 .. v63}, Landroid/graphics/Rect;-><init>()V

    #@469
    .line 419
    .local v63, "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@46b
    move-object/from16 v1, v63

    #@46d
    invoke-virtual {v0, v4, v1}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    #@470
    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@473
    .line 421
    if-eqz v63, :cond_1d

    #@475
    .line 422
    const/4 v3, 0x1

    #@476
    move-object/from16 v0, p3

    #@478
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@47b
    .line 423
    const/4 v3, 0x1

    #@47c
    move-object/from16 v0, v63

    #@47e
    move-object/from16 v1, p3

    #@480
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@483
    .line 428
    :goto_1d
    const/4 v3, 0x1

    #@484
    return v3

    #@485
    .line 426
    :cond_1d
    const/4 v3, 0x0

    #@486
    move-object/from16 v0, p3

    #@488
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@48b
    goto :goto_1d

    #@48c
    .line 432
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v63    # "_arg1":Landroid/graphics/Rect;
    :sswitch_c
    const-string/jumbo v3, "android.view.IWindowSession"

    #@48f
    move-object/from16 v0, p2

    #@491
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@494
    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@497
    move-result-object v3

    #@498
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@49b
    move-result-object v4

    #@49c
    .line 435
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@49e
    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    #@4a1
    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a4
    .line 437
    const/4 v3, 0x1

    #@4a5
    return v3

    #@4a6
    .line 441
    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_d
    const-string/jumbo v3, "android.view.IWindowSession"

    #@4a9
    move-object/from16 v0, p2

    #@4ab
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ae
    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b1
    move-result v3

    #@4b2
    if-eqz v3, :cond_1e

    #@4b4
    const/16 v62, 0x1

    #@4b6
    .line 444
    .local v62, "_arg0":Z
    :goto_1e
    move-object/from16 v0, p0

    #@4b8
    move/from16 v1, v62

    #@4ba
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    #@4bd
    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c0
    .line 446
    const/4 v3, 0x1

    #@4c1
    return v3

    #@4c2
    .line 443
    .end local v62    # "_arg0":Z
    :cond_1e
    const/16 v62, 0x0

    #@4c4
    .restart local v62    # "_arg0":Z
    goto :goto_1e

    #@4c5
    .line 450
    .end local v62    # "_arg0":Z
    :sswitch_e
    const-string/jumbo v3, "android.view.IWindowSession"

    #@4c8
    move-object/from16 v0, p2

    #@4ca
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4cd
    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    #@4d0
    move-result v72

    #@4d1
    .line 452
    .restart local v72    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d4
    .line 453
    if-eqz v72, :cond_1f

    #@4d6
    const/4 v3, 0x1

    #@4d7
    :goto_1f
    move-object/from16 v0, p3

    #@4d9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4dc
    .line 454
    const/4 v3, 0x1

    #@4dd
    return v3

    #@4de
    .line 453
    :cond_1f
    const/4 v3, 0x0

    #@4df
    goto :goto_1f

    #@4e0
    .line 458
    .end local v72    # "_result":Z
    :sswitch_f
    const-string/jumbo v3, "android.view.IWindowSession"

    #@4e3
    move-object/from16 v0, p2

    #@4e5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e8
    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4eb
    move-result-object v3

    #@4ec
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@4ef
    move-result-object v4

    #@4f0
    .line 462
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f3
    move-result v5

    #@4f4
    .line 464
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f7
    move-result v3

    #@4f8
    if-eqz v3, :cond_20

    #@4fa
    const/16 v67, 0x1

    #@4fc
    .line 465
    .local v67, "_arg2":Z
    :goto_20
    move-object/from16 v0, p0

    #@4fe
    move/from16 v1, v67

    #@500
    invoke-virtual {v0, v4, v5, v1}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    #@503
    move-result v72

    #@504
    .line 466
    .restart local v72    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@507
    .line 467
    if-eqz v72, :cond_21

    #@509
    const/4 v3, 0x1

    #@50a
    :goto_21
    move-object/from16 v0, p3

    #@50c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@50f
    .line 468
    const/4 v3, 0x1

    #@510
    return v3

    #@511
    .line 464
    .end local v67    # "_arg2":Z
    .end local v72    # "_result":Z
    :cond_20
    const/16 v67, 0x0

    #@513
    .restart local v67    # "_arg2":Z
    goto :goto_20

    #@514
    .line 467
    .restart local v72    # "_result":Z
    :cond_21
    const/4 v3, 0x0

    #@515
    goto :goto_21

    #@516
    .line 472
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v67    # "_arg2":Z
    .end local v72    # "_result":Z
    :sswitch_10
    const-string/jumbo v3, "android.view.IWindowSession"

    #@519
    move-object/from16 v0, p2

    #@51b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51e
    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@521
    move-result-object v3

    #@522
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@525
    move-result-object v4

    #@526
    .line 476
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@529
    move-result v5

    #@52a
    .line 478
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@52d
    move-result v40

    #@52e
    .line 480
    .local v40, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@531
    move-result v7

    #@532
    .line 482
    .restart local v7    # "_arg3":I
    new-instance v42, Landroid/view/Surface;

    #@534
    invoke-direct/range {v42 .. v42}, Landroid/view/Surface;-><init>()V

    #@537
    .local v42, "_arg4":Landroid/view/Surface;
    move-object/from16 v37, p0

    #@539
    move-object/from16 v38, v4

    #@53b
    move/from16 v39, v5

    #@53d
    move/from16 v41, v7

    #@53f
    .line 483
    invoke-virtual/range {v37 .. v42}, Landroid/view/IWindowSession$Stub;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    #@542
    move-result-object v70

    #@543
    .line 484
    .local v70, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@546
    .line 485
    move-object/from16 v0, p3

    #@548
    move-object/from16 v1, v70

    #@54a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@54d
    .line 486
    if-eqz v42, :cond_22

    #@54f
    .line 487
    const/4 v3, 0x1

    #@550
    move-object/from16 v0, p3

    #@552
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@555
    .line 488
    const/4 v3, 0x1

    #@556
    move-object/from16 v0, v42

    #@558
    move-object/from16 v1, p3

    #@55a
    invoke-virtual {v0, v1, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    #@55d
    .line 493
    :goto_22
    const/4 v3, 0x1

    #@55e
    return v3

    #@55f
    .line 491
    :cond_22
    const/4 v3, 0x0

    #@560
    move-object/from16 v0, p3

    #@562
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@565
    goto :goto_22

    #@566
    .line 497
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v40    # "_arg2":I
    .end local v42    # "_arg4":Landroid/view/Surface;
    .end local v70    # "_result":Landroid/os/IBinder;
    :sswitch_11
    const-string/jumbo v3, "android.view.IWindowSession"

    #@569
    move-object/from16 v0, p2

    #@56b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56e
    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@571
    move-result-object v3

    #@572
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@575
    move-result-object v4

    #@576
    .line 501
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@579
    move-result-object v45

    #@57a
    .line 503
    .local v45, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@57d
    move-result v46

    #@57e
    .line 505
    .local v46, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@581
    move-result v47

    #@582
    .line 507
    .local v47, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@585
    move-result v48

    #@586
    .line 509
    .local v48, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@589
    move-result v49

    #@58a
    .line 511
    .local v49, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58d
    move-result v3

    #@58e
    if-eqz v3, :cond_23

    #@590
    .line 512
    sget-object v3, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@592
    move-object/from16 v0, p2

    #@594
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@597
    move-result-object v50

    #@598
    check-cast v50, Landroid/content/ClipData;

    #@59a
    :goto_23
    move-object/from16 v43, p0

    #@59c
    move-object/from16 v44, v4

    #@59e
    .line 517
    invoke-virtual/range {v43 .. v50}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    #@5a1
    move-result v72

    #@5a2
    .line 518
    .restart local v72    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a5
    .line 519
    if-eqz v72, :cond_24

    #@5a7
    const/4 v3, 0x1

    #@5a8
    :goto_24
    move-object/from16 v0, p3

    #@5aa
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5ad
    .line 520
    const/4 v3, 0x1

    #@5ae
    return v3

    #@5af
    .line 515
    .end local v72    # "_result":Z
    :cond_23
    const/16 v50, 0x0

    #@5b1
    .local v50, "_arg6":Landroid/content/ClipData;
    goto :goto_23

    #@5b2
    .line 519
    .end local v50    # "_arg6":Landroid/content/ClipData;
    .restart local v72    # "_result":Z
    :cond_24
    const/4 v3, 0x0

    #@5b3
    goto :goto_24

    #@5b4
    .line 524
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v45    # "_arg1":Landroid/os/IBinder;
    .end local v46    # "_arg2":F
    .end local v47    # "_arg3":F
    .end local v48    # "_arg4":F
    .end local v49    # "_arg5":F
    .end local v72    # "_result":Z
    :sswitch_12
    const-string/jumbo v3, "android.view.IWindowSession"

    #@5b7
    move-object/from16 v0, p2

    #@5b9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5bc
    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5bf
    move-result-object v3

    #@5c0
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@5c3
    move-result-object v4

    #@5c4
    .line 528
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c7
    move-result v3

    #@5c8
    if-eqz v3, :cond_25

    #@5ca
    const/16 v66, 0x1

    #@5cc
    .line 529
    .local v66, "_arg1":Z
    :goto_25
    move-object/from16 v0, p0

    #@5ce
    move/from16 v1, v66

    #@5d0
    invoke-virtual {v0, v4, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    #@5d3
    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d6
    .line 531
    const/4 v3, 0x1

    #@5d7
    return v3

    #@5d8
    .line 528
    .end local v66    # "_arg1":Z
    :cond_25
    const/16 v66, 0x0

    #@5da
    .restart local v66    # "_arg1":Z
    goto :goto_25

    #@5db
    .line 535
    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v66    # "_arg1":Z
    :sswitch_13
    const-string/jumbo v3, "android.view.IWindowSession"

    #@5de
    move-object/from16 v0, p2

    #@5e0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e3
    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5e6
    move-result-object v3

    #@5e7
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@5ea
    move-result-object v4

    #@5eb
    .line 538
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@5ed
    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    #@5f0
    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f3
    .line 540
    const/4 v3, 0x1

    #@5f4
    return v3

    #@5f5
    .line 544
    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_14
    const-string/jumbo v3, "android.view.IWindowSession"

    #@5f8
    move-object/from16 v0, p2

    #@5fa
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5fd
    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@600
    move-result-object v3

    #@601
    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@604
    move-result-object v4

    #@605
    .line 547
    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@607
    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    #@60a
    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@60d
    .line 549
    const/4 v3, 0x1

    #@60e
    return v3

    #@60f
    .line 553
    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_15
    const-string/jumbo v3, "android.view.IWindowSession"

    #@612
    move-object/from16 v0, p2

    #@614
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@617
    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@61a
    move-result-object v52

    #@61b
    .line 557
    .local v52, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@61e
    move-result v53

    #@61f
    .line 559
    .local v53, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@622
    move-result v46

    #@623
    .line 561
    .restart local v46    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@626
    move-result v47

    #@627
    .line 563
    .restart local v47    # "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@62a
    move-result v48

    #@62b
    .restart local v48    # "_arg4":F
    move-object/from16 v51, p0

    #@62d
    move/from16 v54, v46

    #@62f
    move/from16 v55, v47

    #@631
    move/from16 v56, v48

    #@633
    .line 564
    invoke-virtual/range {v51 .. v56}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    #@636
    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@639
    .line 566
    const/4 v3, 0x1

    #@63a
    return v3

    #@63b
    .line 570
    .end local v46    # "_arg2":F
    .end local v47    # "_arg3":F
    .end local v48    # "_arg4":F
    .end local v52    # "_arg0":Landroid/os/IBinder;
    .end local v53    # "_arg1":F
    :sswitch_16
    const-string/jumbo v3, "android.view.IWindowSession"

    #@63e
    move-object/from16 v0, p2

    #@640
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@643
    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@646
    move-result-object v52

    #@647
    .line 573
    .restart local v52    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@649
    move-object/from16 v1, v52

    #@64b
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    #@64e
    .line 574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@651
    .line 575
    const/4 v3, 0x1

    #@652
    return v3

    #@653
    .line 579
    .end local v52    # "_arg0":Landroid/os/IBinder;
    :sswitch_17
    const-string/jumbo v3, "android.view.IWindowSession"

    #@656
    move-object/from16 v0, p2

    #@658
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65b
    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@65e
    move-result-object v52

    #@65f
    .line 583
    .restart local v52    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@662
    move-result v5

    #@663
    .line 585
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@666
    move-result v40

    #@667
    .line 586
    .restart local v40    # "_arg2":I
    move-object/from16 v0, p0

    #@669
    move-object/from16 v1, v52

    #@66b
    move/from16 v2, v40

    #@66d
    invoke-virtual {v0, v1, v5, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    #@670
    .line 587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@673
    .line 588
    const/4 v3, 0x1

    #@674
    return v3

    #@675
    .line 592
    .end local v5    # "_arg1":I
    .end local v40    # "_arg2":I
    .end local v52    # "_arg0":Landroid/os/IBinder;
    :sswitch_18
    const-string/jumbo v3, "android.view.IWindowSession"

    #@678
    move-object/from16 v0, p2

    #@67a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67d
    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@680
    move-result-object v52

    #@681
    .line 596
    .restart local v52    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@684
    move-result-object v56

    #@685
    .line 598
    .local v56, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@688
    move-result v40

    #@689
    .line 600
    .restart local v40    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@68c
    move-result v7

    #@68d
    .line 602
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@690
    move-result v16

    #@691
    .line 604
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@694
    move-result v3

    #@695
    if-eqz v3, :cond_26

    #@697
    .line 605
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@699
    move-object/from16 v0, p2

    #@69b
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69e
    move-result-object v60

    #@69f
    check-cast v60, Landroid/os/Bundle;

    #@6a1
    .line 611
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a4
    move-result v3

    #@6a5
    if-eqz v3, :cond_27

    #@6a7
    const/16 v61, 0x1

    #@6a9
    .local v61, "_arg6":Z
    :goto_27
    move-object/from16 v54, p0

    #@6ab
    move-object/from16 v55, v52

    #@6ad
    move/from16 v57, v40

    #@6af
    move/from16 v58, v7

    #@6b1
    move/from16 v59, v16

    #@6b3
    .line 612
    invoke-virtual/range {v54 .. v61}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    #@6b6
    move-result-object v69

    #@6b7
    .line 613
    .local v69, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6ba
    .line 614
    if-eqz v69, :cond_28

    #@6bc
    .line 615
    const/4 v3, 0x1

    #@6bd
    move-object/from16 v0, p3

    #@6bf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6c2
    .line 616
    const/4 v3, 0x1

    #@6c3
    move-object/from16 v0, v69

    #@6c5
    move-object/from16 v1, p3

    #@6c7
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@6ca
    .line 621
    :goto_28
    const/4 v3, 0x1

    #@6cb
    return v3

    #@6cc
    .line 608
    .end local v61    # "_arg6":Z
    .end local v69    # "_result":Landroid/os/Bundle;
    :cond_26
    const/16 v60, 0x0

    #@6ce
    .local v60, "_arg5":Landroid/os/Bundle;
    goto :goto_26

    #@6cf
    .line 611
    .end local v60    # "_arg5":Landroid/os/Bundle;
    :cond_27
    const/16 v61, 0x0

    #@6d1
    .restart local v61    # "_arg6":Z
    goto :goto_27

    #@6d2
    .line 619
    .restart local v69    # "_result":Landroid/os/Bundle;
    :cond_28
    const/4 v3, 0x0

    #@6d3
    move-object/from16 v0, p3

    #@6d5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6d8
    goto :goto_28

    #@6d9
    .line 625
    .end local v7    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v40    # "_arg2":I
    .end local v52    # "_arg0":Landroid/os/IBinder;
    .end local v56    # "_arg1":Ljava/lang/String;
    .end local v61    # "_arg6":Z
    .end local v69    # "_result":Landroid/os/Bundle;
    :sswitch_19
    const-string/jumbo v3, "android.view.IWindowSession"

    #@6dc
    move-object/from16 v0, p2

    #@6de
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e1
    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6e4
    move-result-object v52

    #@6e5
    .line 629
    .restart local v52    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e8
    move-result v3

    #@6e9
    if-eqz v3, :cond_29

    #@6eb
    .line 630
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6ed
    move-object/from16 v0, p2

    #@6ef
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f2
    move-result-object v65

    #@6f3
    check-cast v65, Landroid/os/Bundle;

    #@6f5
    .line 635
    :goto_29
    move-object/from16 v0, p0

    #@6f7
    move-object/from16 v1, v52

    #@6f9
    move-object/from16 v2, v65

    #@6fb
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    #@6fe
    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@701
    .line 637
    const/4 v3, 0x1

    #@702
    return v3

    #@703
    .line 633
    :cond_29
    const/16 v65, 0x0

    #@705
    .local v65, "_arg1":Landroid/os/Bundle;
    goto :goto_29

    #@706
    .line 641
    .end local v52    # "_arg0":Landroid/os/IBinder;
    .end local v65    # "_arg1":Landroid/os/Bundle;
    :sswitch_1a
    const-string/jumbo v3, "android.view.IWindowSession"

    #@709
    move-object/from16 v0, p2

    #@70b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70e
    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@711
    move-result-object v52

    #@712
    .line 645
    .restart local v52    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@715
    move-result v3

    #@716
    if-eqz v3, :cond_2a

    #@718
    .line 646
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@71a
    move-object/from16 v0, p2

    #@71c
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@71f
    move-result-object v63

    #@720
    check-cast v63, Landroid/graphics/Rect;

    #@722
    .line 651
    :goto_2a
    move-object/from16 v0, p0

    #@724
    move-object/from16 v1, v52

    #@726
    move-object/from16 v2, v63

    #@728
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    #@72b
    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@72e
    .line 653
    const/4 v3, 0x1

    #@72f
    return v3

    #@730
    .line 649
    :cond_2a
    const/16 v63, 0x0

    #@732
    .local v63, "_arg1":Landroid/graphics/Rect;
    goto :goto_2a

    #@733
    .line 657
    .end local v52    # "_arg0":Landroid/os/IBinder;
    .end local v63    # "_arg1":Landroid/graphics/Rect;
    :sswitch_1b
    const-string/jumbo v3, "android.view.IWindowSession"

    #@736
    move-object/from16 v0, p2

    #@738
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@73b
    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@73e
    move-result-object v52

    #@73f
    .line 660
    .restart local v52    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@741
    move-object/from16 v1, v52

    #@743
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    #@746
    move-result-object v71

    #@747
    .line 661
    .local v71, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@74a
    .line 662
    if-eqz v71, :cond_2b

    #@74c
    invoke-interface/range {v71 .. v71}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@74f
    move-result-object v3

    #@750
    :goto_2b
    move-object/from16 v0, p3

    #@752
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@755
    .line 663
    const/4 v3, 0x1

    #@756
    return v3

    #@757
    .line 662
    :cond_2b
    const/4 v3, 0x0

    #@758
    goto :goto_2b

    #@759
    .line 667
    .end local v52    # "_arg0":Landroid/os/IBinder;
    .end local v71    # "_result":Landroid/view/IWindowId;
    :sswitch_1c
    const-string/jumbo v3, "android.view.IWindowSession"

    #@75c
    move-object/from16 v0, p2

    #@75e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@761
    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@764
    move-result-object v52

    #@765
    .line 670
    .restart local v52    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@767
    move-object/from16 v1, v52

    #@769
    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    #@76c
    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@76f
    .line 672
    const/4 v3, 0x1

    #@770
    return v3

    #@771
    .line 43
    nop

    #@772
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
