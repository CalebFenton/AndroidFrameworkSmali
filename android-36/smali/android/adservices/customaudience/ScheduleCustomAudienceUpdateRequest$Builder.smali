.class public final Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;
.super Ljava/lang/Object;
.source "ScheduleCustomAudienceUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMinDelay:Ljava/time/Duration;

.field private blacklist mPartialCustomAudienceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/customaudience/PartialCustomAudience;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShouldReplacePendingUpdates:Z

.field private blacklist mUpdateUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMinDelay(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mMinDelay:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPartialCustomAudienceList(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mPartialCustomAudienceList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldReplacePendingUpdates(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mShouldReplacePendingUpdates:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateUri(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mUpdateUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/time/Duration;)V
    .registers 3
    .param p1, "updateUri"    # Landroid/net/Uri;
    .param p2, "minDelay"    # Ljava/time/Duration;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->setRequiredFields(Landroid/net/Uri;Ljava/time/Duration;)V

    .line 180
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/time/Duration;Ljava/util/List;)V
    .registers 4
    .param p1, "updateUri"    # Landroid/net/Uri;
    .param p2, "minDelay"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/time/Duration;",
            "Ljava/util/List<",
            "Landroid/adservices/customaudience/PartialCustomAudience;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    .local p3, "partialCustomAudienceList":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/customaudience/PartialCustomAudience;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->setRequiredFields(Landroid/net/Uri;Ljava/time/Duration;)V

    .line 166
    invoke-virtual {p0, p3}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->setPartialCustomAudienceList(Ljava/util/List;)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;

    .line 167
    return-void
.end method

.method private blacklist setRequiredFields(Landroid/net/Uri;Ljava/time/Duration;)V
    .registers 6
    .param p1, "updateUri"    # Landroid/net/Uri;
    .param p2, "minDelay"    # Ljava/time/Duration;

    .line 183
    const-string v0, "Update URI must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mUpdateUri:Landroid/net/Uri;

    .line 184
    const-string v0, "Minimum delay must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mMinDelay:Ljava/time/Duration;

    .line 185
    nop

    .line 186
    invoke-virtual {p2}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    .line 185
    const-string v2, "Minimum delay %d must not be negative"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;
    .registers 3

    .line 253
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mPartialCustomAudienceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v0, :cond_d

    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mPartialCustomAudienceList:Ljava/util/List;

    .line 256
    :cond_d
    new-instance v0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;-><init>(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest-IA;)V

    return-object v0
.end method

.method public whitelist setMinDelay(Ljava/time/Duration;)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;
    .registers 5
    .param p1, "minDelay"    # Ljava/time/Duration;

    .line 213
    const-string v0, "Minimum delay must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    nop

    .line 215
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 214
    const-string v2, "Minimum delay %d must not be negative"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iput-object p1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mMinDelay:Ljava/time/Duration;

    .line 217
    return-object p0
.end method

.method public whitelist setPartialCustomAudienceList(Ljava/util/List;)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/customaudience/PartialCustomAudience;",
            ">;)",
            "Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;"
        }
    .end annotation

    .line 229
    .local p1, "partialCustomAudienceList":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/customaudience/PartialCustomAudience;>;"
    nop

    .line 230
    const-string v0, "Partial custom audience list must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mPartialCustomAudienceList:Ljava/util/List;

    .line 233
    return-object p0
.end method

.method public whitelist setShouldReplacePendingUpdates(Z)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;
    .registers 2
    .param p1, "shouldReplacePendingUpdates"    # Z

    .line 246
    iput-boolean p1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mShouldReplacePendingUpdates:Z

    .line 247
    return-object p0
.end method

.method public whitelist setUpdateUri(Landroid/net/Uri;)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;
    .registers 3
    .param p1, "updateUri"    # Landroid/net/Uri;

    .line 199
    const-string v0, "Update URI must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest$Builder;->mUpdateUri:Landroid/net/Uri;

    .line 200
    return-object p0
.end method
