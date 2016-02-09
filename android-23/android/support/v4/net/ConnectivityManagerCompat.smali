.class public Landroid/support/v4/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$GingerbreadConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x10

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 85
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;

    #@8
    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;-><init>()V

    #@b
    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    #@d
    .line 31
    :goto_0
    return-void

    #@e
    .line 86
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@10
    const/16 v1, 0xd

    #@12
    if-lt v0, v1, :cond_1

    #@14
    .line 87
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;

    #@16
    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;-><init>()V

    #@19
    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    #@1b
    goto :goto_0

    #@1c
    .line 88
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1e
    const/16 v1, 0x8

    #@20
    if-lt v0, v1, :cond_2

    #@22
    .line 89
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$GingerbreadConnectivityManagerCompatImpl;

    #@24
    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$GingerbreadConnectivityManagerCompatImpl;-><init>()V

    #@27
    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    #@29
    goto :goto_0

    #@2a
    .line 91
    :cond_2
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;

    #@2c
    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;-><init>()V

    #@2f
    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    #@31
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .locals 3
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 114
    const-string/jumbo v1, "networkInfo"

    #@4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/NetworkInfo;

    #@a
    .line 115
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    #@c
    .line 116
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 118
    :cond_0
    return-object v2
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 1
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    #@0
    .prologue
    .line 103
    sget-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
