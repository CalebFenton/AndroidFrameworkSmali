.class public Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;
.super Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
.source "IkeSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/IkeSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IkeAuthPskConfig"
.end annotation


# static fields
.field private static final blacklist PSK_KEY:Ljava/lang/String; = "mPsk"


# instance fields
.field public final blacklist mPsk:[B


# direct methods
.method constructor blacklist <init>([B)V
    .registers 4
    .param p1, "psk"    # [B

    .line 1153
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;-><init>(II)V

    .line 1154
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->mPsk:[B

    .line 1155
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 1164
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1166
    const-string v0, "mPsk"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1167
    .local v0, "pskBundle":Landroid/os/PersistableBundle;
    const-string v1, "PSK bundle is null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1169
    new-instance v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    invoke-static {v0}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1199
    invoke-super {p0, p1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    instance-of v0, p1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    if-nez v0, :cond_b

    goto :goto_17

    .line 1203
    :cond_b
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->mPsk:[B

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->mPsk:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 1200
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPsk()[B
    .registers 3

    .line 1189
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->mPsk:[B

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->mPsk:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1194
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->mPsk:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 1180
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1182
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->mPsk:[B

    invoke-static {v1}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "mPsk"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1183
    return-object v0
.end method
