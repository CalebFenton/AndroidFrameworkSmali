.class public final Landroid/net/metrics/DefaultNetworkEvent;
.super Landroid/net/metrics/IpConnectivityEvent;
.source "DefaultNetworkEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DefaultNetworkEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final netId:I

.field public final prevIPv4:Z

.field public final prevIPv6:Z

.field public final prevNetId:I

.field public final transportTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 96
    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent$1;

    #@2
    invoke-direct {v0}, Landroid/net/metrics/DefaultNetworkEvent$1;-><init>()V

    #@5
    .line 95
    sput-object v0, Landroid/net/metrics/DefaultNetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method private constructor <init>(I[IIZZ)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "transportTypes"    # [I
    .param p3, "prevNetId"    # I
    .param p4, "prevIPv4"    # Z
    .param p5, "prevIPv6"    # Z

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    #@3
    .line 42
    iput p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    #@5
    .line 43
    iput-object p2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    #@7
    .line 44
    iput p3, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    #@9
    .line 45
    iput-boolean p4, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    #@b
    .line 46
    iput-boolean p5, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    #@d
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 49
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    #@5
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    #@b
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    #@11
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    #@17
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@1a
    move-result v0

    #@1b
    if-lez v0, :cond_0

    #@1d
    move v0, v1

    #@1e
    :goto_0
    iput-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    #@20
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@23
    move-result v0

    #@24
    if-lez v0, :cond_1

    #@26
    :goto_1
    iput-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    #@28
    .line 49
    return-void

    #@29
    :cond_0
    move v0, v2

    #@2a
    .line 53
    goto :goto_0

    #@2b
    :cond_1
    move v1, v2

    #@2c
    .line 54
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DefaultNetworkEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private ipSupport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 84
    const-string/jumbo v0, "DUAL"

    #@b
    return-object v0

    #@c
    .line 86
    :cond_0
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 87
    const-string/jumbo v0, "IPv6"

    #@13
    return-object v0

    #@14
    .line 89
    :cond_1
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 90
    const-string/jumbo v0, "IPv4"

    #@1b
    return-object v0

    #@1c
    .line 92
    :cond_2
    const-string/jumbo v0, "NONE"

    #@1f
    return-object v0
.end method

.method public static logEvent(I[IIZZ)V
    .locals 6
    .param p0, "netId"    # I
    .param p1, "transports"    # [I
    .param p2, "prevNetId"    # I
    .param p3, "hadIPv4"    # Z
    .param p4, "hadIPv6"    # Z

    #@0
    .prologue
    .line 108
    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent;

    #@2
    move v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(I[IIZZ)V

    #@a
    invoke-static {v0}, Landroid/net/metrics/DefaultNetworkEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    #@d
    .line 107
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 71
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    #@3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 72
    .local v1, "prevNetwork":Ljava/lang/String;
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    #@9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 73
    .local v0, "newNetwork":Ljava/lang/String;
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, ":"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-direct {p0}, Landroid/net/metrics/DefaultNetworkEvent;->ipSupport()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 76
    :cond_0
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    const-string/jumbo v3, ":"

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    iget-object v3, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    #@43
    invoke-static {v3}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    .line 79
    :cond_1
    const-string/jumbo v2, "DefaultNetworkEvent(%s -> %s)"

    #@52
    const/4 v3, 0x2

    #@53
    new-array v3, v3, [Ljava/lang/Object;

    #@55
    aput-object v1, v3, v4

    #@57
    const/4 v4, 0x1

    #@58
    aput-object v0, v3, v4

    #@5a
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 58
    iget v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 59
    iget-object v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@c
    .line 60
    iget v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 61
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@19
    .line 62
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@20
    .line 57
    return-void

    #@21
    :cond_0
    move v0, v2

    #@22
    .line 61
    goto :goto_0

    #@23
    :cond_1
    move v1, v2

    #@24
    .line 62
    goto :goto_1
.end method
