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
    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .locals 8
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
    const/4 v7, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v6

    #@8
    return v6

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceClient"

    #@c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v7

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceClient"

    #@13
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v6

    #@1a
    invoke-static {v6}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@1d
    move-result-object v1

    #@1e
    .line 56
    .local v1, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v4

    #@22
    .line 58
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25
    move-result-object v5

    #@26
    .line 59
    .local v5, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    #@29
    .line 60
    return v7

    #@2a
    .line 64
    .end local v1    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/os/IBinder;
    :sswitch_2
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceClient"

    #@2d
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_0

    #@36
    .line 67
    sget-object v6, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    #@3e
    .line 72
    :goto_0
    invoke-virtual {p0, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@41
    .line 73
    return v7

    #@42
    .line 70
    :cond_0
    const/4 v3, 0x0

    #@43
    .local v3, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_0

    #@44
    .line 77
    .end local v3    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_3
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceClient"

    #@47
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 78
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onInterrupt()V

    #@4d
    .line 79
    return v7

    #@4e
    .line 83
    :sswitch_4
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceClient"

    #@51
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    .line 86
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onGesture(I)V

    #@5b
    .line 87
    return v7

    #@5c
    .line 91
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceClient"

    #@5f
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62
    .line 92
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->clearAccessibilityCache()V

    #@65
    .line 93
    return v7

    #@66
    .line 97
    :sswitch_6
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceClient"

    #@69
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v6

    #@70
    if-eqz v6, :cond_1

    #@72
    .line 100
    sget-object v6, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@74
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@77
    move-result-object v2

    #@78
    check-cast v2, Landroid/view/KeyEvent;

    #@7a
    .line 106
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v4

    #@7e
    .line 107
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@81
    .line 108
    return v7

    #@82
    .line 103
    .end local v4    # "_arg1":I
    :cond_1
    const/4 v2, 0x0

    #@83
    .local v2, "_arg0":Landroid/view/KeyEvent;
    goto :goto_1

    #@84
    .line 43
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
