.class public final Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;
.super Ljava/lang/Object;
.source "ScheduleCustomAudienceUpdateInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallerPackageName:Ljava/lang/String;

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

.field blacklist mShouldReplacePendingUpdates:Z

.field private blacklist mUpdateUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallerPackageName(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mCallerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinDelay(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mMinDelay:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPartialCustomAudienceList(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mPartialCustomAudienceList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateUri(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mUpdateUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/time/Duration;Ljava/util/List;)V
    .registers 5
    .param p1, "updateUri"    # Landroid/net/Uri;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "minDelay"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/time/Duration;",
            "Ljava/util/List<",
            "Landroid/adservices/customaudience/PartialCustomAudience;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p4, "partialCustomAudienceList":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/customaudience/PartialCustomAudience;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iput-object p1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mUpdateUri:Landroid/net/Uri;

    .line 204
    iput-object p2, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mMinDelay:Ljava/time/Duration;

    .line 206
    iput-object p4, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mPartialCustomAudienceList:Ljava/util/List;

    .line 207
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;
    .registers 3

    .line 276
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mUpdateUri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mMinDelay:Ljava/time/Duration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mPartialCustomAudienceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;-><init>(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput-IA;)V

    return-object v0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;
    .registers 2
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 228
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iput-object p1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public blacklist setMinDelay(Ljava/time/Duration;)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;
    .registers 2
    .param p1, "minDelay"    # Ljava/time/Duration;

    .line 240
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iput-object p1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mMinDelay:Ljava/time/Duration;

    .line 242
    return-object p0
.end method

.method public blacklist setPartialCustomAudienceList(Ljava/util/List;)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/customaudience/PartialCustomAudience;",
            ">;)",
            "Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;"
        }
    .end annotation

    .line 254
    .local p1, "partialCustomAudiences":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/customaudience/PartialCustomAudience;>;"
    iput-object p1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mPartialCustomAudienceList:Ljava/util/List;

    .line 255
    return-object p0
.end method

.method public blacklist setShouldReplacePendingUpdates(Z)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;
    .registers 2
    .param p1, "shouldReplacePendingUpdates"    # Z

    .line 265
    iput-boolean p1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mShouldReplacePendingUpdates:Z

    .line 266
    return-object p0
.end method

.method public blacklist setUpdateUri(Landroid/net/Uri;)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;
    .registers 2
    .param p1, "updateUri"    # Landroid/net/Uri;

    .line 216
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iput-object p1, p0, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->mUpdateUri:Landroid/net/Uri;

    .line 218
    return-object p0
.end method
