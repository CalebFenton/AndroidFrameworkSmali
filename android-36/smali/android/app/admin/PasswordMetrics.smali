.class public final Landroid/app/admin/PasswordMetrics;
.super Ljava/lang/Object;
.source "PasswordMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PasswordMetrics$ComplexityBucket;,
        Landroid/app/admin/PasswordMetrics$CharacterCatagory;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHAR_DIGIT:I = 0x2

.field private static final greylist-max-o CHAR_LOWER_CASE:I = 0x0

.field private static final greylist-max-o CHAR_SYMBOL:I = 0x3

.field private static final greylist-max-o CHAR_UPPER_CASE:I = 0x1

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MAX_ALLOWED_SEQUENCE:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "PasswordMetrics"


# instance fields
.field public blacklist credType:I

.field public greylist-max-o length:I

.field public greylist-max-o letters:I

.field public greylist-max-o lowerCase:I

.field public greylist-max-o nonLetter:I

.field public blacklist nonNumeric:I

.field public greylist-max-o numeric:I

.field public blacklist seqLength:I

.field public greylist-max-o symbols:I

.field public greylist-max-o upperCase:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 157
    new-instance v0, Landroid/app/admin/PasswordMetrics$1;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics$1;-><init>()V

    sput-object v0, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "credType"    # I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 85
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 86
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 87
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 88
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 89
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 90
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 91
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    .line 93
    const v0, 0x7fffffff

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 96
    iput p1, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIIII)V
    .registers 12
    .param p1, "credType"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "upperCase"    # I
    .param p5, "lowerCase"    # I
    .param p6, "numeric"    # I
    .param p7, "symbols"    # I
    .param p8, "nonLetter"    # I
    .param p9, "nonNumeric"    # I
    .param p10, "seqLength"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 85
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 86
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 87
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 88
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 89
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 90
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 91
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    .line 93
    const v0, 0x7fffffff

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 101
    iput p1, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 102
    iput p2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 103
    iput p3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 104
    iput p4, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 105
    iput p5, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 106
    iput p6, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 107
    iput p7, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 108
    iput p8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 109
    iput p9, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    .line 110
    iput p10, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 111
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/admin/PasswordMetrics;)V
    .registers 13
    .param p1, "other"    # Landroid/app/admin/PasswordMetrics;

    .line 114
    iget v1, p1, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v2, p1, Landroid/app/admin/PasswordMetrics;->length:I

    iget v3, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v4, p1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v5, p1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v6, p1, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v7, p1, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v8, p1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v9, p1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v10, p1, Landroid/app/admin/PasswordMetrics;->seqLength:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    .line 116
    return-void
.end method

.method public static blacklist applyComplexity(Landroid/app/admin/PasswordMetrics;ZI)Landroid/app/admin/PasswordMetrics;
    .registers 4
    .param p0, "adminMetrics"    # Landroid/app/admin/PasswordMetrics;
    .param p1, "isPin"    # Z
    .param p2, "complexity"    # I

    .line 673
    invoke-static {p2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->forComplexity(I)Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/app/admin/PasswordMetrics;->applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;
    .registers 6
    .param p0, "adminMetrics"    # Landroid/app/admin/PasswordMetrics;
    .param p1, "isPin"    # Z
    .param p2, "bucket"    # Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    .line 678
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v0, p0}, Landroid/app/admin/PasswordMetrics;-><init>(Landroid/app/admin/PasswordMetrics;)V

    .line 680
    .local v0, "minMetrics":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->canHaveSequence()Z

    move-result v1

    if-nez v1, :cond_14

    .line 681
    iget v1, v0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 684
    :cond_14
    iget v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 686
    return-object v0
.end method

.method private static greylist-max-o categoryChar(C)I
    .registers 2
    .param p0, "c"    # C

    .line 305
    const/16 v0, 0x61

    if-gt v0, p0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 306
    :cond_a
    const/16 v0, 0x41

    if-gt v0, p0, :cond_14

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_14

    const/4 v0, 0x1

    return v0

    .line 307
    :cond_14
    const/16 v0, 0x30

    if-gt v0, p0, :cond_1e

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1e

    const/4 v0, 0x2

    return v0

    .line 308
    :cond_1e
    const/4 v0, 0x3

    return v0
.end method

