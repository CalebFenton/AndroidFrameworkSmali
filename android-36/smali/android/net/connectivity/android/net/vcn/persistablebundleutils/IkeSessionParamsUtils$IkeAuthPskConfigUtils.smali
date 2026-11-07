.class final Landroid/net/connectivity/android/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthPskConfigUtils;
.super Ljava/lang/Object;
.source "IkeSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/vcn/persistablebundleutils/IkeSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IkeAuthPskConfigUtils"
.end annotation


# static fields
.field private static final blacklist PSK_KEY:Ljava/lang/String; = "PSK_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .registers 9
    .param p0, "localAuthBundle"    # Landroid/os/PersistableBundle;
    .param p1, "remoteAuthBundle"    # Landroid/os/PersistableBundle;
    .param p2, "builder"    # Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 366
    const-string v0, "localAuthBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 367
    const-string v0, "remoteAuthBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    const-string v0, "PSK_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 370
    .local v1, "localPskBundle":Landroid/os/PersistableBundle;
    nop

    .line 371
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 372
    .local v0, "remotePskBundle":Landroid/os/PersistableBundle;
    const-string v2, "Local PSK was null"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    const-string v2, "Remote PSK was null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    invoke-static {v1}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    .line 376
    .local v2, "localPsk":[B
    invoke-static {v0}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v3

    .line 377
    .local v3, "remotePsk":[B
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 380
    invoke-virtual {p2, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthPsk([B)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 381
    return-void

    .line 378
    :cond_31
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Local PSK and remote PSK are different"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "config"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;
    .param p1, "result"    # Landroid/os/PersistableBundle;

    .line 357
    nop

    .line 358
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->getPsk()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 357
    const-string v1, "PSK_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 359
    return-object p1
.end method
