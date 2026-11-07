.class public abstract Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;
.super Landroid/os/Binder;
.source "IDomainVerificationManager.java"

# interfaces
.implements Landroid/content/pm/verify/domain/IDomainVerificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/verify/domain/IDomainVerificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDomainVerificationInfo:I = 0x2

.field static final blacklist TRANSACTION_getDomainVerificationUserState:I = 0x3

.field static final blacklist TRANSACTION_getOwnersForDomain:I = 0x4

.field static final blacklist TRANSACTION_getUriRelativeFilterGroups:I = 0x9

.field static final blacklist TRANSACTION_queryValidVerificationPackageNames:I = 0x1

.field static final blacklist TRANSACTION_setDomainVerificationLinkHandlingAllowed:I = 0x6

.field static final blacklist TRANSACTION_setDomainVerificationStatus:I = 0x5

.field static final blacklist TRANSACTION_setDomainVerificationUserSelection:I = 0x7

.field static final blacklist TRANSACTION_setUriRelativeFilterGroups:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.content.pm.verify.domain.IDomainVerificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/verify/domain/IDomainVerificationManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "android.content.pm.verify.domain.IDomainVerificationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/verify/domain/IDomainVerificationManager;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/content/pm/verify/domain/IDomainVerificationManager;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_26

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_5
    const-string/jumbo v0, "getUriRelativeFilterGroups"

    return-object v0

    .line 121
    :pswitch_9
    const-string/jumbo v0, "setUriRelativeFilterGroups"

    return-object v0

    .line 117
    :pswitch_d
    const-string/jumbo v0, "setDomainVerificationUserSelection"

    return-object v0

    .line 113
    :pswitch_11
    const-string/jumbo v0, "setDomainVerificationLinkHandlingAllowed"

    return-object v0

    .line 109
    :pswitch_15
    const-string/jumbo v0, "setDomainVerificationStatus"

    return-object v0

    .line 105
    :pswitch_19
    const-string v0, "getOwnersForDomain"

    return-object v0

    .line 101
    :pswitch_1c
    const-string v0, "getDomainVerificationUserState"

    return-object v0

    .line 97
    :pswitch_1f
    const-string v0, "getDomainVerificationInfo"

    return-object v0

    .line 93
    :pswitch_22
    const-string/jumbo v0, "queryValidVerificationPackageNames"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
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

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 458
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 140
    const-string v0, "android.content.pm.verify.domain.IDomainVerificationManager"

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
    packed-switch p1, :pswitch_data_ee

    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 248
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 251
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v4

    .line 253
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 255
    goto/16 :goto_ec

    .line 237
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 240
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto/16 :goto_ec

    .line 221
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/verify/domain/DomainSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/verify/domain/DomainSet;

    .line 225
    .local v3, "_arg1":Landroid/content/pm/verify/domain/DomainSet;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 227
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 228
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->setDomainVerificationUserSelection(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;ZI)I

    move-result v6

    .line 230
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    goto/16 :goto_ec

    .line 208
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/verify/domain/DomainSet;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 212
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 213
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_ec

    .line 194
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/verify/domain/DomainSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/verify/domain/DomainSet;

    .line 198
    .local v3, "_arg1":Landroid/content/pm/verify/domain/DomainSet;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 199
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->setDomainVerificationStatus(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;I)I

    move-result v5

    .line 201
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    goto :goto_ec

    .line 182
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/verify/domain/DomainSet;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 187
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/verify/domain/DomainOwner;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 189
    goto :goto_ec

    .line 170
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/verify/domain/DomainOwner;>;"
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object v4

    .line 175
    .local v4, "_result":Landroid/content/pm/verify/domain/DomainVerificationUserState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    goto :goto_ec

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/verify/domain/DomainVerificationUserState;
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    move-result-object v3

    .line 163
    .local v3, "_result":Landroid/content/pm/verify/domain/DomainVerificationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 165
    goto :goto_ec

    .line 152
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/verify/domain/DomainVerificationInfo;
    :pswitch_e1
    invoke-virtual {p0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->queryValidVerificationPackageNames()Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    nop

    .line 262
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_ec
    return v1

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_cf
        :pswitch_b9
        :pswitch_a3
        :pswitch_85
        :pswitch_6f
        :pswitch_4c
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