.method private static blacklist comparePasswordMetrics(Landroid/app/admin/PasswordMetrics;Landroid/app/admin/PasswordMetrics$ComplexityBucket;Landroid/app/admin/PasswordMetrics;Ljava/util/ArrayList;)V
    .registers 8
    .param p0, "minMetrics"    # Landroid/app/admin/PasswordMetrics;
    .param p1, "bucket"    # Landroid/app/admin/PasswordMetrics$ComplexityBucket;
    .param p2, "actualMetrics"    # Landroid/app/admin/PasswordMetrics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "Landroid/app/admin/PasswordMetrics$ComplexityBucket;",
            "Landroid/app/admin/PasswordMetrics;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;)V"
        }
    .end annotation

    .line 584
    .local p3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/PasswordValidationError;>;"
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->length:I

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-ge v0, v1, :cond_11

    .line 585
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v1, 0x3

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_11
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    const/4 v1, 0x0

    if-nez v0, :cond_43

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-nez v0, :cond_43

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-nez v0, :cond_43

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-nez v0, :cond_43

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-nez v0, :cond_43

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-nez v0, :cond_43

    .line 591
    invoke-virtual {p1, v1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v0

    .line 592
    .local v0, "allNumericMinimumLength":I
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-le v0, v2, :cond_43

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-le v0, v2, :cond_43

    iget v2, p2, Landroid/app/admin/PasswordMetrics;->length:I

    if-ge v2, v0, :cond_43

    .line 595
    new-instance v2, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    .end local v0    # "allNumericMinimumLength":I
    :cond_43
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-ge v0, v2, :cond_54

    .line 600
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x7

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_54
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-ge v0, v2, :cond_66

    .line 603
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0x8

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_66
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-ge v0, v2, :cond_78

    .line 606
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0x9

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_78
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-ge v0, v2, :cond_8a

    .line 609
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0xa

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_8a
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-ge v0, v2, :cond_9c

    .line 612
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0xb

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_9c
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-ge v0, v2, :cond_ae

    .line 615
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0xc

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_ae
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-ge v0, v2, :cond_c0

    .line 618
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0xd

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-direct {v0, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_c0
    iget v0, p2, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-le v0, v2, :cond_cf

    .line 621
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_cf
    return-void
.end method

.method public static blacklist complexityLevelToMinQuality(I)I
    .registers 2
    .param p0, "complexity"    # I

    .line 367
    sparse-switch p0, :sswitch_data_c

    .line 375
    const/4 v0, 0x0

    return v0

    .line 370
    :sswitch_5
    const/high16 v0, 0x30000

    return v0

    .line 372
    :sswitch_8
    const/high16 v0, 0x10000

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x10000 -> :sswitch_8
        0x30000 -> :sswitch_5
        0x50000 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;
    .registers 4
    .param p0, "credential"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPassword()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4a

    .line 187
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 188
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    .line 189
    .local v0, "metrics":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 190
    return-object v0

    .line 191
    .end local v0    # "metrics":Landroid/app/admin/PasswordMetrics;
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 192
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    .line 194
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown credential type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/app/admin/PasswordMetrics;->computeForPasswordOrPin([BZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist computeForPasswordOrPin([BZ)Landroid/app/admin/PasswordMetrics;
    .registers 21
    .param p0, "credential"    # [B
    .param p1, "isPin"    # Z

    .line 203
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 204
    .local v1, "letters":I
    const/4 v2, 0x0

    .line 205
    .local v2, "upperCase":I
    const/4 v3, 0x0

    .line 206
    .local v3, "lowerCase":I
    const/4 v4, 0x0

    .line 207
    .local v4, "numeric":I
    const/4 v5, 0x0

    .line 208
    .local v5, "symbols":I
    const/4 v6, 0x0

    .line 209
    .local v6, "nonLetter":I
    const/4 v7, 0x0

    .line 210
    .local v7, "nonNumeric":I
    array-length v10, v0

    .line 211
    .local v10, "length":I
    array-length v8, v0

    const/4 v9, 0x0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    .end local v1    # "letters":I
    .end local v2    # "upperCase":I
    .end local v3    # "lowerCase":I
    .end local v4    # "numeric":I
    .end local v5    # "symbols":I
    .end local v6    # "nonLetter":I
    .end local v7    # "nonNumeric":I
    .local v11, "letters":I
    .local v12, "upperCase":I
    .local v13, "lowerCase":I
    .local v14, "numeric":I
    .local v15, "symbols":I
    .local v16, "nonLetter":I
    .local v17, "nonNumeric":I
    :goto_15
    if-ge v9, v8, :cond_3f

    aget-byte v1, v0, v9

    .line 212
    .local v1, "b":B
    int-to-char v2, v1

    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v2

    packed-switch v2, :pswitch_data_50

    goto :goto_3c

    .line 228
    :pswitch_22
    add-int/lit8 v15, v15, 0x1

    .line 229
    add-int/lit8 v16, v16, 0x1

    .line 230
    add-int/lit8 v17, v17, 0x1

    goto :goto_3c

    .line 224
    :pswitch_29
    add-int/lit8 v14, v14, 0x1

    .line 225
    add-int/lit8 v16, v16, 0x1

    .line 226
    goto :goto_3c

    .line 219
    :pswitch_2e
    add-int/lit8 v11, v11, 0x1

    .line 220
    add-int/lit8 v12, v12, 0x1

    .line 221
    add-int/lit8 v17, v17, 0x1

    .line 222
    goto :goto_3c

    .line 214
    :pswitch_35
    add-int/lit8 v11, v11, 0x1

    .line 215
    add-int/lit8 v13, v13, 0x1

    .line 216
    add-int/lit8 v17, v17, 0x1

    .line 217
    nop

    .line 211
    .end local v1    # "b":B
    :goto_3c
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 235
    :cond_3f
    if-eqz p1, :cond_43

    const/4 v1, 0x3

    goto :goto_44

    :cond_43
    const/4 v1, 0x4

    :goto_44
    move v9, v1

    .line 236
    .local v9, "credType":I
    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence([B)I

    move-result v18

    .line 237
    .local v18, "seqLength":I
    new-instance v8, Landroid/app/admin/PasswordMetrics;

    invoke-direct/range {v8 .. v18}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    return-object v8

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_35
        :pswitch_2e
        :pswitch_29
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist isNumericOnly(Ljava/lang/String;)Z
    .registers 5
    .param p0, "password"    # Ljava/lang/String;

    .line 695
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 696
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 697
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b

    return v1

    .line 696
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 699
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o maxDiffCategory(I)I
    .registers 2
    .param p0, "category"    # I

    .line 312
    packed-switch p0, :pswitch_data_a

    .line 319
    const/4 v0, 0x0

    return v0

    .line 317
    :pswitch_5
    const/16 v0, 0xa

    return v0

    .line 315
    :pswitch_8
    const/4 v0, 0x1

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist maxLengthSequence([B)I
    .registers 13
    .param p0, "bytes"    # [B

    .line 259
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    return v1

    .line 260
    :cond_5
    aget-byte v0, p0, v1

    int-to-char v0, v0

    .line 261
    .local v0, "previousChar":C
    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v1

    .line 262
    .local v1, "category":I
    const/4 v2, 0x0

    .line 263
    .local v2, "diff":I
    const/4 v3, 0x0

    .line 264
    .local v3, "hasDiff":Z
    const/4 v4, 0x0

    .line 265
    .local v4, "maxLength":I
    const/4 v5, 0x0

    .line 266
    .local v5, "startSequence":I
    const/4 v6, 0x1

    .local v6, "current":I
    :goto_11
    array-length v7, p0

    if-ge v6, v7, :cond_46

    .line 267
    aget-byte v7, p0, v6

    int-to-char v7, v7

    .line 268
    .local v7, "currentChar":C
    invoke-static {v7}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v8

    .line 269
    .local v8, "categoryCurrent":I
    sub-int v9, v7, v0

    .line 270
    .local v9, "currentDiff":I
    if-ne v8, v1, :cond_39

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v1}, Landroid/app/admin/PasswordMetrics;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_2a

    goto :goto_39

    .line 277
    :cond_2a
    if-eqz v3, :cond_36

    if-eq v9, v2, :cond_36

    .line 278
    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 279
    add-int/lit8 v5, v6, -0x1

    .line 281
    :cond_36
    move v2, v9

    .line 282
    const/4 v3, 0x1

    goto :goto_42

    .line 271
    :cond_39
    :goto_39
    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 272
    move v5, v6

    .line 273
    const/4 v3, 0x0

    .line 274
    move v1, v8

    .line 284
    :goto_42
    move v0, v7

    .line 266
    .end local v7    # "currentChar":C
    .end local v8    # "categoryCurrent":I
    .end local v9    # "currentDiff":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 286
    .end local v6    # "current":I
    :cond_46
    array-length v6, p0

    sub-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 287
    return v4
.end method

.method public static blacklist merge(Ljava/util/List;)Landroid/app/admin/PasswordMetrics;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;)",
            "Landroid/app/admin/PasswordMetrics;"
        }
    .end annotation

    .line 329
    .local p0, "metrics":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PasswordMetrics;>;"
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    .line 330
    .local v0, "result":Landroid/app/admin/PasswordMetrics;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    .line 331
    .local v2, "m":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {v0, v2}, Landroid/app/admin/PasswordMetrics;->maxWith(Landroid/app/admin/PasswordMetrics;)V

    .line 332
    .end local v2    # "m":Landroid/app/admin/PasswordMetrics;
    goto :goto_a

    .line 334
    :cond_1a
    return-object v0
.end method

.method private blacklist removeOverlapping()V
    .registers 10

    .line 634
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    add-int/2addr v0, v1

    .line 637
    .local v0, "indirectLetters":I
    iget v1, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    add-int/2addr v1, v2

    .line 640
    .local v1, "indirectNonLetter":I
    iget v2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 641
    .local v2, "effectiveLetters":I
    iget v3, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    add-int/2addr v3, v2

    .line 645
    .local v3, "indirectNonNumeric":I
    iget v4, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 646
    .local v4, "effectiveNonLetter":I
    iget v5, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 647
    .local v5, "effectiveNonNumeric":I
    add-int v6, v2, v4

    iget v7, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    add-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 650
    .local v6, "indirectLength":I
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    const/4 v8, 0x0

    if-lt v0, v7, :cond_2f

    .line 651
    iput v8, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 653
    :cond_2f
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-lt v1, v7, :cond_35

    .line 654
    iput v8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 656
    :cond_35
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lt v3, v7, :cond_3b

    .line 657
    iput v8, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    .line 659
    :cond_3b
    iget v7, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-lt v6, v7, :cond_41

    .line 660
    iput v8, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 662
    :cond_41
    return-void
.end method

.method public static blacklist sanitizeComplexityLevel(I)I
    .registers 3
    .param p0, "complexityLevel"    # I

    .line 126
    sparse-switch p0, :sswitch_data_1e

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid password complexity used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasswordMetrics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    return v0

    .line 131
    :sswitch_1d
    return p0

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1d
        0x10000 -> :sswitch_1d
        0x30000 -> :sswitch_1d
        0x50000 -> :sswitch_1d
    .end sparse-switch
.end method

.method private blacklist satisfiesBucket(Landroid/app/admin/PasswordMetrics$ComplexityBucket;)Z
    .registers 7
    .param p1, "bucket"    # Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    .line 477
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-virtual {p1, v0}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->allowsCredType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 478
    return v1

    .line 480
    :cond_a
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v2, :cond_16

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    if-eq v0, v3, :cond_16

    .line 481
    return v4

    .line 483
    :cond_16
    invoke-virtual {p1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->canHaveSequence()Z

    move-result v0

    if-nez v0, :cond_20

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-gt v0, v3, :cond_31

    :cond_20
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lez v2, :cond_28

    move v2, v4

    goto :goto_29

    :cond_28
    move v2, v1

    .line 484
    :goto_29
    invoke-virtual {p1, v2}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->getMinimumLength(Z)I

    move-result v2

    if-lt v0, v2, :cond_31

    move v1, v4

    goto :goto_32

    :cond_31
    nop

    .line 483
    :goto_32
    return v1
.end method

.method public static blacklist validateCredential(Landroid/app/admin/PasswordMetrics;ILcom/android/internal/widget/LockscreenCredential;)Ljava/util/List;
    .registers 6
    .param p0, "adminMetrics"    # Landroid/app/admin/PasswordMetrics;
    .param p1, "minComplexity"    # I
    .param p2, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "I",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;"
        }
    .end annotation

    .line 514
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->hasInvalidChars()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 515
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 518
    :cond_12
    invoke-static {p2}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 519
    .local v0, "actualMetrics":Landroid/app/admin/PasswordMetrics;
    invoke-static {p0, p1, v0}, Landroid/app/admin/PasswordMetrics;->validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;
    .registers 12
    .param p0, "adminMetrics"    # Landroid/app/admin/PasswordMetrics;
    .param p1, "minComplexity"    # I
    .param p2, "actualMetrics"    # Landroid/app/admin/PasswordMetrics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PasswordMetrics;",
            "I",
            "Landroid/app/admin/PasswordMetrics;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;"
        }
    .end annotation

    .line 534
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->forComplexity(I)Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    .line 538
    .local v0, "bucket":Landroid/app/admin/PasswordMetrics$ComplexityBucket;
    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_7f

    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 539
    invoke-virtual {v0, v1}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->allowsCredType(I)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_7f

    .line 542
    :cond_15
    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v2, 0x4

    const/4 v5, 0x3

    if-ne v1, v4, :cond_32

    .line 546
    iget v1, p2, Landroid/app/admin/PasswordMetrics;->length:I

    if-eqz v1, :cond_2d

    iget v1, p2, Landroid/app/admin/PasswordMetrics;->length:I

    if-ge v1, v2, :cond_2d

    .line 547
    new-instance v1, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v1, v5, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 550
    :cond_2d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 552
    :cond_32
    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_3c

    .line 553
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 556
    :cond_3c
    iget v1, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    if-ne v1, v5, :cond_4f

    iget v1, p2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-lez v1, :cond_4f

    .line 557
    new-instance v1, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 561
    :cond_4f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/PasswordValidationError;>;"
    iget v6, p2, Landroid/app/admin/PasswordMetrics;->length:I

    const/16 v7, 0x10

    if-le v6, v7, :cond_63

    .line 563
    new-instance v6, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v8, 0x5

    invoke-direct {v6, v8, v7}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_63
    iget v6, p2, Landroid/app/admin/PasswordMetrics;->credType:I

    if-ne v6, v5, :cond_68

    move v3, v4

    :cond_68
    invoke-static {p0, v3, v0}, Landroid/app/admin/PasswordMetrics;->applyComplexity(Landroid/app/admin/PasswordMetrics;ZLandroid/app/admin/PasswordMetrics$ComplexityBucket;)Landroid/app/admin/PasswordMetrics;

    move-result-object v3

    .line 570
    .local v3, "minMetrics":Landroid/app/admin/PasswordMetrics;
    iget v4, v3, Landroid/app/admin/PasswordMetrics;->length:I

    .line 571
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 570
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v3, Landroid/app/admin/PasswordMetrics;->length:I

    .line 572
    invoke-direct {v3}, Landroid/app/admin/PasswordMetrics;->removeOverlapping()V

    .line 574
    invoke-static {v3, v0, p2, v1}, Landroid/app/admin/PasswordMetrics;->comparePasswordMetrics(Landroid/app/admin/PasswordMetrics;Landroid/app/admin/PasswordMetrics$ComplexityBucket;Landroid/app/admin/PasswordMetrics;Ljava/util/ArrayList;)V

    .line 576
    return-object v1

    .line 540
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/PasswordValidationError;>;"
    .end local v3    # "minMetrics":Landroid/app/admin/PasswordMetrics;
    :cond_7f
    :goto_7f
    new-instance v1, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v1, v4, v3}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist determineComplexity()I
    .registers 6

    .line 493
    invoke-static {}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->values()[Landroid/app/admin/PasswordMetrics$ComplexityBucket;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 494
    .local v3, "bucket":Landroid/app/admin/PasswordMetrics$ComplexityBucket;
    invoke-direct {p0, v3}, Landroid/app/admin/PasswordMetrics;->satisfiesBucket(Landroid/app/admin/PasswordMetrics$ComplexityBucket;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 495
    iget v0, v3, Landroid/app/admin/PasswordMetrics$ComplexityBucket;->mComplexityLevel:I

    return v0

    .line 493
    .end local v3    # "bucket":Landroid/app/admin/PasswordMetrics$ComplexityBucket;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 498
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to figure out complexity for a given metrics"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 704
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 705
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_54

    .line 706
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    .line 707
    .local v2, "that":Landroid/app/admin/PasswordMetrics;
    iget v3, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->credType:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->length:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->letters:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v4, v2, Landroid/app/admin/PasswordMetrics;->seqLength:I

    if-ne v3, v4, :cond_52

    goto :goto_53

    :cond_52
    move v0, v1

    :goto_53
    return v0

    .line 705
    .end local v2    # "that":Landroid/app/admin/PasswordMetrics;
    :cond_54
    :goto_54
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 721
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 722
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 721
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist maxWith(Landroid/app/admin/PasswordMetrics;)V
    .registers 4
    .param p1, "other"    # Landroid/app/admin/PasswordMetrics;

    .line 343
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 344
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    .line 345
    return-void

    .line 347
    :cond_15
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 348
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 349
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 350
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 351
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 352
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 353
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 354
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    .line 355
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v1, p1, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 356
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 145
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
