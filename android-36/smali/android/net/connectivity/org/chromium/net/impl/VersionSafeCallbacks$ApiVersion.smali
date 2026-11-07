.class public final Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$ApiVersion;
.super Ljava/lang/Object;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiVersion"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCronetVersion()Ljava/lang/String;
    .registers 1

    .line 303
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/ApiVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMaximumAvailableApiLevel()I
    .registers 2

    .line 293
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$ApiVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 294
    .local v0, "cronetMajorVersion":I
    const/16 v1, 0x3b

    if-ge v0, v1, :cond_1a

    .line 295
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/ApiVersion;->getApiLevel()I

    move-result v1

    return v1

    .line 297
    :cond_1a
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/ApiVersion;->getMaximumAvailableApiLevel()I

    move-result v1

    return v1
.end method
