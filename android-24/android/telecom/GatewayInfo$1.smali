.class final Landroid/telecom/GatewayInfo$1;
.super Ljava/lang/Object;
.source "GatewayInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/GatewayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telecom/GatewayInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/GatewayInfo;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 89
    .local v0, "gatewayPackageName":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/net/Uri;

    #@c
    .line 90
    .local v1, "gatewayUri":Landroid/net/Uri;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/net/Uri;

    #@14
    .line 91
    .local v2, "originalAddress":Landroid/net/Uri;
    new-instance v3, Landroid/telecom/GatewayInfo;

    #@16
    invoke-direct {v3, v0, v1, v2}, Landroid/telecom/GatewayInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    #@19
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/telecom/GatewayInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/GatewayInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/GatewayInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 96
    new-array v0, p1, [Landroid/telecom/GatewayInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/telecom/GatewayInfo$1;->newArray(I)[Landroid/telecom/GatewayInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
