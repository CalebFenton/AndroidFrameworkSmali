.class Lsun/nio/ch/MembershipKeyImpl;
.super Ljava/nio/channels/MembershipKey;
.source "MembershipKeyImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/MembershipKeyImpl$Type6;,
        Lsun/nio/ch/MembershipKeyImpl$Type4;
    }
.end annotation


# instance fields
.field private blacklist blockedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist ch:Ljava/nio/channels/MulticastChannel;

.field private final blacklist group:Ljava/net/InetAddress;

.field private final blacklist interf:Ljava/net/NetworkInterface;

.field private volatile blacklist invalid:Z

.field private final blacklist source:Ljava/net/InetAddress;

.field private final blacklist stateLock:Ljava/lang/Object;


# direct methods
.method private constructor blacklist <init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V
    .registers 6
    .param p1, "ch"    # Ljava/nio/channels/MulticastChannel;
    .param p2, "group"    # Ljava/net/InetAddress;
    .param p3, "interf"    # Ljava/net/NetworkInterface;
    .param p4, "source"    # Ljava/net/InetAddress;

    .line 59
    invoke-direct {p0}, Ljava/nio/channels/MembershipKey;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->stateLock:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    .line 61
    iput-object p2, p0, Lsun/nio/ch/MembershipKeyImpl;->group:Ljava/net/InetAddress;

    .line 62
    iput-object p3, p0, Lsun/nio/ch/MembershipKeyImpl;->interf:Ljava/net/NetworkInterface;

    .line 63
    iput-object p4, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lsun/nio/ch/MembershipKeyImpl-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lsun/nio/ch/MembershipKeyImpl;-><init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api block(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .registers 4
    .param p1, "toBlock"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    if-nez v0, :cond_31

    .line 177
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_7
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 180
    monitor-exit v0

    return-object p0

    .line 183
    :cond_15
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    check-cast v1, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1, p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->block(Lsun/nio/ch/MembershipKeyImpl;Ljava/net/InetAddress;)V

    .line 186
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    if-nez v1, :cond_27

    .line 187
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    .line 188
    :cond_27
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    monitor-exit v0

    .line 190
    return-object p0

    .line 189
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1

    .line 175
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key is source-specific"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api channel()Ljava/nio/channels/MulticastChannel;
    .registers 2

    .line 152
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    return-object v0
.end method

.method public whitelist test-api drop()V
    .registers 2

    .line 147
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    check-cast v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0, p0}, Lsun/nio/ch/DatagramChannelImpl;->drop(Lsun/nio/ch/MembershipKeyImpl;)V

    .line 148
    return-void
.end method

.method public whitelist test-api group()Ljava/net/InetAddress;
    .registers 2

    .line 157
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->group:Ljava/net/InetAddress;

    return-object v0
.end method

.method blacklist invalidate()V
    .registers 2

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/MembershipKeyImpl;->invalid:Z

    .line 143
    return-void
.end method

.method public whitelist test-api isValid()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lsun/nio/ch/MembershipKeyImpl;->invalid:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api networkInterface()Ljava/net/NetworkInterface;
    .registers 2

    .line 162
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->interf:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public whitelist test-api sourceAddress()Ljava/net/InetAddress;
    .registers 2

    .line 167
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->group:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    iget-object v2, p0, Lsun/nio/ch/MembershipKeyImpl;->interf:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v2, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    if-eqz v2, :cond_33

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->source:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_33
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api unblock(Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .registers 5
    .param p1, "toUnblock"    # Ljava/net/InetAddress;

    .line 195
    iget-object v0, p0, Lsun/nio/ch/MembershipKeyImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 199
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->ch:Ljava/nio/channels/MulticastChannel;

    check-cast v1, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1, p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->unblock(Lsun/nio/ch/MembershipKeyImpl;Ljava/net/InetAddress;)V

    .line 201
    iget-object v1, p0, Lsun/nio/ch/MembershipKeyImpl;->blockedSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    monitor-exit v0

    .line 203
    return-object p0

    .line 197
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not blocked"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/MembershipKeyImpl;
    .end local p1    # "toUnblock":Ljava/net/InetAddress;
    throw v1

    .line 202
    .restart local p0    # "this":Lsun/nio/ch/MembershipKeyImpl;
    .restart local p1    # "toUnblock":Ljava/net/InetAddress;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method
