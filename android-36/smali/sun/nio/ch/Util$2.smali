.class Lsun/nio/ch/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/Util;->getMaxCachedBufferSize()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 67
    invoke-virtual {p0}, Lsun/nio/ch/Util$2;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/String;
    .registers 2

    .line 70
    const-string v0, "jdk.nio.maxCachedBufferSize"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
