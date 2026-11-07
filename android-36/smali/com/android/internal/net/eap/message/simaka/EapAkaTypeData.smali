.class public Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
.source "EapAkaTypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;
    }
.end annotation


# static fields
.field public static final blacklist EAP_AKA_AUTHENTICATION_REJECT:I = 0x2

.field public static final blacklist EAP_AKA_CHALLENGE:I = 0x1

.field public static final blacklist EAP_AKA_CLIENT_ERROR:I = 0xe

.field public static final blacklist EAP_AKA_IDENTITY:I = 0x5

.field public static final blacklist EAP_AKA_NOTIFICATION:I = 0xc

.field public static final blacklist EAP_AKA_REAUTHENTICATION:I = 0xd

.field public static final blacklist EAP_AKA_SUBTYPE_STRING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EAP_AKA_SYNCHRONIZATION_FAILURE:I = 0x4

.field protected static final blacklist SUPPORTED_SUBTYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 35
    const-class v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->EAP_AKA_SUBTYPE_STRING:Ljava/util/Map;

    .line 49
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->EAP_AKA_SUBTYPE_STRING:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Challenge"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->EAP_AKA_SUBTYPE_STRING:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Authentication-Reject"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->EAP_AKA_SUBTYPE_STRING:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Synchronization-Failure"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->EAP_AKA_SUBTYPE_STRING:Ljava/util/Map;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Identity"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->EAP_AKA_SUBTYPE_STRING:Ljava/util/Map;

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Notification"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->EAP_AKA_SUBTYPE_STRING:Ljava/util/Map;

    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Re-authentication"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->EAP_AKA_SUBTYPE_STRING:Ljava/util/Map;

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Client-Error"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    .line 60
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;

    invoke-direct {v0}, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->sTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/LinkedHashMap;)V
    .registers 3
    .param p1, "eapSubType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p2, "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;-><init>(ILjava/util/LinkedHashMap;)V

    .line 74
    return-void
.end method

.method protected constructor blacklist <init>(ILjava/util/LinkedHashMap;[B)V
    .registers 4
    .param p1, "eapSubType"    # I
    .param p3, "reservedBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;[B)V"
        }
    .end annotation

    .line 80
    .local p2, "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;-><init>(ILjava/util/LinkedHashMap;[B)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;)V
    .registers 7
    .param p1, "eapSubtype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;-><init>(ILjava/util/LinkedHashMap;)V

    .line 92
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 96
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    .line 97
    .local v1, "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    iget-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    iget v3, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 101
    iget-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    iget v3, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v1    # "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    goto :goto_18

    .line 98
    .restart local v1    # "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate attribute in attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    .end local v1    # "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    :cond_59
    return-void

    .line 93
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subtype for EAP-AKA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getEapAkaTypeDataDecoder()Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->sTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData$EapAkaTypeDataDecoder;

    return-object v0
.end method
