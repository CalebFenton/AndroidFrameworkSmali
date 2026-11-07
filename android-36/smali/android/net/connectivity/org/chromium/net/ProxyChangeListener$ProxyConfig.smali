.class Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;
.super Ljava/lang/Object;
.source "ProxyChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyConfig"
.end annotation


# static fields
.field public static final blacklist DIRECT:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;


# instance fields
.field public final blacklist mExclusionList:[Ljava/lang/String;

.field public final blacklist mHost:Ljava/lang/String;

.field public final blacklist mPacUrl:Ljava/lang/String;

.field public final blacklist mPort:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->fromProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 111
    new-instance v0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->DIRECT:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "pacUrl"    # Ljava/lang/String;
    .param p4, "exclusionList"    # [Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mHost:Ljava/lang/String;

    .line 76
    iput p2, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mPort:I

    .line 77
    iput-object p3, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mPacUrl:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mExclusionList:[Ljava/lang/String;

    .line 79
    return-void
.end method

.method private static blacklist fromProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;
    .registers 8
    .param p0, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 82
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 83
    return-object v0

    .line 85
    :cond_4
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    .line 87
    .local v2, "pacFileUrl":Landroid/net/Uri;
    new-instance v3, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    .line 88
    if-nez v1, :cond_13

    const-string v4, ""

    goto :goto_14

    :cond_13
    move-object v4, v1

    .line 89
    :goto_14
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v5

    .line 90
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_25

    :cond_21
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_25
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v0, v6}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 87
    return-object v3
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 97
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mHost:Ljava/lang/String;

    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_16

    :cond_13
    const-string v0, "<redacted>"

    goto :goto_18

    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mHost:Ljava/lang/String;

    .line 98
    .local v0, "possiblyRedactedHost":Ljava/lang/String;
    :goto_18
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mPort:I

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 103
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mPacUrl:Ljava/lang/String;

    if-nez v3, :cond_27

    const-string v3, "null"

    goto :goto_29

    :cond_27
    const-string v3, "\"<redacted>\""

    :goto_29
    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 98
    const-string v3, "ProxyConfig [mHost=\"%s\", mPort=%d, mPacUrl=%s]"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
