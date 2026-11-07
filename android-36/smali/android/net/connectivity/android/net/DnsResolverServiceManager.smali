.class public Landroid/net/connectivity/android/net/DnsResolverServiceManager;
.super Ljava/lang/Object;
.source "DnsResolverServiceManager.java"


# static fields
.field public static final blacklist DNS_RESOLVER_SERVICE:Ljava/lang/String; = "dnsresolver"


# instance fields
.field private final blacklist mResolver:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "resolver"    # Landroid/os/IBinder;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/net/connectivity/android/net/DnsResolverServiceManager;->mResolver:Landroid/os/IBinder;

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist getService()Landroid/os/IBinder;
    .registers 2

    .line 43
    iget-object v0, p0, Landroid/net/connectivity/android/net/DnsResolverServiceManager;->mResolver:Landroid/os/IBinder;

    return-object v0
.end method
