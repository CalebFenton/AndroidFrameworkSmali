.class public final Landroid/stats/dnsresolver/DnsResolver$DnsQueryEvent;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/dnsresolver/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DnsQueryEvent"
.end annotation


# static fields
.field public static final blacklist CACHE_HIT:J = 0x10e00000003L

.field public static final blacklist CONNECTED:J = 0x10800000008L

.field public static final blacklist DNS_SERVER_INDEX:J = 0x10500000007L

.field public static final blacklist IP_VERSION:J = 0x10e00000004L

.field public static final blacklist LATENCY_MICROS:J = 0x10500000009L

.field public static final blacklist LINUX_ERRNO:J = 0x10e0000000aL

.field public static final blacklist PROTOCOL:J = 0x10e00000005L

.field public static final blacklist RCODE:J = 0x10e00000001L

.field public static final blacklist RETRY_TIMES:J = 0x10500000006L

.field public static final blacklist TYPE:J = 0x10e00000002L


# direct methods
.method public constructor blacklist <init>(Landroid/stats/dnsresolver/DnsResolver;)V
    .registers 2
    .param p1, "this$0"    # Landroid/stats/dnsresolver/DnsResolver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
