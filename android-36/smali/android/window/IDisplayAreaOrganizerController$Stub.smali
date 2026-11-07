.class public abstract Landroid/window/IDisplayAreaOrganizerController$Stub;
.super Landroid/os/Binder;
.source "IDisplayAreaOrganizerController.java"

# interfaces
.implements Landroid/window/IDisplayAreaOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IDisplayAreaOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IDisplayAreaOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createTaskDisplayArea:I = 0x3

.field static final blacklist TRANSACTION_deleteTaskDisplayArea:I = 0x4

.field static final blacklist TRANSACTION_registerOrganizer:I = 0x1

.field static final blacklist TRANSACTION_unregisterOrganizer:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "android.window.IDisplayAreaOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/IDisplayAreaOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizerController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_4

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_4
    const-string v0, "android.window.IDisplayAreaOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/IDisplayAreaOrganizerController;

    if-eqz v1, :cond_14

    .line 86
    move-object v1, v0

    check-cast v1, Landroid/window/IDisplayAreaOrganizerController;

    return-object v1

    .line 88
    :cond_14
    new-instance v1, Landroid/window/IDisplayAreaOrganizerController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IDisplayAreaOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 97
    packed-switch p0, :pswitch_data_14

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 113
    :pswitch_5
    const-string v0, "deleteTaskDisplayArea"

    return-object v0

    .line 109
    :pswitch_8
    const-string v0, "createTaskDisplayArea"

    return-object v0

    .line 105
    :pswitch_b
    const-string/jumbo v0, "unregisterOrganizer"

    return-object v0

    .line 101
    :pswitch_f
    const-string/jumbo v0, "registerOrganizer"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 315
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 124
    invoke-static {p1}, Landroid/window/IDisplayAreaOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    const-string v0, "android.window.IDisplayAreaOrganizerController"

    .line 129
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v1

    .line 136
    :cond_16
    packed-switch p1, :pswitch_data_80

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 178
    :pswitch_1e
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 179
    .local v2, "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2}, Landroid/window/IDisplayAreaOrganizerController$Stub;->deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    goto :goto_7e

    .line 162
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IDisplayAreaOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v2

    .line 164
    .local v2, "_arg0":Landroid/window/IDisplayAreaOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 166
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 168
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/window/IDisplayAreaOrganizerController$Stub;->createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object v6

    .line 171
    .local v6, "_result":Landroid/window/DisplayAreaAppearedInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 173
    goto :goto_7e

    .line 153
    .end local v2    # "_arg0":Landroid/window/IDisplayAreaOrganizer;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Landroid/window/DisplayAreaAppearedInfo;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IDisplayAreaOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v2

    .line 154
    .restart local v2    # "_arg0":Landroid/window/IDisplayAreaOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2}, Landroid/window/IDisplayAreaOrganizerController$Stub;->unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_7e

    .line 141
    .end local v2    # "_arg0":Landroid/window/IDisplayAreaOrganizer;
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IDisplayAreaOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v2

    .line 143
    .restart local v2    # "_arg0":Landroid/window/IDisplayAreaOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Landroid/window/IDisplayAreaOrganizerController$Stub;->registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 146
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/window/DisplayAreaAppearedInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    nop

    .line 189
    .end local v2    # "_arg0":Landroid/window/IDisplayAreaOrganizer;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/window/DisplayAreaAppearedInfo;>;"
    :goto_7e
    return v1

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_64
        :pswitch_52
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
