.class public final Landroid/timezone/CountryTimeZones$OffsetResult;
.super Ljava/lang/Object;
.source "CountryTimeZones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/timezone/CountryTimeZones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OffsetResult"
.end annotation


# instance fields
.field private final blacklist mIsOnlyMatch:Z

.field private final blacklist mTimeZone:Landroid/icu/util/TimeZone;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/util/TimeZone;Z)V
    .registers 4
    .param p1, "timeZone"    # Landroid/icu/util/TimeZone;
    .param p2, "isOnlyMatch"    # Z

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone;

    iput-object v0, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    .line 104
    iput-boolean p2, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 125
    return v0

    .line 127
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 130
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/timezone/CountryTimeZones$OffsetResult;

    .line 131
    .local v2, "that":Landroid/timezone/CountryTimeZones$OffsetResult;
    iget-boolean v3, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    iget-boolean v4, v2, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    .line 132
    invoke-virtual {v3}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v4}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 131
    :goto_2f
    return v0

    .line 128
    .end local v2    # "that":Landroid/timezone/CountryTimeZones$OffsetResult;
    :cond_30
    :goto_30
    return v1
.end method

.method public blacklist getTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 137
    iget-object v0, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    iget-boolean v1, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isOnlyMatch()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OffsetResult{mTimeZone(ID)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    .line 143
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsOnlyMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/timezone/CountryTimeZones$OffsetResult;->mIsOnlyMatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0
.end method
