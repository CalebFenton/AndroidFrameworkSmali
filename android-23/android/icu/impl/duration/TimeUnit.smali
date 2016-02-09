.class public final Landroid/icu/impl/duration/TimeUnit;
.super Ljava/lang/Object;
.source "TimeUnit.java"


# static fields
.field public static final DAY:Landroid/icu/impl/duration/TimeUnit;

.field public static final HOUR:Landroid/icu/impl/duration/TimeUnit;

.field public static final MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

.field public static final MINUTE:Landroid/icu/impl/duration/TimeUnit;

.field public static final MONTH:Landroid/icu/impl/duration/TimeUnit;

.field public static final SECOND:Landroid/icu/impl/duration/TimeUnit;

.field public static final WEEK:Landroid/icu/impl/duration/TimeUnit;

.field public static final YEAR:Landroid/icu/impl/duration/TimeUnit;

.field static final approxDurations:[J

.field static final units:[Landroid/icu/impl/duration/TimeUnit;


# instance fields
.field final name:Ljava/lang/String;

.field final ordinal:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 32
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    #@7
    const-string/jumbo v1, "year"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    #@f
    .line 35
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    #@11
    const-string/jumbo v1, "month"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    #@19
    .line 38
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    #@1b
    const-string/jumbo v1, "week"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->WEEK:Landroid/icu/impl/duration/TimeUnit;

    #@23
    .line 41
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    #@25
    const-string/jumbo v1, "day"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    #@2d
    .line 44
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    #@2f
    const-string/jumbo v1, "hour"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    #@37
    .line 47
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    #@39
    const-string/jumbo v1, "minute"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    #@42
    .line 50
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    #@44
    const-string/jumbo v1, "second"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    #@4d
    .line 53
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    #@4f
    const-string/jumbo v1, "millisecond"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    #@58
    .line 66
    const/16 v0, 0x8

    #@5a
    new-array v0, v0, [Landroid/icu/impl/duration/TimeUnit;

    #@5c
    .line 67
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    #@5e
    aput-object v1, v0, v3

    #@60
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    #@62
    aput-object v1, v0, v4

    #@64
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->WEEK:Landroid/icu/impl/duration/TimeUnit;

    #@66
    aput-object v1, v0, v5

    #@68
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    #@6a
    aput-object v1, v0, v6

    #@6c
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    #@6e
    aput-object v1, v0, v7

    #@70
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    #@72
    const/4 v2, 0x5

    #@73
    aput-object v1, v0, v2

    #@75
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    #@77
    const/4 v2, 0x6

    #@78
    aput-object v1, v0, v2

    #@7a
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    #@7c
    const/4 v2, 0x7

    #@7d
    aput-object v1, v0, v2

    #@7f
    .line 66
    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@81
    .line 81
    const/16 v0, 0x8

    #@83
    new-array v0, v0, [J

    #@85
    fill-array-data v0, :array_0

    #@88
    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->approxDurations:[J

    #@8a
    .line 14
    return-void

    #@8b
    .line 81
    nop

    #@8c
    :array_0
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

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    iput-object p1, p0, Landroid/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;

    #@5
    .line 24
    int-to-byte v0, p2

    #@6
    iput-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@8
    .line 22
    return-void
.end method


# virtual methods
.method public larger()Landroid/icu/impl/duration/TimeUnit;
    .locals 2

    #@0
    .prologue
    .line 57
    iget-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@8
    iget-byte v1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@a
    add-int/lit8 v1, v1, -0x1

    #@c
    aget-object v0, v0, v1

    #@e
    goto :goto_0
.end method

.method public ordinal()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@2
    return v0
.end method

.method public smaller()Landroid/icu/impl/duration/TimeUnit;
    .locals 2

    #@0
    .prologue
    .line 62
    iget-byte v0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@2
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@4
    array-length v1, v1

    #@5
    add-int/lit8 v1, v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@d
    iget-byte v1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    aget-object v0, v0, v1

    #@13
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 28
    iget-object v0, p0, Landroid/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
