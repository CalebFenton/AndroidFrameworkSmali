.class public abstract Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;
.super Landroid/os/Binder;
.source "IMagnificationConnectionCallback.java"

# interfaces
.implements Landroid/view/accessibility/IMagnificationConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IMagnificationConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IMagnificationConnectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAccessibilityActionPerformed:I = 0x5

.field static final blacklist TRANSACTION_onChangeMagnificationMode:I = 0x2

.field static final blacklist TRANSACTION_onMove:I = 0x6

.field static final blacklist TRANSACTION_onPerformScaleAction:I = 0x4

.field static final blacklist TRANSACTION_onSourceBoundsChanged:I = 0x3

.field static final blacklist TRANSACTION_onWindowMagnifierBoundsChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "android.view.accessibility.IMagnificationConnectionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IMagnificationConnectionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_4
    const-string v0, "android.view.accessibility.IMagnificationConnectionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/accessibility/IMagnificationConnectionCallback;

    if-eqz v1, :cond_14

    .line 101
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IMagnificationConnectionCallback;

    return-object v1

    .line 103
    :cond_14
    new-instance v1, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 112
    packed-switch p0, :pswitch_data_18

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 136
    :pswitch_5
    const-string v0, "onMove"

    return-object v0

    .line 132
    :pswitch_8
    const-string v0, "onAccessibilityActionPerformed"

    return-object v0

    .line 128
    :pswitch_b
    const-string v0, "onPerformScaleAction"

    return-object v0

    .line 124
    :pswitch_e
    const-string v0, "onSourceBoundsChanged"

    return-object v0

    .line 120
    :pswitch_11
    const-string v0, "onChangeMagnificationMode"

    return-object v0

    .line 116
    :pswitch_14
    const-string v0, "onWindowMagnifierBoundsChanged"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
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

    .line 107
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 365
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 147
    invoke-static {p1}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 151
    const-string v0, "android.view.accessibility.IMagnificationConnectionCallback"

    .line 152
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 153
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 156
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v1

    .line 159
    :cond_16
    packed-switch p1, :pswitch_data_7e

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 214
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onMove(I)V

    .line 217
    goto :goto_7c

    .line 206
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onAccessibilityActionPerformed(I)V

    .line 209
    goto :goto_7c

    .line 194
    .end local v2    # "_arg0":I
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 198
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 199
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onPerformScaleAction(IFZ)V

    .line 201
    goto :goto_7c

    .line 184
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":Z
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 187
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onSourceBoundsChanged(ILandroid/graphics/Rect;)V

    .line 189
    goto :goto_7c

    .line 174
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onChangeMagnificationMode(II)V

    .line 179
    goto :goto_7c

    .line 164
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 167
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IMagnificationConnectionCallback$Stub;->onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V

    .line 169
    nop

    .line 224
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :goto_7c
    return v1

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_69
        :pswitch_5a
        :pswitch_47
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
