.class public Landroid/net/TestNetworkManager$TestInterfaceRequest;
.super Ljava/lang/Object;
.source "TestNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TestNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestInterfaceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/TestNetworkManager$TestInterfaceRequest$Builder;
    }
.end annotation


# instance fields
.field public final blacklist bringUp:Z

.field public final blacklist disableIpv6ProvDelay:Z

.field public final blacklist hasCarrier:Z

.field public final blacklist ifname:Ljava/lang/String;

.field public final blacklist isTun:Z

.field public final blacklist linkAddresses:[Landroid/net/LinkAddress;


# direct methods
.method private constructor blacklist <init>(ZZZZLjava/lang/String;[Landroid/net/LinkAddress;)V
    .registers 7
    .param p1, "isTun"    # Z
    .param p2, "hasCarrier"    # Z
    .param p3, "bringUp"    # Z
    .param p4, "disableProvDelay"    # Z
    .param p5, "ifname"    # Ljava/lang/String;
    .param p6, "linkAddresses"    # [Landroid/net/LinkAddress;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-boolean p1, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest;->isTun:Z

    .line 279
    iput-boolean p2, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest;->hasCarrier:Z

    .line 280
    iput-boolean p3, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest;->bringUp:Z

    .line 281
    iput-boolean p4, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest;->disableIpv6ProvDelay:Z

    .line 282
    iput-object p5, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest;->ifname:Ljava/lang/String;

    .line 283
    iput-object p6, p0, Landroid/net/TestNetworkManager$TestInterfaceRequest;->linkAddresses:[Landroid/net/LinkAddress;

    .line 284
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZZLjava/lang/String;[Landroid/net/LinkAddress;Landroid/net/TestNetworkManager-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/net/TestNetworkManager$TestInterfaceRequest;-><init>(ZZZZLjava/lang/String;[Landroid/net/LinkAddress;)V

    return-void
.end method
