.class public final Landroid/health/connect/datatypes/Vo2MaxRecord$Vo2MaxMeasurementMethod;
.super Ljava/lang/Object;
.source "Vo2MaxRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/Vo2MaxRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vo2MaxMeasurementMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/Vo2MaxRecord$Vo2MaxMeasurementMethod$Vo2MaxMeasurementMethodTypes;
    }
.end annotation


# static fields
.field public static final whitelist MEASUREMENT_METHOD_COOPER_TEST:I = 0x3

.field public static final whitelist MEASUREMENT_METHOD_HEART_RATE_RATIO:I = 0x2

.field public static final whitelist MEASUREMENT_METHOD_METABOLIC_CART:I = 0x1

.field public static final whitelist MEASUREMENT_METHOD_MULTISTAGE_FITNESS_TEST:I = 0x4

.field public static final whitelist MEASUREMENT_METHOD_OTHER:I = 0x0

.field public static final whitelist MEASUREMENT_METHOD_ROCKPORT_FITNESS_TEST:I = 0x5

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
    .registers 7

    .line 101
    nop

    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 104
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 105
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 106
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 107
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 108
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 102
    invoke-static/range {v1 .. v6}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/Vo2MaxRecord$Vo2MaxMeasurementMethod;->VALID_TYPES:Ljava/util/Set;

    .line 101
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
