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
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

.field static final blacklist TRANSACTION_sendAttachOverlayResult:I = 0x6

.field static final blacklist TRANSACTION_sendTakeScreenshotOfWindowError:I = 0x5

.field static final greylist-max-o TRANSACTION_setFindAccessibilityNodeInfoResult:I = 0x1

.field static final greylist-max-o TRANSACTION_setFindAccessibilityNodeInfosResult:I = 0x2

.field static final greylist-max-o TRANSACTION_setPerformAccessibilityActionResult:I = 0x4

.field static final blacklist TRANSACTION_setPrefetchAccessibilityNodeInfoResult:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_4
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    if-eqz v1, :cond_14

    .line 90
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    return-object v1

    .line 92
    :cond_14
    new-instance v1, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 101
    packed-switch p0, :pswitch_data_1e

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_5
    const-string/jumbo v0, "sendAttachOverlayResult"

    return-object v0

    .line 121
    :pswitch_9
    const-string/jumbo v0, "sendTakeScreenshotOfWindowError"

    return-object v0

    .line 117
    :pswitch_d
    const-string/jumbo v0, "setPerformAccessibilityActionResult"

    return-object v0

    .line 113
    :pswitch_11
    const-string/jumbo v0, "setPrefetchAccessibilityNodeInfoResult"

    return-object v0

    .line 109
    :pswitch_15
    const-string/jumbo v0, "setFindAccessibilityNodeInfosResult"

    return-object v0

    .line 105
    :pswitch_19
    const-string/jumbo v0, "setFindAccessibilityNodeInfoResult"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 348
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    .line 141
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 148
    :cond_16
    packed-switch p1, :pswitch_data_82

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 203
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->sendAttachOverlayResult(II)V

    .line 208
    goto :goto_80

    .line 193
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 196
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->sendTakeScreenshotOfWindowError(II)V

    .line 198
    goto :goto_80

    .line 183
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 185
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setPerformAccessibilityActionResult(ZI)V

    .line 188
    goto :goto_80

    .line 173
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_4b
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 175
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V

    .line 178
    goto :goto_80

    .line 163
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "_arg1":I
    :pswitch_5c
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 165
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 166
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 168
    goto :goto_80

    .line 153
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "_arg1":I
    :pswitch_6d
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 155
    .local v2, "_arg0":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    .line 158
    nop

    .line 215
    .end local v2    # "_arg0":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "_arg1":I
    :goto_80
    return v1

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_5c
        :pswitch_4b
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
