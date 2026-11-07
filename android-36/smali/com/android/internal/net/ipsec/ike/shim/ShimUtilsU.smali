.class public Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsU;
.super Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsT;
.source "ShimUtilsU.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsT;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist shouldSkipIfSameNetwork(Z)Z
    .registers 2
    .param p1, "skipIfSameNetwork"    # Z

    .line 39
    return p1
.end method

.method public blacklist startKeepalive(Landroid/net/SocketKeepalive;IILandroid/net/Network;)V
    .registers 5
    .param p1, "keepalive"    # Landroid/net/SocketKeepalive;
    .param p2, "keepaliveDelaySeconds"    # I
    .param p3, "keepaliveOptions"    # I
    .param p4, "underpinnedNetwork"    # Landroid/net/Network;

    .line 34
    invoke-virtual {p1, p2, p3, p4}, Landroid/net/SocketKeepalive;->start(IILandroid/net/Network;)V

    .line 35
    return-void
.end method

.method public blacklist supportsSameSocketKernelMigration(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 45
    const-string v1, "android.software.ipsec_tunnel_migration"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 44
    return v0
.end method
