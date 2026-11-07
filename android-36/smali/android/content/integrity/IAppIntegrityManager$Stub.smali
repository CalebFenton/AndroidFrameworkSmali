.class public abstract Landroid/content/integrity/IAppIntegrityManager$Stub;
.super Landroid/os/Binder;
.source "IAppIntegrityManager.java"

# interfaces
.implements Landroid/content/integrity/IAppIntegrityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/IAppIntegrityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/IAppIntegrityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCurrentRuleSetProvider:I = 0x3

.field static final blacklist TRANSACTION_getCurrentRuleSetVersion:I = 0x2

.field static final blacklist TRANSACTION_getCurrentRules:I = 0x4

.field static final blacklist TRANSACTION_getWhitelistedRuleProviders:I = 0x5

.field static final blacklist TRANSACTION_updateRuleSet:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.content.integrity.IAppIntegrityManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/integrity/IAppIntegrityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.content.integrity.IAppIntegrityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/integrity/IAppIntegrityManager;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/content/integrity/IAppIntegrityManager;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/content/integrity/IAppIntegrityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/integrity/IAppIntegrityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_16

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_5
    const-string/jumbo v0, "getWhitelistedRuleProviders"

    return-object v0

    .line 87
    :pswitch_9
    const-string v0, "getCurrentRules"

    return-object v0

    .line 83
    :pswitch_c
    const-string v0, "getCurrentRuleSetProvider"

    return-object v0

    .line 79
    :pswitch_f
    const-string v0, "getCurrentRuleSetVersion"

    return-object v0

    .line 75
    :pswitch_12
    const-string/jumbo v0, "updateRuleSet"

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 273
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    const-string v0, "android.content.integrity.IAppIntegrityManager"

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_16
    packed-switch p1, :pswitch_data_6a

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 152
    :pswitch_1e
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getWhitelistedRuleProviders()Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    goto :goto_68

    .line 145
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_29
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getCurrentRules()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 146
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    goto :goto_68

    .line 138
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    :pswitch_34
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getCurrentRuleSetProvider()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    goto :goto_68

    .line 131
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getCurrentRuleSetVersion()Ljava/lang/String;

    move-result-object v2

    .line 132
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    goto :goto_68

    .line 119
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 123
    .local v3, "_arg1":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 124
    .local v4, "_arg2":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/integrity/IAppIntegrityManager$Stub;->updateRuleSet(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    nop

    .line 162
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    .end local v4    # "_arg2":Landroid/content/IntentSender;
    :goto_68
    return v1

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
