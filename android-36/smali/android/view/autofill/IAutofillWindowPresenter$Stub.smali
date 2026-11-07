.class public abstract Landroid/view/autofill/IAutofillWindowPresenter$Stub;
.super Landroid/os/Binder;
.source "IAutofillWindowPresenter.java"

# interfaces
.implements Landroid/view/autofill/IAutofillWindowPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutofillWindowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutofillWindowPresenter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutofillWindowPresenter"

.field static final greylist-max-o TRANSACTION_hide:I = 0x2

.field static final greylist-max-o TRANSACTION_show:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.view.autofill.IAutofillWindowPresenter"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "android.view.autofill.IAutofillWindowPresenter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/autofill/IAutofillWindowPresenter;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/view/autofill/IAutofillWindowPresenter;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Landroid/view/autofill/IAutofillWindowPresenter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_c

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_5
    const-string v0, "hide"

    return-object v0

    .line 67
    :pswitch_8
    const-string/jumbo v0, "show"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 82
    invoke-static {p1}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const-string v0, "android.view.autofill.IAutofillWindowPresenter"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 91
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 94
    :cond_16
    packed-switch p1, :pswitch_data_4e

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 113
    :pswitch_1e
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 114
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->hide(Landroid/graphics/Rect;)V

    .line 116
    goto :goto_4c

    .line 99
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_2d
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 101
    .local v2, "_arg0":Landroid/view/WindowManager$LayoutParams;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 103
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 105
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    .line 108
    nop

    .line 123
    .end local v2    # "_arg0":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    :goto_4c
    return v1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
