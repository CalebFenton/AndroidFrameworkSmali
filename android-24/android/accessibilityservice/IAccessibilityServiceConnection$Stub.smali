.class public abstract Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceConnection"

.field static final TRANSACTION_disableSelf:I = 0xc

.field static final TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x2

.field static final TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x4

.field static final TRANSACTION_findFocus:I = 0x5

.field static final TRANSACTION_focusSearch:I = 0x6

.field static final TRANSACTION_getMagnificationCenterX:I = 0xf

.field static final TRANSACTION_getMagnificationCenterY:I = 0x10

.field static final TRANSACTION_getMagnificationRegion:I = 0x11

.field static final TRANSACTION_getMagnificationScale:I = 0xe

.field static final TRANSACTION_getServiceInfo:I = 0xa

.field static final TRANSACTION_getWindow:I = 0x8

.field static final TRANSACTION_getWindows:I = 0x9

.field static final TRANSACTION_performAccessibilityAction:I = 0x7

.field static final TRANSACTION_performGlobalAction:I = 0xb

.field static final TRANSACTION_resetMagnification:I = 0x12

.field static final TRANSACTION_sendGesture:I = 0x17

.field static final TRANSACTION_setMagnificationCallbackEnabled:I = 0x14

.field static final TRANSACTION_setMagnificationScaleAndCenter:I = 0x13

.field static final TRANSACTION_setOnKeyEventResult:I = 0xd

.field static final TRANSACTION_setServiceInfo:I = 0x1

.field static final TRANSACTION_setSoftKeyboardCallbackEnabled:I = 0x16

