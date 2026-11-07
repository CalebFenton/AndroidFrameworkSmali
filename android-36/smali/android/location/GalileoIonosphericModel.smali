.class public final Landroid/location/GalileoIonosphericModel;
.super Ljava/lang/Object;
.source "GalileoIonosphericModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GalileoIonosphericModel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GalileoIonosphericModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAi0:D

.field private final blacklist mAi1:D

.field private final blacklist mAi2:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/location/GalileoIonosphericModel$1;

    invoke-direct {v0}, Landroid/location/GalileoIonosphericModel$1;-><init>()V

    sput-object v0, Landroid/location/GalileoIonosphericModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GalileoIonosphericModel$Builder;)V
    .registers 16
    .param p1, "builder"    # Landroid/location/GalileoIonosphericModel$Builder;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Landroid/location/GalileoIonosphericModel$Builder;->-$$Nest$fgetmAi0(Landroid/location/GalileoIonosphericModel$Builder;)D

    move-result-wide v0

    const-wide/high16 v4, 0x4080000000000000L    # 512.0

    const-string v6, "Ai0"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 50
    invoke-static {p1}, Landroid/location/GalileoIonosphericModel$Builder;->-$$Nest$fgetmAi1(Landroid/location/GalileoIonosphericModel$Builder;)D

    move-result-wide v7

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    const-string v13, "Ai1"

    const-wide/high16 v9, -0x3ff0000000000000L    # -4.0

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 51
    invoke-static {p1}, Landroid/location/GalileoIonosphericModel$Builder;->-$$Nest$fgetmAi2(Landroid/location/GalileoIonosphericModel$Builder;)D

    move-result-wide v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-string v6, "Ai2"

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 52
    invoke-static {p1}, Landroid/location/GalileoIonosphericModel$Builder;->-$$Nest$fgetmAi0(Landroid/location/GalileoIonosphericModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GalileoIonosphericModel;->mAi0:D

    .line 53
    invoke-static {p1}, Landroid/location/GalileoIonosphericModel$Builder;->-$$Nest$fgetmAi1(Landroid/location/GalileoIonosphericModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GalileoIonosphericModel;->mAi1:D

    .line 54
    invoke-static {p1}, Landroid/location/GalileoIonosphericModel$Builder;->-$$Nest$fgetmAi2(Landroid/location/GalileoIonosphericModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GalileoIonosphericModel;->mAi2:D

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GalileoIonosphericModel$Builder;Landroid/location/GalileoIonosphericModel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GalileoIonosphericModel;-><init>(Landroid/location/GalileoIonosphericModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAi0()D
    .registers 3

    .line 60
    iget-wide v0, p0, Landroid/location/GalileoIonosphericModel;->mAi0:D

    return-wide v0
.end method

.method public blacklist getAi1()D
    .registers 3

    .line 66
    iget-wide v0, p0, Landroid/location/GalileoIonosphericModel;->mAi1:D

    return-wide v0
.end method

.method public blacklist getAi2()D
    .registers 3

    .line 72
    iget-wide v0, p0, Landroid/location/GalileoIonosphericModel;->mAi2:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GalileoIonosphericModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "ai0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GalileoIonosphericModel;->mAi0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", ai1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GalileoIonosphericModel;->mAi1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", ai2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GalileoIonosphericModel;->mAi2:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    iget-wide v0, p0, Landroid/location/GalileoIonosphericModel;->mAi0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 100
    iget-wide v0, p0, Landroid/location/GalileoIonosphericModel;->mAi1:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 101
    iget-wide v0, p0, Landroid/location/GalileoIonosphericModel;->mAi2:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 102
    return-void
.end method
