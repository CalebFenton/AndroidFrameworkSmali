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

.field static final TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x2

.field static final TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x4

.field static final TRANSACTION_findFocus:I = 0x5

.field static final TRANSACTION_focusSearch:I = 0x6

.field static final TRANSACTION_getServiceInfo:I = 0xa

.field static final TRANSACTION_getWindow:I = 0x8

.field static final TRANSACTION_getWindows:I = 0x9

.field static final TRANSACTION_performAccessibilityAction:I = 0x7

.field static final TRANSACTION_performGlobalAction:I = 0xb

.field static final TRANSACTION_setOnKeyEventResult:I = 0xc

.field static final TRANSACTION_setServiceInfo:I = 0x1


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
    .locals 38
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
    .line 250
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
    move-result-object v13

    #@28
    check-cast v13, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@2a
    .line 60
    :goto_0
    move-object/from16 v0, p0

    #@2c
    invoke-virtual {v0, v13}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@2f
    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    .line 62
    const/4 v4, 0x1

    #@33
    return v4

    #@34
    .line 58
    :cond_0
    const/4 v13, 0x0

    #@35
    .local v13, "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_0

    #@36
    .line 66
    .end local v13    # "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_2
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@39
    move-object/from16 v0, p2

    #@3b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v5

    #@42
    .line 70
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@45
    move-result-wide v6

    #@46
    .line 72
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v8

    #@4a
    .line 74
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4d
    move-result-object v4

    #@4e
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@51
    move-result-object v9

    #@52
    .line 76
    .local v9, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v10

    #@56
    .line 78
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@59
    move-result-wide v11

    #@5a
    .local v11, "_arg5":J
    move-object/from16 v4, p0

    #@5c
    .line 79
    invoke-virtual/range {v4 .. v12}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    #@5f
    move-result v37

    #@60
    .line 80
    .local v37, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@63
    .line 81
    if-eqz v37, :cond_1

    #@65
    const/4 v4, 0x1

    #@66
    :goto_1
    move-object/from16 v0, p3

    #@68
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 82
    const/4 v4, 0x1

    #@6c
    return v4

    #@6d
    .line 81
    :cond_1
    const/4 v4, 0x0

    #@6e
    goto :goto_1

    #@6f
    .line 86
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":J
    .end local v37    # "_result":Z
    :sswitch_3
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@72
    move-object/from16 v0, p2

    #@74
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v5

    #@7b
    .line 90
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@7e
    move-result-wide v6

    #@7f
    .line 92
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@82
    move-result-object v18

    #@83
    .line 94
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@86
    move-result v19

    #@87
    .line 96
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8a
    move-result-object v4

    #@8b
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@8e
    move-result-object v20

    #@8f
    .line 98
    .local v20, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@92
    move-result-wide v11

    #@93
    .restart local v11    # "_arg5":J
    move-object/from16 v14, p0

    #@95
    move v15, v5

    #@96
    move-wide/from16 v16, v6

    #@98
    move-wide/from16 v21, v11

    #@9a
    .line 99
    invoke-virtual/range {v14 .. v22}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    #@9d
    move-result v37

    #@9e
    .line 100
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1
    .line 101
    if-eqz v37, :cond_2

    #@a3
    const/4 v4, 0x1

    #@a4
    :goto_2
    move-object/from16 v0, p3

    #@a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a9
    .line 102
    const/4 v4, 0x1

    #@aa
    return v4

    #@ab
    .line 101
    :cond_2
    const/4 v4, 0x0

    #@ac
    goto :goto_2

    #@ad
    .line 106
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v11    # "_arg5":J
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v37    # "_result":Z
    :sswitch_4
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b8
    move-result v5

    #@b9
    .line 110
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@bc
    move-result-wide v6

    #@bd
    .line 112
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c0
    move-result-object v18

    #@c1
    .line 114
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v19

    #@c5
    .line 116
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c8
    move-result-object v4

    #@c9
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@cc
    move-result-object v20

    #@cd
    .line 118
    .restart local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@d0
    move-result-wide v11

    #@d1
    .restart local v11    # "_arg5":J
    move-object/from16 v14, p0

    #@d3
    move v15, v5

    #@d4
    move-wide/from16 v16, v6

    #@d6
    move-wide/from16 v21, v11

    #@d8
    .line 119
    invoke-virtual/range {v14 .. v22}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    #@db
    move-result v37

    #@dc
    .line 120
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    .line 121
    if-eqz v37, :cond_3

    #@e1
    const/4 v4, 0x1

    #@e2
    :goto_3
    move-object/from16 v0, p3

    #@e4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@e7
    .line 122
    const/4 v4, 0x1

    #@e8
    return v4

    #@e9
    .line 121
    :cond_3
    const/4 v4, 0x0

    #@ea
    goto :goto_3

    #@eb
    .line 126
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v11    # "_arg5":J
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v37    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@ee
    move-object/from16 v0, p2

    #@f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f6
    move-result v5

    #@f7
    .line 130
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@fa
    move-result-wide v6

    #@fb
    .line 132
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v8

    #@ff
    .line 134
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@102
    move-result v19

    #@103
    .line 136
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@106
    move-result-object v4

    #@107
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@10a
    move-result-object v20

    #@10b
    .line 138
    .restart local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@10e
    move-result-wide v11

    #@10f
    .restart local v11    # "_arg5":J
    move-object/from16 v22, p0

    #@111
    move/from16 v23, v5

    #@113
    move-wide/from16 v24, v6

    #@115
    move/from16 v26, v8

    #@117
    move/from16 v27, v19

    #@119
    move-object/from16 v28, v20

    #@11b
    move-wide/from16 v29, v11

    #@11d
    .line 139
    invoke-virtual/range {v22 .. v30}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    #@120
    move-result v37

    #@121
    .line 140
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@124
    .line 141
    if-eqz v37, :cond_4

    #@126
    const/4 v4, 0x1

    #@127
    :goto_4
    move-object/from16 v0, p3

    #@129
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@12c
    .line 142
    const/4 v4, 0x1

    #@12d
    return v4

    #@12e
    .line 141
    :cond_4
    const/4 v4, 0x0

    #@12f
    goto :goto_4

    #@130
    .line 146
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v11    # "_arg5":J
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v37    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@133
    move-object/from16 v0, p2

    #@135
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@138
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13b
    move-result v5

    #@13c
    .line 150
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@13f
    move-result-wide v6

    #@140
    .line 152
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@143
    move-result v8

    #@144
    .line 154
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@147
    move-result v19

    #@148
    .line 156
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14b
    move-result-object v4

    #@14c
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@14f
    move-result-object v20

    #@150
    .line 158
    .restart local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@153
    move-result-wide v11

    #@154
    .restart local v11    # "_arg5":J
    move-object/from16 v22, p0

    #@156
    move/from16 v23, v5

    #@158
    move-wide/from16 v24, v6

    #@15a
    move/from16 v26, v8

    #@15c
    move/from16 v27, v19

    #@15e
    move-object/from16 v28, v20

    #@160
    move-wide/from16 v29, v11

    #@162
    .line 159
    invoke-virtual/range {v22 .. v30}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    #@165
    move-result v37

    #@166
    .line 160
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@169
    .line 161
    if-eqz v37, :cond_5

    #@16b
    const/4 v4, 0x1

    #@16c
    :goto_5
    move-object/from16 v0, p3

    #@16e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@171
    .line 162
    const/4 v4, 0x1

    #@172
    return v4

    #@173
    .line 161
    :cond_5
    const/4 v4, 0x0

    #@174
    goto :goto_5

    #@175
    .line 166
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v11    # "_arg5":J
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v37    # "_result":Z
    :sswitch_7
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@178
    move-object/from16 v0, p2

    #@17a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17d
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@180
    move-result v5

    #@181
    .line 170
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@184
    move-result-wide v6

    #@185
    .line 172
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@188
    move-result v8

    #@189
    .line 174
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18c
    move-result v4

    #@18d
    if-eqz v4, :cond_6

    #@18f
    .line 175
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@191
    move-object/from16 v0, p2

    #@193
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@196
    move-result-object v27

    #@197
    check-cast v27, Landroid/os/Bundle;

    #@199
    .line 181
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19c
    move-result v10

    #@19d
    .line 183
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a0
    move-result-object v4

    #@1a1
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@1a4
    move-result-object v29

    #@1a5
    .line 185
    .local v29, "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1a8
    move-result-wide v30

    #@1a9
    .local v30, "_arg6":J
    move-object/from16 v22, p0

    #@1ab
    move/from16 v23, v5

    #@1ad
    move-wide/from16 v24, v6

    #@1af
    move/from16 v26, v8

    #@1b1
    move/from16 v28, v10

    #@1b3
    .line 186
    invoke-virtual/range {v22 .. v31}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    #@1b6
    move-result v37

    #@1b7
    .line 187
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ba
    .line 188
    if-eqz v37, :cond_7

    #@1bc
    const/4 v4, 0x1

    #@1bd
    :goto_7
    move-object/from16 v0, p3

    #@1bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c2
    .line 189
    const/4 v4, 0x1

    #@1c3
    return v4

    #@1c4
    .line 178
    .end local v10    # "_arg4":I
    .end local v29    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v30    # "_arg6":J
    .end local v37    # "_result":Z
    :cond_6
    const/16 v27, 0x0

    #@1c6
    .local v27, "_arg3":Landroid/os/Bundle;
    goto :goto_6

    #@1c7
    .line 188
    .end local v27    # "_arg3":Landroid/os/Bundle;
    .restart local v10    # "_arg4":I
    .restart local v29    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v30    # "_arg6":J
    .restart local v37    # "_result":Z
    :cond_7
    const/4 v4, 0x0

    #@1c8
    goto :goto_7

    #@1c9
    .line 193
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v10    # "_arg4":I
    .end local v29    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v30    # "_arg6":J
    .end local v37    # "_result":Z
    :sswitch_8
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d1
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d4
    move-result v5

    #@1d5
    .line 196
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@1d7
    invoke-virtual {v0, v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@1da
    move-result-object v35

    #@1db
    .line 197
    .local v35, "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1de
    .line 198
    if-eqz v35, :cond_8

    #@1e0
    .line 199
    const/4 v4, 0x1

    #@1e1
    move-object/from16 v0, p3

    #@1e3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e6
    .line 200
    const/4 v4, 0x1

    #@1e7
    move-object/from16 v0, v35

    #@1e9
    move-object/from16 v1, p3

    #@1eb
    invoke-virtual {v0, v1, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1ee
    .line 205
    :goto_8
    const/4 v4, 0x1

    #@1ef
    return v4

    #@1f0
    .line 203
    :cond_8
    const/4 v4, 0x0

    #@1f1
    move-object/from16 v0, p3

    #@1f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f6
    goto :goto_8

    #@1f7
    .line 209
    .end local v5    # "_arg0":I
    .end local v35    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    :sswitch_9
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@1fa
    move-object/from16 v0, p2

    #@1fc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ff
    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindows()Ljava/util/List;

    #@202
    move-result-object v36

    #@203
    .line 211
    .local v36, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@206
    .line 212
    move-object/from16 v0, p3

    #@208
    move-object/from16 v1, v36

    #@20a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@20d
    .line 213
    const/4 v4, 0x1

    #@20e
    return v4

    #@20f
    .line 217
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :sswitch_a
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@212
    move-object/from16 v0, p2

    #@214
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@217
    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@21a
    move-result-object v34

    #@21b
    .line 219
    .local v34, "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21e
    .line 220
    if-eqz v34, :cond_9

    #@220
    .line 221
    const/4 v4, 0x1

    #@221
    move-object/from16 v0, p3

    #@223
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@226
    .line 222
    const/4 v4, 0x1

    #@227
    move-object/from16 v0, v34

    #@229
    move-object/from16 v1, p3

    #@22b
    invoke-virtual {v0, v1, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@22e
    .line 227
    :goto_9
    const/4 v4, 0x1

    #@22f
    return v4

    #@230
    .line 225
    :cond_9
    const/4 v4, 0x0

    #@231
    move-object/from16 v0, p3

    #@233
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@236
    goto :goto_9

    #@237
    .line 231
    .end local v34    # "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_b
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@23a
    move-object/from16 v0, p2

    #@23c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23f
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@242
    move-result v5

    #@243
    .line 234
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@245
    invoke-virtual {v0, v5}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performGlobalAction(I)Z

    #@248
    move-result v37

    #@249
    .line 235
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24c
    .line 236
    if-eqz v37, :cond_a

    #@24e
    const/4 v4, 0x1

    #@24f
    :goto_a
    move-object/from16 v0, p3

    #@251
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@254
    .line 237
    const/4 v4, 0x1

    #@255
    return v4

    #@256
    .line 236
    :cond_a
    const/4 v4, 0x0

    #@257
    goto :goto_a

    #@258
    .line 241
    .end local v5    # "_arg0":I
    .end local v37    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.accessibilityservice.IAccessibilityServiceConnection"

    #@25b
    move-object/from16 v0, p2

    #@25d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@260
    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@263
    move-result v4

    #@264
    if-eqz v4, :cond_b

    #@266
    const/16 v32, 0x1

    #@268
    .line 245
    .local v32, "_arg0":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26b
    move-result v33

    #@26c
    .line 246
    .local v33, "_arg1":I
    move-object/from16 v0, p0

    #@26e
    move/from16 v1, v32

    #@270
    move/from16 v2, v33

    #@272
    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setOnKeyEventResult(ZI)V

    #@275
    .line 247
    const/4 v4, 0x1

    #@276
    return v4

    #@277
    .line 243
    .end local v32    # "_arg0":Z
    .end local v33    # "_arg1":I
    :cond_b
    const/16 v32, 0x0

    #@279
    .restart local v32    # "_arg0":Z
    goto :goto_b

    #@27a
    .line 43
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
