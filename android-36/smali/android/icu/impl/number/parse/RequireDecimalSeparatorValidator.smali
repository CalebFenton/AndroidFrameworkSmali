.class public Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;
.super Landroid/icu/impl/number/parse/ValidationMatcher;
.source "RequireDecimalSeparatorValidator.java"


# static fields
.field private static final blacklist A:Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;

.field private static final blacklist B:Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;


# instance fields
.field private final blacklist patternHasDecimalSeparator:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;-><init>(Z)V

    sput-object v0, Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;->A:Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    .line 14
    new-instance v0, Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;-><init>(Z)V

    sput-object v0, Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;->B:Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "patternHasDecimalSeparator"    # Z

    .line 22
    invoke-direct {p0}, Landroid/icu/impl/number/parse/ValidationMatcher;-><init>()V

    .line 23
    iput-boolean p1, p0, Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;->patternHasDecimalSeparator:Z

    .line 24
    return-void
.end method

.method public static blacklist getInstance(Z)Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;
    .registers 2
    .param p0, "patternHasDecimalSeparator"    # Z

    .line 19
    if-eqz p0, :cond_5

    sget-object v0, Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;->A:Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;->B:Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    :goto_7
    return-object v0
.end method


# virtual methods
.method public blacklist postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 4
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 28
    iget v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 29
    .local v0, "parseHasDecimalSeparator":Z
    :goto_9
    iget-boolean v1, p0, Landroid/icu/impl/number/parse/RequireDecimalSeparatorValidator;->patternHasDecimalSeparator:Z

    if-eq v0, v1, :cond_13

    .line 30
    iget v1, p1, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p1, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 32
    :cond_13
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, "<RequireDecimalSeparator>"

    return-object v0
.end method
