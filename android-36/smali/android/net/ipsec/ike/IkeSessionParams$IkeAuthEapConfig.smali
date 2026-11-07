.class public Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;
.super Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
.source "IkeSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/IkeSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IkeAuthEapConfig"
.end annotation


# static fields
.field private static final blacklist EAP_CONFIG_KEY:Ljava/lang/String; = "mEapConfig"


# instance fields
.field public final blacklist mEapConfig:Landroid/net/eap/EapSessionConfig;


# direct methods
.method constructor blacklist <init>(Landroid/net/eap/EapSessionConfig;)V
    .registers 4
    .param p1, "eapConfig"    # Landroid/net/eap/EapSessionConfig;

    .line 1466
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;-><init>(II)V

    .line 1468
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->mEapConfig:Landroid/net/eap/EapSessionConfig;

    .line 1469
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 1478
    const-string v0, "PersistableBundle null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1480
    const-string v0, "mEapConfig"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1481
    .local v0, "eapBundle":Landroid/os/PersistableBundle;
    const-string v1, "EAP Config bundle is null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1483
    invoke-static {v0}, Landroid/net/eap/EapSessionConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig;

    move-result-object v1

    .line 1484
    .local v1, "eapConfig":Landroid/net/eap/EapSessionConfig;
    const-string v2, "EAP Config is null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1486
    new-instance v2, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    invoke-direct {v2, v1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;-><init>(Landroid/net/eap/EapSessionConfig;)V

    return-object v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1515
    invoke-super {p0, p1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    instance-of v0, p1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    if-nez v0, :cond_b

    goto :goto_17

    .line 1519
    :cond_b
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->mEapConfig:Landroid/net/eap/EapSessionConfig;

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->mEapConfig:Landroid/net/eap/EapSessionConfig;

    invoke-virtual {v0, v1}, Landroid/net/eap/EapSessionConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1516
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEapConfig()Landroid/net/eap/EapSessionConfig;
    .registers 2

    .line 1505
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->mEapConfig:Landroid/net/eap/EapSessionConfig;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1510
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->mEapConfig:Landroid/net/eap/EapSessionConfig;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 1497
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1498
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->mEapConfig:Landroid/net/eap/EapSessionConfig;

    invoke-virtual {v1}, Landroid/net/eap/EapSessionConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "mEapConfig"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1499
    return-object v0
.end method
