.class public Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;
.super Ljava/lang/Object;
.source "DnsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/util/DnsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortableAddress"
.end annotation


# instance fields
.field public final blacklist address:Ljava/net/InetAddress;

.field public final blacklist hasSrcAddr:I

.field public final blacklist label:I

.field public final blacklist labelMatch:I

.field public final blacklist precedence:I

.field public final blacklist prefixMatchLen:I

.field public final blacklist scope:I

.field public final blacklist scopeMatch:I


# direct methods
.method public constructor blacklist <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .registers 7
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "srcAddr"    # Ljava/net/InetAddress;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->address:Ljava/net/InetAddress;

    .line 120
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    iput v2, p0, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->hasSrcAddr:I

    .line 121
    invoke-static {p1}, Landroid/net/connectivity/android/net/util/DnsUtils;->-$$Nest$smfindLabel(Ljava/net/InetAddress;)I

    move-result v2

    iput v2, p0, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->label:I

    .line 122
    invoke-static {p1}, Landroid/net/connectivity/android/net/util/DnsUtils;->-$$Nest$smfindScope(Ljava/net/InetAddress;)I

    move-result v2

    iput v2, p0, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->scope:I

    .line 123
    invoke-static {p1}, Landroid/net/connectivity/android/net/util/DnsUtils;->-$$Nest$smfindPrecedence(Ljava/net/InetAddress;)I

    move-result v2

    iput v2, p0, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->precedence:I

    .line 124
    if-eqz p2, :cond_2c

    iget v2, p0, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->label:I

    invoke-static {p2}, Landroid/net/connectivity/android/net/util/DnsUtils;->-$$Nest$smfindLabel(Ljava/net/InetAddress;)I

    move-result v3

    if-ne v2, v3, :cond_2c

    move v2, v0

    goto :goto_2d

    :cond_2c
    move v2, v1

    :goto_2d
    iput v2, p0, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->labelMatch:I

    .line 125
    if-eqz p2, :cond_3a

    iget v2, p0, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->scope:I

    invoke-static {p2}, Landroid/net/connectivity/android/net/util/DnsUtils;->-$$Nest$smfindScope(Ljava/net/InetAddress;)I

    move-result v3

    if-ne v2, v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    :goto_3b
    iput v0, p0, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->scopeMatch:I

    .line 126
    invoke-static {p1}, Landroid/net/connectivity/android/net/util/DnsUtils;->-$$Nest$smisIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {p2}, Landroid/net/connectivity/android/net/util/DnsUtils;->-$$Nest$smisIpv6Address(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 127
    invoke-static {p2, p1}, Landroid/net/connectivity/android/net/util/DnsUtils;->-$$Nest$smcompareIpv6PrefixMatchLen(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    goto :goto_52

    .line 129
    :cond_50
    iput v1, p0, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    .line 131
    :goto_52
    return-void
.end method
