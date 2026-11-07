.class Landroid/app/appfunctions/ExecuteAppFunctionRequest$1;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/ExecuteAppFunctionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appfunctions/ExecuteAppFunctionRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "targetPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "functionIdentifier":Ljava/lang/String;
    sget-object v0, Landroid/app/appfunctions/GenericDocumentWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/appfunctions/GenericDocumentWrapper;

    .line 51
    .local v4, "parameters":Landroid/app/appfunctions/GenericDocumentWrapper;
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    .line 52
    .local v3, "extras":Landroid/os/Bundle;
    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;Landroid/app/appfunctions/ExecuteAppFunctionRequest-IA;)V

    return-object v0
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

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .registers 3
    .param p1, "size"    # I

    .line 58
    new-array v0, p1, [Landroid/app/appfunctions/ExecuteAppFunctionRequest;

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

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest$1;->newArray(I)[Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object p1

    return-object p1
.end method
