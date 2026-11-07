.class public Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
.source "EapSimTypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;
    }
.end annotation


# static fields
.field public static final blacklist EAP_SIM_CHALLENGE:I = 0xb

.field public static final blacklist EAP_SIM_CLIENT_ERROR:I = 0xe

.field public static final blacklist EAP_SIM_NOTIFICATION:I = 0xc

.field public static final blacklist EAP_SIM_REAUTHENTICATION:I = 0xd

.field public static final blacklist EAP_SIM_START:I = 0xa

.field public static final blacklist EAP_SIM_SUBTYPE_STRING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUPPORTED_SUBTYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSUPPORTED_SUBTYPES()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 35
    const-class v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->EAP_SIM_SUBTYPE_STRING:Ljava/util/Map;

    .line 47
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->EAP_SIM_SUBTYPE_STRING:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Start"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->EAP_SIM_SUBTYPE_STRING:Ljava/util/Map;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Challenge"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->EAP_SIM_SUBTYPE_STRING:Ljava/util/Map;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Notification"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->EAP_SIM_SUBTYPE_STRING:Ljava/util/Map;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Re-authentication"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->EAP_SIM_SUBTYPE_STRING:Ljava/util/Map;

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Client-Error"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    .line 56
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;

    invoke-direct {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->sTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;

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

    .line 67
    .local p2, "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;-><init>(ILjava/util/LinkedHashMap;)V

    .line 68
    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/LinkedHashMap;[B)V
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

    .line 74
    .local p2, "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;-><init>(ILjava/util/LinkedHashMap;[B)V

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/LinkedHashMap;[BLcom/android/internal/net/eap/message/simaka/EapSimTypeData-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;-><init>(ILjava/util/LinkedHashMap;[B)V

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

    .line 78
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;-><init>(ILjava/util/LinkedHashMap;)V

    .line 80
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->SUPPORTED_SUBTYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 84
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    .line 85
    .local v1, "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    iget-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    iget v3, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 89
    iget-object v2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    iget v3, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v1    # "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    goto :goto_18

    .line 86
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

    .line 91
    .end local v1    # "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    :cond_59
    return-void

    .line 81
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subtype for EAP-SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getEapSimTypeDataDecoder()Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->sTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;

    return-object v0
.end method
