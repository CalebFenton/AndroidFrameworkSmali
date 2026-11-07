.class public final Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;
.super Ljava/lang/Object;
.source "KeplerianOrbitModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/KeplerianOrbitModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecondOrderHarmonicPerturbation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCic:D

.field private final blacklist mCis:D

.field private final blacklist mCrc:D

.field private final blacklist mCrs:D

.field private final blacklist mCuc:D

.field private final blacklist mCus:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 393
    new-instance v0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$1;

    invoke-direct {v0}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$1;-><init>()V

    sput-object v0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)V
    .registers 16
    .param p1, "builder"    # Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCic(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v0

    const-wide v4, 0x3f10045a00000000L    # 6.10999995842576E-5

    const-string v6, "Cic"

    const-wide v2, -0x40effba600000000L    # -6.10999995842576E-5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 334
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCis(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v7

    const-wide v11, 0x3f10045a00000000L    # 6.10999995842576E-5

    const-string v13, "Cis"

    const-wide v9, -0x40effba600000000L    # -6.10999995842576E-5

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 335
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCrc(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v0

    const-wide/high16 v4, 0x40a0000000000000L    # 2048.0

    const-string v6, "Crc"

    const-wide/high16 v2, -0x3f60000000000000L    # -2048.0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 336
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCrs(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v7

    const-wide/high16 v11, 0x40a0000000000000L    # 2048.0

    const-string v13, "Crs"

    const-wide/high16 v9, -0x3f60000000000000L    # -2048.0

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 337
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCuc(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v0

    const-wide v4, 0x3f10045a00000000L    # 6.10999995842576E-5

    const-string v6, "Cuc"

    const-wide v2, -0x40effba600000000L    # -6.10999995842576E-5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 338
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCus(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v7

    const-wide v11, 0x3f10045a00000000L    # 6.10999995842576E-5

    const-string v13, "Cus"

    const-wide v9, -0x40effba600000000L    # -6.10999995842576E-5

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 339
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCic(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCic:D

    .line 340
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCrc(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCrc:D

    .line 341
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCis(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCis:D

    .line 342
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCrs(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCrs:D

    .line 343
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCuc(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCuc:D

    .line 344
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;->-$$Nest$fgetmCus(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCus:D

    .line 345
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;Landroid/location/KeplerianOrbitModel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;-><init>(Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCic()D
    .registers 3

    .line 352
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCic:D

    return-wide v0
.end method

.method public blacklist getCis()D
    .registers 3

    .line 360
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCis:D

    return-wide v0
.end method

.method public blacklist getCrc()D
    .registers 3

    .line 366
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCrc:D

    return-wide v0
.end method

.method public blacklist getCrs()D
    .registers 3

    .line 372
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCrs:D

    return-wide v0
.end method

.method public blacklist getCuc()D
    .registers 3

    .line 381
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCuc:D

    return-wide v0
.end method

.method public blacklist getCus()D
    .registers 3

    .line 390
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCus:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecondOrderHarmonicPerturbation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "cic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCic:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, ", cis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCis:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 437
    const-string v1, ", crc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCrc:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, ", crs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCrs:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, ", cuc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCuc:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, ", cus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCus:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 423
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCic:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 424
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCis:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 425
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCrc:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 426
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCrs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 427
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCuc:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 428
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;->mCus:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 429
    return-void
.end method
