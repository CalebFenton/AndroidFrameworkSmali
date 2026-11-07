.class public abstract Landroid/content/pm/IPinItemRequest$Stub;
.super Landroid/os/Binder;
.source "IPinItemRequest.java"

# interfaces
.implements Landroid/content/pm/IPinItemRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPinItemRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPinItemRequest$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPinItemRequest"

.field static final greylist-max-o TRANSACTION_accept:I = 0x2

.field static final greylist-max-o TRANSACTION_getAppWidgetProviderInfo:I = 0x4

.field static final greylist-max-o TRANSACTION_getExtras:I = 0x5

.field static final greylist-max-o TRANSACTION_getShortcutInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_isValid:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.content.pm.IPinItemRequest"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPinItemRequest$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPinItemRequest;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.content.pm.IPinItemRequest"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPinItemRequest;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPinItemRequest;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/content/pm/IPinItemRequest$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPinItemRequest$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_16

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_5
    const-string v0, "getExtras"

    return-object v0

    .line 88
    :pswitch_8
    const-string v0, "getAppWidgetProviderInfo"

    return-object v0

    .line 84
    :pswitch_b
    const-string/jumbo v0, "getShortcutInfo"

    return-object v0

    .line 80
    :pswitch_f
    const-string v0, "accept"

    return-object v0

    .line 76
    :pswitch_12
    const-string/jumbo v0, "isValid"

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 274
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/content/pm/IPinItemRequest$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    const-string v0, "android.content.pm.IPinItemRequest"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 115
    :cond_16
    packed-switch p1, :pswitch_data_62

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_1e
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 151
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    goto :goto_60

    .line 143
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_29
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 144
    .local v2, "_result":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 146
    goto :goto_60

    .line 136
    .end local v2    # "_result":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_34
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 137
    .local v2, "_result":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    goto :goto_60

    .line 127
    .end local v2    # "_result":Landroid/content/pm/ShortcutInfo;
    :pswitch_3f
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 128
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2}, Landroid/content/pm/IPinItemRequest$Stub;->accept(Landroid/os/Bundle;)Z

    move-result v3

    .line 130
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    goto :goto_60

    .line 119
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :pswitch_55
    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->isValid()Z

    move-result v2

    .line 120
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    nop

    .line 160
    .end local v2    # "_result":Z
    :goto_60
    return v1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_55
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
