.class public abstract Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;
.super Landroid/os/Binder;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/aidl/IAppSearchResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/aidl/IAppSearchResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onResult:I = 0x1

.field static final blacklist TRANSACTION_onResultV2:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.app.appsearch.aidl.IAppSearchResultCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "android.app.appsearch.aidl.IAppSearchResultCallback"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 12
    .line 13
    instance-of v1, v0, Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_13

    .line 16
    .line 17
    check-cast v0, Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_b

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    const-string p0, "onResultV2"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_b
    const-string p0, "onResult"

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 1

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "android.app.appsearch.aidl.IAppSearchResultCallback"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_d

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_d

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_d
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v2, :cond_16

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_16
    if-eq p1, v1, :cond_2f

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    if-eq p1, v0, :cond_20

    .line 27
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_20
    sget-object p1, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/app/appsearch/aidl/AppSearchResultParcelV2;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, p1}, Landroid/app/appsearch/aidl/IAppSearchResultCallback;->onResultV2(Landroid/app/appsearch/aidl/AppSearchResultParcelV2;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3d

    .line 48
    :cond_2f
    sget-object p1, Landroid/app/appsearch/aidl/AppSearchResultParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 57
    .line 58
    .line 59
    invoke-interface {p0, p1}, Landroid/app/appsearch/aidl/IAppSearchResultCallback;->onResult(Landroid/app/appsearch/aidl/AppSearchResultParcel;)V

    .line 60
    .line 61
    .line 62
    :goto_3d
    return v1
.end method
