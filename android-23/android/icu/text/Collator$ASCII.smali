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
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 8
    .param p0, "left"    # Ljava/lang/CharSequence;
    .param p1, "right"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v7, 0x5a

    #@2
    const/16 v6, 0x41

    #@4
    const/4 v5, 0x0

    #@5
    .line 618
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v2

    #@9
    .line 619
    .local v2, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v4

    #@d
    if-eq v2, v4, :cond_0

    #@f
    return v5

    #@10
    .line 620
    :cond_0
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_5

    #@13
    .line 621
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@16
    move-result v1

    #@17
    .line 622
    .local v1, "lc":C
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@1a
    move-result v3

    #@1b
    .line 623
    .local v3, "rc":C
    if-ne v1, v3, :cond_2

    #@1d
    .line 620
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 624
    :cond_2
    if-gt v6, v1, :cond_4

    #@22
    if-gt v1, v7, :cond_4

    #@24
    .line 625
    add-int/lit8 v4, v1, 0x20

    #@26
    if-eq v4, v3, :cond_1

    #@28
    .line 629
    :cond_3
    return v5

    #@29
    .line 626
    :cond_4
    if-gt v6, v3, :cond_3

    #@2b
    if-gt v3, v7, :cond_3

    #@2d
    .line 627
    add-int/lit8 v4, v3, 0x20

    #@2f
    if-ne v4, v1, :cond_3

    #@31
    goto :goto_1

    #@32
    .line 631
    .end local v1    # "lc":C
    .end local v3    # "rc":C
    :cond_5
    const/4 v4, 0x1

    #@33
    return v4
.end method
