.class Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkeletonFields"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final greylist-max-o DEFAULT_CHAR:B

.field private static final greylist-max-o DEFAULT_LENGTH:B


# instance fields
.field private greylist-max-o chars:[B

.field private greylist-max-o lengths:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2616
    const-class v0, Landroid/icu/text/DateTimePatternGenerator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 2616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2617
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    .line 2618
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/DateTimePatternGenerator-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;-><init>()V

    return-void
.end method

.method private greylist-max-o appendFieldTo(ILjava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .registers 7
    .param p1, "field"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "canonical"    # Z

    .line 2704
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    aget-byte v0, v0, p1

    int-to-char v0, v0

    .line 2705
    .local v0, "ch":C
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte v1, v1, p1

    .line 2707
    .local v1, "length":I
    if-eqz p3, :cond_f

    .line 2708
    invoke-static {p1, v0}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$smgetCanonicalChar(IC)C

    move-result v0

    .line 2711
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_18

    .line 2712
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2711
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2714
    .end local v2    # "i":I
    :cond_18
    return-object p2
.end method

.method private greylist-max-o appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "canonical"    # Z
    .param p3, "skipDayPeriod"    # Z

    .line 2690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_12

    .line 2691
    if-eqz p3, :cond_c

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    .line 2692
    goto :goto_f

    .line 2694
    :cond_c
    invoke-direct {p0, v0, p1, p2}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->appendFieldTo(ILjava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 2690
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2696
    .end local v0    # "i":I
    :cond_12
    return-object p1
.end method


# virtual methods
.method public greylist-max-o appendFieldTo(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "field"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 2700
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->appendFieldTo(ILjava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 2686
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o clear()V
    .registers 3

    .line 2623
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 2624
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 2625
    return-void
.end method

.method greylist-max-o clearField(I)V
    .registers 4
    .param p1, "field"    # I

    .line 2633
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    const/4 v1, 0x0

    aput-byte v1, v0, p1

    .line 2634
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aput-byte v1, v0, p1

    .line 2635
    return-void
.end method

.method public greylist-max-o compareTo(Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;)I
    .registers 6
    .param p1, "other"    # Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    .line 2718
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_20

    .line 2719
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    aget-byte v1, v1, v0

    iget-object v2, p1, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    aget-byte v2, v2, v0

    sub-int/2addr v1, v2

    .line 2720
    .local v1, "charDiff":I
    if-eqz v1, :cond_11

    .line 2721
    return v1

    .line 2723
    :cond_11
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte v2, v2, v0

    iget-object v3, p1, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte v3, v3, v0

    sub-int/2addr v2, v3

    .line 2724
    .local v2, "lengthDiff":I
    if-eqz v2, :cond_1d

    .line 2725
    return v2

    .line 2718
    .end local v1    # "charDiff":I
    .end local v2    # "lengthDiff":I
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2728
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o copyFieldFrom(Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;I)V
    .registers 5
    .param p1, "other"    # Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;
    .param p2, "field"    # I

    .line 2628
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    iget-object v1, p1, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    aget-byte v1, v1, p2

    aput-byte v1, v0, p2

    .line 2629
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    iget-object v1, p1, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte v1, v1, p2

    aput-byte v1, v0, p2

    .line 2630
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 2733
    if-eq p0, p1, :cond_14

    if-eqz p1, :cond_12

    instance-of v0, p1, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    .line 2734
    invoke-virtual {p0, v0}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->compareTo(Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;)I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 2733
    :goto_15
    return v0
.end method

.method greylist-max-o getFieldChar(I)C
    .registers 3
    .param p1, "field"    # I

    .line 2638
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    aget-byte v0, v0, p1

    int-to-char v0, v0

    return v0
.end method

.method greylist-max-o getFieldLength(I)I
    .registers 3
    .param p1, "field"    # I

    .line 2642
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 2739
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o isFieldEmpty(I)Z
    .registers 3
    .param p1, "field"    # I

    .line 2663
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte v0, v0, p1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method greylist-max-o populate(ICI)V
    .registers 6
    .param p1, "field"    # I
    .param p2, "ch"    # C
    .param p3, "length"    # I

    .line 2655
    nop

    .line 2656
    nop

    .line 2658
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    .line 2659
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    int-to-byte v1, p3

    aput-byte v1, v0, p1

    .line 2660
    return-void
.end method

.method greylist-max-o populate(ILjava/lang/String;)V
    .registers 8
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 2647
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_f

    aget-char v4, v0, v3

    .line 2648
    .local v4, "ch":C
    nop

    .line 2647
    .end local v4    # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2651
    :cond_f
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    .line 2652
    return-void
.end method

.method public greylist-max-o toCanonicalString()Ljava/lang/String;
    .registers 4

    .line 2677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toCanonicalString(Z)Ljava/lang/String;
    .registers 4
    .param p1, "skipDayPeriod"    # Z

    .line 2681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toString(Z)Ljava/lang/String;
    .registers 4
    .param p1, "skipDayPeriod"    # Z

    .line 2672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
