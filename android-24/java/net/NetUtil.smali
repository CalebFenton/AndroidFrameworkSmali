.class Ljava/net/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field private static volatile propRevealLocalAddr:Z

.field private static revealLocalAddress:Z


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static doRevealLocalAddress()Z
    .locals 1

    #@0
    .prologue
    .line 43
    sget-boolean v0, Ljava/net/NetUtil;->propRevealLocalAddr:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-boolean v0, Ljava/net/NetUtil;->revealLocalAddress:Z

    #@6
    :goto_0
    return v0

    #@7
    .line 44
    :cond_0
    invoke-static {}, Ljava/net/NetUtil;->readRevealLocalAddr()Z

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method private static readRevealLocalAddr()Z
    .locals 3

    #@0
    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v1

    #@4
    .line 50
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@6
    .line 54
    :try_start_0
    new-instance v2, Ljava/net/NetUtil$1;

    #@8
    invoke-direct {v2}, Ljava/net/NetUtil$1;-><init>()V

    #@b
    .line 53
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/lang/String;

    #@11
    .line 52
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@14
    move-result v2

    #@15
    sput-boolean v2, Ljava/net/NetUtil;->revealLocalAddress:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 65
    :goto_0
    const/4 v2, 0x1

    #@18
    sput-boolean v2, Ljava/net/NetUtil;->propRevealLocalAddr:Z

    #@1a
    .line 71
    :cond_0
    sget-boolean v2, Ljava/net/NetUtil;->revealLocalAddress:Z

    #@1c
    return v2

    #@1d
    .line 62
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
