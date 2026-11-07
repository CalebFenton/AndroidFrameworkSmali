.class Lcom/android/org/bouncycastle/util/Strings$1;
.super Ljava/lang/Object;
.source "Strings.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 1

    .line 27
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/Strings$1;->run()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist run()Ljava/lang/String;
    .registers 1

    .line 31
    const-string p0, "line.separator"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
