.class public final Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;
.super Ljava/lang/Object;
.source "ScheduleCustomAudienceUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mMinDelay:Ljava/time/Duration;

.field private final blacklist mPartialCustomAudienceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/customaudience/PartialCustomAudience;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mShouldReplacePendingUpdates:Z

.field private final blacklist mUpdateUri:Landroid/net/Uri;


# direct methods
.method private constructor blacklist <init>(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->-$$Nest$fgetmUpdateUri(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mUpdateUri:Landroid/net/Uri;

    .line 54
    invoke-static {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->-$$Nest$fgetmMinDelay(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mMinDelay:Ljava/time/Duration;

    .line 55
    invoke-static {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->-$$Nest$fgetmPartialCustomAudienceList(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mPartialCustomAudienceList:Ljava/util/List;

    .line 56
    invoke-static {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->-$$Nest$fgetmShouldReplacePendingUpdates(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mShouldReplacePendingUpdates:Z

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;-><init>(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 116
    :cond_4
    instance-of v1, p1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    move-object v1, p1

    check-cast v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;

    .line 117
    .local v1, "that":Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;
    iget-boolean v3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mShouldReplacePendingUpdates:Z

    iget-boolean v4, v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mShouldReplacePendingUpdates:Z

    if-ne v3, v4, :cond_31

    iget-object v3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mUpdateUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mUpdateUri:Landroid/net/Uri;

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mMinDelay:Ljava/time/Duration;

    iget-object v4, v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mMinDelay:Ljava/time/Duration;

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mPartialCustomAudienceList:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mPartialCustomAudienceList:Ljava/util/List;

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    move v0, v2

    .line 117
    :goto_32
    return v0

    .line 116
    .end local v1    # "that":Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;
    :cond_33
    return v2
.end method

.method public whitelist getMinDelay()Ljava/time/Duration;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mMinDelay:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getPartialCustomAudienceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/customaudience/PartialCustomAudience;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mPartialCustomAudienceList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUpdateUri()Landroid/net/Uri;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mUpdateUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 105
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mUpdateUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mMinDelay:Ljava/time/Duration;

    iget-object v2, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mPartialCustomAudienceList:Ljava/util/List;

    iget-boolean v3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mShouldReplacePendingUpdates:Z

    .line 106
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 105
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist shouldReplacePendingUpdates()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mShouldReplacePendingUpdates:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScheduleCustomAudienceUpdateRequest{mUpdateUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mUpdateUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mMinDelay:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPartialCustomAudienceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mPartialCustomAudienceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldReplacePendingUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->mShouldReplacePendingUpdates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
