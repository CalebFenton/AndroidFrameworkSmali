.class public abstract Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceClient.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceClient"

.field static final TRANSACTION_clearAccessibilityCache:I = 0x5

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_onAccessibilityEvent:I = 0x2

.field static final TRANSACTION_onGesture:I = 0x4

.field static final TRANSACTION_onInterrupt:I = 0x3

.field static final TRANSACTION_onKeyEvent:I = 0x6

.field static final TRANSACTION_onMagnificationChanged:I = 0x7

.field static final TRANSACTION_onPerformGestureResult:I = 0x9

.field static final TRANSACTION_onSoftKeyboardShowModeChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.accessibilityservice.IAccessibilityServiceClient"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;
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
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 148
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 48
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v11

    #@1a
    invoke-static {v11}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@1d
    move-result-object v1

    #@1e
    .line 56
    .local v1, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v6

    #@22
    .line 58
    .local v6, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25
    move-result-object v9

    #@26
    .line 59
    .local v9, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v6, v9}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    #@29
    .line 60
    const/4 v11, 0x1

    #@2a
    return v11

    #@2b
    .line 64
    .end local v1    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6    # "_arg1":I
    .end local v9    # "_arg2":Landroid/os/IBinder;
    :sswitch_2
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    #@2e
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v11

    #@35
    if-eqz v11, :cond_0

    #@37
    .line 67
    sget-object v11, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@39
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Landroid/view/accessibility/AccessibilityEvent;

    #@3f
    .line 72
    :goto_0
    invoke-virtual {p0, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@42
    .line 73
    const/4 v11, 0x1

    #@43
    return v11

    #@44
    .line 70
    :cond_0
    const/4 v4, 0x0

    #@45
    .local v4, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_0

    #@46
    .line 77
    .end local v4    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_3
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    #@49
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    .line 78
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onInterrupt()V

    #@4f
    .line 79
    const/4 v11, 0x1

    #@50
    return v11

    #@51
    .line 83
    :sswitch_4
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    #@54
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57
    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v0

    #@5b
    .line 86
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onGesture(I)V

    #@5e
    .line 87
    const/4 v11, 0x1

    #@5f
    return v11

    #@60
    .line 91
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    #@63
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66
    .line 92
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->clearAccessibilityCache()V

    #@69
    .line 93
    const/4 v11, 0x1

    #@6a
    return v11

    #@6b
    .line 97
    :sswitch_6
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    #@6e
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@71
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@74
    move-result v11

    #@75
    if-eqz v11, :cond_1

    #@77
    .line 100
    sget-object v11, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@79
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7c
    move-result-object v3

    #@7d
    check-cast v3, Landroid/view/KeyEvent;

    #@7f
    .line 106
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@82
    move-result v6

    #@83
    .line 107
    .restart local v6    # "_arg1":I
    invoke-virtual {p0, v3, v6}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@86
    .line 108
    const/4 v11, 0x1

    #@87
    return v11

    #@88
    .line 103
    .end local v6    # "_arg1":I
    :cond_1
    const/4 v3, 0x0

    #@89
    .local v3, "_arg0":Landroid/view/KeyEvent;
    goto :goto_1

    #@8a
    .line 112
    .end local v3    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_7
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    #@8d
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90
    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v11

    #@94
    if-eqz v11, :cond_2

    #@96
    .line 115
    sget-object v11, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@98
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9b
    move-result-object v2

    #@9c
    check-cast v2, Landroid/graphics/Region;

    #@9e
    .line 121
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@a1
    move-result v5

    #@a2
    .line 123
    .local v5, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@a5
    move-result v8

    #@a6
    .line 125
    .local v8, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@a9
    move-result v10

    #@aa
    .line 126
    .local v10, "_arg3":F
    invoke-virtual {p0, v2, v5, v8, v10}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMagnificationChanged(Landroid/graphics/Region;FFF)V

    #@ad
    .line 127
    const/4 v11, 0x1

    #@ae
    return v11

    #@af
    .line 118
    .end local v5    # "_arg1":F
    .end local v8    # "_arg2":F
    .end local v10    # "_arg3":F
    :cond_2
    const/4 v2, 0x0

    #@b0
    .local v2, "_arg0":Landroid/graphics/Region;
    goto :goto_2

    #@b1
    .line 131
    .end local v2    # "_arg0":Landroid/graphics/Region;
    :sswitch_8
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    #@b4
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b7
    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ba
    move-result v0

    #@bb
    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSoftKeyboardShowModeChanged(I)V

    #@be
    .line 135
    const/4 v11, 0x1

    #@bf
    return v11

    #@c0
    .line 139
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string/jumbo v11, "android.accessibilityservice.IAccessibilityServiceClient"

    #@c3
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c6
    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c9
    move-result v0

    #@ca
    .line 143
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@cd
    move-result v11

    #@ce
    if-eqz v11, :cond_3

    #@d0
    const/4 v7, 0x1

    #@d1
    .line 144
    .local v7, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v7}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onPerformGestureResult(IZ)V

    #@d4
    .line 145
    const/4 v11, 0x1

    #@d5
    return v11

    #@d6
    .line 143
    .end local v7    # "_arg1":Z
    :cond_3
    const/4 v7, 0x0

    #@d7
    goto :goto_3

    #@d8
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
