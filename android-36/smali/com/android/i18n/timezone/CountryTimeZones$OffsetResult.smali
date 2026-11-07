.class public final Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;
.super Ljava/lang/Object;
.source "CountryTimeZones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/CountryTimeZones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OffsetResult"
.end annotation


# instance fields
.field private final blacklist isOnlyMatch:Z

.field private final blacklist timeZone:Landroid/icu/util/TimeZone;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/util/TimeZone;Z)V
    .registers 4
    .param p1, "timeZone"    # Landroid/icu/util/TimeZone;
    .param p2, "isOnlyMatch"    # Z

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone;

    iput-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->timeZone:Landroid/icu/util/TimeZone;

    .line 182
    iput-boolean p2, p0, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch:Z

    .line 183
    return-void
.end method


# virtual methods
.method public blacklist test-api getTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->timeZone:Landroid/icu/util/TimeZone;

    return-object v0
.end method

.method public blacklist test-api isOnlyMatch()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OffsetResult{timeZone(ID)=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->timeZone:Landroid/icu/util/TimeZone;

    .line 198
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOnlyMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    return-object v0
.end method
