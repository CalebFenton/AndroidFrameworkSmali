.class public abstract Landroid/view/IDisplayWindowInsetsController$Stub;
.super Landroid/os/Binder;
.source "IDisplayWindowInsetsController.java"

# interfaces
.implements Landroid/view/IDisplayWindowInsetsController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayWindowInsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_hideInsets:I = 0x5

.field static final blacklist TRANSACTION_insetsChanged:I = 0x2

.field static final blacklist TRANSACTION_insetsControlChanged:I = 0x3

.field static final blacklist TRANSACTION_setImeInputTargetRequestedVisibility:I = 0x6

.field static final blacklist TRANSACTION_showInsets:I = 0x4

.field static final blacklist TRANSACTION_topFocusedWindowChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.view.IDisplayWindowInsetsController"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDisplayWindowInsetsController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "android.view.IDisplayWindowInsetsController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IDisplayWindowInsetsController;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/view/IDisplayWindowInsetsController;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_1a

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 112
    :pswitch_5
    const-string/jumbo v0, "setImeInputTargetRequestedVisibility"

    return-object v0

    .line 108
    :pswitch_9
    const-string v0, "hideInsets"

    return-object v0

    .line 104
    :pswitch_c
    const-string/jumbo v0, "showInsets"

    return-object v0

    .line 100
    :pswitch_10
    const-string v0, "insetsControlChanged"

    return-object v0

    .line 96
    :pswitch_13
    const-string v0, "insetsChanged"

    return-object v0

    .line 92
    :pswitch_16
    const-string/jumbo v0, "topFocusedWindowChanged"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 324
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 123
    invoke-static {p1}, Landroid/view/IDisplayWindowInsetsController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 127
    const-string v0, "android.view.IDisplayWindowInsetsController"

    .line 128
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 135
    :cond_16
    packed-switch p1, :pswitch_data_9a

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 192
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 194
    .local v2, "_arg0":Z
    sget-object v3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 195
    .local v3, "_arg1":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 197
    goto :goto_98

    .line 180
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 184
    .local v3, "_arg1":Z
    sget-object v4, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/ImeTracker$Token;

    .line 185
    .local v4, "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IDisplayWindowInsetsController$Stub;->hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 187
    goto :goto_98

    .line 168
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 172
    .restart local v3    # "_arg1":Z
    sget-object v4, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/ImeTracker$Token;

    .line 173
    .restart local v4    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IDisplayWindowInsetsController$Stub;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 175
    goto :goto_98

    .line 158
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_5f
    sget-object v2, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsState;

    .line 160
    .local v2, "_arg0":Landroid/view/InsetsState;
    sget-object v3, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/InsetsSourceControl;

    .line 161
    .local v3, "_arg1":[Landroid/view/InsetsSourceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    .line 163
    goto :goto_98

    .line 150
    .end local v2    # "_arg0":Landroid/view/InsetsState;
    .end local v3    # "_arg1":[Landroid/view/InsetsSourceControl;
    :pswitch_76
    sget-object v2, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsState;

    .line 151
    .restart local v2    # "_arg0":Landroid/view/InsetsState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Landroid/view/IDisplayWindowInsetsController$Stub;->insetsChanged(Landroid/view/InsetsState;)V

    .line 153
    goto :goto_98

    .line 140
    .end local v2    # "_arg0":Landroid/view/InsetsState;
    :pswitch_85
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 142
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 143
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->topFocusedWindowChanged(Landroid/content/ComponentName;I)V

    .line 145
    nop

    .line 204
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :goto_98
    return v1

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_85
        :pswitch_76
        :pswitch_5f
        :pswitch_48
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
