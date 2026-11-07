.class public final Landroid/health/connect/datatypes/SleepSessionRecord$StageType;
.super Ljava/lang/Object;
.source "SleepSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/SleepSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StageType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/SleepSessionRecord$StageType$StageTypes;
    }
.end annotation


# static fields
.field public static final blacklist DURATION_EXCLUDE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STAGE_TYPE_AWAKE:I = 0x1

.field public static final whitelist STAGE_TYPE_AWAKE_IN_BED:I = 0x7

.field public static final whitelist STAGE_TYPE_AWAKE_OUT_OF_BED:I = 0x3

.field public static final whitelist STAGE_TYPE_SLEEPING:I = 0x2

.field public static final whitelist STAGE_TYPE_SLEEPING_DEEP:I = 0x5

.field public static final whitelist STAGE_TYPE_SLEEPING_LIGHT:I = 0x4

.field public static final whitelist STAGE_TYPE_SLEEPING_REM:I = 0x6

.field public static final whitelist STAGE_TYPE_UNKNOWN:I

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
    .registers 9

    .line 252
    nop

    .line 254
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 255
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 256
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 257
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 258
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 259
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 260
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 261
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 253
    invoke-static/range {v1 .. v8}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/SleepSessionRecord$StageType;->VALID_TYPES:Ljava/util/Set;

    .line 284
    nop

    .line 285
    invoke-static {v2, v4, v8}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/SleepSessionRecord$StageType;->DURATION_EXCLUDE_TYPES:Ljava/util/List;

    .line 284
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