.field static final TRANSACTION_setSoftKeyboardShowMode:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;
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
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 45
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
    .line 365
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

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
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 55
    sget-object v4, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v32

    #@28
    check-cast v32, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@2a
    .line 60
    :goto_0
    move-object/from16 v0, p0

    #@2c
    move-object/from16 v1, v32

    #@2e
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@31
    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34
    .line 62
    const/4 v4, 0x1

    #@35
    return v4

    #@36
    .line 58
    :cond_0
    const/16 v32, 0x0

    #@38
    .local v32, "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_0

    #@39
    .line 66
    .end local v32    # "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_2
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@3c
    move-object/from16 v0, p2

    #@3e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v5

    #@45
    .line 70
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@48
    move-result-wide v6

    #@49
    .line 72
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v8

    #@4d
    .line 74
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@50
    move-result-object v4

    #@51
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@54
    move-result-object v9

    #@55
    .line 76
    .local v9, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v10

    #@59
    .line 78
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@5c
    move-result-wide v11

    #@5d
    .local v11, "_arg5":J
    move-object/from16 v4, p0

    #@5f
    .line 79
    invoke-virtual/range {v4 .. v12}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    #@62
    move-result v44

    #@63
    .line 80
    .local v44, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@66
    .line 81
    if-eqz v44, :cond_1

    #@68
    const/4 v4, 0x1

    #@69
    :goto_1
    move-object/from16 v0, p3

    #@6b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 82
    const/4 v4, 0x1

    #@6f
    return v4

    #@70
    .line 81
    :cond_1
    const/4 v4, 0x0

    #@71
    goto :goto_1

    #@72
    .line 86
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":J
    .end local v44    # "_result":Z
    :sswitch_3
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@75
    move-object/from16 v0, p2

    #@77
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a
    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v5

    #@7e
    .line 90
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@81
    move-result-wide v6

    #@82
    .line 92
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@85
    move-result-object v18

    #@86
    .line 94
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v19

    #@8a
    .line 96
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8d
    move-result-object v4

    #@8e
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@91
    move-result-object v20

    #@92
    .line 98
    .local v20, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@95
    move-result-wide v11

    #@96
    .restart local v11    # "_arg5":J
    move-object/from16 v14, p0

    #@98
    move v15, v5

    #@99
    move-wide/from16 v16, v6

    #@9b
    move-wide/from16 v21, v11

    #@9d
    .line 99
    invoke-virtual/range {v14 .. v22}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    #@a0
    move-result v44

    #@a1
    .line 100
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a4
    .line 101
    if-eqz v44, :cond_2

    #@a6
    const/4 v4, 0x1

    #@a7
    :goto_2
    move-object/from16 v0, p3

    #@a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@ac
    .line 102
    const/4 v4, 0x1

    #@ad
    return v4

    #@ae
    .line 101
    :cond_2
    const/4 v4, 0x0

    #@af
    goto :goto_2

    #@b0
    .line 106
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v11    # "_arg5":J
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v44    # "_result":Z
    :sswitch_4
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b3
    move-object/from16 v0, p2

    #@b5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bb
    move-result v5

    #@bc
    .line 110
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@bf
    move-result-wide v6

    #@c0
    .line 112
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c3
    move-result-object v18

    #@c4
    .line 114
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c7
    move-result v19

    #@c8
    .line 116
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@cb
    move-result-object v4

    #@cc
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@cf
    move-result-object v20

    #@d0
    .line 118
    .restart local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@d3
    move-result-wide v11

    #@d4
    .restart local v11    # "_arg5":J
    move-object/from16 v14, p0

    #@d6
    move v15, v5

    #@d7
    move-wide/from16 v16, v6

    #@d9
    move-wide/from16 v21, v11

    #@db
    .line 119
    invoke-virtual/range {v14 .. v22}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    #@de
    move-result v44

    #@df
    .line 120
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e2
    .line 121
    if-eqz v44, :cond_3

    #@e4
    const/4 v4, 0x1

    #@e5
    :goto_3
    move-object/from16 v0, p3

    #@e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@ea
    .line 122
    const/4 v4, 0x1

    #@eb
    return v4

    #@ec
    .line 121
    :cond_3
    const/4 v4, 0x0

    #@ed
    goto :goto_3

    #@ee
    .line 126
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v11    # "_arg5":J
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v44    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f6
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f9
    move-result v5

    #@fa
    .line 130
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@fd
    move-result-wide v6

    #@fe
    .line 132
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@101
    move-result v8

    #@102
    .line 134
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v19

    #@106
    .line 136
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@109
    move-result-object v4

    #@10a
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@10d
    move-result-object v20

    #@10e
    .line 138
    .restart local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@111
    move-result-wide v11

    #@112
    .restart local v11    # "_arg5":J
    move-object/from16 v22, p0

    #@114
    move/from16 v23, v5

    #@116
    move-wide/from16 v24, v6

    #@118
    move/from16 v26, v8

    #@11a
    move/from16 v27, v19

    #@11c
    move-object/from16 v28, v20

    #@11e
    move-wide/from16 v29, v11

    #@120
    .line 139
    invoke-virtual/range {v22 .. v30}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    #@123
    move-result v44

    #@124
    .line 140
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@127
    .line 141
    if-eqz v44, :cond_4

    #@129
    const/4 v4, 0x1

    #@12a
    :goto_4
    move-object/from16 v0, p3

    #@12c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@12f
    .line 142
    const/4 v4, 0x1

    #@130
    return v4

    #@131
    .line 141
    :cond_4
    const/4 v4, 0x0

    #@132
    goto :goto_4

    #@133
    .line 146
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v11    # "_arg5":J
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v44    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@136
    move-object/from16 v0, p2

    #@138
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13b
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13e
    move-result v5

    #@13f
    .line 150
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@142
    move-result-wide v6

    #@143
    .line 152
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@146
    move-result v8

    #@147
    .line 154
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14a
    move-result v19

    #@14b
    .line 156
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14e
    move-result-object v4

    #@14f
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@152
    move-result-object v20

    #@153
    .line 158
    .restart local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@156
    move-result-wide v11

    #@157
    .restart local v11    # "_arg5":J
    move-object/from16 v22, p0

    #@159
    move/from16 v23, v5

    #@15b
    move-wide/from16 v24, v6

    #@15d
    move/from16 v26, v8

    #@15f
    move/from16 v27, v19

    #@161
    move-object/from16 v28, v20

    #@163
    move-wide/from16 v29, v11

    #@165
    .line 159
    invoke-virtual/range {v22 .. v30}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    #@168
    move-result v44

    #@169
    .line 160
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16c
    .line 161
    if-eqz v44, :cond_5

    #@16e
    const/4 v4, 0x1

    #@16f
    :goto_5
    move-object/from16 v0, p3

    #@171
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@174
    .line 162
    const/4 v4, 0x1

    #@175
    return v4

    #@176
    .line 161
    :cond_5
    const/4 v4, 0x0

    #@177
    goto :goto_5

    #@178
    .line 166
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v11    # "_arg5":J
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v44    # "_result":Z
    :sswitch_7
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@17b
    move-object/from16 v0, p2

    #@17d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@180
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@183
    move-result v5

    #@184
    .line 170
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@187
    move-result-wide v6

    #@188
    .line 172
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18b
    move-result v8

    #@18c
    .line 174
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18f
    move-result v4

    #@190
    if-eqz v4, :cond_6

    #@192
    .line 175
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@194
    move-object/from16 v0, p2

    #@196
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@199
    move-result-object v27

    #@19a
    check-cast v27, Landroid/os/Bundle;

    #@19c
    .line 181
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19f
    move-result v10

    #@1a0
    .line 183
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a3
    move-result-object v4

    #@1a4
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@1a7
    move-result-object v29

    #@1a8
    .line 185
    .local v29, "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1ab
    move-result-wide v30

    #@1ac
    .local v30, "_arg6":J
    move-object/from16 v22, p0

    #@1ae
    move/from16 v23, v5

    #@1b0
    move-wide/from16 v24, v6

    #@1b2
    move/from16 v26, v8

    #@1b4
    move/from16 v28, v10

    #@1b6
    .line 186
    invoke-virtual/range {v22 .. v31}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    #@1b9
    move-result v44

    #@1ba
    .line 187
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bd
    .line 188
    if-eqz v44, :cond_7

    #@1bf
    const/4 v4, 0x1

    #@1c0
    :goto_7
    move-object/from16 v0, p3

    #@1c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c5
    .line 189
    const/4 v4, 0x1

    #@1c6
    return v4

    #@1c7
    .line 178
    .end local v10    # "_arg4":I
    .end local v29    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v30    # "_arg6":J
    .end local v44    # "_result":Z
    :cond_6
    const/16 v27, 0x0

    #@1c9
    .local v27, "_arg3":Landroid/os/Bundle;
    goto :goto_6

    #@1ca
    .line 188
    .end local v27    # "_arg3":Landroid/os/Bundle;
    .restart local v10    # "_arg4":I
    .restart local v29    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v30    # "_arg6":J
    .restart local v44    # "_result":Z
    :cond_7
    const/4 v4, 0x0

    #@1cb
    goto :goto_7

    #@1cc
    .line 193
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v10    # "_arg4":I
    .end local v29    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v30    # "_arg6":J
    .end local v44    # "_result":Z
    :sswitch_8
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@1cf
    move-object/from16 v0, p2

    #@1d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d4
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d7
    move-result v5

    #@1d8
    .line 196
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@1da
    invoke-virtual {v0, v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@1dd
    move-result-object v42

    #@1de
    .line 197
    .local v42, "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e1
    .line 198
    if-eqz v42, :cond_8

    #@1e3
    .line 199
    const/4 v4, 0x1

    #@1e4
    move-object/from16 v0, p3

    #@1e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e9
    .line 200
    const/4 v4, 0x1

    #@1ea
    move-object/from16 v0, v42

    #@1ec
    move-object/from16 v1, p3

    #@1ee
    invoke-virtual {v0, v1, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f1
    .line 205
    :goto_8
    const/4 v4, 0x1

    #@1f2
    return v4

    #@1f3
    .line 203
    :cond_8
    const/4 v4, 0x0

    #@1f4
    move-object/from16 v0, p3

    #@1f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f9
    goto :goto_8

    #@1fa
    .line 209
    .end local v5    # "_arg0":I
    .end local v42    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    :sswitch_9
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@1fd
    move-object/from16 v0, p2

    #@1ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@202
    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindows()Ljava/util/List;

    #@205
    move-result-object v43

    #@206
    .line 211
    .local v43, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@209
    .line 212
    move-object/from16 v0, p3

    #@20b
    move-object/from16 v1, v43

    #@20d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@210
    .line 213
    const/4 v4, 0x1

    #@211
    return v4

    #@212
    .line 217
    .end local v43    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :sswitch_a
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@215
    move-object/from16 v0, p2

    #@217
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21a
    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@21d
    move-result-object v40

    #@21e
    .line 219
    .local v40, "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@221
    .line 220
    if-eqz v40, :cond_9

    #@223
    .line 221
    const/4 v4, 0x1

    #@224
    move-object/from16 v0, p3

    #@226
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@229
    .line 222
    const/4 v4, 0x1

    #@22a
    move-object/from16 v0, v40

    #@22c
    move-object/from16 v1, p3

    #@22e
    invoke-virtual {v0, v1, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@231
    .line 227
    :goto_9
    const/4 v4, 0x1

    #@232
    return v4

    #@233
    .line 225
    :cond_9
    const/4 v4, 0x0

    #@234
    move-object/from16 v0, p3

    #@236
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@239
    goto :goto_9

    #@23a
    .line 231
    .end local v40    # "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_b
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@23d
    move-object/from16 v0, p2

    #@23f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@242
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@245
    move-result v5

    #@246
    .line 234
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@248
    invoke-virtual {v0, v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performGlobalAction(I)Z

    #@24b
    move-result v44

    #@24c
    .line 235
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24f
    .line 236
    if-eqz v44, :cond_a

    #@251
    const/4 v4, 0x1

    #@252
    :goto_a
    move-object/from16 v0, p3

    #@254
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@257
    .line 237
    const/4 v4, 0x1

    #@258
    return v4

    #@259
    .line 236
    :cond_a
    const/4 v4, 0x0

    #@25a
    goto :goto_a

    #@25b
    .line 241
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@25e
    move-object/from16 v0, p2

    #@260
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@263
    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->disableSelf()V

    #@266
    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@269
    .line 244
    const/4 v4, 0x1

    #@26a
    return v4

    #@26b
    .line 248
    :sswitch_d
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@26e
    move-object/from16 v0, p2

    #@270
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@273
    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@276
    move-result v4

    #@277
    if-eqz v4, :cond_b

    #@279
    const/16 v33, 0x1

    #@27b
    .line 252
    .local v33, "_arg0":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27e
    move-result v35

    #@27f
    .line 253
    .local v35, "_arg1":I
    move-object/from16 v0, p0

    #@281
    move/from16 v1, v33

    #@283
    move/from16 v2, v35

    #@285
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setOnKeyEventResult(ZI)V

    #@288
    .line 254
    const/4 v4, 0x1

    #@289
    return v4

    #@28a
    .line 250
    .end local v33    # "_arg0":Z
    .end local v35    # "_arg1":I
    :cond_b
    const/16 v33, 0x0

    #@28c
    .restart local v33    # "_arg0":Z
    goto :goto_b

    #@28d
    .line 258
    .end local v33    # "_arg0":Z
    :sswitch_e
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@290
    move-object/from16 v0, p2

    #@292
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@295
    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationScale()F

    #@298
    move-result v39

    #@299
    .line 260
    .local v39, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29c
    .line 261
    move-object/from16 v0, p3

    #@29e
    move/from16 v1, v39

    #@2a0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@2a3
    .line 262
    const/4 v4, 0x1

    #@2a4
    return v4

    #@2a5
    .line 266
    .end local v39    # "_result":F
    :sswitch_f
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@2a8
    move-object/from16 v0, p2

    #@2aa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ad
    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterX()F

    #@2b0
    move-result v39

    #@2b1
    .line 268
    .restart local v39    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b4
    .line 269
    move-object/from16 v0, p3

    #@2b6
    move/from16 v1, v39

    #@2b8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@2bb
    .line 270
    const/4 v4, 0x1

    #@2bc
    return v4

    #@2bd
    .line 274
    .end local v39    # "_result":F
    :sswitch_10
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@2c0
    move-object/from16 v0, p2

    #@2c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c5
    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterY()F

    #@2c8
    move-result v39

    #@2c9
    .line 276
    .restart local v39    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cc
    .line 277
    move-object/from16 v0, p3

    #@2ce
    move/from16 v1, v39

    #@2d0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@2d3
    .line 278
    const/4 v4, 0x1

    #@2d4
    return v4

    #@2d5
    .line 282
    .end local v39    # "_result":F
    :sswitch_11
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@2d8
    move-object/from16 v0, p2

    #@2da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2dd
    .line 283
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationRegion()Landroid/graphics/Region;

    #@2e0
    move-result-object v41

    #@2e1
    .line 284
    .local v41, "_result":Landroid/graphics/Region;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e4
    .line 285
    if-eqz v41, :cond_c

    #@2e6
    .line 286
    const/4 v4, 0x1

    #@2e7
    move-object/from16 v0, p3

    #@2e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2ec
    .line 287
    const/4 v4, 0x1

    #@2ed
    move-object/from16 v0, v41

    #@2ef
    move-object/from16 v1, p3

    #@2f1
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f4
    .line 292
    :goto_c
    const/4 v4, 0x1

    #@2f5
    return v4

    #@2f6
    .line 290
    :cond_c
    const/4 v4, 0x0

    #@2f7
    move-object/from16 v0, p3

    #@2f9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2fc
    goto :goto_c

    #@2fd
    .line 296
    .end local v41    # "_result":Landroid/graphics/Region;
    :sswitch_12
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@300
    move-object/from16 v0, p2

    #@302
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@305
    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@308
    move-result v4

    #@309
    if-eqz v4, :cond_d

    #@30b
    const/16 v33, 0x1

    #@30d
    .line 299
    .local v33, "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    #@30f
    move/from16 v1, v33

    #@311
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetMagnification(Z)Z

    #@314
    move-result v44

    #@315
    .line 300
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@318
    .line 301
    if-eqz v44, :cond_e

    #@31a
    const/4 v4, 0x1

    #@31b
    :goto_e
    move-object/from16 v0, p3

    #@31d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@320
    .line 302
    const/4 v4, 0x1

    #@321
    return v4

    #@322
    .line 298
    .end local v33    # "_arg0":Z
    .end local v44    # "_result":Z
    :cond_d
    const/16 v33, 0x0

    #@324
    goto :goto_d

    #@325
    .line 301
    .restart local v33    # "_arg0":Z
    .restart local v44    # "_result":Z
    :cond_e
    const/4 v4, 0x0

    #@326
    goto :goto_e

    #@327
    .line 306
    .end local v33    # "_arg0":Z
    .end local v44    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@32a
    move-object/from16 v0, p2

    #@32c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32f
    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@332
    move-result v13

    #@333
    .line 310
    .local v13, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@336
    move-result v34

    #@337
    .line 312
    .local v34, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@33a
    move-result v37

    #@33b
    .line 314
    .local v37, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@33e
    move-result v4

    #@33f
    if-eqz v4, :cond_f

    #@341
    const/16 v38, 0x1

    #@343
    .line 315
    .local v38, "_arg3":Z
    :goto_f
    move-object/from16 v0, p0

    #@345
    move/from16 v1, v34

    #@347
    move/from16 v2, v37

    #@349
    move/from16 v3, v38

    #@34b
    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationScaleAndCenter(FFFZ)Z

    #@34e
    move-result v44

    #@34f
    .line 316
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@352
    .line 317
    if-eqz v44, :cond_10

    #@354
    const/4 v4, 0x1

    #@355
    :goto_10
    move-object/from16 v0, p3

    #@357
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@35a
    .line 318
    const/4 v4, 0x1

    #@35b
    return v4

    #@35c
    .line 314
    .end local v38    # "_arg3":Z
    .end local v44    # "_result":Z
    :cond_f
    const/16 v38, 0x0

    #@35e
    goto :goto_f

    #@35f
    .line 317
    .restart local v38    # "_arg3":Z
    .restart local v44    # "_result":Z
    :cond_10
    const/4 v4, 0x0

    #@360
    goto :goto_10

    #@361
    .line 322
    .end local v13    # "_arg0":F
    .end local v34    # "_arg1":F
    .end local v37    # "_arg2":F
    .end local v38    # "_arg3":Z
    .end local v44    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@364
    move-object/from16 v0, p2

    #@366
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@369
    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36c
    move-result v4

    #@36d
    if-eqz v4, :cond_11

    #@36f
    const/16 v33, 0x1

    #@371
    .line 325
    .restart local v33    # "_arg0":Z
    :goto_11
    move-object/from16 v0, p0

    #@373
    move/from16 v1, v33

    #@375
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationCallbackEnabled(Z)V

    #@378
    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37b
    .line 327
    const/4 v4, 0x1

    #@37c
    return v4

    #@37d
    .line 324
    .end local v33    # "_arg0":Z
    :cond_11
    const/16 v33, 0x0

    #@37f
    goto :goto_11

    #@380
    .line 331
    :sswitch_15
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@383
    move-object/from16 v0, p2

    #@385
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@388
    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38b
    move-result v5

    #@38c
    .line 334
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@38e
    invoke-virtual {v0, v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardShowMode(I)Z

    #@391
    move-result v44

    #@392
    .line 335
    .restart local v44    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@395
    .line 336
    if-eqz v44, :cond_12

    #@397
    const/4 v4, 0x1

    #@398
    :goto_12
    move-object/from16 v0, p3

    #@39a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@39d
    .line 337
    const/4 v4, 0x1

    #@39e
    return v4

    #@39f
    .line 336
    :cond_12
    const/4 v4, 0x0

    #@3a0
    goto :goto_12

    #@3a1
    .line 341
    .end local v5    # "_arg0":I
    .end local v44    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@3a4
    move-object/from16 v0, p2

    #@3a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a9
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ac
    move-result v4

    #@3ad
    if-eqz v4, :cond_13

    #@3af
    const/16 v33, 0x1

    #@3b1
    .line 344
    .restart local v33    # "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    #@3b3
    move/from16 v1, v33

    #@3b5
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardCallbackEnabled(Z)V

    #@3b8
    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3bb
    .line 346
    const/4 v4, 0x1

    #@3bc
    return v4

    #@3bd
    .line 343
    .end local v33    # "_arg0":Z
    :cond_13
    const/16 v33, 0x0

    #@3bf
    goto :goto_13

    #@3c0
    .line 350
    :sswitch_17
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@3c3
    move-object/from16 v0, p2

    #@3c5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c8
    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3cb
    move-result v5

    #@3cc
    .line 354
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3cf
    move-result v4

    #@3d0
    if-eqz v4, :cond_14

    #@3d2
    .line 355
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@3d4
    move-object/from16 v0, p2

    #@3d6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d9
    move-result-object v36

    #@3da
    check-cast v36, Landroid/content/pm/ParceledListSlice;

    #@3dc
    .line 360
    :goto_14
    move-object/from16 v0, p0

    #@3de
    move-object/from16 v1, v36

    #@3e0
    invoke-virtual {v0, v5, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->sendGesture(ILandroid/content/pm/ParceledListSlice;)V

    #@3e3
    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e6
    .line 362
    const/4 v4, 0x1

    #@3e7
    return v4

    #@3e8
    .line 358
    :cond_14
    const/16 v36, 0x0

    #@3ea
    .local v36, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_14

    #@3eb
    .line 43
    nop

    #@3ec
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
