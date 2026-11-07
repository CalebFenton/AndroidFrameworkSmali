.class public abstract Landroid/window/ITaskOrganizerController$Stub;
.super Landroid/os/Binder;
.source "ITaskOrganizerController.java"

# interfaces
.implements Landroid/window/ITaskOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createRootTask:I = 0x3

.field static final blacklist TRANSACTION_deleteRootTask:I = 0x4

.field static final blacklist TRANSACTION_getChildTasks:I = 0x5

.field static final blacklist TRANSACTION_getImeTarget:I = 0x7

.field static final blacklist TRANSACTION_getRootTasks:I = 0x6

.field static final blacklist TRANSACTION_registerTaskOrganizer:I = 0x1

.field static final blacklist TRANSACTION_restartTaskTopActivityProcessIfVisible:I = 0x9

.field static final blacklist TRANSACTION_setInterceptBackPressedOnTaskRoot:I = 0x8

.field static final blacklist TRANSACTION_unregisterTaskOrganizer:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    const-string v0, "android.window.ITaskOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizerController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 90
    if-nez p0, :cond_4

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_4
    const-string v0, "android.window.ITaskOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/ITaskOrganizerController;

    if-eqz v1, :cond_14

    .line 95
    move-object v1, v0

    check-cast v1, Landroid/window/ITaskOrganizerController;

    return-object v1

    .line 97
    :cond_14
    new-instance v1, Landroid/window/ITaskOrganizerController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITaskOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 106
    packed-switch p0, :pswitch_data_24

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 142
    :pswitch_5
    const-string/jumbo v0, "restartTaskTopActivityProcessIfVisible"

    return-object v0

    .line 138
    :pswitch_9
    const-string/jumbo v0, "setInterceptBackPressedOnTaskRoot"

    return-object v0

    .line 134
    :pswitch_d
    const-string v0, "getImeTarget"

    return-object v0

    .line 130
    :pswitch_10
    const-string v0, "getRootTasks"

    return-object v0

    .line 126
    :pswitch_13
    const-string v0, "getChildTasks"

    return-object v0

    .line 122
    :pswitch_16
    const-string v0, "deleteRootTask"

    return-object v0

    .line 118
    :pswitch_19
    const-string v0, "createRootTask"

    return-object v0

    .line 114
    :pswitch_1c
    const-string/jumbo v0, "unregisterTaskOrganizer"

    return-object v0

    .line 110
    :pswitch_20
    const-string/jumbo v0, "registerTaskOrganizer"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 101
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 478
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 153
    invoke-static {p1}, Landroid/window/ITaskOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 157
    const-string v0, "android.window.ITaskOrganizerController"

    .line 158
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v1

    .line 165
    :cond_16
    packed-switch p1, :pswitch_data_e4

    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 259
    :pswitch_1e
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 260
    .local v2, "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto/16 :goto_e3

    .line 248
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    :pswitch_31
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 250
    .restart local v2    # "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 251
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizerController$Stub;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto/16 :goto_e3

    .line 238
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_arg1":Z
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 241
    .local v3, "_result":Landroid/window/WindowContainerToken;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 243
    goto/16 :goto_e3

    .line 226
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/window/WindowContainerToken;
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 229
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizerController$Stub;->getRootTasks(I[I)Ljava/util/List;

    move-result-object v4

    .line 231
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 233
    goto :goto_e3

    .line 214
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_71
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 216
    .local v2, "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 217
    .restart local v3    # "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskOrganizerController$Stub;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v4

    .line 219
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 221
    goto :goto_e3

    .line 204
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_8b
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 205
    .restart local v2    # "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->deleteRootTask(Landroid/window/WindowContainerToken;)Z

    move-result v3

    .line 207
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 209
    goto :goto_e3

    .line 189
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v3    # "_result":Z
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 193
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 195
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 196
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/window/ITaskOrganizerController$Stub;->createRootTask(IILandroid/os/IBinder;Z)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_e3

    .line 180
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v5    # "_arg3":Z
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;

    move-result-object v2

    .line 181
    .local v2, "_arg0":Landroid/window/ITaskOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    goto :goto_e3

    .line 170
    .end local v2    # "_arg0":Landroid/window/ITaskOrganizer;
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskOrganizer;

    move-result-object v2

    .line 171
    .restart local v2    # "_arg0":Landroid/window/ITaskOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2}, Landroid/window/ITaskOrganizerController$Stub;->registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 173
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/window/TaskAppearedInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 175
    nop

    .line 270
    .end local v2    # "_arg0":Landroid/window/ITaskOrganizer;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/window/TaskAppearedInfo;>;"
    :goto_e3
    return v1

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_cd
        :pswitch_bb
        :pswitch_a1
        :pswitch_8b
        :pswitch_71
        :pswitch_5b
        :pswitch_48
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
