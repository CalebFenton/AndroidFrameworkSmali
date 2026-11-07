.class public abstract Landroid/app/ecm/IEnhancedConfirmationManager$Stub;
.super Landroid/os/Binder;
.source "IEnhancedConfirmationManager.java"

# interfaces
.implements Landroid/app/ecm/IEnhancedConfirmationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ecm/IEnhancedConfirmationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ecm/IEnhancedConfirmationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearRestriction:I = 0x3

.field static final blacklist TRANSACTION_getRestrictionReason:I = 0x2

.field static final blacklist TRANSACTION_isClearRestrictionAllowed:I = 0x4

.field static final blacklist TRANSACTION_isRestricted:I = 0x1

.field static final blacklist TRANSACTION_setClearRestrictionAllowed:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.app.ecm.IEnhancedConfirmationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ecm/IEnhancedConfirmationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/ecm/IEnhancedConfirmationManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.app.ecm.IEnhancedConfirmationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ecm/IEnhancedConfirmationManager;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/app/ecm/IEnhancedConfirmationManager;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/app/ecm/IEnhancedConfirmationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ecm/IEnhancedConfirmationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_14

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_5
    const-string v0, "setClearRestrictionAllowed"

    return-object v0

    .line 86
    :pswitch_8
    const-string v0, "isClearRestrictionAllowed"

    return-object v0

    .line 82
    :pswitch_b
    const-string v0, "clearRestriction"

    return-object v0

    .line 78
    :pswitch_e
    const-string v0, "getRestrictionReason"

    return-object v0

    .line 74
    :pswitch_11
    const-string v0, "isRestricted"

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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 294
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Landroid/app/ecm/IEnhancedConfirmationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    const-string v0, "android.app.ecm.IEnhancedConfirmationManager"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 113
    :cond_16
    packed-switch p1, :pswitch_data_7e

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/app/ecm/IEnhancedConfirmationManager$Stub;->setClearRestrictionAllowed(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_7d

    .line 154
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 157
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/app/ecm/IEnhancedConfirmationManager$Stub;->isClearRestrictionAllowed(Ljava/lang/String;I)Z

    move-result v4

    .line 158
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    goto :goto_7d

    .line 144
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/app/ecm/IEnhancedConfirmationManager$Stub;->clearRestriction(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_7d

    .line 131
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 136
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ecm/IEnhancedConfirmationManager$Stub;->getRestrictionReason(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    goto :goto_7d

    .line 118
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 123
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ecm/IEnhancedConfirmationManager$Stub;->isRestricted(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 124
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    nop

    .line 177
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :goto_7d
    return v1

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_66
        :pswitch_4f
        :pswitch_40
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
