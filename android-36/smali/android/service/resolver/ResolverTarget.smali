.class public final Landroid/service/resolver/ResolverTarget;
.super Ljava/lang/Object;
.source "ResolverTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ResolverTarget"


# instance fields
.field private greylist-max-o mChooserScore:F

.field private greylist-max-o mLaunchScore:F

.field private greylist-max-o mRecencyScore:F

.field private greylist-max-o mSelectProbability:F

.field private greylist-max-o mTimeSpentScore:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 202
    new-instance v0, Landroid/service/resolver/ResolverTarget$1;

    invoke-direct {v0}, Landroid/service/resolver/ResolverTarget$1;-><init>()V

    sput-object v0, Landroid/service/resolver/ResolverTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    .line 67
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChooserScore()F
    .registers 2

    .line 137
    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    return v0
.end method

.method public whitelist getLaunchScore()F
    .registers 2

    .line 116
    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    return v0
.end method

.method public whitelist getRecencyScore()F
    .registers 2

    .line 76
    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    return v0
.end method

.method public whitelist getSelectProbability()F
    .registers 2

    .line 159
    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    return v0
.end method

.method public whitelist getTimeSpentScore()F
    .registers 2

    .line 96
    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    return v0
.end method

.method public whitelist setChooserScore(F)V
    .registers 2
    .param p1, "chooserScore"    # F

    .line 149
    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    .line 150
    return-void
.end method

.method public whitelist setLaunchScore(F)V
    .registers 2
    .param p1, "launchScore"    # F

    .line 126
    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    .line 127
    return-void
.end method

.method public whitelist setRecencyScore(F)V
    .registers 2
    .param p1, "recencyScore"    # F

    .line 86
    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    .line 87
    return-void
.end method

.method public whitelist setSelectProbability(F)V
    .registers 2
    .param p1, "selectProbability"    # F

    .line 169
    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    .line 170
    return-void
.end method

.method public whitelist setTimeSpentScore(F)V
    .registers 2
    .param p1, "timeSpentScore"    # F

    .line 106
    iput p1, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    .line 107
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResolverTarget{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 194
    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mRecencyScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 195
    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mTimeSpentScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 196
    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mLaunchScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 197
    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mChooserScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 198
    iget v0, p0, Landroid/service/resolver/ResolverTarget;->mSelectProbability:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 199
    return-void
.end method
