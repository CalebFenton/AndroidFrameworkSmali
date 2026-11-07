.class public final Landroid/location/KlobucharIonosphericModel$Builder;
.super Ljava/lang/Object;
.source "KlobucharIonosphericModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/KlobucharIonosphericModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlpha0:D

.field private blacklist mAlpha1:D

.field private blacklist mAlpha2:D

.field private blacklist mAlpha3:D

.field private blacklist mBeta0:D

.field private blacklist mBeta1:D

.field private blacklist mBeta2:D

.field private blacklist mBeta3:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlpha0(Landroid/location/KlobucharIonosphericModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mAlpha0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlpha1(Landroid/location/KlobucharIonosphericModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mAlpha1:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlpha2(Landroid/location/KlobucharIonosphericModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mAlpha2:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlpha3(Landroid/location/KlobucharIonosphericModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mAlpha3:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeta0(Landroid/location/KlobucharIonosphericModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mBeta0:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeta1(Landroid/location/KlobucharIonosphericModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mBeta1:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeta2(Landroid/location/KlobucharIonosphericModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mBeta2:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeta3(Landroid/location/KlobucharIonosphericModel$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mBeta3:D

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/KlobucharIonosphericModel;
    .registers 3

    .line 249
    new-instance v0, Landroid/location/KlobucharIonosphericModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/KlobucharIonosphericModel;-><init>(Landroid/location/KlobucharIonosphericModel$Builder;Landroid/location/KlobucharIonosphericModel-IA;)V

    return-object v0
.end method

.method public blacklist setAlpha0(D)Landroid/location/KlobucharIonosphericModel$Builder;
    .registers 3
    .param p1, "alpha0"    # D

    .line 193
    iput-wide p1, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mAlpha0:D

    .line 194
    return-object p0
.end method

.method public blacklist setAlpha1(D)Landroid/location/KlobucharIonosphericModel$Builder;
    .registers 3
    .param p1, "alpha1"    # D

    .line 200
    iput-wide p1, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mAlpha1:D

    .line 201
    return-object p0
.end method

.method public blacklist setAlpha2(D)Landroid/location/KlobucharIonosphericModel$Builder;
    .registers 3
    .param p1, "alpha2"    # D

    .line 207
    iput-wide p1, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mAlpha2:D

    .line 208
    return-object p0
.end method

.method public blacklist setAlpha3(D)Landroid/location/KlobucharIonosphericModel$Builder;
    .registers 3
    .param p1, "alpha3"    # D

    .line 214
    iput-wide p1, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mAlpha3:D

    .line 215
    return-object p0
.end method

.method public blacklist setBeta0(D)Landroid/location/KlobucharIonosphericModel$Builder;
    .registers 3
    .param p1, "beta0"    # D

    .line 221
    iput-wide p1, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mBeta0:D

    .line 222
    return-object p0
.end method

.method public blacklist setBeta1(D)Landroid/location/KlobucharIonosphericModel$Builder;
    .registers 3
    .param p1, "beta1"    # D

    .line 228
    iput-wide p1, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mBeta1:D

    .line 229
    return-object p0
.end method

.method public blacklist setBeta2(D)Landroid/location/KlobucharIonosphericModel$Builder;
    .registers 3
    .param p1, "beta2"    # D

    .line 235
    iput-wide p1, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mBeta2:D

    .line 236
    return-object p0
.end method

.method public blacklist setBeta3(D)Landroid/location/KlobucharIonosphericModel$Builder;
    .registers 3
    .param p1, "beta3"    # D

    .line 242
    iput-wide p1, p0, Landroid/location/KlobucharIonosphericModel$Builder;->mBeta3:D

    .line 243
    return-object p0
.end method
