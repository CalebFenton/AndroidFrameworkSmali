.class Landroid/telephony/gba/GbaAuthRequest$1;
.super Ljava/lang/Object;
.source "GbaAuthRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gba/GbaAuthRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/gba/GbaAuthRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/gba/GbaAuthRequest;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .local v1, "token":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .local v2, "subId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 123
    .local v3, "appType":I
    const-class v0, Landroid/telephony/gba/GbaAuthRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v4, Landroid/net/Uri;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 124
    .local v4, "nafUrl":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 125
    .local v8, "len":I
    new-array v5, v8, [B

    .line 126
    .local v5, "protocol":[B
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 128
    .local v6, "forceBootStrapping":Z
    nop

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/IBootstrapAuthenticationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v7

    .line 131
    .local v7, "callback":Landroid/telephony/IBootstrapAuthenticationCallback;
    new-instance v0, Landroid/telephony/gba/GbaAuthRequest;

    invoke-direct/range {v0 .. v7}, Landroid/telephony/gba/GbaAuthRequest;-><init>(IIILandroid/net/Uri;[BZLandroid/telephony/IBootstrapAuthenticationCallback;)V

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

    .line 117
    invoke-virtual {p0, p1}, Landroid/telephony/gba/GbaAuthRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/gba/GbaAuthRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/gba/GbaAuthRequest;
    .registers 3
    .param p1, "size"    # I

    .line 137
    new-array v0, p1, [Landroid/telephony/gba/GbaAuthRequest;

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

    .line 117
    invoke-virtual {p0, p1}, Landroid/telephony/gba/GbaAuthRequest$1;->newArray(I)[Landroid/telephony/gba/GbaAuthRequest;

    move-result-object p1

    return-object p1
.end method
