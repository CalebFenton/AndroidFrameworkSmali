.class public final Ljava/time/temporal/IsoFields;
.super Ljava/lang/Object;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/temporal/IsoFields$Field;,
        Ljava/time/temporal/IsoFields$Unit;
    }
.end annotation


# static fields
.field public static final whitelist test-api DAY_OF_QUARTER:Ljava/time/temporal/TemporalField;

.field public static final whitelist test-api QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

.field public static final whitelist test-api QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

.field public static final whitelist test-api WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

.field public static final whitelist test-api WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

.field public static final whitelist test-api WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 201
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->DAY_OF_QUARTER:Ljava/time/temporal/TemporalField;

    .line 216
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    .line 246
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 260
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 275
    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    .line 283
    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

    sput-object v0, Ljava/time/temporal/IsoFields;->QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not instantiable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static blacklist isIso(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 751
    invoke-static {p0}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
