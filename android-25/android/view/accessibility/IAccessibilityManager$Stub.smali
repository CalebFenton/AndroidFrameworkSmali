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

.field static final TRANSACTION_disableAccessibilityService:I = 0xd

.field static final TRANSACTION_enableAccessibilityService:I = 0xc

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
    .locals 21
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
    .line 224
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v20

    #@7
    return v20

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v20

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 49
    const/16 v20, 0x1

    #@14
    return v20

    #@15
    .line 53
    :sswitch_1
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v20

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22
    move-result-object v20

    #@23
    invoke-static/range {v20 .. v20}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

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
    move-result v16

    #@31
    .line 59
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34
    .line 60
    move-object/from16 v0, p3

    #@36
    move/from16 v1, v16

    #@38
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 61
    const/16 v20, 0x1

    #@3d
    return v20

    #@3e
    .line 65
    .end local v8    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v9    # "_arg1":I
    .end local v16    # "_result":I
    :sswitch_2
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@41
    move-object/from16 v0, p2

    #@43
    move-object/from16 v1, v20

    #@45
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v20

    #@4c
    if-eqz v20, :cond_0

    #@4e
    .line 68
    sget-object v20, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@50
    move-object/from16 v0, v20

    #@52
    move-object/from16 v1, p2

    #@54
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@57
    move-result-object v7

    #@58
    check-cast v7, Landroid/view/accessibility/AccessibilityEvent;

    #@5a
    .line 74
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v9

    #@5e
    .line 75
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    #@60
    invoke-virtual {v0, v7, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    #@63
    move-result v19

    #@64
    .line 76
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    .line 77
    if-eqz v19, :cond_1

    #@69
    const/16 v20, 0x1

    #@6b
    :goto_1
    move-object/from16 v0, p3

    #@6d
    move/from16 v1, v20

    #@6f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    .line 78
    const/16 v20, 0x1

    #@74
    return v20

    #@75
    .line 71
    .end local v9    # "_arg1":I
    .end local v19    # "_result":Z
    :cond_0
    const/4 v7, 0x0

    #@76
    .local v7, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_0

    #@77
    .line 77
    .end local v7    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v9    # "_arg1":I
    .restart local v19    # "_result":Z
    :cond_1
    const/16 v20, 0x0

    #@79
    goto :goto_1

    #@7a
    .line 82
    .end local v9    # "_arg1":I
    .end local v19    # "_result":Z
    :sswitch_3
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@7d
    move-object/from16 v0, p2

    #@7f
    move-object/from16 v1, v20

    #@81
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84
    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v2

    #@88
    .line 85
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    #@8a
    invoke-virtual {v0, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    #@8d
    move-result-object v18

    #@8e
    .line 86
    .local v18, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91
    .line 87
    move-object/from16 v0, p3

    #@93
    move-object/from16 v1, v18

    #@95
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@98
    .line 88
    const/16 v20, 0x1

    #@9a
    return v20

    #@9b
    .line 92
    .end local v2    # "_arg0":I
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_4
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@9e
    move-object/from16 v0, p2

    #@a0
    move-object/from16 v1, v20

    #@a2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a5
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a8
    move-result v2

    #@a9
    .line 96
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ac
    move-result v9

    #@ad
    .line 97
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    #@af
    invoke-virtual {v0, v2, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    #@b2
    move-result-object v18

    #@b3
    .line 98
    .restart local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    .line 99
    move-object/from16 v0, p3

    #@b8
    move-object/from16 v1, v18

    #@ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@bd
    .line 100
    const/16 v20, 0x1

    #@bf
    return v20

    #@c0
    .line 104
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_5
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@c3
    move-object/from16 v0, p2

    #@c5
    move-object/from16 v1, v20

    #@c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cd
    move-result v2

    #@ce
    .line 107
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@d0
    invoke-virtual {v0, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    #@d3
    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6
    .line 109
    const/16 v20, 0x1

    #@d8
    return v20

    #@d9
    .line 113
    .end local v2    # "_arg0":I
    :sswitch_6
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@dc
    move-object/from16 v0, p2

    #@de
    move-object/from16 v1, v20

    #@e0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e6
    move-result-object v20

    #@e7
    invoke-static/range {v20 .. v20}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@ea
    move-result-object v6

    #@eb
    .line 117
    .local v6, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ee
    move-result-object v20

    #@ef
    invoke-static/range {v20 .. v20}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    #@f2
    move-result-object v11

    #@f3
    .line 119
    .local v11, "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f6
    move-result v13

    #@f7
    .line 120
    .local v13, "_arg2":I
    move-object/from16 v0, p0

    #@f9
    invoke-virtual {v0, v6, v11, v13}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I

    #@fc
    move-result v16

    #@fd
    .line 121
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@100
    .line 122
    move-object/from16 v0, p3

    #@102
    move/from16 v1, v16

    #@104
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@107
    .line 123
    const/16 v20, 0x1

    #@109
    return v20

    #@10a
    .line 127
    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v11    # "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v13    # "_arg2":I
    .end local v16    # "_result":I
    :sswitch_7
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@10d
    move-object/from16 v0, p2

    #@10f
    move-object/from16 v1, v20

    #@111
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@114
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@117
    move-result-object v20

    #@118
    invoke-static/range {v20 .. v20}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    #@11b
    move-result-object v6

    #@11c
    .line 130
    .restart local v6    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    #@11e
    invoke-virtual {v0, v6}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    #@121
    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@124
    .line 132
    const/16 v20, 0x1

    #@126
    return v20

    #@127
    .line 136
    .end local v6    # "_arg0":Landroid/view/IWindow;
    :sswitch_8
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@12a
    move-object/from16 v0, p2

    #@12c
    move-object/from16 v1, v20

    #@12e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@131
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@134
    move-result-object v5

    #@135
    .line 140
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@138
    move-result-object v20

    #@139
    invoke-static/range {v20 .. v20}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@13c
    move-result-object v10

    #@13d
    .line 142
    .local v10, "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@140
    move-result v20

    #@141
    if-eqz v20, :cond_2

    #@143
    .line 143
    sget-object v20, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@145
    move-object/from16 v0, v20

    #@147
    move-object/from16 v1, p2

    #@149
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14c
    move-result-object v14

    #@14d
    check-cast v14, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@14f
    .line 149
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@152
    move-result v15

    #@153
    .line 150
    .local v15, "_arg3":I
    move-object/from16 v0, p0

    #@155
    invoke-virtual {v0, v5, v10, v14, v15}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V

    #@158
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15b
    .line 152
    const/16 v20, 0x1

    #@15d
    return v20

    #@15e
    .line 146
    .end local v15    # "_arg3":I
    :cond_2
    const/4 v14, 0x0

    #@15f
    .local v14, "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_2

    #@160
    .line 156
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v14    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_9
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@163
    move-object/from16 v0, p2

    #@165
    move-object/from16 v1, v20

    #@167
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16a
    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@16d
    move-result-object v20

    #@16e
    invoke-static/range {v20 .. v20}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@171
    move-result-object v3

    #@172
    .line 159
    .local v3, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    move-object/from16 v0, p0

    #@174
    invoke-virtual {v0, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    #@177
    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17a
    .line 161
    const/16 v20, 0x1

    #@17c
    return v20

    #@17d
    .line 165
    .end local v3    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :sswitch_a
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@180
    move-object/from16 v0, p2

    #@182
    move-object/from16 v1, v20

    #@184
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@187
    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18a
    move-result v20

    #@18b
    if-eqz v20, :cond_3

    #@18d
    .line 168
    sget-object v20, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18f
    move-object/from16 v0, v20

    #@191
    move-object/from16 v1, p2

    #@193
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@196
    move-result-object v4

    #@197
    check-cast v4, Landroid/content/ComponentName;

    #@199
    .line 174
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19c
    move-result v20

    #@19d
    if-eqz v20, :cond_4

    #@19f
    const/4 v12, 0x1

    #@1a0
    .line 175
    .local v12, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    #@1a2
    invoke-virtual {v0, v4, v12}, Landroid/view/accessibility/IAccessibilityManager$Stub;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    #@1a5
    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a8
    .line 177
    const/16 v20, 0x1

    #@1aa
    return v20

    #@1ab
    .line 171
    .end local v12    # "_arg1":Z
    :cond_3
    const/4 v4, 0x0

    #@1ac
    .local v4, "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    #@1ad
    .line 174
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :cond_4
    const/4 v12, 0x0

    #@1ae
    goto :goto_4

    #@1af
    .line 181
    :sswitch_b
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@1b2
    move-object/from16 v0, p2

    #@1b4
    move-object/from16 v1, v20

    #@1b6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b9
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bc
    move-result v2

    #@1bd
    .line 185
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c0
    move-result v9

    #@1c1
    .line 186
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    #@1c3
    invoke-virtual {v0, v2, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(II)Landroid/os/IBinder;

    #@1c6
    move-result-object v17

    #@1c7
    .line 187
    .local v17, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ca
    .line 188
    move-object/from16 v0, p3

    #@1cc
    move-object/from16 v1, v17

    #@1ce
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1d1
    .line 189
    const/16 v20, 0x1

    #@1d3
    return v20

    #@1d4
    .line 193
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v17    # "_result":Landroid/os/IBinder;
    :sswitch_c
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@1d7
    move-object/from16 v0, p2

    #@1d9
    move-object/from16 v1, v20

    #@1db
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1de
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e1
    move-result v20

    #@1e2
    if-eqz v20, :cond_5

    #@1e4
    .line 196
    sget-object v20, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e6
    move-object/from16 v0, v20

    #@1e8
    move-object/from16 v1, p2

    #@1ea
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ed
    move-result-object v4

    #@1ee
    check-cast v4, Landroid/content/ComponentName;

    #@1f0
    .line 202
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f3
    move-result v9

    #@1f4
    .line 203
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    #@1f6
    invoke-virtual {v0, v4, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->enableAccessibilityService(Landroid/content/ComponentName;I)V

    #@1f9
    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fc
    .line 205
    const/16 v20, 0x1

    #@1fe
    return v20

    #@1ff
    .line 199
    .end local v9    # "_arg1":I
    :cond_5
    const/4 v4, 0x0

    #@200
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    #@201
    .line 209
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d
    const-string/jumbo v20, "android.view.accessibility.IAccessibilityManager"

    #@204
    move-object/from16 v0, p2

    #@206
    move-object/from16 v1, v20

    #@208
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20b
    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20e
    move-result v20

    #@20f
    if-eqz v20, :cond_6

    #@211
    .line 212
    sget-object v20, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@213
    move-object/from16 v0, v20

    #@215
    move-object/from16 v1, p2

    #@217
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21a
    move-result-object v4

    #@21b
    check-cast v4, Landroid/content/ComponentName;

    #@21d
    .line 218
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@220
    move-result v9

    #@221
    .line 219
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    #@223
    invoke-virtual {v0, v4, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->disableAccessibilityService(Landroid/content/ComponentName;I)V

    #@226
    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@229
    .line 221
    const/16 v20, 0x1

    #@22b
    return v20

    #@22c
    .line 215
    .end local v9    # "_arg1":I
    :cond_6
    const/4 v4, 0x0

    #@22d
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    #@22e
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
