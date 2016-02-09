.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final TRANSACTION_addAccessibilityInteractionConnection:I = 0x6

.field static final TRANSACTION_addClient:I = 0x1

.field static final TRANSACTION_getEnabledAccessibilityServiceList:I = 0x4

.field static final TRANSACTION_getInstalledAccessibilityServiceList:I = 0x3

.field static final TRANSACTION_getWindowToken:I = 0xb

.field static final TRANSACTION_interrupt:I = 0x5

.field static final TRANSACTION_registerUiTestAutomationService:I = 0x8

.field static final TRANSACTION_removeAccessibilityInteractionConnection:I = 0x7

.field static final TRANSACTION_sendAccessibilityEvent:I = 0x2

.field static final TRANSACTION_temporaryEnableAccessibilityStateUntilKeyguardRemoved:I = 0xa

.field static final TRANSACTION_unregisterUiTestAutomationService:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.view.accessibility.IAccessibilityManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
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
    const-string/jumbo v1, "android.view.accessibility.IAccessibilityManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/view/accessibility/IAccessibilityManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 20
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
    .line 188
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v19

    #@7
    return v19

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v19

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 49
    const/16 v19, 0x1

    #@14
    return v19

    #@15
    .line 53
    :sswitch_1
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v19

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22
    move-result-object v19

    #@23
    invoke-static/range {v19 .. v19}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    #@26
    move-result-object v8

    #@27
    .line 57
    .local v8, "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v9

    #@2b
    .line 58
    .local v9, "_arg1":I
    move-object/from16 v0, p0

    #@2d
    invoke-virtual {v0, v8, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    #@30
    move-result v15

    #@31
    .line 59
    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34
    .line 60
    move-object/from16 v0, p3

    #@36
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 61
    const/16 v19, 0x1

    #@3b
    return v19

    #@3c
    .line 65
    .end local v8    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v9    # "_arg1":I
    .end local v15    # "_result":I
    :sswitch_2
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@3f
    move-object/from16 v0, p2

    #@41
    move-object/from16 v1, v19

    #@43
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v19

    #@4a
    if-eqz v19, :cond_0

    #@4c
    .line 68
    sget-object v19, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    move-object/from16 v0, v19

    #@50
    move-object/from16 v1, p2

    #@52
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@55
    move-result-object v7

    #@56
    check-cast v7, Landroid/view/accessibility/AccessibilityEvent;

    #@58
    .line 74
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v9

    #@5c
    .line 75
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    #@5e
    invoke-virtual {v0, v7, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    #@61
    move-result v18

    #@62
    .line 76
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@65
    .line 77
    if-eqz v18, :cond_1

    #@67
    const/16 v19, 0x1

    #@69
    :goto_1
    move-object/from16 v0, p3

    #@6b
    move/from16 v1, v19

    #@6d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@70
    .line 78
    const/16 v19, 0x1

    #@72
    return v19

    #@73
    .line 71
    .end local v9    # "_arg1":I
    .end local v18    # "_result":Z
    :cond_0
    const/4 v7, 0x0

    #@74
    .local v7, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_0

    #@75
    .line 77
    .end local v7    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v9    # "_arg1":I
    .restart local v18    # "_result":Z
    :cond_1
    const/16 v19, 0x0

    #@77
    goto :goto_1

    #@78
    .line 82
    .end local v9    # "_arg1":I
    .end local v18    # "_result":Z
    :sswitch_3
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@7b
    move-object/from16 v0, p2

    #@7d
    move-object/from16 v1, v19

    #@7f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82
    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@85
    move-result v2

    #@86
    .line 85
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    #@88
    invoke-virtual {v0, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    #@8b
    move-result-object v17

    #@8c
    .line 86
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f
    .line 87
    move-object/from16 v0, p3

    #@91
    move-object/from16 v1, v17

    #@93
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@96
    .line 88
    const/16 v19, 0x1

    #@98
    return v19

    #@99
    .line 92
    .end local v2    # "_arg0":I
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_4
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@9c
    move-object/from16 v0, p2

    #@9e
    move-object/from16 v1, v19

    #@a0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a3
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a6
    move-result v2

    #@a7
    .line 96
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v9

    #@ab
    .line 97
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    #@ad
    invoke-virtual {v0, v2, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    #@b0
    move-result-object v17

    #@b1
    .line 98
    .restart local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b4
    .line 99
    move-object/from16 v0, p3

    #@b6
    move-object/from16 v1, v17

    #@b8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@bb
    .line 100
    const/16 v19, 0x1

    #@bd
    return v19

    #@be
    .line 104
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_5
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@c1
    move-object/from16 v0, p2

    #@c3
    move-object/from16 v1, v19

    #@c5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cb
    move-result v2

    #@cc
    .line 107
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@ce
    invoke-virtual {v0, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    #@d1
    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d4
    .line 109
    const/16 v19, 0x1

    #@d6
    return v19

    #@d7
    .line 113
    .end local v2    # "_arg0":I
    :sswitch_6
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@da
    move-object/from16 v0, p2

    #@dc
    move-object/from16 v1, v19

    #@de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e4
    move-result-object v19

    #@e5
    invoke-static/range {v19 .. v19}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@e8
    move-result-object v6

    #@e9
    .line 117
    .local v6, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ec
    move-result-object v19

    #@ed
    invoke-static/range {v19 .. v19}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    #@f0
    move-result-object v11

    #@f1
    .line 119
    .local v11, "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f4
    move-result v13

    #@f5
    .line 120
    .local v13, "_arg2":I
    move-object/from16 v0, p0

    #@f7
    invoke-virtual {v0, v6, v11, v13}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I

    #@fa
    move-result v15

    #@fb
    .line 121
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fe
    .line 122
    move-object/from16 v0, p3

    #@100
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@103
    .line 123
    const/16 v19, 0x1

    #@105
    return v19

    #@106
    .line 127
    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v11    # "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v13    # "_arg2":I
    .end local v15    # "_result":I
    :sswitch_7
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@109
    move-object/from16 v0, p2

    #@10b
    move-object/from16 v1, v19

    #@10d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@110
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@113
    move-result-object v19

    #@114
    invoke-static/range {v19 .. v19}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@117
    move-result-object v6

    #@118
    .line 130
    .restart local v6    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@11a
    invoke-virtual {v0, v6}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    #@11d
    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@120
    .line 132
    const/16 v19, 0x1

    #@122
    return v19

    #@123
    .line 136
    .end local v6    # "_arg0":Landroid/view/IWindow;
    :sswitch_8
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@126
    move-object/from16 v0, p2

    #@128
    move-object/from16 v1, v19

    #@12a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12d
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@130
    move-result-object v5

    #@131
    .line 140
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@134
    move-result-object v19

    #@135
    invoke-static/range {v19 .. v19}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@138
    move-result-object v10

    #@139
    .line 142
    .local v10, "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v19

    #@13d
    if-eqz v19, :cond_2

    #@13f
    .line 143
    sget-object v19, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@141
    move-object/from16 v0, v19

    #@143
    move-object/from16 v1, p2

    #@145
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@148
    move-result-object v14

    #@149
    check-cast v14, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@14b
    .line 148
    :goto_2
    move-object/from16 v0, p0

    #@14d
    invoke-virtual {v0, v5, v10, v14}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@150
    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@153
    .line 150
    const/16 v19, 0x1

    #@155
    return v19

    #@156
    .line 146
    :cond_2
    const/4 v14, 0x0

    #@157
    .local v14, "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_2

    #@158
    .line 154
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v14    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_9
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@15b
    move-object/from16 v0, p2

    #@15d
    move-object/from16 v1, v19

    #@15f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@162
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@165
    move-result-object v19

    #@166
    invoke-static/range {v19 .. v19}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@169
    move-result-object v3

    #@16a
    .line 157
    .local v3, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    move-object/from16 v0, p0

    #@16c
    invoke-virtual {v0, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    #@16f
    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@172
    .line 159
    const/16 v19, 0x1

    #@174
    return v19

    #@175
    .line 163
    .end local v3    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :sswitch_a
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@178
    move-object/from16 v0, p2

    #@17a
    move-object/from16 v1, v19

    #@17c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@182
    move-result v19

    #@183
    if-eqz v19, :cond_3

    #@185
    .line 166
    sget-object v19, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@187
    move-object/from16 v0, v19

    #@189
    move-object/from16 v1, p2

    #@18b
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18e
    move-result-object v4

    #@18f
    check-cast v4, Landroid/content/ComponentName;

    #@191
    .line 172
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@194
    move-result v19

    #@195
    if-eqz v19, :cond_4

    #@197
    const/4 v12, 0x1

    #@198
    .line 173
    .local v12, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    #@19a
    invoke-virtual {v0, v4, v12}, Landroid/view/accessibility/IAccessibilityManager$Stub;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    #@19d
    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a0
    .line 175
    const/16 v19, 0x1

    #@1a2
    return v19

    #@1a3
    .line 169
    .end local v12    # "_arg1":Z
    :cond_3
    const/4 v4, 0x0

    #@1a4
    .local v4, "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    #@1a5
    .line 172
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :cond_4
    const/4 v12, 0x0

    #@1a6
    .restart local v12    # "_arg1":Z
    goto :goto_4

    #@1a7
    .line 179
    .end local v12    # "_arg1":Z
    :sswitch_b
    const-string/jumbo v19, "android.view.accessibility.IAccessibilityManager"

    #@1aa
    move-object/from16 v0, p2

    #@1ac
    move-object/from16 v1, v19

    #@1ae
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b1
    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b4
    move-result v2

    #@1b5
    .line 182
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@1b7
    invoke-virtual {v0, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(I)Landroid/os/IBinder;

    #@1ba
    move-result-object v16

    #@1bb
    .line 183
    .local v16, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1be
    .line 184
    move-object/from16 v0, p3

    #@1c0
    move-object/from16 v1, v16

    #@1c2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1c5
    .line 185
    const/16 v19, 0x1

    #@1c7
    return v19

    #@1c8
    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
