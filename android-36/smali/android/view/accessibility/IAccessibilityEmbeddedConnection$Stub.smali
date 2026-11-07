.class public abstract Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityEmbeddedConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityEmbeddedConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_associateEmbeddedHierarchy:I = 0x1

.field static final blacklist TRANSACTION_disassociateEmbeddedHierarchy:I = 0x2

.field static final blacklist TRANSACTION_setWindowMatrix:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.view.accessibility.IAccessibilityEmbeddedConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.view.accessibility.IAccessibilityEmbeddedConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_10

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 79
    :pswitch_5
    const-string/jumbo v0, "setWindowMatrix"

    return-object v0

    .line 75
    :pswitch_9
    const-string v0, "disassociateEmbeddedHierarchy"

    return-object v0

    .line 71
    :pswitch_c
    const-string v0, "associateEmbeddedHierarchy"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 204
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 90
    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const-string v0, "android.view.accessibility.IAccessibilityEmbeddedConnection"

    .line 95
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 102
    :cond_16
    packed-switch p1, :pswitch_data_48

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 125
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 126
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;->setWindowMatrix([F)V

    .line 128
    goto :goto_46

    .line 118
    .end local v2    # "_arg0":[F
    :pswitch_29
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;->disassociateEmbeddedHierarchy()V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    goto :goto_46

    .line 107
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 109
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;->associateEmbeddedHierarchy(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object v4

    .line 112
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 114
    nop

    .line 135
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/IBinder;
    :goto_46
    return v1

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_30
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
