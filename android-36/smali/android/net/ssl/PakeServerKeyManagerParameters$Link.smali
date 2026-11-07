.class public final Landroid/net/ssl/PakeServerKeyManagerParameters$Link;
.super Ljava/lang/Object;
.source "PakeServerKeyManagerParameters.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ssl/PakeServerKeyManagerParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Link"
.end annotation


# instance fields
.field private final blacklist clientId:[B

.field private final blacklist serverId:[B


# direct methods
.method private constructor blacklist <init>([B[B)V
    .registers 3
    .param p1, "clientId"    # [B
    .param p2, "serverId"    # [B

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->clientId:[B

    .line 123
    iput-object p2, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->serverId:[B

    .line 124
    return-void
.end method

.method synthetic constructor blacklist <init>([B[BLandroid/net/ssl/PakeServerKeyManagerParameters-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;-><init>([B[B)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 146
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 147
    return v0

    .line 148
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 150
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;

    .line 151
    .local v2, "that":Landroid/net/ssl/PakeServerKeyManagerParameters$Link;
    iget-object v3, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->clientId:[B

    iget-object v4, v2, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->clientId:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->serverId:[B

    iget-object v4, v2, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->serverId:[B

    .line 152
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 151
    :goto_2b
    return v0

    .line 149
    .end local v2    # "that":Landroid/net/ssl/PakeServerKeyManagerParameters$Link;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public whitelist getClientId()[B
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->clientId:[B

    return-object v0
.end method

.method public whitelist getServerId()[B
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->serverId:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 157
    iget-object v0, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->clientId:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 158
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->serverId:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 159
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
