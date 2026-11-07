.class public final Landroid/system/StructIfaddrs;
.super Ljava/lang/Object;
.source "StructIfaddrs.java"


# instance fields
.field public final greylist-max-o hwaddr:[B

.field public final greylist-max-o ifa_addr:Ljava/net/InetAddress;

.field public final greylist-max-o ifa_broadaddr:Ljava/net/InetAddress;

.field public final greylist-max-o ifa_flags:I

.field public final greylist-max-o ifa_name:Ljava/lang/String;

.field public final greylist-max-o ifa_netmask:Ljava/net/InetAddress;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V
    .registers 7
    .param p1, "ifa_name"    # Ljava/lang/String;
    .param p2, "ifa_flags"    # I
    .param p3, "ifa_addr"    # Ljava/net/InetAddress;
    .param p4, "ifa_netmask"    # Ljava/net/InetAddress;
    .param p5, "ifa_broadaddr"    # Ljava/net/InetAddress;
    .param p6, "hwaddr"    # [B

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/system/StructIfaddrs;->ifa_name:Ljava/lang/String;

    .line 43
    iput p2, p0, Landroid/system/StructIfaddrs;->ifa_flags:I

    .line 44
    iput-object p3, p0, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    .line 45
    iput-object p4, p0, Landroid/system/StructIfaddrs;->ifa_netmask:Ljava/net/InetAddress;

    .line 46
    iput-object p5, p0, Landroid/system/StructIfaddrs;->ifa_broadaddr:Ljava/net/InetAddress;

    .line 47
    iput-object p6, p0, Landroid/system/StructIfaddrs;->hwaddr:[B

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 51
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
