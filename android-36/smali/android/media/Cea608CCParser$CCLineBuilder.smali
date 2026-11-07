.class Landroid/media/Cea608CCParser$CCLineBuilder;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBuilder"
.end annotation


# instance fields
.field private final greylist-max-o mDisplayChars:Ljava/lang/StringBuilder;

.field private final greylist-max-o mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

.field private final greylist-max-o mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 666
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [Landroid/media/Cea608CCParser$StyleCode;

    iput-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    .line 667
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [Landroid/media/Cea608CCParser$StyleCode;

    iput-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    .line 668
    return-void
.end method


# virtual methods
.method greylist-max-o applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V
    .registers 8
    .param p1, "styledText"    # Landroid/text/SpannableStringBuilder;
    .param p2, "s"    # Landroid/media/Cea608CCParser$StyleCode;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 695
    invoke-virtual {p2}, Landroid/media/Cea608CCParser$StyleCode;->isItalics()Z

    move-result v0

    const/16 v1, 0x21

    if-eqz v0, :cond_11

    .line 696
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 700
    :cond_11
    invoke-virtual {p2}, Landroid/media/Cea608CCParser$StyleCode;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 701
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 705
    :cond_1f
    return-void
.end method

.method greylist-max-o charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 685
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method greylist-max-o getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;
    .registers 12
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 708
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 709
    .local v0, "styledText":Landroid/text/SpannableStringBuilder;
    const/4 v1, -0x1

    .local v1, "start":I
    const/4 v2, 0x0

    .line 710
    .local v2, "next":I
    const/4 v3, -0x1

    .line 711
    .local v3, "styleStart":I
    const/4 v4, 0x0

    .line 712
    .local v4, "curStyle":Landroid/media/Cea608CCParser$StyleCode;
    :goto_b
    iget-object v5, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v2, v5, :cond_7a

    .line 713
    const/4 v5, 0x0

    .line 714
    .local v5, "newStyle":Landroid/media/Cea608CCParser$StyleCode;
    iget-object v6, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v6, v6, v2

    if-eqz v6, :cond_1f

    .line 716
    iget-object v6, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v5, v6, v2

    goto :goto_2d

    .line 717
    :cond_1f
    iget-object v6, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v6, v6, v2

    if-eqz v6, :cond_2d

    if-ltz v3, :cond_29

    if-gez v1, :cond_2d

    .line 722
    :cond_29
    iget-object v6, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aget-object v5, v6, v2

    .line 724
    :cond_2d
    :goto_2d
    if-eqz v5, :cond_38

    .line 725
    move-object v4, v5

    .line 726
    if-ltz v3, :cond_37

    if-ltz v1, :cond_37

    .line 727
    invoke-virtual {p0, v0, v5, v3, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V

    .line 729
    :cond_37
    move v3, v2

    .line 732
    :cond_38
    iget-object v6, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0xa0

    if-eq v6, v7, :cond_46

    .line 733
    if-gez v1, :cond_76

    .line 734
    move v1, v2

    goto :goto_76

    .line 736
    :cond_46
    if-ltz v1, :cond_76

    .line 737
    iget-object v6, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_54

    move v6, v1

    goto :goto_56

    :cond_54
    add-int/lit8 v6, v1, -0x1

    .line 738
    .local v6, "expandedStart":I
    :goto_56
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_62

    move v7, v2

    goto :goto_64

    :cond_62
    add-int/lit8 v7, v2, 0x1

    .line 739
    .local v7, "expandedEnd":I
    :goto_64
    new-instance v8, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    iget v9, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-direct {v8, v9}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v0, v8, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 743
    if-ltz v3, :cond_75

    .line 744
    invoke-virtual {p0, v0, v4, v3, v7}, Landroid/media/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V

    .line 746
    :cond_75
    const/4 v1, -0x1

    .line 748
    .end local v6    # "expandedStart":I
    .end local v7    # "expandedEnd":I
    :cond_76
    :goto_76
    nop

    .end local v5    # "newStyle":Landroid/media/Cea608CCParser$StyleCode;
    add-int/lit8 v2, v2, 0x1

    .line 749
    goto :goto_b

    .line 751
    :cond_7a
    return-object v0
.end method

.method greylist-max-o length()I
    .registers 2

    .line 689
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method greylist-max-o setCharAt(IC)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .line 671
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 672
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 673
    return-void
.end method

.method greylist-max-o setMidRowAt(ILandroid/media/Cea608CCParser$StyleCode;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "m"    # Landroid/media/Cea608CCParser$StyleCode;

    .line 676
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 677
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aput-object p2, v0, p1

    .line 678
    return-void
.end method

.method greylist-max-o setPACAt(ILandroid/media/Cea608CCParser$PAC;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "pac"    # Landroid/media/Cea608CCParser$PAC;

    .line 681
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    aput-object p2, v0, p1

    .line 682
    return-void
.end method
