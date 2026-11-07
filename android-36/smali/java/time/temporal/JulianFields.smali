.class public final Ljava/time/temporal/JulianFields;
.super Ljava/lang/Object;
.source "JulianFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/temporal/JulianFields$Field;
    }
.end annotation


# static fields
.field public static final whitelist test-api JULIAN_DAY:Ljava/time/temporal/TemporalField;

.field private static final greylist-max-o JULIAN_DAY_OFFSET:J = 0x253d8cL

.field public static final whitelist test-api MODIFIED_JULIAN_DAY:Ljava/time/temporal/TemporalField;

.field public static final whitelist test-api RATA_DIE:Ljava/time/temporal/TemporalField;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 147
    sget-object v0, Ljava/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    sput-object v0, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    .line 188
    sget-object v0, Ljava/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    sput-object v0, Ljava/time/temporal/JulianFields;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/TemporalField;

    .line 208
    sget-object v0, Ljava/time/temporal/JulianFields$Field;->RATA_DIE:Ljava/time/temporal/JulianFields$Field;

    sput-object v0, Ljava/time/temporal/JulianFields;->RATA_DIE:Ljava/time/temporal/TemporalField;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not instantiable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
