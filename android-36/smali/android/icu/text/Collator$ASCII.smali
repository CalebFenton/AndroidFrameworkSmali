.class final Landroid/icu/text/Collator$ASCII;
.super Ljava/lang/Object;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ASCII"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 9
    .param p0, "left"    # Ljava/lang/CharSequence;
    .param p1, "right"    # Ljava/lang/CharSequence;

    .line 605
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 606
    .local v0, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    .line 607
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_33

    .line 608
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 609
    .local v3, "lc":C
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 610
    .local v4, "rc":C
    if-ne v3, v4, :cond_1a

    goto :goto_2f

    .line 611
    :cond_1a
    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-gt v6, v3, :cond_27

    if-gt v3, v5, :cond_27

    .line 612
    add-int/lit8 v5, v3, 0x20

    if-ne v5, v4, :cond_32

    goto :goto_2f

    .line 613
    :cond_27
    if-gt v6, v4, :cond_32

    if-gt v4, v5, :cond_32

    .line 614
    add-int/lit8 v5, v4, 0x20

    if-ne v5, v3, :cond_32

    .line 607
    .end local v3    # "lc":C
    .end local v4    # "rc":C
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 616
    .restart local v3    # "lc":C
    .restart local v4    # "rc":C
    :cond_32
    return v2

    .line 618
    .end local v1    # "i":I
    .end local v3    # "lc":C
    .end local v4    # "rc":C
    :cond_33
    const/4 v1, 0x1

    return v1
.end method
