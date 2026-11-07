.class public abstract Landroid/webkit/IWebViewUpdateService$Stub;
.super Landroid/os/Binder;
.source "IWebViewUpdateService.java"

# interfaces
.implements Landroid/webkit/IWebViewUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/IWebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/IWebViewUpdateService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.webkit.IWebViewUpdateService"

.field static final greylist-max-o TRANSACTION_changeProviderAndSetting:I = 0x3

.field static final greylist-max-o TRANSACTION_getAllWebViewPackages:I = 0x5

.field static final greylist-max-o TRANSACTION_getCurrentWebViewPackage:I = 0x7

.field static final greylist-max-o TRANSACTION_getCurrentWebViewPackageName:I = 0x6

.field static final blacklist TRANSACTION_getDefaultWebViewPackage:I = 0x8

.field static final greylist-max-o TRANSACTION_getValidWebViewPackages:I = 0x4

.field static final greylist-max-o TRANSACTION_notifyRelroCreationCompleted:I = 0x1

.field static final greylist-max-o TRANSACTION_waitForAndGetProvider:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p0, p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    const-string v0, "android.webkit.IWebViewUpdateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/webkit/IWebViewUpdateService;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/webkit/IWebViewUpdateService;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 107
    packed-switch p0, :pswitch_data_1e

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_5
    const-string v0, "getDefaultWebViewPackage"

    return-object v0

    .line 135
    :pswitch_8
    const-string v0, "getCurrentWebViewPackage"

    return-object v0

    .line 131
    :pswitch_b
    const-string v0, "getCurrentWebViewPackageName"

    return-object v0

    .line 127
    :pswitch_e
    const-string v0, "getAllWebViewPackages"

    return-object v0

    .line 123
    :pswitch_11
    const-string v0, "getValidWebViewPackages"

    return-object v0

    .line 119
    :pswitch_14
    const-string v0, "changeProviderAndSetting"

    return-object v0

    .line 115
    :pswitch_17
    const-string/jumbo v0, "waitForAndGetProvider"

    return-object v0

    .line 111
    :pswitch_1b
    const-string v0, "notifyRelroCreationCompleted"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
        :pswitch_14
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

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 413
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 150
    invoke-static {p1}, Landroid/webkit/IWebViewUpdateService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 154
    const-string v0, "android.webkit.IWebViewUpdateService"

    .line 155
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 162
    :cond_16
    packed-switch p1, :pswitch_data_7a

    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 217
    :pswitch_1e
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object v2

    .line 218
    .local v2, "_result":Landroid/webkit/WebViewProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 220
    goto :goto_79

    .line 210
    .end local v2    # "_result":Landroid/webkit/WebViewProviderInfo;
    :pswitch_29
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 211
    .local v2, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    goto :goto_79

    .line 203
    .end local v2    # "_result":Landroid/content/pm/PackageInfo;
    :pswitch_34
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    goto :goto_79

    .line 196
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v2

    .line 197
    .local v2, "_result":[Landroid/webkit/WebViewProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 199
    goto :goto_79

    .line 189
    .end local v2    # "_result":[Landroid/webkit/WebViewProviderInfo;
    :pswitch_4a
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v2

    .line 190
    .restart local v2    # "_result":[Landroid/webkit/WebViewProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 192
    goto :goto_79

    .line 180
    .end local v2    # "_result":[Landroid/webkit/WebViewProviderInfo;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Landroid/webkit/IWebViewUpdateService$Stub;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    goto :goto_79

    .line 172
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_67
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v2

    .line 173
    .local v2, "_result":Landroid/webkit/WebViewProviderResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 175
    goto :goto_79

    .line 166
    .end local v2    # "_result":Landroid/webkit/WebViewProviderResponse;
    :pswitch_72
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->notifyRelroCreationCompleted()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    nop

    .line 227
    :goto_79
    return v1

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_72
        :pswitch_67
        :pswitch_55
        :pswitch_4a
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
