.class public Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;
.super Landroid/net/eap/EapSessionConfig$EapMethodConfig;
.source "EapSessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/eap/EapSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapMsChapV2Config"
.end annotation


# static fields
.field private static final blacklist PASSWORD_KEY:Ljava/lang/String; = "password"

.field private static final blacklist USERNAME_KEY:Ljava/lang/String; = "username"


# instance fields
.field private final blacklist mPassword:Ljava/lang/String;

.field private final blacklist mUsername:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 813
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;-><init>(I)V

    .line 815
    const-string v0, "username must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 816
    const-string v0, "password must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 818
    iput-object p1, p0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mUsername:Ljava/lang/String;

    .line 819
    iput-object p2, p0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mPassword:Ljava/lang/String;

    .line 820
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 829
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 830
    new-instance v0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    const-string v1, "username"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 877
    invoke-super {p0, p1}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    instance-of v0, p1, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    if-nez v0, :cond_c

    goto :goto_25

    .line 881
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    .line 883
    .local v0, "other":Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;
    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mUsername:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1

    .line 878
    .end local v0    # "other":Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;
    :cond_25
    :goto_25
    return v1
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .registers 2

    .line 865
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUsername()Ljava/lang/String;
    .registers 2

    .line 855
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 871
    invoke-super {p0}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mPassword:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 841
    invoke-super {p0}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 842
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "username"

    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v1, "password"

    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-object v0
.end method
