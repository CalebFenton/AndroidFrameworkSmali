.class public final Landroid/net/connectivity/org/chromium/net/impl/UserAgent;
.super Ljava/lang/Object;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/UserAgent$UserAgentsHolder;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDefault()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/UserAgent$UserAgentsHolder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    return-object v0
.end method

.method static blacklist getDefaultQuicUserAgentId()Ljava/lang/String;
    .registers 1

    .line 28
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/UserAgent$UserAgentsHolder;->DEFAULT_QUIC_USER_AGENT:Ljava/lang/String;

    return-object v0
.end method
