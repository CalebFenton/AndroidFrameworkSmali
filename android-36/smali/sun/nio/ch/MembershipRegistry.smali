.class Lsun/nio/ch/MembershipRegistry;
.super Ljava/lang/Object;
.source "MembershipRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/MembershipRegistry$ThrowingConsumer;
    }
.end annotation


# instance fields
.field private blacklist groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Ljava/util/List<",
            "Lsun/nio/ch/MembershipKeyImpl;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method blacklist add(Lsun/nio/ch/MembershipKeyImpl;)V
    .registers 5
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;

    .line 88
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->group()Ljava/net/InetAddress;

    move-result-object v0

    .line 90
    .local v0, "group":Ljava/net/InetAddress;
    iget-object v1, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-nez v1, :cond_11

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    .line 92
    const/4 v1, 0x0

    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    goto :goto_19

    .line 94
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_11
    iget-object v1, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 96
    .restart local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    :goto_19
    if-nez v1, :cond_26

    .line 97
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    .line 98
    iget-object v2, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_26
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method blacklist checkMembership(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Ljava/nio/channels/MembershipKey;
    .registers 8
    .param p1, "group"    # Ljava/net/InetAddress;
    .param p2, "interf"    # Ljava/net/NetworkInterface;
    .param p3, "source"    # Ljava/net/InetAddress;

    .line 58
    iget-object v0, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-eqz v0, :cond_53

    .line 59
    iget-object v0, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 60
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    if-eqz v0, :cond_53

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/ch/MembershipKeyImpl;

    .line 62
    .local v2, "key":Lsun/nio/ch/MembershipKeyImpl;
    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl;->networkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 65
    if-nez p3, :cond_39

    .line 66
    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_31

    .line 67
    return-object v2

    .line 68
    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Already a member to receive all packets"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_39
    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 75
    invoke-virtual {v2}, Lsun/nio/ch/MembershipKeyImpl;->sourceAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 76
    return-object v2

    .line 74
    :cond_4a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Already have source-specific membership"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v2    # "key":Lsun/nio/ch/MembershipKeyImpl;
    :cond_52
    goto :goto_12

    .line 81
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_53
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist forEach(Lsun/nio/ch/MembershipRegistry$ThrowingConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lsun/nio/ch/MembershipRegistry$ThrowingConsumer<",
            "Lsun/nio/ch/MembershipKeyImpl;",
            "TX;>;)V^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 133
    .local p1, "action":Lsun/nio/ch/MembershipRegistry$ThrowingConsumer;, "Lsun/nio/ch/MembershipRegistry$ThrowingConsumer<Lsun/nio/ch/MembershipKeyImpl;TX;>;"
    iget-object v0, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    if-eqz v0, :cond_2f

    .line 134
    iget-object v0, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 135
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/MembershipKeyImpl;

    .line 136
    .local v3, "key":Lsun/nio/ch/MembershipKeyImpl;
    invoke-interface {p1, v3}, Lsun/nio/ch/MembershipRegistry$ThrowingConsumer;->accept(Ljava/lang/Object;)V

    .line 137
    .end local v3    # "key":Lsun/nio/ch/MembershipKeyImpl;
    goto :goto_1e

    .line 138
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_2e
    goto :goto_e

    .line 140
    :cond_2f
    return-void
.end method

.method blacklist invalidateAll()V
    .registers 2

    .line 146
    new-instance v0, Lsun/nio/ch/MembershipRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lsun/nio/ch/MembershipRegistry$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lsun/nio/ch/MembershipRegistry;->forEach(Lsun/nio/ch/MembershipRegistry$ThrowingConsumer;)V

    .line 147
    return-void
.end method

.method blacklist remove(Lsun/nio/ch/MembershipKeyImpl;)V
    .registers 6
    .param p1, "key"    # Lsun/nio/ch/MembershipKeyImpl;

    .line 107
    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->group()Ljava/net/InetAddress;

    move-result-object v0

    .line 108
    .local v0, "group":Ljava/net/InetAddress;
    iget-object v1, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 109
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/MembershipKeyImpl;>;"
    if-eqz v1, :cond_2d

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 111
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_12

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 114
    nop

    .line 117
    :cond_22
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 118
    iget-object v3, p0, Lsun/nio/ch/MembershipRegistry;->groups:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/nio/ch/MembershipKeyImpl;>;"
    :cond_2d
    return-void
.end method
