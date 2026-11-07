.class public abstract Landroid/window/ITaskFragmentOrganizerController$Stub;
.super Landroid/os/Binder;
.source "ITaskFragmentOrganizerController.java"

# interfaces
.implements Landroid/window/ITaskFragmentOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskFragmentOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskFragmentOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applyTransaction:I = 0x7

.field static final blacklist TRANSACTION_onTransactionHandled:I = 0x6

.field static final blacklist TRANSACTION_registerOrganizer:I = 0x1

.field static final blacklist TRANSACTION_registerRemoteAnimations:I = 0x3

.field static final blacklist TRANSACTION_setSavedState:I = 0x5

.field static final blacklist TRANSACTION_unregisterOrganizer:I = 0x2

.field static final blacklist TRANSACTION_unregisterRemoteAnimations:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "android.window.ITaskFragmentOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskFragmentOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizerController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    const-string v0, "android.window.ITaskFragmentOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/ITaskFragmentOrganizerController;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/window/ITaskFragmentOrganizerController;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/window/ITaskFragmentOrganizerController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITaskFragmentOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 107
    packed-switch p0, :pswitch_data_20

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 135
    :pswitch_5
    const-string v0, "applyTransaction"

    return-object v0

    .line 131
    :pswitch_8
    const-string v0, "onTransactionHandled"

    return-object v0

    .line 127
    :pswitch_b
    const-string/jumbo v0, "setSavedState"

    return-object v0

    .line 123
    :pswitch_f
    const-string/jumbo v0, "unregisterRemoteAnimations"

    return-object v0

    .line 119
    :pswitch_13
    const-string/jumbo v0, "registerRemoteAnimations"

    return-object v0

    .line 115
    :pswitch_17
    const-string/jumbo v0, "unregisterOrganizer"

    return-object v0

    .line 111
    :pswitch_1b
    const-string/jumbo v0, "registerOrganizer"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 428
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 146
    invoke-static {p1}, Landroid/window/ITaskFragmentOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 150
    const-string v0, "android.window.ITaskFragmentOrganizerController"

    .line 151
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 152
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 155
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    return v1

    .line 158
    :cond_16
    packed-switch p1, :pswitch_data_d8

    .line 246
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 232
    :pswitch_1e
    sget-object v2, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction;

    .line 234
    .local v2, "_arg0":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 236
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 238
    .local v4, "_arg2":Z
    sget-object v5, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/RemoteTransition;

    .line 239
    .local v5, "_arg3":Landroid/window/RemoteTransition;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/window/ITaskFragmentOrganizerController$Stub;->applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto/16 :goto_d6

    .line 217
    .end local v2    # "_arg0":Landroid/window/WindowContainerTransaction;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/window/RemoteTransition;
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 219
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction;

    .line 221
    .local v3, "_arg1":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 223
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 224
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/window/ITaskFragmentOrganizerController$Stub;->onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto/16 :goto_d6

    .line 206
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/window/WindowContainerTransaction;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    .line 208
    .local v2, "_arg0":Landroid/window/ITaskFragmentOrganizer;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 209
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskFragmentOrganizerController$Stub;->setSavedState(Landroid/window/ITaskFragmentOrganizer;Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto :goto_d6

    .line 197
    .end local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    .line 198
    .restart local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizerController$Stub;->unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_d6

    .line 186
    .end local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    .line 188
    .restart local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    sget-object v3, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationDefinition;

    .line 189
    .local v3, "_arg1":Landroid/view/RemoteAnimationDefinition;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskFragmentOrganizerController$Stub;->registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;Landroid/view/RemoteAnimationDefinition;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_d6

    .line 177
    .end local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    .end local v3    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    .line 178
    .restart local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizerController$Stub;->unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_d6

    .line 163
    .end local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    .line 165
    .restart local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 167
    .local v3, "_arg1":Z
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3, v4}, Landroid/window/ITaskFragmentOrganizerController$Stub;->registerOrganizer(Landroid/window/ITaskFragmentOrganizer;ZLandroid/os/Bundle;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 172
    nop

    .line 249
    .end local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :goto_d6
    return v1

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_a6
        :pswitch_8c
        :pswitch_7a
        :pswitch_60
        :pswitch_41
        :pswitch_1e
    .end packed-switch
.end method
