.class public abstract Landroid/app/supervision/ISupervisionManager$Stub;
.super Landroid/os/Binder;
.source "ISupervisionManager.java"

# interfaces
.implements Landroid/app/supervision/ISupervisionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/supervision/ISupervisionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/supervision/ISupervisionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createConfirmSupervisionCredentialsIntent:I = 0x1

.field static final blacklist TRANSACTION_getActiveSupervisionAppPackage:I = 0x4

.field static final blacklist TRANSACTION_isSupervisionEnabledForUser:I = 0x2

.field static final blacklist TRANSACTION_setSupervisionEnabledForUser:I = 0x3

.field static final blacklist TRANSACTION_shouldAllowBypassingSupervisionRoleQualification:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.app.supervision.ISupervisionManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/supervision/ISupervisionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/supervision/ISupervisionManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "android.app.supervision.ISupervisionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/supervision/ISupervisionManager;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/app/supervision/ISupervisionManager;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/app/supervision/ISupervisionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/supervision/ISupervisionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_18

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_5
    const-string/jumbo v0, "shouldAllowBypassingSupervisionRoleQualification"

    return-object v0

    .line 90
    :pswitch_9
    const-string v0, "getActiveSupervisionAppPackage"

    return-object v0

    .line 86
    :pswitch_c
    const-string/jumbo v0, "setSupervisionEnabledForUser"

    return-object v0

    .line 82
    :pswitch_10
    const-string/jumbo v0, "isSupervisionEnabledForUser"

    return-object v0

    .line 78
    :pswitch_14
    const-string v0, "createConfirmSupervisionCredentialsIntent"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 281
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Landroid/app/supervision/ISupervisionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    const-string v0, "android.app.supervision.ISupervisionManager"

    .line 110
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_16
    packed-switch p1, :pswitch_data_6c

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 159
    :pswitch_1e
    invoke-virtual {p0}, Landroid/app/supervision/ISupervisionManager$Stub;->shouldAllowBypassingSupervisionRoleQualification()Z

    move-result v2

    .line 160
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 162
    goto :goto_6a

    .line 150
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Landroid/app/supervision/ISupervisionManager$Stub;->getActiveSupervisionAppPackage(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    goto :goto_6a

    .line 139
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 142
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2, v3}, Landroid/app/supervision/ISupervisionManager$Stub;->setSupervisionEnabledForUser(IZ)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto :goto_6a

    .line 129
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/app/supervision/ISupervisionManager$Stub;->isSupervisionEnabledForUser(I)Z

    move-result v3

    .line 132
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    goto :goto_6a

    .line 121
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_5f
    invoke-virtual {p0}, Landroid/app/supervision/ISupervisionManager$Stub;->createConfirmSupervisionCredentialsIntent()Landroid/content/Intent;

    move-result-object v2

    .line 122
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 124
    nop

    .line 169
    .end local v2    # "_result":Landroid/content/Intent;
    :goto_6a
    return v1

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_4d
        :pswitch_3b
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
