.class public abstract Landroid/service/autofill/IInlineSuggestionUi$Stub;
.super Landroid/os/Binder;
.source "IInlineSuggestionUi.java"

# interfaces
.implements Landroid/service/autofill/IInlineSuggestionUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IInlineSuggestionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IInlineSuggestionUi$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getSurfacePackage:I = 0x1

.field static final blacklist TRANSACTION_releaseSurfaceControlViewHost:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.service.autofill.IInlineSuggestionUi"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/IInlineSuggestionUi$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionUi;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.service.autofill.IInlineSuggestionUi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/autofill/IInlineSuggestionUi;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/service/autofill/IInlineSuggestionUi;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/service/autofill/IInlineSuggestionUi$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/IInlineSuggestionUi$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_e

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 70
    :pswitch_5
    const-string/jumbo v0, "releaseSurfaceControlViewHost"

    return-object v0

    .line 66
    :pswitch_9
    const-string/jumbo v0, "getSurfacePackage"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 81
    invoke-static {p1}, Landroid/service/autofill/IInlineSuggestionUi$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const-string v0, "android.service.autofill.IInlineSuggestionUi"

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 93
    :cond_16
    packed-switch p1, :pswitch_data_32

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 105
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/autofill/IInlineSuggestionUi$Stub;->releaseSurfaceControlViewHost()V

    .line 106
    goto :goto_31

    .line 98
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/autofill/ISurfacePackageResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/ISurfacePackageResultCallback;

    move-result-object v2

    .line 99
    .local v2, "_arg0":Landroid/service/autofill/ISurfacePackageResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2}, Landroid/service/autofill/IInlineSuggestionUi$Stub;->getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V

    .line 101
    nop

    .line 113
    .end local v2    # "_arg0":Landroid/service/autofill/ISurfacePackageResultCallback;
    :goto_31
    return v1

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
