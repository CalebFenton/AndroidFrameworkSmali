.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnectionCallback.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

.field static final TRANSACTION_setFindAccessibilityNodeInfoResult:I = 0x1

.field static final TRANSACTION_setFindAccessibilityNodeInfosResult:I = 0x2

.field static final TRANSACTION_setPerformAccessibilityActionResult:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
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
    const-string/jumbo v1, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x1

    #@1
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v5

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 56
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@24
    .line 62
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v3

    #@28
    .line 63
    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    #@2b
    .line 64
    return v5

    #@2c
    .line 59
    .end local v3    # "_arg1":I
    :cond_0
    const/4 v0, 0x0

    #@2d
    .local v0, "_arg0":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    #@2e
    .line 68
    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityNodeInfo;
    :sswitch_2
    const-string/jumbo v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    #@31
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 70
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@39
    move-result-object v1

    #@3a
    .line 72
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v3

    #@3e
    .line 73
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    #@41
    .line 74
    return v5

    #@42
    .line 78
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "_arg1":I
    :sswitch_3
    const-string/jumbo v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    #@45
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_1

    #@4e
    const/4 v2, 0x1

    #@4f
    .line 82
    .local v2, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v3

    #@53
    .line 83
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setPerformAccessibilityActionResult(ZI)V

    #@56
    .line 84
    return v5

    #@57
    .line 80
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :cond_1
    const/4 v2, 0x0

    #@58
    .restart local v2    # "_arg0":Z
    goto :goto_1

    #@59
    .line 44
    nop

    #@5a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
