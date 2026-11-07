.class public final Landroid/safetycenter/SafetySourceData;
.super Ljava/lang/Object;
.source "SafetySourceData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetySourceData$Builder;,
        Landroid/safetycenter/SafetySourceData$SeverityLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetySourceData;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SEVERITY_LEVEL_CRITICAL_WARNING:I = 0x190

.field public static final whitelist SEVERITY_LEVEL_INFORMATION:I = 0xc8

.field public static final whitelist SEVERITY_LEVEL_RECOMMENDATION:I = 0x12c

.field public static final whitelist SEVERITY_LEVEL_UNSPECIFIED:I = 0x64


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mIssues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStatus:Landroid/safetycenter/SafetySourceStatus;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/safetycenter/SafetySourceData;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceData;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIssues(Landroid/safetycenter/SafetySourceData;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceData;->mIssues:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatus(Landroid/safetycenter/SafetySourceData;)Landroid/safetycenter/SafetySourceStatus;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceData;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 158
    new-instance v0, Landroid/safetycenter/SafetySourceData$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetySourceData$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetySourceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/safetycenter/SafetySourceStatus;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "status"    # Landroid/safetycenter/SafetySourceStatus;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/safetycenter/SafetySourceStatus;",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 191
    .local p2, "issues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetySourceIssue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Landroid/safetycenter/SafetySourceData;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    .line 193
    iput-object p2, p0, Landroid/safetycenter/SafetySourceData;->mIssues:Ljava/util/List;

    .line 194
    iput-object p3, p0, Landroid/safetycenter/SafetySourceData;->mExtras:Landroid/os/Bundle;

    .line 195
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/safetycenter/SafetySourceStatus;Ljava/util/List;Landroid/os/Bundle;Landroid/safetycenter/SafetySourceData-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/safetycenter/SafetySourceData;-><init>(Landroid/safetycenter/SafetySourceStatus;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 241
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 242
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetySourceData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 243
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetySourceData;

    .line 244
    .local v1, "that":Landroid/safetycenter/SafetySourceData;
    iget-object v3, p0, Landroid/safetycenter/SafetySourceData;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceData;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/safetycenter/SafetySourceData;->mIssues:Ljava/util/List;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceData;->mIssues:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 3

    .line 218
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Landroid/safetycenter/SafetySourceData;->mExtras:Landroid/os/Bundle;

    return-object v0

    .line 219
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIssues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Landroid/safetycenter/SafetySourceData;->mIssues:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStatus()Landroid/safetycenter/SafetySourceStatus;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/safetycenter/SafetySourceData;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 249
    iget-object v0, p0, Landroid/safetycenter/SafetySourceData;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    iget-object v1, p0, Landroid/safetycenter/SafetySourceData;->mIssues:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetySourceData{mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceData;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIssues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceData;->mIssues:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    iget-object v1, p0, Landroid/safetycenter/SafetySourceData;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, ", (has extras)"

    goto :goto_2a

    :cond_28
    const-string v1, ""

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 232
    iget-object v0, p0, Landroid/safetycenter/SafetySourceData;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 233
    iget-object v0, p0, Landroid/safetycenter/SafetySourceData;->mIssues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 234
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 235
    iget-object v0, p0, Landroid/safetycenter/SafetySourceData;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 237
    :cond_15
    return-void
.end method
