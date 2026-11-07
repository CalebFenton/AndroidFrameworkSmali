.class public final Landroid/icu/impl/duration/TimeUnit;
.super Ljava/lang/Object;
.source "TimeUnit.java"


# static fields
.field public static final blacklist DAY:Landroid/icu/impl/duration/TimeUnit;

.field public static final blacklist HOUR:Landroid/icu/impl/duration/TimeUnit;

.field public static final blacklist MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

.field public static final blacklist MINUTE:Landroid/icu/impl/duration/TimeUnit;

.field public static final blacklist MONTH:Landroid/icu/impl/duration/TimeUnit;

.field public static final blacklist SECOND:Landroid/icu/impl/duration/TimeUnit;

.field public static final blacklist WEEK:Landroid/icu/impl/duration/TimeUnit;

.field public static final blacklist YEAR:Landroid/icu/impl/duration/TimeUnit;

.field static final blacklist approxDurations:[J

.field static final blacklist units:[Landroid/icu/impl/duration/TimeUnit;


# instance fields
.field final blacklist name:Ljava/lang/String;

.field final blacklist ordinal:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 37
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string v1, "year"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    .line 40
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string v1, "month"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    .line 43
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string v1, "week"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->WEEK:Landroid/icu/impl/duration/TimeUnit;

    .line 46
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string v1, "day"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    .line 49
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string v1, "hour"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    .line 52
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string v1, "minute"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    .line 55
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string v1, "second"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    .line 58
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const-string v1, "millisecond"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    .line 71
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    sget-object v4, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    sget-object v5, Landroid/icu/impl/duration/TimeUnit;->WEEK:Landroid/icu/impl/duration/TimeUnit;

    sget-object v6, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    sget-object v7, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    sget-object v8, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    sget-object v9, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    sget-object v10, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    filled-new-array/range {v3 .. v10}, [Landroid/icu/impl/duration/TimeUnit;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    .line 86
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_70

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->approxDurations:[J

    return-void

    :array_70
    .array-data 8
        0x758fac300L
        0x9cd00b00L
        0x240c8400
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
        0x1
    .end array-data
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;

    .line 28
    int-to-byte v0, p2

    iput-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist larger()Landroid/icu/impl/duration/TimeUnit;
    .registers 3

    .line 62
    iget-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    iget-byte v1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_e
    return-object v0
.end method

.method public blacklist ordinal()I
    .registers 2

    .line 77
    iget-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    return v0
.end method

.method public blacklist smaller()Landroid/icu/impl/duration/TimeUnit;
    .registers 3

    .line 67
    iget-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    iget-byte v1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    :goto_13
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Landroid/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;

    return-object v0
.end method
