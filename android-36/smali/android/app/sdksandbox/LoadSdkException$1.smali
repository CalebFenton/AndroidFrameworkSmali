.class Landroid/app/sdksandbox/LoadSdkException$1;
.super Ljava/lang/Object;
.source "LoadSdkException.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/LoadSdkException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/sdksandbox/LoadSdkException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/sdksandbox/LoadSdkException;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "errorCode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 104
    .local v2, "extraInformation":Landroid/os/Bundle;
    new-instance v3, Landroid/app/sdksandbox/LoadSdkException;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4, v2}, Landroid/app/sdksandbox/LoadSdkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Landroid/os/Bundle;)V

    return-object v3
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

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/sdksandbox/LoadSdkException$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/sdksandbox/LoadSdkException;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/sdksandbox/LoadSdkException;
    .registers 3
    .param p1, "size"    # I

    .line 109
    new-array v0, p1, [Landroid/app/sdksandbox/LoadSdkException;

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

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/sdksandbox/LoadSdkException$1;->newArray(I)[Landroid/app/sdksandbox/LoadSdkException;

    move-result-object p1

    return-object p1
.end method
