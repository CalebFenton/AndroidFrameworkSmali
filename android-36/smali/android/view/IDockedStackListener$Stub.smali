.class public abstract Landroid/view/IDockedStackListener$Stub;
.super Landroid/os/Binder;
.source "IDockedStackListener.java"

# interfaces
.implements Landroid/view/IDockedStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDockedStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDockedStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IDockedStackListener"

.field static final greylist-max-o TRANSACTION_onAdjustedForImeChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onDividerVisibilityChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onDockSideChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onDockedStackExistsChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onDockedStackMinimizedChanged:I = 0x3


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.view.IDockedStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDockedStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "android.view.IDockedStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IDockedStackListener;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/view/IDockedStackListener;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Landroid/view/IDockedStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IDockedStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_14

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 111
    :pswitch_5
    const-string v0, "onDockSideChanged"

    return-object v0

    .line 107
    :pswitch_8
    const-string v0, "onAdjustedForImeChanged"

    return-object v0

    .line 103
    :pswitch_b
    const-string v0, "onDockedStackMinimizedChanged"

    return-object v0

    .line 99
    :pswitch_e
    const-string v0, "onDockedStackExistsChanged"

    return-object v0

    .line 95
    :pswitch_11
    const-string v0, "onDividerVisibilityChanged"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 297
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 122
    invoke-static {p1}, Landroid/view/IDockedStackListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 126
    const-string v0, "android.view.IDockedStackListener"

    .line 127
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v1

    .line 134
    :cond_16
    packed-switch p1, :pswitch_data_62

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 177
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Landroid/view/IDockedStackListener$Stub;->onDockSideChanged(I)V

    .line 180
    goto :goto_61

    .line 167
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 169
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 170
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IDockedStackListener$Stub;->onAdjustedForImeChanged(ZJ)V

    .line 172
    goto :goto_61

    .line 155
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":J
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 157
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 159
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 160
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IDockedStackListener$Stub;->onDockedStackMinimizedChanged(ZJZ)V

    .line 162
    goto :goto_61

    .line 147
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Z
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 148
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/view/IDockedStackListener$Stub;->onDockedStackExistsChanged(Z)V

    .line 150
    goto :goto_61

    .line 139
    .end local v2    # "_arg0":Z
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 140
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/view/IDockedStackListener$Stub;->onDividerVisibilityChanged(Z)V

    .line 142
    nop

    .line 187
    .end local v2    # "_arg0":Z
    :goto_61
    return v1

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_56
        :pswitch_4b
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
