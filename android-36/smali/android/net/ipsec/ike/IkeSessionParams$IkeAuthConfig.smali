.class public abstract Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
.super Ljava/lang/Object;
.source "IkeSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/IkeSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IkeAuthConfig"
.end annotation


# static fields
.field private static final blacklist AUTH_DIRECTION_KEY:Ljava/lang/String; = "mAuthDirection"

.field private static final blacklist AUTH_METHOD_KEY:Ljava/lang/String; = "mAuthMethod"


# instance fields
.field public final blacklist mAuthDirection:I

.field public final blacklist mAuthMethod:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "authMethod"    # I
    .param p2, "authDirection"    # I

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    iput p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthMethod:I

    .line 1075
    iput p2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthDirection:I

    .line 1076
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    .registers 6
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 1085
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1087
    const-string v0, "mAuthMethod"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1088
    .local v0, "authMethod":I
    packed-switch v0, :pswitch_data_62

    .line 1106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Auth Method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1104
    :pswitch_27
    invoke-static {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    move-result-object v1

    return-object v1

    .line 1092
    :pswitch_2c
    const-string v1, "mAuthDirection"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_6c

    .line 1098
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Digital-signature-based auth configuration with invalid direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1101
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1096
    :pswitch_52
    invoke-static {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;

    move-result-object v1

    return-object v1

    .line 1094
    :pswitch_57
    invoke-static {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;

    move-result-object v1

    return-object v1

    .line 1090
    :pswitch_5c
    invoke-static {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_2c
        :pswitch_27
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_57
        :pswitch_52
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1131
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1132
    return v1

    .line 1135
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 1137
    .local v0, "other":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthMethod:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthMethod:I

    if-ne v2, v3, :cond_16

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthDirection:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthDirection:I

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1126
    iget v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthMethod:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthDirection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 1117
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 1119
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "mAuthMethod"

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthMethod:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1120
    const-string v1, "mAuthDirection"

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthDirection:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1121
    return-object v0
.end method
