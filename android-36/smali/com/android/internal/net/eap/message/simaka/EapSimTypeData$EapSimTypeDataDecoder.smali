.class public Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;
.source "EapSimTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapSimTypeDataDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder<",
        "Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist EAP_METHOD:Ljava/lang/String; = "EAP-SIM"

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    const-class v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 7

    .line 105
    sget-object v1, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->-$$Nest$sfgetSUPPORTED_SUBTYPES()Ljava/util/Set;

    move-result-object v3

    .line 109
    invoke-static {}, Lcom/android/internal/net/eap/message/simaka/EapSimAttributeFactory;->getInstance()Lcom/android/internal/net/eap/message/simaka/EapSimAttributeFactory;

    move-result-object v4

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->EAP_SIM_SUBTYPE_STRING:Ljava/util/Map;

    .line 105
    const-string v2, "EAP-SIM"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttributeFactory;Ljava/util/Map;)V

    .line 111
    return-void
.end method


# virtual methods
.method public blacklist decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;
    .registers 3
    .param p1, "typeData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<",
            "Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-super {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$EapSimAkaTypeDataDecoder;->decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist getInstance(ILjava/util/LinkedHashMap;[B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;->getInstance(ILjava/util/LinkedHashMap;[B)Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getInstance(ILjava/util/LinkedHashMap;[B)Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;
    .registers 6
    .param p1, "eapSubtype"    # I
    .param p3, "reservedBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;[B)",
            "Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;"
        }
    .end annotation

    .line 130
    .local p2, "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;-><init>(ILjava/util/LinkedHashMap;[BLcom/android/internal/net/eap/message/simaka/EapSimTypeData-IA;)V

    return-object v0
.end method
