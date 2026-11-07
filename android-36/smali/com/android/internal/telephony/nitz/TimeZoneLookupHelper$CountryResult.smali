.class public final Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;
.super Ljava/lang/Object;
.source "TimeZoneLookupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountryResult"
.end annotation


# static fields
.field public static final blacklist QUALITY_DEFAULT_BOOSTED:I = 0x2

.field public static final blacklist QUALITY_MULTIPLE_ZONES_DIFFERENT_OFFSETS:I = 0x4

.field public static final blacklist QUALITY_MULTIPLE_ZONES_SAME_OFFSET:I = 0x3

.field public static final blacklist QUALITY_SINGLE_ZONE:I = 0x1


# instance fields
.field private final blacklist mDebugInfo:Ljava/lang/String;

.field public final blacklist quality:I

.field public final blacklist zoneId:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->quality:I

    .line 81
    iput-object p3, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->mDebugInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;

    if-eq v3, v2, :cond_10

    goto :goto_23

    .line 92
    :cond_10
    check-cast p1, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;

    .line 93
    iget v2, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->quality:I

    iget v3, p1, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->quality:I

    if-ne v2, v3, :cond_23

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    iget p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->quality:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountryResult{zoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->quality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->mDebugInfo:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
