.class Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionAidlRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    sget-object v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    .line 42
    .local v2, "clientRequest":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/UserHandle;

    .line 43
    .local v3, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "callingPackage":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 45
    .local v5, "requestTime":J
    new-instance v1, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    invoke-direct/range {v1 .. v6}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Landroid/os/UserHandle;Ljava/lang/String;J)V

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    .registers 3
    .param p1, "size"    # I

    .line 51
    new-array v0, p1, [Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;->newArray(I)[Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    move-result-object p1

    return-object p1
.end method
