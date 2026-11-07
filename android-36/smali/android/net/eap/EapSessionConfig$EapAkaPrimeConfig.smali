.class public Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;
.super Landroid/net/eap/EapSessionConfig$EapAkaConfig;
.source "EapSessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/eap/EapSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapAkaPrimeConfig"
.end annotation


# static fields
.field private static final blacklist ALL_MISMATCHED_NETWORK_KEY:Ljava/lang/String; = "allowMismatchedNetworkNames"

.field private static final blacklist NETWORK_NAME_KEY:Ljava/lang/String; = "networkName"


# instance fields
.field private final blacklist mAllowMismatchedNetworkNames:Z

.field private final blacklist mNetworkName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;Z)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "apptype"    # I
    .param p3, "networkName"    # Ljava/lang/String;
    .param p4, "allowMismatchedNetworkNames"    # Z

    .line 723
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;-><init>(IIILandroid/net/eap/EapSessionConfig$EapAkaOption;)V

    .line 725
    const-string v0, "networkName must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 727
    iput-object p3, p0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mNetworkName:Ljava/lang/String;

    .line 728
    iput-boolean p4, p0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mAllowMismatchedNetworkNames:Z

    .line 729
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;
    .registers 6
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 738
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 739
    new-instance v0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    .line 740
    const-string v1, "subId"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 741
    const-string v2, "apptype"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 742
    const-string v3, "networkName"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 743
    const-string v4, "allowMismatchedNetworkNames"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;-><init>(IILjava/lang/String;Z)V

    .line 739
    return-object v0
.end method


# virtual methods
.method public whitelist allowsMismatchedNetworkNames()Z
    .registers 2

    .line 777
    iget-boolean v0, p0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mAllowMismatchedNetworkNames:Z

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 789
    invoke-super {p0, p1}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    instance-of v0, p1, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    if-nez v0, :cond_c

    goto :goto_21

    .line 793
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    .line 795
    .local v0, "other":Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;
    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mNetworkName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mAllowMismatchedNetworkNames:Z

    iget-boolean v3, v0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mAllowMismatchedNetworkNames:Z

    if-ne v2, v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    .line 790
    .end local v0    # "other":Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;
    :cond_21
    :goto_21
    return v1
.end method

.method public whitelist getNetworkName()Ljava/lang/String;
    .registers 2

    .line 768
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 783
    invoke-super {p0}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mNetworkName:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mAllowMismatchedNetworkNames:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 754
    invoke-super {p0}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 755
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "networkName"

    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v1, "allowMismatchedNetworkNames"

    iget-boolean v2, p0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->mAllowMismatchedNetworkNames:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 758
    return-object v0
.end method
