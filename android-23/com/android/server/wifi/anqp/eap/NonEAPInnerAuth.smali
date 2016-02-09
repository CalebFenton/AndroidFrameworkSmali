.class public Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
.super Ljava/lang/Object;
.source "NonEAPInnerAuth.java"

# interfaces
.implements Lcom/android/server/wifi/anqp/eap/AuthParam;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;
    }
.end annotation


# static fields
.field private static final sOmaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRevOmaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 17
    new-instance v2, Ljava/util/EnumMap;

    #@2
    const-class v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@4
    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@7
    sput-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    #@9
    .line 18
    new-instance v2, Ljava/util/HashMap;

    #@b
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@e
    sput-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sRevOmaMap:Ljava/util/Map;

    #@10
    .line 23
    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    #@12
    sget-object v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->PAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@14
    const-string/jumbo v4, "PAP"

    #@17
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 24
    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    #@1c
    sget-object v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->CHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@1e
    const-string/jumbo v4, "CHAP"

    #@21
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 25
    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    #@26
    sget-object v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@28
    const-string/jumbo v4, "MS-CHAP"

    #@2b
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 26
    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    #@30
    sget-object v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAPv2:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@32
    const-string/jumbo v4, "MS-CHAP-V2"

    #@35
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 28
    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    #@3a
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3d
    move-result-object v2

    #@3e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v1

    #@42
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_0

    #@48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Ljava/util/Map$Entry;

    #@4e
    .line 29
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sRevOmaMap:Ljava/util/Map;

    #@50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@53
    move-result-object v2

    #@54
    check-cast v2, Ljava/lang/String;

    #@56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    check-cast v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@5c
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    goto :goto_0

    #@60
    .line 14
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    const/4 v1, 0x1

    #@4
    if-eq p1, v1, :cond_0

    #@6
    .line 35
    new-instance v1, Ljava/net/ProtocolException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Bad length: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@17
    move-result v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 38
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@27
    move-result v1

    #@28
    and-int/lit16 v0, v1, 0xff

    #@2a
    .line 39
    .local v0, "typeID":I
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->values()[Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@2d
    move-result-object v1

    #@2e
    array-length v1, v1

    #@2f
    if-ge v0, v1, :cond_1

    #@31
    .line 40
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->values()[Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@34
    move-result-object v1

    #@35
    aget-object v1, v1, v0

    #@37
    .line 39
    :goto_0
    iput-object v1, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@39
    .line 33
    return-void

    #@3a
    .line 41
    :cond_1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->Reserved:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@3c
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)V
    .locals 0
    .param p1, "type"    # Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@5
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "eapType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    sget-object v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sRevOmaMap:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@b
    iput-object v0, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@d
    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 76
    if-ne p1, p0, :cond_0

    #@4
    .line 77
    return v0

    #@5
    .line 78
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    const-class v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    #@d
    if-eq v2, v3, :cond_2

    #@f
    .line 79
    :cond_1
    return v1

    #@10
    .line 81
    :cond_2
    check-cast p1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    #@12
    .end local p1    # "thatObject":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->getType()Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->getType()Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@19
    move-result-object v3

    #@1a
    if-ne v2, v3, :cond_3

    #@1c
    :goto_0
    return v0

    #@1d
    :cond_3
    move v0, v1

    #@1e
    goto :goto_0
.end method

.method public getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1

    #@0
    .prologue
    .line 58
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2
    return-object v0
.end method

.method public getOMAtype()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 66
    sget-object v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getType()Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Auth method NonEAPInnerAuthEAP, inner = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const/16 v1, 0xa

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
