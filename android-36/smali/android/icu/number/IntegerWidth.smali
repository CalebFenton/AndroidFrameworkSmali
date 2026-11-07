.class public Landroid/icu/number/IntegerWidth;
.super Ljava/lang/Object;
.source "IntegerWidth.java"


# static fields
.field static final blacklist DEFAULT:Landroid/icu/number/IntegerWidth;


# instance fields
.field final blacklist maxInt:I

.field final blacklist minInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Landroid/icu/number/IntegerWidth;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/number/IntegerWidth;-><init>(II)V

    sput-object v0, Landroid/icu/number/IntegerWidth;->DEFAULT:Landroid/icu/number/IntegerWidth;

    return-void
.end method

.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "minInt"    # I
    .param p2, "maxInt"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Landroid/icu/number/IntegerWidth;->minInt:I

    .line 25
    iput p2, p0, Landroid/icu/number/IntegerWidth;->maxInt:I

    .line 26
    return-void
.end method

.method public static whitelist test-api zeroFillTo(I)Landroid/icu/number/IntegerWidth;
    .registers 3
    .param p0, "minInt"    # I

    .line 42
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 43
    sget-object v0, Landroid/icu/number/IntegerWidth;->DEFAULT:Landroid/icu/number/IntegerWidth;

    return-object v0

    .line 44
    :cond_6
    if-ltz p0, :cond_13

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_13

    .line 45
    new-instance v0, Landroid/icu/number/IntegerWidth;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Landroid/icu/number/IntegerWidth;-><init>(II)V

    return-object v0

    .line 47
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Integer digits must be between 0 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api truncateAt(I)Landroid/icu/number/IntegerWidth;
    .registers 5
    .param p1, "maxInt"    # I

    .line 66
    iget v0, p0, Landroid/icu/number/IntegerWidth;->maxInt:I

    if-ne p1, v0, :cond_5

    .line 67
    return-object p0

    .line 68
    :cond_5
    if-ltz p1, :cond_17

    const/16 v0, 0x3e7

    if-gt p1, v0, :cond_17

    iget v0, p0, Landroid/icu/number/IntegerWidth;->minInt:I

    if-lt p1, v0, :cond_17

    .line 69
    new-instance v0, Landroid/icu/number/IntegerWidth;

    iget v1, p0, Landroid/icu/number/IntegerWidth;->minInt:I

    invoke-direct {v0, v1, p1}, Landroid/icu/number/IntegerWidth;-><init>(II)V

    return-object v0

    .line 70
    :cond_17
    iget v0, p0, Landroid/icu/number/IntegerWidth;->minInt:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_22

    if-ne p1, v2, :cond_22

    .line 71
    sget-object v0, Landroid/icu/number/IntegerWidth;->DEFAULT:Landroid/icu/number/IntegerWidth;

    return-object v0

    .line 72
    :cond_22
    if-ne p1, v2, :cond_2c

    .line 73
    new-instance v0, Landroid/icu/number/IntegerWidth;

    iget v1, p0, Landroid/icu/number/IntegerWidth;->minInt:I

    invoke-direct {v0, v1, v2}, Landroid/icu/number/IntegerWidth;-><init>(II)V

    return-object v0

    .line 75
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Integer digits must be between -1 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
