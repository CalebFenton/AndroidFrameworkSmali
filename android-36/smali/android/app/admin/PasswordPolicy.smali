.class public Landroid/app/admin/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field public static final blacklist DEF_MINIMUM_LENGTH:I = 0x0

.field public static final blacklist DEF_MINIMUM_LETTERS:I = 0x1

.field public static final blacklist DEF_MINIMUM_LOWER_CASE:I = 0x0

.field public static final blacklist DEF_MINIMUM_NON_LETTER:I = 0x0

.field public static final blacklist DEF_MINIMUM_NUMERIC:I = 0x1

.field public static final blacklist DEF_MINIMUM_SYMBOLS:I = 0x1

.field public static final blacklist DEF_MINIMUM_UPPER_CASE:I


# instance fields
.field public blacklist length:I

.field public blacklist letters:I

.field public blacklist lowerCase:I

.field public blacklist nonLetter:I

.field public blacklist numeric:I

.field public blacklist quality:I

.field public blacklist symbols:I

.field public blacklist upperCase:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    .line 46
    iput v0, p0, Landroid/app/admin/PasswordPolicy;->length:I

    .line 47
    const/4 v1, 0x1

    iput v1, p0, Landroid/app/admin/PasswordPolicy;->letters:I

    .line 48
    iput v0, p0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    .line 49
    iput v0, p0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    .line 50
    iput v1, p0, Landroid/app/admin/PasswordPolicy;->numeric:I

    .line 51
    iput v1, p0, Landroid/app/admin/PasswordPolicy;->symbols:I

    .line 52
    iput v0, p0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    return-void
.end method


# virtual methods
.method public blacklist getMinMetrics()Landroid/app/admin/PasswordMetrics;
    .registers 5

    .line 58
    iget v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    if-nez v0, :cond_b

    .line 59
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    .line 60
    :cond_b
    iget v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const v1, 0x8000

    const/4 v2, 0x1

    if-eq v0, v1, :cond_75

    iget v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1a

    goto :goto_75

    .line 63
    :cond_1a
    iget v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/high16 v1, 0x20000

    const/high16 v3, 0x30000

    if-eq v0, v1, :cond_64

    iget v0, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    if-ne v0, v3, :cond_27

    goto :goto_64

    .line 73
    :cond_27
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    .line 74
    .local v0, "result":Landroid/app/admin/PasswordMetrics;
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->length:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 76
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/high16 v3, 0x40000

    if-ne v1, v3, :cond_3a

    .line 77
    iput v2, v0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    goto :goto_63

    .line 78
    :cond_3a
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/high16 v3, 0x50000

    if-ne v1, v3, :cond_45

    .line 79
    iput v2, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 80
    iput v2, v0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    goto :goto_63

    .line 81
    :cond_45
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    const/high16 v2, 0x60000

    if-ne v1, v2, :cond_63

    .line 82
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->numeric:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 83
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->letters:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 84
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->upperCase:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 85
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->lowerCase:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 86
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->nonLetter:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 87
    iget v1, p0, Landroid/app/admin/PasswordPolicy;->symbols:I

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 89
    :cond_63
    :goto_63
    return-object v0

    .line 65
    .end local v0    # "result":Landroid/app/admin/PasswordMetrics;
    :cond_64
    :goto_64
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    .line 66
    .restart local v0    # "result":Landroid/app/admin/PasswordMetrics;
    iget v2, p0, Landroid/app/admin/PasswordPolicy;->length:I

    iput v2, v0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 67
    iget v2, p0, Landroid/app/admin/PasswordPolicy;->quality:I

    if-ne v2, v3, :cond_74

    .line 68
    iput v1, v0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 70
    :cond_74
    return-object v0

    .line 62
    .end local v0    # "result":Landroid/app/admin/PasswordMetrics;
    :cond_75
    :goto_75
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v0, v2}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0
.end method
