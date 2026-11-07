.class public final Landroid/safetycenter/config/SafetyCenterConfig;
.super Ljava/lang/Object;
.source "SafetyCenterConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/config/SafetyCenterConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/config/SafetyCenterConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSafetySourcesGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/config/SafetySourcesGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSafetySourcesGroups(Landroid/safetycenter/config/SafetyCenterConfig;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/config/SafetyCenterConfig;->mSafetySourcesGroups:Ljava/util/List;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/safetycenter/config/SafetyCenterConfig$1;

    invoke-direct {v0}, Landroid/safetycenter/config/SafetyCenterConfig$1;-><init>()V

    sput-object v0, Landroid/safetycenter/config/SafetyCenterConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/safetycenter/config/SafetySourcesGroup;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "safetySourcesGroups":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/config/SafetySourcesGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroid/safetycenter/config/SafetyCenterConfig;->mSafetySourcesGroups:Ljava/util/List;

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/safetycenter/config/SafetyCenterConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/safetycenter/config/SafetyCenterConfig;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 87
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 88
    :cond_4
    instance-of v0, p1, Landroid/safetycenter/config/SafetyCenterConfig;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 89
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/safetycenter/config/SafetyCenterConfig;

    .line 90
    .local v0, "that":Landroid/safetycenter/config/SafetyCenterConfig;
    iget-object v1, p0, Landroid/safetycenter/config/SafetyCenterConfig;->mSafetySourcesGroups:Ljava/util/List;

    iget-object v2, v0, Landroid/safetycenter/config/SafetyCenterConfig;->mSafetySourcesGroups:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getSafetySourcesGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/config/SafetySourcesGroup;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroid/safetycenter/config/SafetyCenterConfig;->mSafetySourcesGroups:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/safetycenter/config/SafetyCenterConfig;->mSafetySourcesGroups:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetyCenterConfig{mSafetySourcesGroups="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/config/SafetyCenterConfig;->mSafetySourcesGroups:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 110
    iget-object v0, p0, Landroid/safetycenter/config/SafetyCenterConfig;->mSafetySourcesGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 111
    return-void
.end method
