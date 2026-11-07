.class public final Landroid/service/timezone/TimeZoneProviderEvent;
.super Ljava/lang/Object;
.source "TimeZoneProviderEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/TimeZoneProviderEvent$EventType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/timezone/TimeZoneProviderEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EVENT_TYPE_PERMANENT_FAILURE:I = 0x1

.field public static final blacklist EVENT_TYPE_SUGGESTION:I = 0x2

.field public static final blacklist EVENT_TYPE_UNCERTAIN:I = 0x3


# instance fields
.field private final blacklist mCreationElapsedMillis:J

.field private final blacklist mFailureCause:Ljava/lang/String;

.field private final blacklist mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

.field private final blacklist mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 173
    new-instance v0, Landroid/service/timezone/TimeZoneProviderEvent$1;

    invoke-direct {v0}, Landroid/service/timezone/TimeZoneProviderEvent$1;-><init>()V

    sput-object v0, Landroid/service/timezone/TimeZoneProviderEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderStatus;)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "creationElapsedMillis"    # J
    .param p4, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;
    .param p5, "failureCause"    # Ljava/lang/String;
    .param p6, "timeZoneProviderStatus"    # Landroid/service/timezone/TimeZoneProviderStatus;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->validateEventType(I)I

    move-result v0

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    .line 87
    iput-wide p2, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    .line 88
    iput-object p4, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 89
    iput-object p5, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    .line 93
    iget v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    if-nez v0, :cond_1b

    goto :goto_42

    .line 94
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected status: mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeZoneProviderStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_42
    :goto_42
    return-void
.end method

.method synthetic constructor blacklist <init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderStatus;Landroid/service/timezone/TimeZoneProviderEvent-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderStatus;)V

    return-void
.end method

.method public static blacklist createPermanentFailureEvent(JLjava/lang/String;)Landroid/service/timezone/TimeZoneProviderEvent;
    .registers 10
    .param p0, "creationElapsedMillis"    # J
    .param p2, "cause"    # Ljava/lang/String;

    .line 130
    new-instance v0, Landroid/service/timezone/TimeZoneProviderEvent;

    .line 131
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-wide v2, p0

    .end local p0    # "creationElapsedMillis":J
    .local v2, "creationElapsedMillis":J
    invoke-direct/range {v0 .. v6}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderStatus;)V

    .line 130
    return-object v0
.end method

.method public static blacklist createSuggestionEvent(JLandroid/service/timezone/TimeZoneProviderSuggestion;Landroid/service/timezone/TimeZoneProviderStatus;)Landroid/service/timezone/TimeZoneProviderEvent;
    .registers 11
    .param p0, "creationElapsedMillis"    # J
    .param p2, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;
    .param p3, "providerStatus"    # Landroid/service/timezone/TimeZoneProviderStatus;

    .line 112
    new-instance v0, Landroid/service/timezone/TimeZoneProviderEvent;

    .line 113
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/service/timezone/TimeZoneProviderSuggestion;

    const/4 v5, 0x0

    const/4 v1, 0x2

    move-wide v2, p0

    move-object v6, p3

    .end local p0    # "creationElapsedMillis":J
    .end local p3    # "providerStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    .local v2, "creationElapsedMillis":J
    .local v6, "providerStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    invoke-direct/range {v0 .. v6}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderStatus;)V

    .line 112
    return-object v0
.end method

.method public static blacklist createUncertainEvent(JLandroid/service/timezone/TimeZoneProviderStatus;)Landroid/service/timezone/TimeZoneProviderEvent;
    .registers 10
    .param p0, "creationElapsedMillis"    # J
    .param p2, "timeZoneProviderStatus"    # Landroid/service/timezone/TimeZoneProviderStatus;

    .line 121
    new-instance v0, Landroid/service/timezone/TimeZoneProviderEvent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-wide v2, p0

    move-object v6, p2

    .end local p0    # "creationElapsedMillis":J
    .end local p2    # "timeZoneProviderStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    .local v2, "creationElapsedMillis":J
    .local v6, "timeZoneProviderStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    invoke-direct/range {v0 .. v6}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderStatus;)V

    return-object v0
.end method

.method private static blacklist validateEventType(I)I
    .registers 3
    .param p0, "eventType"    # I

    .line 101
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v0, 0x3

    if-gt p0, v0, :cond_7

    .line 104
    return p0

    .line 102
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 243
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 244
    return v0

    .line 246
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_44

    .line 249
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/timezone/TimeZoneProviderEvent;

    .line 250
    .local v2, "that":Landroid/service/timezone/TimeZoneProviderEvent;
    iget v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    iget v4, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    if-ne v3, v4, :cond_42

    iget-wide v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    iget-wide v5, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_42

    iget-object v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    iget-object v4, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 252
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    .line 253
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    iget-object v4, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    .line 254
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_43

    :cond_42
    move v0, v1

    .line 250
    :goto_43
    return v0

    .line 247
    .end local v2    # "that":Landroid/service/timezone/TimeZoneProviderEvent;
    :cond_44
    :goto_44
    return v1
.end method

.method public blacklist getCreationElapsedMillis()J
    .registers 3

    .line 144
    iget-wide v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    return-wide v0
.end method

.method public blacklist getFailureCause()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    return-object v0
.end method

.method public blacklist getTimeZoneProviderStatus()Landroid/service/timezone/TimeZoneProviderStatus;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 259
    iget v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    iget-object v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEquivalentTo(Landroid/service/timezone/TimeZoneProviderEvent;)Z
    .registers 6
    .param p1, "other"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 228
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 229
    return v0

    .line 231
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    iget v2, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    iget v3, p1, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    if-eq v2, v3, :cond_e

    goto :goto_33

    .line 234
    :cond_e
    iget v2, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 235
    iget-object v2, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    iget-object v3, p1, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {v2, v3}, Landroid/service/timezone/TimeZoneProviderSuggestion;->isEquivalentTo(Landroid/service/timezone/TimeZoneProviderSuggestion;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    iget-object v3, p1, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    .line 236
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    .line 235
    :goto_29
    return v0

    .line 238
    :cond_2a
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    iget-object v1, p1, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 232
    :cond_33
    :goto_33
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneProviderEvent{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreationElapsedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    .line 211
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFailureCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeZoneProviderStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 200
    iget v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-wide v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 202
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 203
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mTimeZoneProviderStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    return-void
.end method
