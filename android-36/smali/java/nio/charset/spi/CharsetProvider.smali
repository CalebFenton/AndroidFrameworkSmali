.class public abstract Ljava/nio/charset/spi/CharsetProvider;
.super Ljava/lang/Object;
.source "CharsetProvider.java"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 89
    invoke-static {}, Ljava/nio/charset/spi/CharsetProvider;->checkPermission()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/charset/spi/CharsetProvider;-><init>(Ljava/lang/Void;)V

    .line 90
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Void;)V
    .registers 2
    .param p1, "ignore"    # Ljava/lang/Void;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkPermission()Ljava/lang/Void;
    .registers 3

    .line 74
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 75
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 76
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "charsetProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 77
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public abstract whitelist test-api charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end method

.method public abstract whitelist test-api charsets()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end method
