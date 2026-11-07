.class Lsun/nio/ch/MembershipKeyImpl$Type6;
.super Lsun/nio/ch/MembershipKeyImpl;
.source "MembershipKeyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/MembershipKeyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type6"
.end annotation


# instance fields
.field private final blacklist groupAddress:[B

.field private final blacklist index:I

.field private final blacklist sourceAddress:[B


# direct methods
.method constructor blacklist <init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;[BI[B)V
    .registers 14
    .param p1, "ch"    # Ljava/nio/channels/MulticastChannel;
    .param p2, "group"    # Ljava/net/InetAddress;
    .param p3, "interf"    # Ljava/net/NetworkInterface;
    .param p4, "source"    # Ljava/net/InetAddress;
    .param p5, "groupAddress"    # [B
    .param p6, "index"    # I
    .param p7, "sourceAddress"    # [B

    .line 117
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "ch":Ljava/nio/channels/MulticastChannel;
    .end local p2    # "group":Ljava/net/InetAddress;
    .end local p3    # "interf":Ljava/net/NetworkInterface;
    .end local p4    # "source":Ljava/net/InetAddress;
    .local v1, "ch":Ljava/nio/channels/MulticastChannel;
    .local v2, "group":Ljava/net/InetAddress;
    .local v3, "interf":Ljava/net/NetworkInterface;
    .local v4, "source":Ljava/net/InetAddress;
    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/MembershipKeyImpl;-><init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lsun/nio/ch/MembershipKeyImpl-IA;)V

    .line 118
    iput-object p5, v0, Lsun/nio/ch/MembershipKeyImpl$Type6;->groupAddress:[B

    .line 119
    iput p6, v0, Lsun/nio/ch/MembershipKeyImpl$Type6;->index:I

    .line 120
    iput-object p7, v0, Lsun/nio/ch/MembershipKeyImpl$Type6;->sourceAddress:[B

    .line 121
    return-void
.end method


# virtual methods
.method blacklist groupAddress()[B
    .registers 2

    .line 124
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl$Type6;->groupAddress:[B

    return-object v0
.end method

.method blacklist index()I
    .registers 2

    .line 128
    iget v0, p0, Lsun/nio/ch/MembershipKeyImpl$Type6;->index:I

    return v0
.end method

.method blacklist source()[B
    .registers 2

    .line 132
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl$Type6;->sourceAddress:[B

    return-object v0
.end method
