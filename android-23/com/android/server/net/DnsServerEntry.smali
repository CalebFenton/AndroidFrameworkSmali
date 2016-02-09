.class Lcom/android/server/net/DnsServerEntry;
.super Ljava/lang/Object;
.source "NetlinkTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/DnsServerEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/net/InetAddress;

.field public expiry:J


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;J)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "expiry"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 209
    iput-object p1, p0, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    #@5
    .line 210
    iput-wide p2, p0, Lcom/android/server/net/DnsServerEntry;->expiry:J

    #@7
    .line 208
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/DnsServerEntry;)I
    .locals 4
    .param p1, "other"    # Lcom/android/server/net/DnsServerEntry;

    #@0
    .prologue
    .line 214
    iget-wide v0, p1, Lcom/android/server/net/DnsServerEntry;->expiry:J

    #@2
    iget-wide v2, p0, Lcom/android/server/net/DnsServerEntry;->expiry:J

    #@4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 213
    check-cast p1, Lcom/android/server/net/DnsServerEntry;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/net/DnsServerEntry;->compareTo(Lcom/android/server/net/DnsServerEntry;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
