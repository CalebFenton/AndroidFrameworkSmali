.class public final Landroid/health/connect/datatypes/BloodGlucoseRecord$SpecimenSource;
.super Ljava/lang/Object;
.source "BloodGlucoseRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/BloodGlucoseRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpecimenSource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/BloodGlucoseRecord$SpecimenSource$SpecimenSourceType;
    }
.end annotation


# static fields
.field public static final whitelist SPECIMEN_SOURCE_CAPILLARY_BLOOD:I = 0x2

.field public static final whitelist SPECIMEN_SOURCE_INTERSTITIAL_FLUID:I = 0x1

.field public static final whitelist SPECIMEN_SOURCE_PLASMA:I = 0x3

.field public static final whitelist SPECIMEN_SOURCE_SERUM:I = 0x4

.field public static final whitelist SPECIMEN_SOURCE_TEARS:I = 0x5

.field public static final whitelist SPECIMEN_SOURCE_UNKNOWN:I = 0x0

.field public static final whitelist SPECIMEN_SOURCE_WHOLE_BLOOD:I = 0x6

.field public static final blacklist VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 185
    nop

    .line 187
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 188
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 189
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 190
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 191
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 192
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 193
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 186
    invoke-static/range {v1 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/BloodGlucoseRecord$SpecimenSource;->VALID_TYPES:Ljava/util/Set;

    .line 185
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
