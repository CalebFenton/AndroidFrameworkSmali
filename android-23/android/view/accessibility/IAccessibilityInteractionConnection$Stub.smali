.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnection"

.field static final TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x1

.field static final TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x2

.field static final TRANSACTION_findFocus:I = 0x4

.field static final TRANSACTION_focusSearch:I = 0x5

.field static final TRANSACTION_performAccessibilityAction:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
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
    const-string/jumbo v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 247
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 49
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 53
    :sswitch_1
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1d
    move-result-wide v3

    #@1e
    .line 57
    .local v3, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 58
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, Landroid/graphics/Region;

    #@2e
    .line 64
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v6

    #@32
    .line 66
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@35
    move-result-object v2

    #@36
    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@39
    move-result-object v7

    #@3a
    .line 68
    .local v7, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v8

    #@3e
    .line 70
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v9

    #@42
    .line 72
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@45
    move-result-wide v10

    #@46
    .line 74
    .local v10, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_1

    #@4c
    .line 75
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    move-object/from16 v0, p2

    #@50
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@53
    move-result-object v12

    #@54
    check-cast v12, Landroid/view/MagnificationSpec;

    #@56
    :goto_1
    move-object/from16 v2, p0

    #@58
    .line 80
    invoke-virtual/range {v2 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    #@5b
    .line 81
    const/4 v2, 0x1

    #@5c
    return v2

    #@5d
    .line 61
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":J
    :cond_0
    const/4 v5, 0x0

    #@5e
    .local v5, "_arg1":Landroid/graphics/Region;
    goto :goto_0

    #@5f
    .line 78
    .end local v5    # "_arg1":Landroid/graphics/Region;
    .restart local v6    # "_arg2":I
    .restart local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v8    # "_arg4":I
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":J
    :cond_1
    const/4 v12, 0x0

    #@60
    .local v12, "_arg7":Landroid/view/MagnificationSpec;
    goto :goto_1

    #@61
    .line 85
    .end local v3    # "_arg0":J
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":J
    .end local v12    # "_arg7":Landroid/view/MagnificationSpec;
    :sswitch_2
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@64
    move-object/from16 v0, p2

    #@66
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69
    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@6c
    move-result-wide v3

    #@6d
    .line 89
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@70
    move-result-object v16

    #@71
    .line 91
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74
    move-result v2

    #@75
    if-eqz v2, :cond_2

    #@77
    .line 92
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@79
    move-object/from16 v0, p2

    #@7b
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7e
    move-result-object v17

    #@7f
    check-cast v17, Landroid/graphics/Region;

    #@81
    .line 98
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@84
    move-result v18

    #@85
    .line 100
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@88
    move-result-object v2

    #@89
    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@8c
    move-result-object v19

    #@8d
    .line 102
    .local v19, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@90
    move-result v9

    #@91
    .line 104
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v21

    #@95
    .line 106
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@98
    move-result-wide v22

    #@99
    .line 108
    .local v22, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v2

    #@9d
    if-eqz v2, :cond_3

    #@9f
    .line 109
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a1
    move-object/from16 v0, p2

    #@a3
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a6
    move-result-object v24

    #@a7
    check-cast v24, Landroid/view/MagnificationSpec;

    #@a9
    :goto_3
    move-object/from16 v13, p0

    #@ab
    move-wide v14, v3

    #@ac
    move/from16 v20, v9

    #@ae
    .line 114
    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    #@b1
    .line 115
    const/4 v2, 0x1

    #@b2
    return v2

    #@b3
    .line 95
    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_2
    const/16 v17, 0x0

    #@b5
    .local v17, "_arg2":Landroid/graphics/Region;
    goto :goto_2

    #@b6
    .line 112
    .end local v17    # "_arg2":Landroid/graphics/Region;
    .restart local v9    # "_arg5":I
    .restart local v18    # "_arg3":I
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v21    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_3
    const/16 v24, 0x0

    #@b8
    .local v24, "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_3

    #@b9
    .line 119
    .end local v3    # "_arg0":J
    .end local v9    # "_arg5":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_3
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@bc
    move-object/from16 v0, p2

    #@be
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c1
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@c4
    move-result-wide v3

    #@c5
    .line 123
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c8
    move-result-object v16

    #@c9
    .line 125
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v2

    #@cd
    if-eqz v2, :cond_4

    #@cf
    .line 126
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d6
    move-result-object v17

    #@d7
    check-cast v17, Landroid/graphics/Region;

    #@d9
    .line 132
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dc
    move-result v18

    #@dd
    .line 134
    .restart local v18    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e0
    move-result-object v2

    #@e1
    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@e4
    move-result-object v19

    #@e5
    .line 136
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e8
    move-result v9

    #@e9
    .line 138
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec
    move-result v21

    #@ed
    .line 140
    .restart local v21    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@f0
    move-result-wide v22

    #@f1
    .line 142
    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f4
    move-result v2

    #@f5
    if-eqz v2, :cond_5

    #@f7
    .line 143
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f9
    move-object/from16 v0, p2

    #@fb
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fe
    move-result-object v24

    #@ff
    check-cast v24, Landroid/view/MagnificationSpec;

    #@101
    :goto_5
    move-object/from16 v13, p0

    #@103
    move-wide v14, v3

    #@104
    move/from16 v20, v9

    #@106
    .line 148
    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    #@109
    .line 149
    const/4 v2, 0x1

    #@10a
    return v2

    #@10b
    .line 129
    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_4
    const/16 v17, 0x0

    #@10d
    .restart local v17    # "_arg2":Landroid/graphics/Region;
    goto :goto_4

    #@10e
    .line 146
    .end local v17    # "_arg2":Landroid/graphics/Region;
    .restart local v9    # "_arg5":I
    .restart local v18    # "_arg3":I
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v21    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_5
    const/16 v24, 0x0

    #@110
    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_5

    #@111
    .line 153
    .end local v3    # "_arg0":J
    .end local v9    # "_arg5":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_4
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@114
    move-object/from16 v0, p2

    #@116
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@119
    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@11c
    move-result-wide v3

    #@11d
    .line 157
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120
    move-result v28

    #@121
    .line 159
    .local v28, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@124
    move-result v2

    #@125
    if-eqz v2, :cond_6

    #@127
    .line 160
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@129
    move-object/from16 v0, p2

    #@12b
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12e
    move-result-object v17

    #@12f
    check-cast v17, Landroid/graphics/Region;

    #@131
    .line 166
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@134
    move-result v18

    #@135
    .line 168
    .restart local v18    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@138
    move-result-object v2

    #@139
    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@13c
    move-result-object v19

    #@13d
    .line 170
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@140
    move-result v9

    #@141
    .line 172
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@144
    move-result v21

    #@145
    .line 174
    .restart local v21    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@148
    move-result-wide v22

    #@149
    .line 176
    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14c
    move-result v2

    #@14d
    if-eqz v2, :cond_7

    #@14f
    .line 177
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    #@151
    move-object/from16 v0, p2

    #@153
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@156
    move-result-object v24

    #@157
    check-cast v24, Landroid/view/MagnificationSpec;

    #@159
    :goto_7
    move-object/from16 v25, p0

    #@15b
    move-wide/from16 v26, v3

    #@15d
    move-object/from16 v29, v17

    #@15f
    move/from16 v30, v18

    #@161
    move-object/from16 v31, v19

    #@163
    move/from16 v32, v9

    #@165
    move/from16 v33, v21

    #@167
    move-wide/from16 v34, v22

    #@169
    move-object/from16 v36, v24

    #@16b
    .line 182
    invoke-virtual/range {v25 .. v36}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    #@16e
    .line 183
    const/4 v2, 0x1

    #@16f
    return v2

    #@170
    .line 163
    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_6
    const/16 v17, 0x0

    #@172
    .restart local v17    # "_arg2":Landroid/graphics/Region;
    goto :goto_6

    #@173
    .line 180
    .end local v17    # "_arg2":Landroid/graphics/Region;
    .restart local v9    # "_arg5":I
    .restart local v18    # "_arg3":I
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v21    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_7
    const/16 v24, 0x0

    #@175
    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_7

    #@176
    .line 187
    .end local v3    # "_arg0":J
    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v28    # "_arg1":I
    :sswitch_5
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@179
    move-object/from16 v0, p2

    #@17b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17e
    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@181
    move-result-wide v3

    #@182
    .line 191
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@185
    move-result v28

    #@186
    .line 193
    .restart local v28    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@189
    move-result v2

    #@18a
    if-eqz v2, :cond_8

    #@18c
    .line 194
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18e
    move-object/from16 v0, p2

    #@190
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@193
    move-result-object v17

    #@194
    check-cast v17, Landroid/graphics/Region;

    #@196
    .line 200
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@199
    move-result v18

    #@19a
    .line 202
    .restart local v18    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19d
    move-result-object v2

    #@19e
    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@1a1
    move-result-object v19

    #@1a2
    .line 204
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a5
    move-result v9

    #@1a6
    .line 206
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a9
    move-result v21

    #@1aa
    .line 208
    .restart local v21    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1ad
    move-result-wide v22

    #@1ae
    .line 210
    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b1
    move-result v2

    #@1b2
    if-eqz v2, :cond_9

    #@1b4
    .line 211
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b6
    move-object/from16 v0, p2

    #@1b8
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1bb
    move-result-object v24

    #@1bc
    check-cast v24, Landroid/view/MagnificationSpec;

    #@1be
    :goto_9
    move-object/from16 v25, p0

    #@1c0
    move-wide/from16 v26, v3

    #@1c2
    move-object/from16 v29, v17

    #@1c4
    move/from16 v30, v18

    #@1c6
    move-object/from16 v31, v19

    #@1c8
    move/from16 v32, v9

    #@1ca
    move/from16 v33, v21

    #@1cc
    move-wide/from16 v34, v22

    #@1ce
    move-object/from16 v36, v24

    #@1d0
    .line 216
    invoke-virtual/range {v25 .. v36}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    #@1d3
    .line 217
    const/4 v2, 0x1

    #@1d4
    return v2

    #@1d5
    .line 197
    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_8
    const/16 v17, 0x0

    #@1d7
    .restart local v17    # "_arg2":Landroid/graphics/Region;
    goto :goto_8

    #@1d8
    .line 214
    .end local v17    # "_arg2":Landroid/graphics/Region;
    .restart local v9    # "_arg5":I
    .restart local v18    # "_arg3":I
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v21    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_9
    const/16 v24, 0x0

    #@1da
    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_9

    #@1db
    .line 221
    .end local v3    # "_arg0":J
    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v28    # "_arg1":I
    :sswitch_6
    const-string/jumbo v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    #@1de
    move-object/from16 v0, p2

    #@1e0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e3
    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1e6
    move-result-wide v3

    #@1e7
    .line 225
    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ea
    move-result v28

    #@1eb
    .line 227
    .restart local v28    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ee
    move-result v2

    #@1ef
    if-eqz v2, :cond_a

    #@1f1
    .line 228
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f3
    move-object/from16 v0, p2

    #@1f5
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f8
    move-result-object v29

    #@1f9
    check-cast v29, Landroid/os/Bundle;

    #@1fb
    .line 234
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fe
    move-result v18

    #@1ff
    .line 236
    .restart local v18    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@202
    move-result-object v2

    #@203
    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@206
    move-result-object v19

    #@207
    .line 238
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20a
    move-result v9

    #@20b
    .line 240
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20e
    move-result v21

    #@20f
    .line 242
    .restart local v21    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@212
    move-result-wide v22

    #@213
    .restart local v22    # "_arg7":J
    move-object/from16 v25, p0

    #@215
    move-wide/from16 v26, v3

    #@217
    move/from16 v30, v18

    #@219
    move-object/from16 v31, v19

    #@21b
    move/from16 v32, v9

    #@21d
    move/from16 v33, v21

    #@21f
    move-wide/from16 v34, v22

    #@221
    .line 243
    invoke-virtual/range {v25 .. v35}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    #@224
    .line 244
    const/4 v2, 0x1

    #@225
    return v2

    #@226
    .line 231
    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_a
    const/16 v29, 0x0

    #@228
    .local v29, "_arg2":Landroid/os/Bundle;
    goto :goto_a

    #@229
    .line 44
    nop

    #@22a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
