.class Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "WifiAwareAgentNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    new-instance v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;-><init>()V

    .line 84
    .local v0, "agentNs":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v1

    .line 85
    .local v1, "objs":[Ljava/lang/Object;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    .line 86
    .local v4, "obj":Ljava/lang/Object;
    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->-$$Nest$fgetmNetworkSpecifiers(Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;)Ljava/util/Set;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v4    # "obj":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 88
    :cond_1d
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

    .line 80
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
    .registers 3
    .param p1, "size"    # I

    .line 93
    new-array v0, p1, [Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

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

    .line 80
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;->newArray(I)[Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method
