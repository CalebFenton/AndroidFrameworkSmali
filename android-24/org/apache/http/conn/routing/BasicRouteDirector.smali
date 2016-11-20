.class public Lorg/apache/http/conn/routing/BasicRouteDirector;
.super Ljava/lang/Object;
.source "BasicRouteDirector.java"

# interfaces
.implements Lorg/apache/http/conn/routing/HttpRouteDirector;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected directStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I
    .locals 3
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;
    .param p2, "fact"    # Lorg/apache/http/conn/routing/RouteInfo;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 114
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    #@4
    move-result v0

    #@5
    const/4 v1, 0x1

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 115
    return v2

    #@9
    .line 116
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    #@c
    move-result-object v0

    #@d
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 117
    return v2

    #@18
    .line 125
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    #@1b
    move-result v0

    #@1c
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    #@1f
    move-result v1

    #@20
    if-eq v0, v1, :cond_2

    #@22
    .line 126
    return v2

    #@23
    .line 129
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    #@26
    move-result-object v0

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 130
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    #@2c
    move-result-object v0

    #@2d
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 134
    :cond_3
    const/4 v0, 0x0

    #@38
    return v0

    #@39
    .line 132
    :cond_4
    return v2
.end method

.method protected firstStep(Lorg/apache/http/conn/routing/RouteInfo;)I
    .locals 2
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 98
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    #@4
    move-result v1

    #@5
    if-le v1, v0, :cond_0

    #@7
    .line 99
    const/4 v0, 0x2

    #@8
    .line 98
    :cond_0
    return v0
.end method

.method public nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I
    .locals 3
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;
    .param p2, "fact"    # Lorg/apache/http/conn/routing/RouteInfo;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 70
    if-nez p1, :cond_0

    #@3
    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    .line 72
    const-string/jumbo v2, "Planned route may not be null."

    #@8
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 75
    :cond_0
    const/4 v0, -0x1

    #@d
    .line 77
    .local v0, "step":I
    if-eqz p2, :cond_1

    #@f
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    #@12
    move-result v1

    #@13
    if-ge v1, v2, :cond_2

    #@15
    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/http/conn/routing/BasicRouteDirector;->firstStep(Lorg/apache/http/conn/routing/RouteInfo;)I

    #@18
    move-result v0

    #@19
    .line 84
    :goto_0
    return v0

    #@1a
    .line 79
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    #@1d
    move-result v1

    #@1e
    if-le v1, v2, :cond_3

    #@20
    .line 80
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/routing/BasicRouteDirector;->proxiedStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    #@23
    move-result v0

    #@24
    goto :goto_0

    #@25
    .line 82
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/routing/BasicRouteDirector;->directStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    #@28
    move-result v0

    #@29
    goto :goto_0
.end method

.method protected proxiedStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I
    .locals 6
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;
    .param p2, "fact"    # Lorg/apache/http/conn/routing/RouteInfo;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 149
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    #@4
    move-result v3

    #@5
    const/4 v4, 0x1

    #@6
    if-gt v3, v4, :cond_0

    #@8
    .line 150
    return v5

    #@9
    .line 151
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    #@c
    move-result-object v3

    #@d
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v3, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 152
    return v5

    #@18
    .line 153
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    #@1b
    move-result v2

    #@1c
    .line 154
    .local v2, "phc":I
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    #@1f
    move-result v0

    #@20
    .line 155
    .local v0, "fhc":I
    if-ge v2, v0, :cond_2

    #@22
    .line 156
    return v5

    #@23
    .line 158
    :cond_2
    const/4 v1, 0x0

    #@24
    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    #@26
    if-ge v1, v3, :cond_4

    #@28
    .line 159
    invoke-interface {p1, v1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopTarget(I)Lorg/apache/http/HttpHost;

    #@2b
    move-result-object v3

    #@2c
    invoke-interface {p2, v1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopTarget(I)Lorg/apache/http/HttpHost;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v3, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-nez v3, :cond_3

    #@36
    .line 160
    return v5

    #@37
    .line 158
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 163
    :cond_4
    if-le v2, v0, :cond_5

    #@3c
    .line 164
    const/4 v3, 0x4

    #@3d
    return v3

    #@3e
    .line 167
    :cond_5
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_6

    #@44
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_a

    #@4a
    .line 168
    :cond_6
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_7

    #@50
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_a

    #@56
    .line 171
    :cond_7
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    #@59
    move-result v3

    #@5a
    if-eqz v3, :cond_8

    #@5c
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_b

    #@62
    .line 173
    :cond_8
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    #@65
    move-result v3

    #@66
    if-eqz v3, :cond_9

    #@68
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    #@6b
    move-result v3

    #@6c
    if-eqz v3, :cond_c

    #@6e
    .line 179
    :cond_9
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    #@71
    move-result v3

    #@72
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    #@75
    move-result v4

    #@76
    if-eq v3, v4, :cond_d

    #@78
    .line 180
    return v5

    #@79
    .line 169
    :cond_a
    return v5

    #@7a
    .line 172
    :cond_b
    const/4 v3, 0x3

    #@7b
    return v3

    #@7c
    .line 174
    :cond_c
    const/4 v3, 0x5

    #@7d
    return v3

    #@7e
    .line 182
    :cond_d
    const/4 v3, 0x0

    #@7f
    return v3
.end method
