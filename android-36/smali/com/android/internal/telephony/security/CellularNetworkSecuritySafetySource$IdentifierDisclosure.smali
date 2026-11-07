.class Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;
.super Ljava/lang/Object;
.source "CellularNetworkSecuritySafetySource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentifierDisclosure"
.end annotation


# instance fields
.field private final blacklist mDisclosureCount:I

.field private final blacklist mWindowEnd:Ljava/time/Instant;

.field private final blacklist mWindowStart:Ljava/time/Instant;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetDisclosureCount(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->getDisclosureCount()I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(ILjava/time/Instant;Ljava/time/Instant;)V
    .registers 4

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput p1, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mDisclosureCount:I

    .line 417
    iput-object p2, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mWindowStart:Ljava/time/Instant;

    .line 418
    iput-object p3, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mWindowEnd:Ljava/time/Instant;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/time/Instant;Ljava/time/Instant;Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;-><init>(ILjava/time/Instant;Ljava/time/Instant;)V

    return-void
.end method

.method private blacklist getDisclosureCount()I
    .registers 1

    .line 422
    iget p0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mDisclosureCount:I

    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 435
    instance-of v0, p1, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 438
    :cond_6
    check-cast p1, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;

    .line 439
    iget v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mDisclosureCount:I

    iget v2, p1, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mDisclosureCount:I

    if-ne v0, v2, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mWindowStart:Ljava/time/Instant;

    iget-object v2, p1, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mWindowStart:Ljava/time/Instant;

    .line 440
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mWindowEnd:Ljava/time/Instant;

    iget-object p1, p1, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mWindowEnd:Ljava/time/Instant;

    .line 441
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 446
    iget v0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mDisclosureCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mWindowStart:Ljava/time/Instant;

    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$IdentifierDisclosure;->mWindowEnd:Ljava/time/Instant;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
