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
.field private final mDisplayChars:Ljava/lang/StringBuilder;

.field private final mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

.field private final mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@a
    .line 666
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@f
    move-result v0

    #@10
    new-array v0, v0, [Landroid/media/Cea608CCParser$StyleCode;

    #@12
    iput-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    #@14
    .line 667
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@19
    move-result v0

    #@1a
    new-array v0, v0, [Landroid/media/Cea608CCParser$StyleCode;

    #@1c
    iput-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    #@1e
    .line 664
    return-void
.end method


# virtual methods
.method applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V
    .locals 3
    .param p1, "styledText"    # Landroid/text/SpannableStringBuilder;
    .param p2, "s"    # Landroid/media/Cea608CCParser$StyleCode;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    const/16 v2, 0x21

    #@2
    .line 695
    invoke-virtual {p2}, Landroid/media/Cea608CCParser$StyleCode;->isItalics()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 697
    new-instance v0, Landroid/text/style/StyleSpan;

    #@a
    const/4 v1, 0x2

    #@b
    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@e
    .line 696
    invoke-virtual {p1, v0, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@11
    .line 700
    :cond_0
    invoke-virtual {p2}, Landroid/media/Cea608CCParser$StyleCode;->isUnderline()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 702
    new-instance v0, Landroid/text/style/UnderlineSpan;

    #@19
    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    #@1c
    .line 701
    invoke-virtual {p1, v0, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@1f
    .line 694
    :cond_1
    return-void
.end method

.method charAt(I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;
    .locals 11
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@0
    .prologue
    const/16 v10, 0x20

    #@2
    .line 708
    new-instance v7, Landroid/text/SpannableStringBuilder;

    #@4
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@9
    .line 709
    .local v7, "styledText":Landroid/text/SpannableStringBuilder;
    const/4 v5, -0x1

    #@a
    .local v5, "start":I
    const/4 v4, 0x0

    #@b
    .line 710
    .local v4, "next":I
    const/4 v6, -0x1

    #@c
    .line 711
    .local v6, "styleStart":I
    const/4 v0, 0x0

    #@d
    .line 712
    :goto_0
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    #@12
    move-result v8

    #@13
    if-ge v4, v8, :cond_a

    #@15
    .line 713
    const/4 v3, 0x0

    #@16
    .line 714
    .local v3, "newStyle":Landroid/media/Cea608CCParser$StyleCode;
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    #@18
    aget-object v8, v8, v4

    #@1a
    if-eqz v8, :cond_4

    #@1c
    .line 716
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    #@1e
    aget-object v3, v8, v4

    #@20
    .line 724
    .end local v3    # "newStyle":Landroid/media/Cea608CCParser$StyleCode;
    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    #@22
    .line 725
    move-object v0, v3

    #@23
    .line 726
    .local v0, "curStyle":Landroid/media/Cea608CCParser$StyleCode;
    if-ltz v6, :cond_1

    #@25
    if-ltz v5, :cond_1

    #@27
    .line 727
    invoke-virtual {p0, v7, v3, v6, v4}, Landroid/media/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V

    #@2a
    .line 729
    :cond_1
    move v6, v4

    #@2b
    .line 732
    .end local v0    # "curStyle":Landroid/media/Cea608CCParser$StyleCode;
    :cond_2
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@2d
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    #@30
    move-result v8

    #@31
    const/16 v9, 0xa0

    #@33
    if-eq v8, v9, :cond_6

    #@35
    .line 733
    if-gez v5, :cond_3

    #@37
    .line 734
    move v5, v4

    #@38
    .line 748
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 717
    .restart local v3    # "newStyle":Landroid/media/Cea608CCParser$StyleCode;
    :cond_4
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    #@3d
    aget-object v8, v8, v4

    #@3f
    if-eqz v8, :cond_0

    #@41
    .line 718
    if-ltz v6, :cond_5

    #@43
    if-gez v5, :cond_0

    #@45
    .line 722
    :cond_5
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    #@47
    aget-object v3, v8, v4

    #@49
    .local v3, "newStyle":Landroid/media/Cea608CCParser$StyleCode;
    goto :goto_1

    #@4a
    .line 736
    .end local v3    # "newStyle":Landroid/media/Cea608CCParser$StyleCode;
    :cond_6
    if-ltz v5, :cond_3

    #@4c
    .line 737
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@4e
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    #@51
    move-result v8

    #@52
    if-ne v8, v10, :cond_8

    #@54
    move v2, v5

    #@55
    .line 738
    .local v2, "expandedStart":I
    :goto_3
    iget-object v8, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@57
    add-int/lit8 v9, v4, -0x1

    #@59
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    #@5c
    move-result v8

    #@5d
    if-ne v8, v10, :cond_9

    #@5f
    move v1, v4

    #@60
    .line 740
    .local v1, "expandedEnd":I
    :goto_4
    new-instance v8, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    #@62
    iget v9, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@64
    invoke-direct {v8, v9}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;-><init>(I)V

    #@67
    .line 742
    const/16 v9, 0x21

    #@69
    .line 739
    invoke-virtual {v7, v8, v2, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@6c
    .line 743
    if-ltz v6, :cond_7

    #@6e
    .line 744
    invoke-virtual {p0, v7, v0, v6, v1}, Landroid/media/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/Cea608CCParser$StyleCode;II)V

    #@71
    .line 746
    :cond_7
    const/4 v5, -0x1

    #@72
    goto :goto_2

    #@73
    .line 737
    .end local v1    # "expandedEnd":I
    .end local v2    # "expandedStart":I
    :cond_8
    add-int/lit8 v2, v5, -0x1

    #@75
    .restart local v2    # "expandedStart":I
    goto :goto_3

    #@76
    .line 738
    :cond_9
    add-int/lit8 v1, v4, 0x1

    #@78
    .restart local v1    # "expandedEnd":I
    goto :goto_4

    #@79
    .line 751
    .end local v1    # "expandedEnd":I
    .end local v2    # "expandedStart":I
    :cond_a
    return-object v7
.end method

.method length()I
    .locals 1

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method setCharAt(IC)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "ch"    # C

    #@0
    .prologue
    .line 671
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@5
    .line 672
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    #@7
    const/4 v1, 0x0

    #@8
    aput-object v1, v0, p1

    #@a
    .line 670
    return-void
.end method

.method setMidRowAt(ILandroid/media/Cea608CCParser$StyleCode;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "m"    # Landroid/media/Cea608CCParser$StyleCode;

    #@0
    .prologue
    .line 676
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x20

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@7
    .line 677
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/Cea608CCParser$StyleCode;

    #@9
    aput-object p2, v0, p1

    #@b
    .line 675
    return-void
.end method

.method setPACAt(ILandroid/media/Cea608CCParser$PAC;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pac"    # Landroid/media/Cea608CCParser$PAC;

    #@0
    .prologue
    .line 681
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/Cea608CCParser$StyleCode;

    #@2
    aput-object p2, v0, p1

    #@4
    .line 680
    return-void
.end method
