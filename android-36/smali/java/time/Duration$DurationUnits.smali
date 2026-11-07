.class Ljava/time/Duration$DurationUnits;
.super Ljava/lang/Object;
.source "Duration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DurationUnits"
.end annotation


# static fields
.field static final greylist-max-o UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 561
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/time/temporal/TemporalUnit;

    const/4 v1, 0x0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    aput-object v2, v0, v1

    .line 562
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/time/Duration$DurationUnits;->UNITS:Ljava/util/List;

    .line 561
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
