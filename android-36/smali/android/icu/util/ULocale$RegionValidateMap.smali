.class public Landroid/icu/util/ULocale$RegionValidateMap;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegionValidateMap"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static blacklist BUILTIN:Landroid/icu/util/ULocale$RegionValidateMap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist gValidRegionMap:[I


# instance fields
.field protected blacklist map:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4125
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/icu/util/ULocale$RegionValidateMap;->gValidRegionMap:[I

    .line 4139
    new-instance v0, Landroid/icu/util/ULocale$RegionValidateMap;

    invoke-direct {v0}, Landroid/icu/util/ULocale$RegionValidateMap;-><init>()V

    sput-object v0, Landroid/icu/util/ULocale$RegionValidateMap;->BUILTIN:Landroid/icu/util/ULocale$RegionValidateMap;

    return-void

    nop

    :array_12
    .array-data 4
        -0x1120a684
        -0x21224211
        0x15943f3f
        0xe00d580
        -0x4ff6a400
        0x15fb9f
        0x781c068d
        0x340400f
        -0xbd4e300
        -0x2b07ebf
        0x25d7fffc
        0x100084b
        0x538f3c40
        0x40000001    # 2.0000002f
        -0x20eaf00
        -0x60448519
        0x410419a
        0x408557
        0x4002
        0x100001
        0x400408
        0x1
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4084
    sget-object v0, Landroid/icu/util/ULocale$RegionValidateMap;->gValidRegionMap:[I

    sget-object v1, Landroid/icu/util/ULocale$RegionValidateMap;->gValidRegionMap:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale$RegionValidateMap;->map:[I

    .line 4085
    return-void
.end method


# virtual methods
.method public blacklist equals(Landroid/icu/util/ULocale$RegionValidateMap;)Z
    .registers 4
    .param p1, "that"    # Landroid/icu/util/ULocale$RegionValidateMap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4104
    iget-object v0, p0, Landroid/icu/util/ULocale$RegionValidateMap;->map:[I

    iget-object v1, p1, Landroid/icu/util/ULocale$RegionValidateMap;->map:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public blacklist isSet(Ljava/lang/String;)Z
    .registers 7
    .param p1, "region"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4092
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale$RegionValidateMap;->value(Ljava/lang/String;)I

    move-result v0

    .line 4093
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 4094
    return v1

    .line 4096
    :cond_8
    iget-object v2, p0, Landroid/icu/util/ULocale$RegionValidateMap;->map:[I

    div-int/lit8 v3, v0, 0x20

    aget v2, v2, v3

    rem-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    move v1, v4

    :cond_17
    return v1
.end method

.method protected blacklist value(Ljava/lang/String;)I
    .registers 5
    .param p1, "region"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4112
    const-string v0, "[a-zA-Z][a-zA-Z]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4113
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 4114
    const-string v0, "a"

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 4115
    .local v0, "aValue":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    .line 4117
    .end local v0    # "aValue":I
    :cond_22
    const/4 v0, -0x1

    return v0
.end method
