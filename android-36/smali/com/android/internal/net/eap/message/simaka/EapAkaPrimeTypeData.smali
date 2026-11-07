.class public Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;
.super Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;
.source "EapAkaPrimeTypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;
    }
.end annotation


# static fields
.field private static final blacklist sTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;

    invoke-direct {v0}, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;->sTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;

    return-void
.end method

.method constructor blacklist <init>(ILjava/util/LinkedHashMap;)V
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

    .line 38
    .local p2, "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;-><init>(ILjava/util/LinkedHashMap;)V

    .line 39
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

    .line 45
    .local p2, "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;-><init>(ILjava/util/LinkedHashMap;[B)V

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/LinkedHashMap;[BLcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;-><init>(ILjava/util/LinkedHashMap;[B)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;)V
    .registers 3
    .param p1, "eapSubtype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;-><init>(ILjava/util/List;)V

    .line 56
    return-void
.end method

.method public static blacklist getEapAkaPrimeTypeDataDecoder()Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;
    .registers 1

    .line 59
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;->sTypeDataDecoder:Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData$EapAkaPrimeTypeDataDecoder;

    return-object v0
.end method
