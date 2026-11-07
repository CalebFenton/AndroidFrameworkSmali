.class public final Landroid/net/ssl/PakeOption$Builder;
.super Ljava/lang/Object;
.source "PakeOption.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ssl/PakeOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist algorithm:Ljava/lang/String;

.field private blacklist messageComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ssl/PakeOption$Builder;->messageComponents:Ljava/util/Map;

    .line 100
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 103
    iput-object p1, p0, Landroid/net/ssl/PakeOption$Builder;->algorithm:Ljava/lang/String;

    .line 104
    return-void

    .line 101
    :cond_15
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Algorithm cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist validateSpake2PlusComponents()V
    .registers 6

    .line 149
    iget-object v0, p0, Landroid/net/ssl/PakeOption$Builder;->messageComponents:Ljava/util/Map;

    const-string v1, "password"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 155
    iget-object v0, p0, Landroid/net/ssl/PakeOption$Builder;->messageComponents:Ljava/util/Map;

    const-string v1, "client-handshake-limit"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x18

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2f

    .line 156
    iget-object v0, p0, Landroid/net/ssl/PakeOption$Builder;->messageComponents:Ljava/util/Map;

    .line 158
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aget-byte v0, v0, v4

    .line 159
    .local v0, "clientHandshakeLimit":I
    if-lt v0, v3, :cond_27

    if-gt v0, v2, :cond_27

    goto :goto_2f

    .line 160
    :cond_27
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "For SPAKE2+, \'client-handshake-limit\' must be between 1 and 24."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    .end local v0    # "clientHandshakeLimit":I
    :cond_2f
    :goto_2f
    iget-object v0, p0, Landroid/net/ssl/PakeOption$Builder;->messageComponents:Ljava/util/Map;

    const-string v1, "server-handshake-limit"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 165
    iget-object v0, p0, Landroid/net/ssl/PakeOption$Builder;->messageComponents:Ljava/util/Map;

    .line 167
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aget-byte v0, v0, v4

    .line 168
    .local v0, "serverHandshakeLimit":I
    if-lt v0, v3, :cond_48

    if-gt v0, v2, :cond_48

    goto :goto_50

    .line 169
    :cond_48
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "For SPAKE2+, \'server-handshake-limit\' must be between 1 and 24."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .end local v0    # "serverHandshakeLimit":I
    :cond_50
    :goto_50
    return-void

    .line 150
    :cond_51
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "For SPAKE2+, \'password\' must be present."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addMessageComponent(Ljava/lang/String;[B)Landroid/net/ssl/PakeOption$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 120
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 123
    iget-object v0, p0, Landroid/net/ssl/PakeOption$Builder;->messageComponents:Ljava/util/Map;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-object p0

    .line 121
    :cond_14
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/net/ssl/PakeOption;
    .registers 5

    .line 137
    iget-object v0, p0, Landroid/net/ssl/PakeOption$Builder;->messageComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 140
    iget-object v0, p0, Landroid/net/ssl/PakeOption$Builder;->algorithm:Ljava/lang/String;

    const-string v1, "SPAKE2PLUS_PRERELEASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 141
    invoke-direct {p0}, Landroid/net/ssl/PakeOption$Builder;->validateSpake2PlusComponents()V

    .line 144
    :cond_15
    new-instance v0, Landroid/net/ssl/PakeOption;

    iget-object v1, p0, Landroid/net/ssl/PakeOption$Builder;->algorithm:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/ssl/PakeOption$Builder;->messageComponents:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/ssl/PakeOption;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/net/ssl/PakeOption-IA;)V

    return-object v0

    .line 138
    :cond_20
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Message components cannot be empty."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
