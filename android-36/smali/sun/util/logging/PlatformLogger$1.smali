.class Lsun/util/logging/PlatformLogger$1;
.super Ljava/lang/Object;
.source "PlatformLogger.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Boolean;
    .registers 4

    .line 162
    const-string v0, "java.util.logging.config.class"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "cname":Ljava/lang/String;
    const-string v1, "java.util.logging.config.file"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "fname":Ljava/lang/String;
    if-nez v0, :cond_13

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v2, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 160
    invoke-virtual {p0}, Lsun/util/logging/PlatformLogger$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
