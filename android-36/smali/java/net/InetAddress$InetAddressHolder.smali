.class Ljava/net/InetAddress$InetAddressHolder;
.super Ljava/lang/Object;
.source "InetAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InetAddressHolder"
.end annotation


# instance fields
.field greylist-max-r address:I

.field greylist-max-r family:I

.field greylist hostName:Ljava/lang/String;

.field greylist-max-r originalHostName:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "address"    # I
    .param p3, "family"    # I

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Ljava/net/InetAddress$InetAddressHolder;->originalHostName:Ljava/lang/String;

    .line 222
    iput-object p1, p0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 223
    iput p2, p0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 224
    iput p3, p0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 225
    return-void
.end method


# virtual methods
.method greylist-max-o getAddress()I
    .registers 2

    .line 251
    iget v0, p0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    return v0
.end method

.method greylist-max-o getFamily()I
    .registers 2

    .line 262
    iget v0, p0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    return v0
.end method

.method greylist-max-o getHostName()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getOriginalHostName()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Ljava/net/InetAddress$InetAddressHolder;->originalHostName:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o init(Ljava/lang/String;I)V
    .registers 4
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "family"    # I

    .line 228
    iput-object p1, p0, Ljava/net/InetAddress$InetAddressHolder;->originalHostName:Ljava/lang/String;

    .line 229
    iput-object p1, p0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 230
    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    .line 231
    iput p2, p0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 233
    :cond_9
    return-void
.end method
