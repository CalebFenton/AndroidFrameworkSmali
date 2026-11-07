.class Landroid/net/TcpKeepalivePacketData$1;
.super Ljava/lang/Object;
.source "TcpKeepalivePacketData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TcpKeepalivePacketData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/TcpKeepalivePacketData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 205
    :try_start_0
    invoke-static {p1}, Landroid/net/TcpKeepalivePacketData;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;

    move-result-object v0
    :try_end_4
    .catch Landroid/net/InvalidPacketException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 206
    :catch_5
    move-exception v0

    .line 207
    .local v0, "e":Landroid/net/InvalidPacketException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid TCP keepalive data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 208
    invoke-virtual {v0}, Landroid/net/InvalidPacketException;->getError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 202
    invoke-virtual {p0, p1}, Landroid/net/TcpKeepalivePacketData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/TcpKeepalivePacketData;
    .registers 3
    .param p1, "size"    # I

    .line 213
    new-array v0, p1, [Landroid/net/TcpKeepalivePacketData;

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

    .line 202
    invoke-virtual {p0, p1}, Landroid/net/TcpKeepalivePacketData$1;->newArray(I)[Landroid/net/TcpKeepalivePacketData;

    move-result-object p1

    return-object p1
.end method
