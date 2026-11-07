.class public abstract Lcom/android/internal/view/inline/IInlineContentProvider$Stub;
.super Landroid/os/Binder;
.source "IInlineContentProvider.java"

# interfaces
.implements Lcom/android/internal/view/inline/IInlineContentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/inline/IInlineContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/inline/IInlineContentProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSurfacePackageReleased:I = 0x3

.field static final blacklist TRANSACTION_provideContent:I = 0x1

.field static final blacklist TRANSACTION_requestSurfacePackage:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.view.inline.IInlineContentProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/inline/IInlineContentProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "com.android.internal.view.inline.IInlineContentProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/inline/IInlineContentProvider;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/inline/IInlineContentProvider;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lcom/android/internal/view/inline/IInlineContentProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_10

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 76
    :pswitch_5
    const-string v0, "onSurfacePackageReleased"

    return-object v0

    .line 72
    :pswitch_8
    const-string/jumbo v0, "requestSurfacePackage"

    return-object v0

    .line 68
    :pswitch_c
    const-string/jumbo v0, "provideContent"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 188
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 87
    invoke-static {p1}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 91
    const-string v0, "com.android.internal.view.inline.IInlineContentProvider"

    .line 92
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 99
    :cond_16
    packed-switch p1, :pswitch_data_3e

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->onSurfacePackageReleased()V

    .line 121
    goto :goto_3d

    .line 115
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->requestSurfacePackage()V

    .line 116
    goto :goto_3d

    .line 104
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/inline/IInlineContentCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/inline/IInlineContentCallback;

    move-result-object v4

    .line 109
    .local v4, "_arg2":Lcom/android/internal/view/inline/IInlineContentCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V

    .line 111
    nop

    .line 128
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/internal/view/inline/IInlineContentCallback;
    :goto_3d
    return v1

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
