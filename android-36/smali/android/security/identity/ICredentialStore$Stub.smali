.class public abstract Landroid/security/identity/ICredentialStore$Stub;
.super Landroid/os/Binder;
.source "ICredentialStore.java"

# interfaces
.implements Landroid/security/identity/ICredentialStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/ICredentialStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ICredentialStore$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createCredential:I = 0x2

.field static final blacklist TRANSACTION_createPresentationSession:I = 0x4

.field static final blacklist TRANSACTION_getCredentialByName:I = 0x3

.field static final blacklist TRANSACTION_getSecurityHardwareInfo:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.security.identity.ICredentialStore"

    invoke-virtual {p0, p0, v0}, Landroid/security/identity/ICredentialStore$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/identity/ICredentialStore;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.security.identity.ICredentialStore"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/identity/ICredentialStore;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/security/identity/ICredentialStore;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/security/identity/ICredentialStore$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/identity/ICredentialStore$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_12

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "createPresentationSession"

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "getCredentialByName"

    return-object v0

    .line 76
    :pswitch_b
    const-string v0, "createCredential"

    return-object v0

    .line 72
    :pswitch_e
    const-string/jumbo v0, "getSecurityHardwareInfo"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 253
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/security/identity/ICredentialStore$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "android.security.identity.ICredentialStore"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_16
    packed-switch p1, :pswitch_data_68

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 143
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/security/identity/ICredentialStore$Stub;->createPresentationSession(I)Landroid/security/identity/ISession;

    move-result-object v3

    .line 146
    .local v3, "_result":Landroid/security/identity/ISession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 148
    goto :goto_67

    .line 131
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/security/identity/ISession;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 134
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/security/identity/ICredentialStore$Stub;->getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/ICredential;

    move-result-object v4

    .line 136
    .local v4, "_result":Landroid/security/identity/ICredential;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 138
    goto :goto_67

    .line 119
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/security/identity/ICredential;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3}, Landroid/security/identity/ICredentialStore$Stub;->createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/IWritableCredential;

    move-result-object v4

    .line 124
    .local v4, "_result":Landroid/security/identity/IWritableCredential;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 126
    goto :goto_67

    .line 111
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/security/identity/IWritableCredential;
    :pswitch_5c
    invoke-virtual {p0}, Landroid/security/identity/ICredentialStore$Stub;->getSecurityHardwareInfo()Landroid/security/identity/SecurityHardwareInfoParcel;

    move-result-object v2

    .line 112
    .local v2, "_result":Landroid/security/identity/SecurityHardwareInfoParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 114
    nop

    .line 155
    .end local v2    # "_result":Landroid/security/identity/SecurityHardwareInfoParcel;
    :goto_67
    return v1

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_46
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
