.class public Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;
.super Ljava/lang/Object;
.source "RequestDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;
    }
.end annotation


# instance fields
.field private final mRedirectURI:Ljava/lang/String;

.field private final mRequestReason:Ljava/lang/String;

.field private final mSessionID:Ljava/lang/String;

.field private final mSppversion:Ljava/lang/String;

.field private final mSupportedMOs:[Ljava/lang/String;

.field private final mSupportedVersions:[Ljava/lang/String;

.field private final m_MOs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/MOTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/MOTree;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 25
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;Ljava/lang/String;>;"
    .local p2, "mos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/omadm/MOTree;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SPPVersion:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mSppversion:Ljava/lang/String;

    #@d
    .line 27
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RedirectURI:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@f
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mRedirectURI:Ljava/lang/String;

    #@17
    .line 28
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->RequestReason:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mRequestReason:Ljava/lang/String;

    #@21
    .line 29
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SessionID:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/lang/String;

    #@29
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mSessionID:Ljava/lang/String;

    #@2b
    .line 30
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedVersions:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@2d
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Ljava/lang/String;

    #@33
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mSupportedVersions:[Ljava/lang/String;

    #@39
    .line 31
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;->SupportedMOs:Lcom/android/server/wifi/hotspot2/omadm/RequestDetail$RequestFields;

    #@3b
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/lang/String;

    #@41
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mSupportedMOs:[Ljava/lang/String;

    #@47
    .line 32
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->m_MOs:Ljava/util/Collection;

    #@49
    .line 25
    return-void
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "list"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 40
    if-eqz p0, :cond_0

    #@3
    const-string/jumbo v0, "[ \n\r]+"

    #@6
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getMOs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/MOTree;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->m_MOs:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 47
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "SPPVersion"

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    const-string/jumbo v4, " = \'"

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mSppversion:Ljava/lang/String;

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    const-string/jumbo v4, "\'\n"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 48
    const-string/jumbo v3, "RedirectURI"

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, " = \'"

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mRedirectURI:Ljava/lang/String;

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    const-string/jumbo v4, "\'\n"

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 49
    const-string/jumbo v3, "RequestReason"

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    const-string/jumbo v4, " = \'"

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mRequestReason:Ljava/lang/String;

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    const-string/jumbo v4, "\'\n"

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 50
    const-string/jumbo v3, "SessionID"

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    const-string/jumbo v4, " = \'"

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mSessionID:Ljava/lang/String;

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    const-string/jumbo v4, "\'\n"

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 51
    const-string/jumbo v3, "SupportedVersions"

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    const-string/jumbo v4, " = "

    #@79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mSupportedVersions:[Ljava/lang/String;

    #@7f
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    .line 53
    const-string/jumbo v3, "SupportedMOs"

    #@8d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    const-string/jumbo v4, " = "

    #@94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->mSupportedMOs:[Ljava/lang/String;

    #@9a
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a5
    .line 54
    const-string/jumbo v3, "MOs:\n"

    #@a8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    .line 55
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/RequestDetail;->m_MOs:Ljava/util/Collection;

    #@ad
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b0
    move-result-object v1

    #@b1
    .local v1, "mo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b4
    move-result v3

    #@b5
    if-eqz v3, :cond_0

    #@b7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ba
    move-result-object v0

    #@bb
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@bd
    .line 56
    .local v0, "mo":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    goto :goto_0

    #@c1
    .line 58
    .end local v0    # "mo":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v3

    #@c5
    return-object v3
.end method
