.class Ljava/util/Formatter$FormatSpecifier;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/util/Formatter$FormatString;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatSpecifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private c:C

.field private dt:Z

.field private f:Ljava/util/Formatter$Flags;

.field private index:I

.field private precision:I

.field final synthetic this$0:Ljava/util/Formatter;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/Formatter$FormatSpecifier;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@b
    .line 2654
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Formatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Ljava/util/Formatter;
    .param p2, "indexStr"    # Ljava/lang/String;
    .param p3, "flagsStr"    # Ljava/lang/String;
    .param p4, "widthStr"    # Ljava/lang/String;
    .param p5, "precisionStr"    # Ljava/lang/String;
    .param p6, "tTStr"    # Ljava/lang/String;
    .param p7, "convStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2744
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2655
    const/4 v1, -0x1

    #@6
    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    #@8
    .line 2656
    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    #@a
    iput-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@c
    .line 2659
    const/4 v1, 0x0

    #@d
    iput-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    #@f
    .line 2746
    const/4 v0, 0x1

    #@10
    .line 2748
    .local v0, "idx":I
    invoke-direct {p0, p2}, Ljava/util/Formatter$FormatSpecifier;->index(Ljava/lang/String;)I

    #@13
    .line 2749
    invoke-direct {p0, p3}, Ljava/util/Formatter$FormatSpecifier;->flags(Ljava/lang/String;)Ljava/util/Formatter$Flags;

    #@16
    .line 2750
    invoke-direct {p0, p4}, Ljava/util/Formatter$FormatSpecifier;->width(Ljava/lang/String;)I

    #@19
    .line 2751
    invoke-direct {p0, p5}, Ljava/util/Formatter$FormatSpecifier;->precision(Ljava/lang/String;)I

    #@1c
    .line 2753
    if-eqz p6, :cond_0

    #@1e
    .line 2754
    const/4 v1, 0x1

    #@1f
    iput-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    #@21
    .line 2755
    const-string/jumbo v1, "T"

    #@24
    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 2756
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@2c
    sget-object v2, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@2e
    invoke-static {v1, v2}, Ljava/util/Formatter$Flags;->-wrap0(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    #@31
    .line 2759
    :cond_0
    invoke-direct {p0, p7}, Ljava/util/Formatter$FormatSpecifier;->conversion(Ljava/lang/String;)C

    #@34
    .line 2761
    iget-boolean v1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    #@36
    if-eqz v1, :cond_1

    #@38
    .line 2762
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkDateTime()V

    #@3b
    .line 2745
    :goto_0
    return-void

    #@3c
    .line 2763
    :cond_1
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@3e
    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isGeneral(C)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_2

    #@44
    .line 2764
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkGeneral()V

    #@47
    goto :goto_0

    #@48
    .line 2765
    :cond_2
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@4a
    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isCharacter(C)Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_3

    #@50
    .line 2766
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkCharacter()V

    #@53
    goto :goto_0

    #@54
    .line 2767
    :cond_3
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@56
    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isInteger(C)Z

    #@59
    move-result v1

    #@5a
    if-eqz v1, :cond_4

    #@5c
    .line 2768
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkInteger()V

    #@5f
    goto :goto_0

    #@60
    .line 2769
    :cond_4
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@62
    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isFloat(C)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_5

    #@68
    .line 2770
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkFloat()V

    #@6b
    goto :goto_0

    #@6c
    .line 2771
    :cond_5
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@6e
    invoke-static {v1}, Ljava/util/Formatter$Conversion;->isText(C)Z

    #@71
    move-result v1

    #@72
    if-eqz v1, :cond_6

    #@74
    .line 2772
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkText()V

    #@77
    goto :goto_0

    #@78
    .line 2774
    :cond_6
    new-instance v1, Ljava/util/UnknownFormatConversionException;

    #@7a
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@7c
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    invoke-direct {v1, v2}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    #@83
    throw v1
.end method

.method private addDot([C)[C
    .locals 3
    .param p1, "mant"    # [C

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3884
    move-object v0, p1

    #@2
    .line 3885
    .local v0, "tmp":[C
    array-length v1, p1

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    new-array v0, v1, [C

    #@7
    .line 3886
    array-length v1, p1

    #@8
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@b
    .line 3887
    array-length v1, v0

    #@c
    add-int/lit8 v1, v1, -0x1

    #@e
    const/16 v2, 0x2e

    #@10
    aput-char v2, v0, v1

    #@12
    .line 3888
    return-object v0
.end method

.method private addZeros([CI)[C
    .locals 11
    .param p1, "v"    # [C
    .param p2, "prec"    # I

    #@0
    .prologue
    const/16 v10, 0x2e

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 3473
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v6, p1

    #@6
    if-ge v0, v6, :cond_0

    #@8
    .line 3474
    aget-char v6, p1, v0

    #@a
    if-ne v6, v10, :cond_2

    #@c
    .line 3477
    :cond_0
    const/4 v2, 0x0

    #@d
    .line 3478
    .local v2, "needDot":Z
    array-length v6, p1

    #@e
    if-ne v0, v6, :cond_1

    #@10
    .line 3479
    const/4 v2, 0x1

    #@11
    .line 3483
    :cond_1
    array-length v6, p1

    #@12
    sub-int v9, v6, v0

    #@14
    if-eqz v2, :cond_3

    #@16
    move v6, v7

    #@17
    :goto_1
    sub-int v3, v9, v6

    #@19
    .line 3484
    .local v3, "outPrec":I
    sget-boolean v6, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@1b
    if-nez v6, :cond_5

    #@1d
    if-gt v3, p2, :cond_4

    #@1f
    move v6, v8

    #@20
    :goto_2
    if-nez v6, :cond_5

    #@22
    new-instance v6, Ljava/lang/AssertionError;

    #@24
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@27
    throw v6

    #@28
    .line 3473
    .end local v2    # "needDot":Z
    .end local v3    # "outPrec":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .restart local v2    # "needDot":Z
    :cond_3
    move v6, v8

    #@2c
    .line 3483
    goto :goto_1

    #@2d
    .restart local v3    # "outPrec":I
    :cond_4
    move v6, v7

    #@2e
    .line 3484
    goto :goto_2

    #@2f
    .line 3485
    :cond_5
    if-ne v3, p2, :cond_6

    #@31
    .line 3486
    return-object p1

    #@32
    .line 3490
    :cond_6
    array-length v6, p1

    #@33
    add-int/2addr v6, p2

    #@34
    sub-int/2addr v6, v3

    #@35
    if-eqz v2, :cond_8

    #@37
    :goto_3
    add-int/2addr v6, v8

    #@38
    new-array v5, v6, [C

    #@3a
    .line 3491
    .local v5, "tmp":[C
    array-length v6, p1

    #@3b
    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@3e
    .line 3494
    array-length v4, p1

    #@3f
    .line 3495
    .local v4, "start":I
    if-eqz v2, :cond_7

    #@41
    .line 3496
    array-length v6, p1

    #@42
    aput-char v10, v5, v6

    #@44
    .line 3497
    add-int/lit8 v4, v4, 0x1

    #@46
    .line 3501
    :cond_7
    move v1, v4

    #@47
    .local v1, "j":I
    :goto_4
    array-length v6, v5

    #@48
    if-ge v1, v6, :cond_9

    #@4a
    .line 3502
    const/16 v6, 0x30

    #@4c
    aput-char v6, v5, v1

    #@4e
    .line 3501
    add-int/lit8 v1, v1, 0x1

    #@50
    goto :goto_4

    #@51
    .end local v1    # "j":I
    .end local v4    # "start":I
    .end local v5    # "tmp":[C
    :cond_8
    move v8, v7

    #@52
    .line 3490
    goto :goto_3

    #@53
    .line 3504
    .restart local v1    # "j":I
    .restart local v4    # "start":I
    .restart local v5    # "tmp":[C
    :cond_9
    return-object v5
.end method

.method private adjustWidth(ILjava/util/Formatter$Flags;Z)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "f"    # Ljava/util/Formatter$Flags;
    .param p3, "neg"    # Z

    #@0
    .prologue
    .line 3876
    move v0, p1

    #@1
    .line 3877
    .local v0, "newW":I
    const/4 v1, -0x1

    #@2
    if-eq p1, v1, :cond_0

    #@4
    if-eqz p3, :cond_0

    #@6
    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@8
    invoke-virtual {p2, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 3878
    add-int/lit8 v0, p1, -0x1

    #@10
    .line 3879
    :cond_0
    return v0
.end method

.method private varargs checkBadFlags([Ljava/util/Formatter$Flags;)V
    .locals 3
    .param p1, "badFlags"    # [Ljava/util/Formatter$Flags;

    #@0
    .prologue
    .line 3033
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 3034
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@6
    aget-object v2, p1, v0

    #@8
    invoke-virtual {v1, v2}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 3035
    aget-object v1, p1, v0

    #@10
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@12
    invoke-direct {p0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    #@15
    .line 3033
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 3032
    :cond_1
    return-void
.end method

.method private checkCharacter()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 3010
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@3
    if-eq v0, v3, :cond_0

    #@5
    .line 3011
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    #@7
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@9
    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    #@c
    throw v0

    #@d
    .line 3012
    :cond_0
    const/4 v0, 0x6

    #@e
    new-array v0, v0, [Ljava/util/Formatter$Flags;

    #@10
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@12
    const/4 v2, 0x0

    #@13
    aput-object v1, v0, v2

    #@15
    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    #@17
    const/4 v2, 0x1

    #@18
    aput-object v1, v0, v2

    #@1a
    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    #@1c
    const/4 v2, 0x2

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 3013
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@21
    const/4 v2, 0x3

    #@22
    aput-object v1, v0, v2

    #@24
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@26
    const/4 v2, 0x4

    #@27
    aput-object v1, v0, v2

    #@29
    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@2b
    const/4 v2, 0x5

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 3012
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    #@31
    .line 3015
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@33
    if-ne v0, v3, :cond_1

    #@35
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@37
    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    #@39
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_1

    #@3f
    .line 3016
    new-instance v0, Ljava/util/MissingFormatWidthException;

    #@41
    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0

    #@49
    .line 3009
    :cond_1
    return-void
.end method

.method private checkDateTime()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 2998
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@3
    if-eq v0, v3, :cond_0

    #@5
    .line 2999
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    #@7
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@9
    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    #@c
    throw v0

    #@d
    .line 3000
    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@f
    invoke-static {v0}, Ljava/util/Formatter$DateTime;->isValid(C)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 3001
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "t"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 3002
    :cond_1
    const/4 v0, 0x6

    #@32
    new-array v0, v0, [Ljava/util/Formatter$Flags;

    #@34
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@36
    const/4 v2, 0x0

    #@37
    aput-object v1, v0, v2

    #@39
    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    #@3b
    const/4 v2, 0x1

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    #@40
    const/4 v2, 0x2

    #@41
    aput-object v1, v0, v2

    #@43
    .line 3003
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@45
    const/4 v2, 0x3

    #@46
    aput-object v1, v0, v2

    #@48
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@4a
    const/4 v2, 0x4

    #@4b
    aput-object v1, v0, v2

    #@4d
    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@4f
    const/4 v2, 0x5

    #@50
    aput-object v1, v0, v2

    #@52
    .line 3002
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    #@55
    .line 3005
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@57
    if-ne v0, v3, :cond_2

    #@59
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@5b
    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    #@5d
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_2

    #@63
    .line 3006
    new-instance v0, Ljava/util/MissingFormatWidthException;

    #@65
    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v0

    #@6d
    .line 2997
    :cond_2
    return-void
.end method

.method private checkFloat()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 3039
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    #@5
    .line 3040
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@7
    const/16 v1, 0x66

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 3038
    :cond_0
    :goto_0
    return-void

    #@c
    .line 3041
    :cond_1
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@e
    const/16 v1, 0x61

    #@10
    if-ne v0, v1, :cond_2

    #@12
    .line 3042
    const/4 v0, 0x2

    #@13
    new-array v0, v0, [Ljava/util/Formatter$Flags;

    #@15
    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@17
    aput-object v1, v0, v2

    #@19
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@1b
    aput-object v1, v0, v3

    #@1d
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    #@20
    goto :goto_0

    #@21
    .line 3043
    :cond_2
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@23
    const/16 v1, 0x65

    #@25
    if-ne v0, v1, :cond_3

    #@27
    .line 3044
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    #@29
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@2b
    aput-object v1, v0, v2

    #@2d
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    #@30
    goto :goto_0

    #@31
    .line 3045
    :cond_3
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@33
    const/16 v1, 0x67

    #@35
    if-ne v0, v1, :cond_0

    #@37
    .line 3046
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    #@39
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@3b
    aput-object v1, v0, v2

    #@3d
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    #@40
    goto :goto_0
.end method

.method private checkGeneral()V
    .locals 3

    #@0
    .prologue
    .line 2987
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@2
    const/16 v1, 0x62

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@8
    const/16 v1, 0x68

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 2988
    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@e
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@10
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@13
    move-result v0

    #@14
    .line 2987
    if-eqz v0, :cond_1

    #@16
    .line 2989
    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@18
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@1a
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    #@1d
    .line 2991
    :cond_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@1f
    const/4 v1, -0x1

    #@20
    if-ne v0, v1, :cond_2

    #@22
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@24
    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    #@26
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 2992
    new-instance v0, Ljava/util/MissingFormatWidthException;

    #@2e
    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 2993
    :cond_2
    const/4 v0, 0x5

    #@37
    new-array v0, v0, [Ljava/util/Formatter$Flags;

    #@39
    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    #@3b
    const/4 v2, 0x0

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    #@40
    const/4 v2, 0x1

    #@41
    aput-object v1, v0, v2

    #@43
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@45
    const/4 v2, 0x2

    #@46
    aput-object v1, v0, v2

    #@48
    .line 2994
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@4a
    const/4 v2, 0x3

    #@4b
    aput-object v1, v0, v2

    #@4d
    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@4f
    const/4 v2, 0x4

    #@50
    aput-object v1, v0, v2

    #@52
    .line 2993
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    #@55
    .line 2986
    return-void
.end method

.method private checkInteger()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 3020
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    #@5
    .line 3021
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@7
    const/4 v1, -0x1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 3022
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    #@c
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@e
    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    #@11
    throw v0

    #@12
    .line 3024
    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@14
    const/16 v1, 0x64

    #@16
    if-ne v0, v1, :cond_1

    #@18
    .line 3025
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    #@1a
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@1c
    aput-object v1, v0, v2

    #@1e
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    #@21
    .line 3019
    :goto_0
    return-void

    #@22
    .line 3026
    :cond_1
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@24
    const/16 v1, 0x6f

    #@26
    if-ne v0, v1, :cond_2

    #@28
    .line 3027
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    #@2a
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@2c
    aput-object v1, v0, v2

    #@2e
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    #@31
    goto :goto_0

    #@32
    .line 3029
    :cond_2
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    #@34
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@36
    aput-object v1, v0, v2

    #@38
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    #@3b
    goto :goto_0
.end method

.method private checkNumeric()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 3051
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@7
    if-gez v0, :cond_0

    #@9
    .line 3052
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    #@b
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@d
    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    #@10
    throw v0

    #@11
    .line 3054
    :cond_0
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@13
    if-eq v0, v1, :cond_1

    #@15
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@17
    if-gez v0, :cond_1

    #@19
    .line 3055
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    #@1b
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@1d
    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    #@20
    throw v0

    #@21
    .line 3058
    :cond_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@23
    if-ne v0, v1, :cond_3

    #@25
    .line 3059
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@27
    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    #@29
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_2

    #@2f
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@31
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@33
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@36
    move-result v0

    #@37
    .line 3058
    if-eqz v0, :cond_3

    #@39
    .line 3060
    :cond_2
    new-instance v0, Ljava/util/MissingFormatWidthException;

    #@3b
    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 3063
    :cond_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@45
    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    #@47
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_4

    #@4d
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@4f
    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    #@51
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@54
    move-result v0

    #@55
    if-nez v0, :cond_5

    #@57
    .line 3064
    :cond_4
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@59
    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    #@5b
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_6

    #@61
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@63
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@65
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@68
    move-result v0

    #@69
    .line 3063
    if-eqz v0, :cond_6

    #@6b
    .line 3065
    :cond_5
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    #@6d
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@6f
    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    #@76
    throw v0

    #@77
    .line 3050
    :cond_6
    return-void
.end method

.method private checkText()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 3069
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@3
    if-eq v0, v2, :cond_0

    #@5
    .line 3070
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    #@7
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@9
    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    #@c
    throw v0

    #@d
    .line 3071
    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@f
    sparse-switch v0, :sswitch_data_0

    #@12
    .line 3087
    sget-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@14
    if-nez v0, :cond_3

    #@16
    new-instance v0, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1b
    throw v0

    #@1c
    .line 3073
    :sswitch_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@1e
    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    #@21
    move-result v0

    #@22
    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    #@24
    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    #@27
    move-result v1

    #@28
    if-eq v0, v1, :cond_1

    #@2a
    .line 3074
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@2c
    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    #@2f
    move-result v0

    #@30
    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    #@32
    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    #@35
    move-result v1

    #@36
    if-eq v0, v1, :cond_1

    #@38
    .line 3075
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    #@3a
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@3c
    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 3077
    :cond_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@46
    if-ne v0, v2, :cond_3

    #@48
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@4a
    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    #@4c
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_3

    #@52
    .line 3078
    new-instance v0, Ljava/util/MissingFormatWidthException;

    #@54
    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v0

    #@5c
    .line 3081
    :sswitch_1
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@5e
    if-eq v0, v2, :cond_2

    #@60
    .line 3082
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    #@62
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@64
    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    #@67
    throw v0

    #@68
    .line 3083
    :cond_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@6a
    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    #@6d
    move-result v0

    #@6e
    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    #@70
    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    #@73
    move-result v1

    #@74
    if-eq v0, v1, :cond_3

    #@76
    .line 3084
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    #@78
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@7a
    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    #@81
    throw v0

    #@82
    .line 3068
    :cond_3
    return-void

    #@83
    .line 3071
    nop

    #@84
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private conversion()C
    .locals 1

    #@0
    .prologue
    .line 2741
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@2
    return v0
.end method

.method private conversion(Ljava/lang/String;)C
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2727
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v0

    #@5
    iput-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@7
    .line 2728
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    #@9
    if-nez v0, :cond_2

    #@b
    .line 2729
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@d
    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isValid(C)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 2730
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    #@15
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@17
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 2731
    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@21
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 2732
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@29
    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@2b
    invoke-static {v0, v1}, Ljava/util/Formatter$Flags;->-wrap0(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    #@2e
    .line 2733
    :cond_1
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@30
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    #@33
    move-result v0

    #@34
    iput-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@36
    .line 2734
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@38
    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isText(C)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_2

    #@3e
    .line 2735
    const/4 v0, -0x2

    #@3f
    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    #@41
    .line 2737
    :cond_2
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@43
    return v0
.end method

.method private exponent([CI)[C
    .locals 5
    .param p1, "v"    # [C
    .param p2, "len"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3457
    add-int/lit8 v0, p2, -0x1

    #@3
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@5
    .line 3458
    aget-char v2, p1, v0

    #@7
    const/16 v3, 0x65

    #@9
    if-ne v2, v3, :cond_1

    #@b
    .line 3461
    :cond_0
    const/4 v2, -0x1

    #@c
    if-ne v0, v2, :cond_2

    #@e
    .line 3462
    const/4 v2, 0x0

    #@f
    return-object v2

    #@10
    .line 3457
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@12
    goto :goto_0

    #@13
    .line 3463
    :cond_2
    sub-int v2, p2, v0

    #@15
    add-int/lit8 v2, v2, -0x1

    #@17
    new-array v1, v2, [C

    #@19
    .line 3464
    .local v1, "tmp":[C
    add-int/lit8 v2, v0, 0x1

    #@1b
    sub-int v3, p2, v0

    #@1d
    add-int/lit8 v3, v3, -0x1

    #@1f
    invoke-static {p1, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@22
    .line 3465
    return-object v1
.end method

.method private failConversion(CLjava/lang/Object;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "arg"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4135
    new-instance v0, Ljava/util/IllegalFormatConversionException;

    #@2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p1, v1}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    #@9
    throw v0
.end method

.method private failMismatch(Ljava/util/Formatter$Flags;C)V
    .locals 2
    .param p1, "f"    # Ljava/util/Formatter$Flags;
    .param p2, "c"    # C

    #@0
    .prologue
    .line 4130
    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 4131
    .local v0, "fs":Ljava/lang/String;
    new-instance v1, Ljava/util/FormatFlagsConversionMismatchException;

    #@6
    invoke-direct {v1, v0, p2}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    #@9
    throw v1
.end method

.method private flags(Ljava/lang/String;)Ljava/util/Formatter$Flags;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2680
    invoke-static {p1}, Ljava/util/Formatter$Flags;->parse(Ljava/lang/String;)Ljava/util/Formatter$Flags;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@6
    .line 2681
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@8
    sget-object v1, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    #@a
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 2682
    const/4 v0, -0x1

    #@11
    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    #@13
    .line 2683
    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@15
    return-object v0
.end method

.method private getZero(Ljava/util/Locale;)C
    .locals 2
    .param p1, "l"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 4139
    if-eqz p1, :cond_0

    #@2
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@4
    invoke-virtual {v1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 4143
    :cond_0
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@10
    invoke-static {v1}, Ljava/util/Formatter;->-get3(Ljava/util/Formatter;)C

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 4140
    :cond_1
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    #@18
    move-result-object v0

    #@19
    .line 4141
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method private hexDouble(DI)Ljava/lang/String;
    .locals 31
    .param p1, "d"    # D
    .param p3, "prec"    # I

    #@0
    .prologue
    .line 3510
    invoke-static/range {p1 .. p2}, Lsun/misc/FpUtils;->isFinite(D)Z

    #@3
    move-result v25

    #@4
    if-eqz v25, :cond_0

    #@6
    const-wide/16 v26, 0x0

    #@8
    cmpl-double v25, p1, v26

    #@a
    if-nez v25, :cond_1

    #@c
    .line 3512
    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    #@f
    move-result-object v25

    #@10
    const/16 v26, 0x2

    #@12
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15
    move-result-object v25

    #@16
    return-object v25

    #@17
    .line 3510
    :cond_1
    if-eqz p3, :cond_0

    #@19
    const/16 v25, 0xd

    #@1b
    move/from16 v0, p3

    #@1d
    move/from16 v1, v25

    #@1f
    if-ge v0, v1, :cond_0

    #@21
    .line 3514
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@23
    if-nez v25, :cond_3

    #@25
    const/16 v25, 0x1

    #@27
    move/from16 v0, p3

    #@29
    move/from16 v1, v25

    #@2b
    if-lt v0, v1, :cond_2

    #@2d
    const/16 v25, 0xc

    #@2f
    move/from16 v0, p3

    #@31
    move/from16 v1, v25

    #@33
    if-gt v0, v1, :cond_2

    #@35
    const/16 v25, 0x1

    #@37
    :goto_0
    if-nez v25, :cond_3

    #@39
    new-instance v25, Ljava/lang/AssertionError;

    #@3b
    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    #@3e
    throw v25

    #@3f
    :cond_2
    const/16 v25, 0x0

    #@41
    goto :goto_0

    #@42
    .line 3516
    :cond_3
    invoke-static/range {p1 .. p2}, Lsun/misc/FpUtils;->getExponent(D)I

    #@45
    move-result v7

    #@46
    .line 3518
    .local v7, "exponent":I
    const/16 v25, -0x3ff

    #@48
    move/from16 v0, v25

    #@4a
    if-ne v7, v0, :cond_4

    #@4c
    const/16 v24, 0x1

    #@4e
    .line 3522
    .local v24, "subnormal":Z
    :goto_1
    if-eqz v24, :cond_7

    #@50
    .line 3523
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    #@52
    const/16 v25, 0x36

    #@54
    move-wide/from16 v0, v26

    #@56
    move/from16 v2, v25

    #@58
    invoke-static {v0, v1, v2}, Lsun/misc/FpUtils;->scalb(DI)D

    #@5b
    move-result-wide v26

    #@5c
    invoke-static/range {v26 .. v27}, Ljava/util/Formatter;->-set0(D)D

    #@5f
    .line 3524
    invoke-static {}, Ljava/util/Formatter;->-get2()D

    #@62
    move-result-wide v26

    #@63
    mul-double p1, p1, v26

    #@65
    .line 3527
    invoke-static/range {p1 .. p2}, Lsun/misc/FpUtils;->getExponent(D)I

    #@68
    move-result v7

    #@69
    .line 3528
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@6b
    if-nez v25, :cond_7

    #@6d
    const/16 v25, -0x3fe

    #@6f
    move/from16 v0, v25

    #@71
    if-lt v7, v0, :cond_6

    #@73
    .line 3529
    const/16 v25, 0x3ff

    #@75
    move/from16 v0, v25

    #@77
    if-gt v7, v0, :cond_5

    #@79
    const/16 v25, 0x1

    #@7b
    .line 3528
    :goto_2
    if-nez v25, :cond_7

    #@7d
    new-instance v25, Ljava/lang/AssertionError;

    #@7f
    .line 3529
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@82
    move-result-object v26

    #@83
    .line 3528
    invoke-direct/range {v25 .. v26}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@86
    throw v25

    #@87
    .line 3518
    .end local v24    # "subnormal":Z
    :cond_4
    const/16 v24, 0x0

    #@89
    goto :goto_1

    #@8a
    .line 3529
    .restart local v24    # "subnormal":Z
    :cond_5
    const/16 v25, 0x0

    #@8c
    goto :goto_2

    #@8d
    .line 3528
    :cond_6
    const/16 v25, 0x0

    #@8f
    goto :goto_2

    #@90
    .line 3532
    :cond_7
    mul-int/lit8 v25, p3, 0x4

    #@92
    add-int/lit8 v11, v25, 0x1

    #@94
    .line 3534
    .local v11, "precision":I
    rsub-int/lit8 v20, v11, 0x35

    #@96
    .line 3535
    .local v20, "shiftDistance":I
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@98
    if-nez v25, :cond_9

    #@9a
    const/16 v25, 0x1

    #@9c
    move/from16 v0, v20

    #@9e
    move/from16 v1, v25

    #@a0
    if-lt v0, v1, :cond_8

    #@a2
    const/16 v25, 0x35

    #@a4
    move/from16 v0, v20

    #@a6
    move/from16 v1, v25

    #@a8
    if-ge v0, v1, :cond_8

    #@aa
    const/16 v25, 0x1

    #@ac
    :goto_3
    if-nez v25, :cond_9

    #@ae
    new-instance v25, Ljava/lang/AssertionError;

    #@b0
    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    #@b3
    throw v25

    #@b4
    :cond_8
    const/16 v25, 0x0

    #@b6
    goto :goto_3

    #@b7
    .line 3537
    :cond_9
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@ba
    move-result-wide v4

    #@bb
    .line 3540
    .local v4, "doppel":J
    const-wide v26, 0x7fffffffffffffffL

    #@c0
    and-long v26, v26, v4

    #@c2
    shr-long v12, v26, v20

    #@c4
    .line 3544
    .local v12, "newSignif":J
    const-wide/16 v26, -0x1

    #@c6
    shl-long v26, v26, v20

    #@c8
    move-wide/from16 v0, v26

    #@ca
    not-long v0, v0

    #@cb
    move-wide/from16 v26, v0

    #@cd
    and-long v18, v4, v26

    #@cf
    .line 3551
    .local v18, "roundingBits":J
    const-wide/16 v26, 0x1

    #@d1
    and-long v26, v26, v12

    #@d3
    const-wide/16 v28, 0x0

    #@d5
    cmp-long v25, v26, v28

    #@d7
    if-nez v25, :cond_d

    #@d9
    const/4 v10, 0x1

    #@da
    .line 3553
    .local v10, "leastZero":Z
    :goto_4
    add-int/lit8 v25, v20, -0x1

    #@dc
    const-wide/16 v26, 0x1

    #@de
    shl-long v26, v26, v25

    #@e0
    and-long v26, v26, v18

    #@e2
    const-wide/16 v28, 0x0

    #@e4
    cmp-long v25, v26, v28

    #@e6
    if-eqz v25, :cond_e

    #@e8
    const/4 v15, 0x1

    #@e9
    .line 3554
    .local v15, "round":Z
    :goto_5
    const/16 v25, 0x1

    #@eb
    move/from16 v0, v20

    #@ed
    move/from16 v1, v25

    #@ef
    if-le v0, v1, :cond_10

    #@f1
    .line 3555
    add-int/lit8 v25, v20, -0x1

    #@f3
    const-wide/16 v26, 0x1

    #@f5
    shl-long v26, v26, v25

    #@f7
    move-wide/from16 v0, v26

    #@f9
    not-long v0, v0

    #@fa
    move-wide/from16 v26, v0

    #@fc
    and-long v26, v26, v18

    #@fe
    const-wide/16 v28, 0x0

    #@100
    cmp-long v25, v26, v28

    #@102
    if-eqz v25, :cond_f

    #@104
    const/16 v21, 0x1

    #@106
    .line 3556
    .local v21, "sticky":Z
    :goto_6
    if-eqz v10, :cond_a

    #@108
    if-eqz v15, :cond_a

    #@10a
    if-nez v21, :cond_b

    #@10c
    :cond_a
    if-nez v10, :cond_c

    #@10e
    if-eqz v15, :cond_c

    #@110
    .line 3557
    :cond_b
    const-wide/16 v26, 0x1

    #@112
    add-long v12, v12, v26

    #@114
    .line 3560
    :cond_c
    const-wide/high16 v26, -0x8000000000000000L

    #@116
    and-long v22, v4, v26

    #@118
    .line 3561
    .local v22, "signBit":J
    shl-long v26, v12, v20

    #@11a
    or-long v12, v22, v26

    #@11c
    .line 3562
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@11f
    move-result-wide v16

    #@120
    .line 3564
    .local v16, "result":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isInfinite(D)Z

    #@123
    move-result v25

    #@124
    if-eqz v25, :cond_11

    #@126
    .line 3566
    const-string/jumbo v25, "1.0p1024"

    #@129
    return-object v25

    #@12a
    .line 3551
    .end local v10    # "leastZero":Z
    .end local v15    # "round":Z
    .end local v16    # "result":D
    .end local v21    # "sticky":Z
    .end local v22    # "signBit":J
    :cond_d
    const/4 v10, 0x0

    #@12b
    .restart local v10    # "leastZero":Z
    goto :goto_4

    #@12c
    .line 3553
    :cond_e
    const/4 v15, 0x0

    #@12d
    .restart local v15    # "round":Z
    goto :goto_5

    #@12e
    .line 3555
    :cond_f
    const/16 v21, 0x0

    #@130
    .restart local v21    # "sticky":Z
    goto :goto_6

    #@131
    .line 3554
    .end local v21    # "sticky":Z
    :cond_10
    const/16 v21, 0x0

    #@133
    .restart local v21    # "sticky":Z
    goto :goto_6

    #@134
    .line 3568
    .restart local v16    # "result":D
    .restart local v22    # "signBit":J
    :cond_11
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    #@137
    move-result-object v25

    #@138
    const/16 v26, 0x2

    #@13a
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@13d
    move-result-object v14

    #@13e
    .line 3569
    .local v14, "res":Ljava/lang/String;
    if-nez v24, :cond_12

    #@140
    .line 3570
    return-object v14

    #@141
    .line 3573
    :cond_12
    const/16 v25, 0x70

    #@143
    move/from16 v0, v25

    #@145
    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    #@148
    move-result v8

    #@149
    .line 3574
    .local v8, "idx":I
    const/16 v25, -0x1

    #@14b
    move/from16 v0, v25

    #@14d
    if-ne v8, v0, :cond_14

    #@14f
    .line 3576
    sget-boolean v25, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@151
    if-nez v25, :cond_13

    #@153
    new-instance v25, Ljava/lang/AssertionError;

    #@155
    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    #@158
    throw v25

    #@159
    .line 3577
    :cond_13
    const/16 v25, 0x0

    #@15b
    return-object v25

    #@15c
    .line 3580
    :cond_14
    add-int/lit8 v25, v8, 0x1

    #@15e
    move/from16 v0, v25

    #@160
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@163
    move-result-object v6

    #@164
    .line 3581
    .local v6, "exp":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@167
    move-result v25

    #@168
    add-int/lit8 v9, v25, -0x36

    #@16a
    .line 3582
    .local v9, "iexp":I
    new-instance v25, Ljava/lang/StringBuilder;

    #@16c
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@16f
    const/16 v26, 0x0

    #@171
    move/from16 v0, v26

    #@173
    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@176
    move-result-object v26

    #@177
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v25

    #@17b
    const-string/jumbo v26, "p"

    #@17e
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v25

    #@182
    .line 3583
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@185
    move-result-object v26

    #@186
    .line 3582
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v25

    #@18a
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18d
    move-result-object v25

    #@18e
    return-object v25
.end method

.method private index(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2663
    if-eqz p1, :cond_1

    #@2
    .line 2665
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5
    move-result v1

    #@6
    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 2672
    :cond_0
    :goto_0
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    #@a
    return v1

    #@b
    .line 2666
    :catch_0
    move-exception v0

    #@c
    .line 2667
    .local v0, "x":Ljava/lang/NumberFormatException;
    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@e
    if-nez v1, :cond_0

    #@10
    new-instance v1, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v1

    #@16
    .line 2670
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v1, 0x0

    #@17
    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    #@19
    goto :goto_0
.end method

.method private justify(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    .line 2955
    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@4
    const/4 v5, -0x1

    #@5
    if-ne v4, v5, :cond_0

    #@7
    .line 2956
    return-object p1

    #@8
    .line 2957
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 2958
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@f
    sget-object v5, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    #@11
    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@14
    move-result v1

    #@15
    .line 2959
    .local v1, "pad":Z
    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1a
    move-result v5

    #@1b
    sub-int v3, v4, v5

    #@1d
    .line 2960
    .local v3, "sp":I
    if-nez v1, :cond_1

    #@1f
    .line 2961
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@22
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 2962
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 2963
    if-eqz v1, :cond_2

    #@2d
    .line 2964
    const/4 v0, 0x0

    #@2e
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    #@30
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_1

    #@36
    .line 2965
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    return-object v4
.end method

.method private leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    #@0
    .prologue
    .line 3182
    if-nez p2, :cond_2

    #@2
    .line 3183
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@4
    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 3184
    const/16 v0, 0x2b

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    .line 3194
    :cond_0
    :goto_0
    return-object p1

    #@12
    .line 3185
    :cond_1
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@14
    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    #@16
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 3186
    const/16 v0, 0x20

    #@1e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    goto :goto_0

    #@22
    .line 3189
    :cond_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@24
    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@26
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 3190
    const/16 v0, 0x28

    #@2e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    goto :goto_0

    #@32
    .line 3192
    :cond_3
    const/16 v0, 0x2d

    #@34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    goto :goto_0
.end method

.method private localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # J
    .param p4, "f"    # Ljava/util/Formatter$Flags;
    .param p5, "width"    # I
    .param p6, "l"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 4150
    const/16 v0, 0xa

    #@2
    invoke-static {p2, p3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@9
    move-result-object v2

    #@a
    .local v2, "va":[C
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move-object v3, p4

    #@d
    move v4, p5

    #@e
    move-object v5, p6

    #@f
    .line 4151
    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .locals 15
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # [C
    .param p3, "f"    # Ljava/util/Formatter$Flags;
    .param p4, "width"    # I
    .param p5, "l"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 4158
    if-nez p1, :cond_0

    #@2
    .line 4159
    new-instance p1, Ljava/lang/StringBuilder;

    #@4
    .end local p1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 4160
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    #@a
    move-result v1

    #@b
    .line 4162
    .local v1, "begin":I
    move-object/from16 v0, p5

    #@d
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->getZero(Ljava/util/Locale;)C

    #@10
    move-result v12

    #@11
    .line 4165
    .local v12, "zero":C
    const/4 v7, 0x0

    #@12
    .line 4166
    .local v7, "grpSep":C
    const/4 v8, -0x1

    #@13
    .line 4167
    .local v8, "grpSize":I
    const/4 v3, 0x0

    #@14
    .line 4169
    .local v3, "decSep":C
    move-object/from16 v0, p2

    #@16
    array-length v11, v0

    #@17
    .line 4170
    .local v11, "len":I
    move v6, v11

    #@18
    .line 4171
    .local v6, "dot":I
    const/4 v9, 0x0

    #@19
    .local v9, "j":I
    :goto_0
    if-ge v9, v11, :cond_1

    #@1b
    .line 4172
    aget-char v13, p2, v9

    #@1d
    const/16 v14, 0x2e

    #@1f
    if-ne v13, v14, :cond_7

    #@21
    .line 4173
    move v6, v9

    #@22
    .line 4178
    :cond_1
    if-ge v6, v11, :cond_3

    #@24
    .line 4179
    if-eqz p5, :cond_2

    #@26
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@28
    move-object/from16 v0, p5

    #@2a
    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v13

    #@2e
    if-eqz v13, :cond_8

    #@30
    .line 4180
    :cond_2
    const/16 v3, 0x2e

    #@32
    .line 4187
    .end local v3    # "decSep":C
    :cond_3
    :goto_1
    sget-object v13, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@34
    move-object/from16 v0, p3

    #@36
    invoke-virtual {v0, v13}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@39
    move-result v13

    #@3a
    if-eqz v13, :cond_5

    #@3c
    .line 4188
    if-eqz p5, :cond_4

    #@3e
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@40
    move-object/from16 v0, p5

    #@42
    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v13

    #@46
    if-eqz v13, :cond_9

    #@48
    .line 4189
    :cond_4
    const/16 v7, 0x2c

    #@4a
    .line 4190
    const/4 v8, 0x3

    #@4b
    .line 4200
    .end local v7    # "grpSep":C
    :cond_5
    :goto_2
    const/4 v9, 0x0

    #@4c
    :goto_3
    if-ge v9, v11, :cond_b

    #@4e
    .line 4201
    if-ne v9, v6, :cond_a

    #@50
    .line 4202
    move-object/from16 v0, p1

    #@52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    .line 4204
    const/4 v7, 0x0

    #@56
    .line 4200
    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    #@58
    goto :goto_3

    #@59
    .line 4171
    .restart local v3    # "decSep":C
    .restart local v7    # "grpSep":C
    :cond_7
    add-int/lit8 v9, v9, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 4182
    :cond_8
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    #@5f
    move-result-object v5

    #@60
    .line 4183
    .local v5, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@63
    move-result v3

    #@64
    .local v3, "decSep":C
    goto :goto_1

    #@65
    .line 4192
    .end local v3    # "decSep":C
    .end local v5    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_9
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    #@68
    move-result-object v5

    #@69
    .line 4193
    .restart local v5    # "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@6c
    move-result v7

    #@6d
    .line 4194
    .local v7, "grpSep":C
    invoke-static/range {p5 .. p5}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@70
    move-result-object v4

    #@71
    check-cast v4, Ljava/text/DecimalFormat;

    #@73
    .line 4195
    .local v4, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getGroupingSize()I

    #@76
    move-result v8

    #@77
    goto :goto_2

    #@78
    .line 4208
    .end local v4    # "df":Ljava/text/DecimalFormat;
    .end local v5    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v7    # "grpSep":C
    :cond_a
    aget-char v2, p2, v9

    #@7a
    .line 4209
    .local v2, "c":C
    add-int/lit8 v13, v2, -0x30

    #@7c
    add-int/2addr v13, v12

    #@7d
    int-to-char v13, v13

    #@7e
    move-object/from16 v0, p1

    #@80
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@83
    .line 4210
    if-eqz v7, :cond_6

    #@85
    add-int/lit8 v13, v6, -0x1

    #@87
    if-eq v9, v13, :cond_6

    #@89
    sub-int v13, v6, v9

    #@8b
    rem-int/2addr v13, v8

    #@8c
    const/4 v14, 0x1

    #@8d
    if-ne v13, v14, :cond_6

    #@8f
    .line 4211
    move-object/from16 v0, p1

    #@91
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@94
    goto :goto_4

    #@95
    .line 4215
    .end local v2    # "c":C
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    #@98
    move-result v11

    #@99
    .line 4216
    const/4 v13, -0x1

    #@9a
    move/from16 v0, p4

    #@9c
    if-eq v0, v13, :cond_c

    #@9e
    sget-object v13, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@a0
    move-object/from16 v0, p3

    #@a2
    invoke-virtual {v0, v13}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@a5
    move-result v13

    #@a6
    if-eqz v13, :cond_c

    #@a8
    .line 4217
    const/4 v10, 0x0

    #@a9
    .local v10, "k":I
    :goto_5
    sub-int v13, p4, v11

    #@ab
    if-ge v10, v13, :cond_c

    #@ad
    .line 4218
    move-object/from16 v0, p1

    #@af
    invoke-virtual {v0, v1, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@b2
    .line 4217
    add-int/lit8 v10, v10, 0x1

    #@b4
    goto :goto_5

    #@b5
    .line 4220
    .end local v10    # "k":I
    :cond_c
    return-object p1
.end method

.method private mantissa([CI)[C
    .locals 5
    .param p1, "v"    # [C
    .param p2, "len"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3446
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@4
    .line 3447
    aget-char v2, p1, v0

    #@6
    const/16 v3, 0x65

    #@8
    if-ne v2, v3, :cond_1

    #@a
    .line 3450
    :cond_0
    new-array v1, v0, [C

    #@c
    .line 3451
    .local v1, "tmp":[C
    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@f
    .line 3452
    return-object v1

    #@10
    .line 3446
    .end local v1    # "tmp":[C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0
.end method

.method private precision(Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2709
    const/4 v1, -0x1

    #@1
    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@3
    .line 2710
    if-eqz p1, :cond_0

    #@5
    .line 2712
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8
    move-result v1

    #@9
    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@b
    .line 2713
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@d
    if-gez v1, :cond_0

    #@f
    .line 2714
    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    #@11
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@13
    invoke-direct {v1, v2}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    #@16
    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2715
    :catch_0
    move-exception v0

    #@18
    .line 2716
    .local v0, "x":Ljava/lang/NumberFormatException;
    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@1a
    if-nez v1, :cond_0

    #@1c
    new-instance v1, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@21
    throw v1

    #@22
    .line 2719
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_0
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@24
    return v1
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;
    .locals 34
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/util/Calendar;
    .param p3, "c"    # C
    .param p4, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3921
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@2
    if-nez v4, :cond_1

    #@4
    move-object/from16 v0, p0

    #@6
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@8
    const/4 v5, -0x1

    #@9
    if-ne v4, v5, :cond_0

    #@b
    const/4 v4, 0x1

    #@c
    :goto_0
    if-nez v4, :cond_1

    #@e
    new-instance v4, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v4

    #@14
    :cond_0
    const/4 v4, 0x0

    #@15
    goto :goto_0

    #@16
    .line 3922
    :cond_1
    if-nez p1, :cond_2

    #@18
    .line 3923
    new-instance p1, Ljava/lang/StringBuilder;

    #@1a
    .end local p1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    .line 3924
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    packed-switch p3, :pswitch_data_0

    #@20
    .line 4122
    :pswitch_0
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@22
    if-nez v4, :cond_7

    #@24
    new-instance v4, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@29
    throw v4

    #@2a
    .line 3929
    :pswitch_1
    const/16 v4, 0xb

    #@2c
    move-object/from16 v0, p2

    #@2e
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@31
    move-result v25

    #@32
    .line 3930
    .local v25, "i":I
    const/16 v4, 0x49

    #@34
    move/from16 v0, p3

    #@36
    if-eq v0, v4, :cond_3

    #@38
    const/16 v4, 0x6c

    #@3a
    move/from16 v0, p3

    #@3c
    if-ne v0, v4, :cond_5

    #@3e
    .line 3931
    :cond_3
    if-eqz v25, :cond_4

    #@40
    const/16 v4, 0xc

    #@42
    move/from16 v0, v25

    #@44
    if-ne v0, v4, :cond_8

    #@46
    :cond_4
    const/16 v25, 0xc

    #@48
    .line 3932
    :cond_5
    :goto_1
    const/16 v4, 0x48

    #@4a
    move/from16 v0, p3

    #@4c
    if-eq v0, v4, :cond_6

    #@4e
    .line 3933
    const/16 v4, 0x49

    #@50
    move/from16 v0, p3

    #@52
    if-ne v0, v4, :cond_9

    #@54
    .line 3934
    :cond_6
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@56
    .line 3936
    .local v8, "flags":Ljava/util/Formatter$Flags;
    :goto_2
    move/from16 v0, v25

    #@58
    int-to-long v6, v0

    #@59
    const/4 v5, 0x0

    #@5a
    const/4 v9, 0x2

    #@5b
    move-object/from16 v4, p0

    #@5d
    move-object/from16 v10, p4

    #@5f
    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    move-object/from16 v0, p1

    #@65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@68
    .line 4124
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    .end local p4    # "l":Ljava/util/Locale;
    :cond_7
    :goto_3
    return-object p1

    #@69
    .line 3931
    .restart local v25    # "i":I
    .restart local p4    # "l":Ljava/util/Locale;
    :cond_8
    rem-int/lit8 v25, v25, 0xc

    #@6b
    goto :goto_1

    #@6c
    .line 3935
    :cond_9
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    #@6e
    goto :goto_2

    #@6f
    .line 3940
    .end local v25    # "i":I
    :pswitch_2
    const/16 v4, 0xc

    #@71
    move-object/from16 v0, p2

    #@73
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@76
    move-result v25

    #@77
    .line 3941
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@79
    .line 3942
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    #@7b
    int-to-long v6, v0

    #@7c
    const/4 v5, 0x0

    #@7d
    const/4 v9, 0x2

    #@7e
    move-object/from16 v4, p0

    #@80
    move-object/from16 v10, p4

    #@82
    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    move-object/from16 v0, p1

    #@88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@8b
    goto :goto_3

    #@8c
    .line 3946
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_3
    const/16 v4, 0xe

    #@8e
    move-object/from16 v0, p2

    #@90
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@93
    move-result v4

    #@94
    const v5, 0xf4240

    #@97
    mul-int v25, v4, v5

    #@99
    .line 3947
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@9b
    .line 3948
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    #@9d
    int-to-long v6, v0

    #@9e
    const/4 v5, 0x0

    #@9f
    const/16 v9, 0x9

    #@a1
    move-object/from16 v4, p0

    #@a3
    move-object/from16 v10, p4

    #@a5
    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    move-object/from16 v0, p1

    #@ab
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@ae
    goto :goto_3

    #@af
    .line 3952
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_4
    const/16 v4, 0xe

    #@b1
    move-object/from16 v0, p2

    #@b3
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@b6
    move-result v25

    #@b7
    .line 3953
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@b9
    .line 3954
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    #@bb
    int-to-long v6, v0

    #@bc
    const/4 v5, 0x0

    #@bd
    const/4 v9, 0x3

    #@be
    move-object/from16 v4, p0

    #@c0
    move-object/from16 v10, p4

    #@c2
    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v4

    #@c6
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@cb
    goto :goto_3

    #@cc
    .line 3958
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    #@cf
    move-result-wide v6

    #@d0
    .line 3959
    .local v6, "i":J
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    #@d2
    .line 3960
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move-object/from16 v0, p0

    #@d4
    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@d6
    const/4 v5, 0x0

    #@d7
    move-object/from16 v4, p0

    #@d9
    move-object/from16 v10, p4

    #@db
    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v4

    #@df
    move-object/from16 v0, p1

    #@e1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@e4
    goto :goto_3

    #@e5
    .line 3965
    .end local v6    # "i":J
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_6
    const/4 v4, 0x2

    #@e6
    new-array v0, v4, [Ljava/lang/String;

    #@e8
    move-object/from16 v23, v0

    #@ea
    const-string/jumbo v4, "AM"

    #@ed
    const/4 v5, 0x0

    #@ee
    aput-object v4, v23, v5

    #@f0
    const-string/jumbo v4, "PM"

    #@f3
    const/4 v5, 0x1

    #@f4
    aput-object v4, v23, v5

    #@f6
    .line 3966
    .local v23, "ampm":[Ljava/lang/String;
    if-eqz p4, :cond_a

    #@f8
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@fa
    move-object/from16 v0, p4

    #@fc
    if-eq v0, v4, :cond_a

    #@fe
    .line 3967
    invoke-static/range {p4 .. p4}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@101
    move-result-object v24

    #@102
    .line 3968
    .local v24, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    #@105
    move-result-object v23

    #@106
    .line 3970
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_a
    const/16 v4, 0x9

    #@108
    move-object/from16 v0, p2

    #@10a
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@10d
    move-result v4

    #@10e
    aget-object v30, v23, v4

    #@110
    .line 3971
    .local v30, "s":Ljava/lang/String;
    if-eqz p4, :cond_b

    #@112
    .end local p4    # "l":Ljava/util/Locale;
    :goto_4
    move-object/from16 v0, v30

    #@114
    move-object/from16 v1, p4

    #@116
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@119
    move-result-object v4

    #@11a
    move-object/from16 v0, p1

    #@11c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    goto/16 :goto_3

    #@121
    .restart local p4    # "l":Ljava/util/Locale;
    :cond_b
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@123
    goto :goto_4

    #@124
    .line 3975
    .end local v23    # "ampm":[Ljava/lang/String;
    .end local v30    # "s":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    #@127
    move-result-wide v4

    #@128
    const-wide/16 v10, 0x3e8

    #@12a
    div-long v6, v4, v10

    #@12c
    .line 3976
    .restart local v6    # "i":J
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    #@12e
    .line 3977
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move-object/from16 v0, p0

    #@130
    iget v9, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@132
    const/4 v5, 0x0

    #@133
    move-object/from16 v4, p0

    #@135
    move-object/from16 v10, p4

    #@137
    invoke-direct/range {v4 .. v10}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v4

    #@13b
    move-object/from16 v0, p1

    #@13d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@140
    goto/16 :goto_3

    #@142
    .line 3981
    .end local v6    # "i":J
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_8
    const/16 v4, 0xd

    #@144
    move-object/from16 v0, p2

    #@146
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@149
    move-result v25

    #@14a
    .line 3982
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@14c
    .line 3983
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    #@14e
    int-to-long v12, v0

    #@14f
    const/4 v11, 0x0

    #@150
    const/4 v15, 0x2

    #@151
    move-object/from16 v10, p0

    #@153
    move-object v14, v8

    #@154
    move-object/from16 v16, p4

    #@156
    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v4

    #@15a
    move-object/from16 v0, p1

    #@15c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@15f
    goto/16 :goto_3

    #@161
    .line 3987
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_9
    const/16 v4, 0xf

    #@163
    move-object/from16 v0, p2

    #@165
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@168
    move-result v4

    #@169
    const/16 v5, 0x10

    #@16b
    move-object/from16 v0, p2

    #@16d
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    #@170
    move-result v5

    #@171
    add-int v25, v4, v5

    #@173
    .line 3988
    .restart local v25    # "i":I
    if-gez v25, :cond_d

    #@175
    const/16 v28, 0x1

    #@177
    .line 3989
    .local v28, "neg":Z
    :goto_5
    if-eqz v28, :cond_e

    #@179
    const/16 v4, 0x2d

    #@17b
    :goto_6
    move-object/from16 v0, p1

    #@17d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@180
    .line 3990
    if-eqz v28, :cond_c

    #@182
    .line 3991
    move/from16 v0, v25

    #@184
    neg-int v0, v0

    #@185
    move/from16 v25, v0

    #@187
    .line 3992
    :cond_c
    const v4, 0xea60

    #@18a
    div-int v27, v25, v4

    #@18c
    .line 3994
    .local v27, "min":I
    div-int/lit8 v4, v27, 0x3c

    #@18e
    mul-int/lit8 v4, v4, 0x64

    #@190
    rem-int/lit8 v5, v27, 0x3c

    #@192
    add-int v29, v4, v5

    #@194
    .line 3995
    .local v29, "offset":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@196
    .line 3997
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v29

    #@198
    int-to-long v12, v0

    #@199
    const/4 v11, 0x0

    #@19a
    const/4 v15, 0x4

    #@19b
    move-object/from16 v10, p0

    #@19d
    move-object v14, v8

    #@19e
    move-object/from16 v16, p4

    #@1a0
    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v4

    #@1a4
    move-object/from16 v0, p1

    #@1a6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1a9
    goto/16 :goto_3

    #@1ab
    .line 3988
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v27    # "min":I
    .end local v28    # "neg":Z
    .end local v29    # "offset":I
    :cond_d
    const/16 v28, 0x0

    #@1ad
    goto :goto_5

    #@1ae
    .line 3989
    .restart local v28    # "neg":Z
    :cond_e
    const/16 v4, 0x2b

    #@1b0
    goto :goto_6

    #@1b1
    .line 4001
    .end local v25    # "i":I
    .end local v28    # "neg":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@1b4
    move-result-object v33

    #@1b5
    .line 4002
    .local v33, "tz":Ljava/util/TimeZone;
    const/16 v4, 0x10

    #@1b7
    move-object/from16 v0, p2

    #@1b9
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@1bc
    move-result v4

    #@1bd
    if-eqz v4, :cond_10

    #@1bf
    const/4 v4, 0x1

    #@1c0
    .line 4004
    :goto_7
    if-nez p4, :cond_f

    #@1c2
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1c4
    .line 4003
    .end local p4    # "l":Ljava/util/Locale;
    :cond_f
    const/4 v5, 0x0

    #@1c5
    .line 4002
    move-object/from16 v0, v33

    #@1c7
    move-object/from16 v1, p4

    #@1c9
    invoke-virtual {v0, v4, v5, v1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@1cc
    move-result-object v4

    #@1cd
    move-object/from16 v0, p1

    #@1cf
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    goto/16 :goto_3

    #@1d4
    .restart local p4    # "l":Ljava/util/Locale;
    :cond_10
    const/4 v4, 0x0

    #@1d5
    goto :goto_7

    #@1d6
    .line 4011
    .end local v33    # "tz":Ljava/util/TimeZone;
    :pswitch_b
    const/4 v4, 0x7

    #@1d7
    move-object/from16 v0, p2

    #@1d9
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@1dc
    move-result v25

    #@1dd
    .line 4012
    .restart local v25    # "i":I
    if-nez p4, :cond_11

    #@1df
    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1e1
    .line 4013
    .local v26, "lt":Ljava/util/Locale;
    :goto_8
    invoke-static/range {v26 .. v26}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@1e4
    move-result-object v24

    #@1e5
    .line 4014
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v4, 0x41

    #@1e7
    move/from16 v0, p3

    #@1e9
    if-ne v0, v4, :cond_12

    #@1eb
    .line 4015
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    #@1ee
    move-result-object v4

    #@1ef
    aget-object v4, v4, v25

    #@1f1
    move-object/from16 v0, p1

    #@1f3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    goto/16 :goto_3

    #@1f8
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v26    # "lt":Ljava/util/Locale;
    :cond_11
    move-object/from16 v26, p4

    #@1fa
    .line 4012
    goto :goto_8

    #@1fb
    .line 4017
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .restart local v26    # "lt":Ljava/util/Locale;
    :cond_12
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    #@1fe
    move-result-object v4

    #@1ff
    aget-object v4, v4, v25

    #@201
    move-object/from16 v0, p1

    #@203
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@206
    goto/16 :goto_3

    #@208
    .line 4023
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v25    # "i":I
    .end local v26    # "lt":Ljava/util/Locale;
    :pswitch_c
    const/4 v4, 0x2

    #@209
    move-object/from16 v0, p2

    #@20b
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@20e
    move-result v25

    #@20f
    .line 4024
    .restart local v25    # "i":I
    if-nez p4, :cond_13

    #@211
    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@213
    .line 4025
    .restart local v26    # "lt":Ljava/util/Locale;
    :goto_9
    invoke-static/range {v26 .. v26}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@216
    move-result-object v24

    #@217
    .line 4026
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v4, 0x42

    #@219
    move/from16 v0, p3

    #@21b
    if-ne v0, v4, :cond_14

    #@21d
    .line 4027
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    #@220
    move-result-object v4

    #@221
    aget-object v4, v4, v25

    #@223
    move-object/from16 v0, p1

    #@225
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    goto/16 :goto_3

    #@22a
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v26    # "lt":Ljava/util/Locale;
    :cond_13
    move-object/from16 v26, p4

    #@22c
    .line 4024
    goto :goto_9

    #@22d
    .line 4029
    .restart local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .restart local v26    # "lt":Ljava/util/Locale;
    :cond_14
    invoke-virtual/range {v24 .. v24}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    #@230
    move-result-object v4

    #@231
    aget-object v4, v4, v25

    #@233
    move-object/from16 v0, p1

    #@235
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    goto/16 :goto_3

    #@23a
    .line 4035
    .end local v24    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v25    # "i":I
    .end local v26    # "lt":Ljava/util/Locale;
    :pswitch_d
    const/4 v4, 0x1

    #@23b
    move-object/from16 v0, p2

    #@23d
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@240
    move-result v25

    #@241
    .line 4036
    .restart local v25    # "i":I
    const/4 v15, 0x2

    #@242
    .line 4037
    .local v15, "size":I
    sparse-switch p3, :sswitch_data_0

    #@245
    .line 4048
    :goto_a
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@247
    .line 4049
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    #@249
    int-to-long v12, v0

    #@24a
    const/4 v11, 0x0

    #@24b
    move-object/from16 v10, p0

    #@24d
    move-object v14, v8

    #@24e
    move-object/from16 v16, p4

    #@250
    invoke-direct/range {v10 .. v16}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v4

    #@254
    move-object/from16 v0, p1

    #@256
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@259
    goto/16 :goto_3

    #@25b
    .line 4039
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :sswitch_0
    div-int/lit8 v25, v25, 0x64

    #@25d
    goto :goto_a

    #@25e
    .line 4042
    :sswitch_1
    rem-int/lit8 v25, v25, 0x64

    #@260
    goto :goto_a

    #@261
    .line 4045
    :sswitch_2
    const/4 v15, 0x4

    #@262
    .line 4046
    goto :goto_a

    #@263
    .line 4054
    .end local v15    # "size":I
    .end local v25    # "i":I
    :pswitch_e
    const/4 v4, 0x5

    #@264
    move-object/from16 v0, p2

    #@266
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@269
    move-result v25

    #@26a
    .line 4055
    .restart local v25    # "i":I
    const/16 v4, 0x64

    #@26c
    move/from16 v0, p3

    #@26e
    if-ne v0, v4, :cond_15

    #@270
    .line 4056
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@272
    .line 4058
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    :goto_b
    move/from16 v0, v25

    #@274
    int-to-long v0, v0

    #@275
    move-wide/from16 v18, v0

    #@277
    const/16 v17, 0x0

    #@279
    const/16 v21, 0x2

    #@27b
    move-object/from16 v16, p0

    #@27d
    move-object/from16 v20, v8

    #@27f
    move-object/from16 v22, p4

    #@281
    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v4

    #@285
    move-object/from16 v0, p1

    #@287
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@28a
    goto/16 :goto_3

    #@28c
    .line 4057
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    :cond_15
    sget-object v8, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    #@28e
    goto :goto_b

    #@28f
    .line 4062
    .end local v25    # "i":I
    :pswitch_f
    const/4 v4, 0x6

    #@290
    move-object/from16 v0, p2

    #@292
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@295
    move-result v25

    #@296
    .line 4063
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@298
    .line 4064
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    #@29a
    int-to-long v0, v0

    #@29b
    move-wide/from16 v18, v0

    #@29d
    const/16 v17, 0x0

    #@29f
    const/16 v21, 0x3

    #@2a1
    move-object/from16 v16, p0

    #@2a3
    move-object/from16 v20, v8

    #@2a5
    move-object/from16 v22, p4

    #@2a7
    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v4

    #@2ab
    move-object/from16 v0, p1

    #@2ad
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2b0
    goto/16 :goto_3

    #@2b2
    .line 4068
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_10
    const/4 v4, 0x2

    #@2b3
    move-object/from16 v0, p2

    #@2b5
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@2b8
    move-result v4

    #@2b9
    add-int/lit8 v25, v4, 0x1

    #@2bb
    .line 4069
    .restart local v25    # "i":I
    sget-object v8, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@2bd
    .line 4070
    .restart local v8    # "flags":Ljava/util/Formatter$Flags;
    move/from16 v0, v25

    #@2bf
    int-to-long v0, v0

    #@2c0
    move-wide/from16 v18, v0

    #@2c2
    const/16 v17, 0x0

    #@2c4
    const/16 v21, 0x2

    #@2c6
    move-object/from16 v16, p0

    #@2c8
    move-object/from16 v20, v8

    #@2ca
    move-object/from16 v22, p4

    #@2cc
    invoke-direct/range {v16 .. v22}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v4

    #@2d0
    move-object/from16 v0, p1

    #@2d2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2d5
    goto/16 :goto_3

    #@2d7
    .line 4077
    .end local v8    # "flags":Ljava/util/Formatter$Flags;
    .end local v25    # "i":I
    :pswitch_11
    const/16 v31, 0x3a

    #@2d9
    .line 4078
    .local v31, "sep":C
    const/16 v4, 0x48

    #@2db
    move-object/from16 v0, p0

    #@2dd
    move-object/from16 v1, p1

    #@2df
    move-object/from16 v2, p2

    #@2e1
    move-object/from16 v3, p4

    #@2e3
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@2e6
    move-result-object v4

    #@2e7
    move/from16 v0, v31

    #@2e9
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@2ec
    .line 4079
    const/16 v4, 0x4d

    #@2ee
    move-object/from16 v0, p0

    #@2f0
    move-object/from16 v1, p1

    #@2f2
    move-object/from16 v2, p2

    #@2f4
    move-object/from16 v3, p4

    #@2f6
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@2f9
    .line 4080
    const/16 v4, 0x54

    #@2fb
    move/from16 v0, p3

    #@2fd
    if-ne v0, v4, :cond_7

    #@2ff
    .line 4081
    move-object/from16 v0, p1

    #@301
    move/from16 v1, v31

    #@303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@306
    .line 4082
    const/16 v4, 0x53

    #@308
    move-object/from16 v0, p0

    #@30a
    move-object/from16 v1, p1

    #@30c
    move-object/from16 v2, p2

    #@30e
    move-object/from16 v3, p4

    #@310
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@313
    goto/16 :goto_3

    #@315
    .line 4087
    .end local v31    # "sep":C
    :pswitch_12
    const/16 v31, 0x3a

    #@317
    .line 4088
    .restart local v31    # "sep":C
    const/16 v4, 0x49

    #@319
    move-object/from16 v0, p0

    #@31b
    move-object/from16 v1, p1

    #@31d
    move-object/from16 v2, p2

    #@31f
    move-object/from16 v3, p4

    #@321
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@324
    move-result-object v4

    #@325
    move/from16 v0, v31

    #@327
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@32a
    .line 4089
    const/16 v4, 0x4d

    #@32c
    move-object/from16 v0, p0

    #@32e
    move-object/from16 v1, p1

    #@330
    move-object/from16 v2, p2

    #@332
    move-object/from16 v3, p4

    #@334
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@337
    move-result-object v4

    #@338
    move/from16 v0, v31

    #@33a
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@33d
    .line 4090
    const/16 v4, 0x53

    #@33f
    move-object/from16 v0, p0

    #@341
    move-object/from16 v1, p1

    #@343
    move-object/from16 v2, p2

    #@345
    move-object/from16 v3, p4

    #@347
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@34a
    move-result-object v4

    #@34b
    const/16 v5, 0x20

    #@34d
    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@350
    .line 4092
    new-instance v32, Ljava/lang/StringBuilder;

    #@352
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@355
    .line 4093
    .local v32, "tsb":Ljava/lang/StringBuilder;
    const/16 v4, 0x70

    #@357
    move-object/from16 v0, p0

    #@359
    move-object/from16 v1, v32

    #@35b
    move-object/from16 v2, p2

    #@35d
    move-object/from16 v3, p4

    #@35f
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@362
    .line 4094
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@365
    move-result-object v4

    #@366
    if-eqz p4, :cond_16

    #@368
    .end local p4    # "l":Ljava/util/Locale;
    :goto_c
    move-object/from16 v0, p4

    #@36a
    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@36d
    move-result-object v4

    #@36e
    move-object/from16 v0, p1

    #@370
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@373
    goto/16 :goto_3

    #@375
    .restart local p4    # "l":Ljava/util/Locale;
    :cond_16
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@377
    goto :goto_c

    #@378
    .line 4098
    .end local v31    # "sep":C
    .end local v32    # "tsb":Ljava/lang/StringBuilder;
    :pswitch_13
    const/16 v31, 0x20

    #@37a
    .line 4099
    .restart local v31    # "sep":C
    const/16 v4, 0x61

    #@37c
    move-object/from16 v0, p0

    #@37e
    move-object/from16 v1, p1

    #@380
    move-object/from16 v2, p2

    #@382
    move-object/from16 v3, p4

    #@384
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@387
    move-result-object v4

    #@388
    move/from16 v0, v31

    #@38a
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@38d
    .line 4100
    const/16 v4, 0x62

    #@38f
    move-object/from16 v0, p0

    #@391
    move-object/from16 v1, p1

    #@393
    move-object/from16 v2, p2

    #@395
    move-object/from16 v3, p4

    #@397
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@39a
    move-result-object v4

    #@39b
    move/from16 v0, v31

    #@39d
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@3a0
    .line 4101
    const/16 v4, 0x64

    #@3a2
    move-object/from16 v0, p0

    #@3a4
    move-object/from16 v1, p1

    #@3a6
    move-object/from16 v2, p2

    #@3a8
    move-object/from16 v3, p4

    #@3aa
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@3ad
    move-result-object v4

    #@3ae
    move/from16 v0, v31

    #@3b0
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@3b3
    .line 4102
    const/16 v4, 0x54

    #@3b5
    move-object/from16 v0, p0

    #@3b7
    move-object/from16 v1, p1

    #@3b9
    move-object/from16 v2, p2

    #@3bb
    move-object/from16 v3, p4

    #@3bd
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@3c0
    move-result-object v4

    #@3c1
    move/from16 v0, v31

    #@3c3
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@3c6
    .line 4103
    const/16 v4, 0x5a

    #@3c8
    move-object/from16 v0, p0

    #@3ca
    move-object/from16 v1, p1

    #@3cc
    move-object/from16 v2, p2

    #@3ce
    move-object/from16 v3, p4

    #@3d0
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@3d3
    move-result-object v4

    #@3d4
    move/from16 v0, v31

    #@3d6
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@3d9
    .line 4104
    const/16 v4, 0x59

    #@3db
    move-object/from16 v0, p0

    #@3dd
    move-object/from16 v1, p1

    #@3df
    move-object/from16 v2, p2

    #@3e1
    move-object/from16 v3, p4

    #@3e3
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@3e6
    goto/16 :goto_3

    #@3e8
    .line 4108
    .end local v31    # "sep":C
    :pswitch_14
    const/16 v31, 0x2f

    #@3ea
    .line 4109
    .restart local v31    # "sep":C
    const/16 v4, 0x6d

    #@3ec
    move-object/from16 v0, p0

    #@3ee
    move-object/from16 v1, p1

    #@3f0
    move-object/from16 v2, p2

    #@3f2
    move-object/from16 v3, p4

    #@3f4
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@3f7
    move-result-object v4

    #@3f8
    move/from16 v0, v31

    #@3fa
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@3fd
    .line 4110
    const/16 v4, 0x64

    #@3ff
    move-object/from16 v0, p0

    #@401
    move-object/from16 v1, p1

    #@403
    move-object/from16 v2, p2

    #@405
    move-object/from16 v3, p4

    #@407
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@40a
    move-result-object v4

    #@40b
    move/from16 v0, v31

    #@40d
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@410
    .line 4111
    const/16 v4, 0x79

    #@412
    move-object/from16 v0, p0

    #@414
    move-object/from16 v1, p1

    #@416
    move-object/from16 v2, p2

    #@418
    move-object/from16 v3, p4

    #@41a
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@41d
    goto/16 :goto_3

    #@41f
    .line 4115
    .end local v31    # "sep":C
    :pswitch_15
    const/16 v31, 0x2d

    #@421
    .line 4116
    .restart local v31    # "sep":C
    const/16 v4, 0x59

    #@423
    move-object/from16 v0, p0

    #@425
    move-object/from16 v1, p1

    #@427
    move-object/from16 v2, p2

    #@429
    move-object/from16 v3, p4

    #@42b
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@42e
    move-result-object v4

    #@42f
    move/from16 v0, v31

    #@431
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@434
    .line 4117
    const/16 v4, 0x6d

    #@436
    move-object/from16 v0, p0

    #@438
    move-object/from16 v1, p1

    #@43a
    move-object/from16 v2, p2

    #@43c
    move-object/from16 v3, p4

    #@43e
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@441
    move-result-object v4

    #@442
    move/from16 v0, v31

    #@444
    invoke-interface {v4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@447
    .line 4118
    const/16 v4, 0x64

    #@449
    move-object/from16 v0, p0

    #@44b
    move-object/from16 v1, p1

    #@44d
    move-object/from16 v2, p2

    #@44f
    move-object/from16 v3, p4

    #@451
    invoke-direct {v0, v1, v2, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@454
    goto/16 :goto_3

    #@456
    .line 3924
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_11
        :pswitch_8
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_13
        :pswitch_e
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_f
        :pswitch_1
        :pswitch_1
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_12
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_9
    .end packed-switch

    #@4ce
    .line 4037
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x59 -> :sswitch_2
        0x79 -> :sswitch_1
    .end sparse-switch
.end method

.method private print(BLjava/util/Locale;)V
    .locals 6
    .param p1, "value"    # B
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3092
    int-to-long v0, p1

    #@2
    .line 3093
    .local v0, "v":J
    if-gez p1, :cond_2

    #@4
    .line 3094
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@6
    const/16 v4, 0x6f

    #@8
    if-eq v3, v4, :cond_0

    #@a
    .line 3095
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@c
    const/16 v4, 0x78

    #@e
    if-ne v3, v4, :cond_2

    #@10
    .line 3096
    :cond_0
    const-wide/16 v4, 0x100

    #@12
    add-long/2addr v0, v4

    #@13
    .line 3097
    sget-boolean v3, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@15
    if-nez v3, :cond_2

    #@17
    const-wide/16 v4, 0x0

    #@19
    cmp-long v3, v0, v4

    #@1b
    if-ltz v3, :cond_1

    #@1d
    const/4 v2, 0x1

    #@1e
    :cond_1
    if-nez v2, :cond_2

    #@20
    new-instance v2, Ljava/lang/AssertionError;

    #@22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@25
    move-result-object v3

    #@26
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@29
    throw v2

    #@2a
    .line 3099
    :cond_2
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    #@2d
    .line 3091
    return-void
.end method

.method private print(DLjava/util/Locale;)V
    .locals 9
    .param p1, "value"    # D
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3265
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3266
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    #@7
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    #@a
    move-result v0

    #@b
    const/4 v4, -0x1

    #@c
    if-ne v0, v4, :cond_0

    #@e
    const/4 v8, 0x1

    #@f
    .line 3268
    .local v8, "neg":Z
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_3

    #@15
    .line 3269
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    #@18
    move-result-wide v2

    #@19
    .line 3272
    .local v2, "v":D
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    #@1c
    .line 3275
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 3276
    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@24
    iget-char v6, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@26
    iget v7, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@28
    move-object v0, p0

    #@29
    move-object v4, p3

    #@2a
    invoke-direct/range {v0 .. v8}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    #@2d
    .line 3282
    :goto_1
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    #@30
    .line 3288
    .end local v2    # "v":D
    :goto_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@32
    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-direct {p0, v4}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@41
    .line 3264
    return-void

    #@42
    .line 3266
    .end local v8    # "neg":Z
    :cond_0
    const/4 v8, 0x0

    #@43
    .restart local v8    # "neg":Z
    goto :goto_0

    #@44
    .line 3278
    .restart local v2    # "v":D
    :cond_1
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@46
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@48
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_2

    #@4e
    .line 3279
    const-string/jumbo v0, "INFINITY"

    #@51
    .line 3278
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    goto :goto_1

    #@55
    .line 3279
    :cond_2
    const-string/jumbo v0, "Infinity"

    #@58
    goto :goto_3

    #@59
    .line 3284
    .end local v2    # "v":D
    :cond_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@5b
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@5d
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_4

    #@63
    const-string/jumbo v0, "NAN"

    #@66
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    goto :goto_2

    #@6a
    :cond_4
    const-string/jumbo v0, "NaN"

    #@6d
    goto :goto_4
.end method

.method private print(FLjava/util/Locale;)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3261
    float-to-double v0, p1

    #@1
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    #@4
    .line 3260
    return-void
.end method

.method private print(ILjava/util/Locale;)V
    .locals 6
    .param p1, "value"    # I
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3114
    int-to-long v0, p1

    #@2
    .line 3115
    .local v0, "v":J
    if-gez p1, :cond_2

    #@4
    .line 3116
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@6
    const/16 v4, 0x6f

    #@8
    if-eq v3, v4, :cond_0

    #@a
    .line 3117
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@c
    const/16 v4, 0x78

    #@e
    if-ne v3, v4, :cond_2

    #@10
    .line 3118
    :cond_0
    const-wide v4, 0x100000000L

    #@15
    add-long/2addr v0, v4

    #@16
    .line 3119
    sget-boolean v3, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@18
    if-nez v3, :cond_2

    #@1a
    const-wide/16 v4, 0x0

    #@1c
    cmp-long v3, v0, v4

    #@1e
    if-ltz v3, :cond_1

    #@20
    const/4 v2, 0x1

    #@21
    :cond_1
    if-nez v2, :cond_2

    #@23
    new-instance v2, Ljava/lang/AssertionError;

    #@25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2c
    throw v2

    #@2d
    .line 3121
    :cond_2
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    #@30
    .line 3113
    return-void
.end method

.method private print(JLjava/util/Locale;)V
    .locals 11
    .param p1, "value"    # J
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3126
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3128
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@7
    const/16 v3, 0x64

    #@9
    if-ne v0, v3, :cond_3

    #@b
    .line 3129
    const-wide/16 v4, 0x0

    #@d
    cmp-long v0, p1, v4

    #@f
    if-gez v0, :cond_1

    #@11
    const/4 v8, 0x1

    #@12
    .line 3131
    .local v8, "neg":Z
    :goto_0
    const-wide/16 v4, 0x0

    #@14
    cmp-long v0, p1, v4

    #@16
    if-gez v0, :cond_2

    #@18
    .line 3132
    const/16 v0, 0xa

    #@1a
    invoke-static {p1, p2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    const/4 v3, 0x1

    #@1f
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@26
    move-result-object v2

    #@27
    .line 3137
    .local v2, "va":[C
    :goto_1
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    #@2a
    .line 3140
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@2c
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@2e
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@30
    invoke-direct {p0, v0, v4, v8}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    #@33
    move-result v4

    #@34
    move-object v0, p0

    #@35
    move-object v5, p3

    #@36
    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@39
    .line 3143
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    #@3c
    .line 3177
    .end local v2    # "va":[C
    .end local v8    # "neg":Z
    :cond_0
    :goto_2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@3e
    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@4d
    .line 3124
    return-void

    #@4e
    .line 3129
    :cond_1
    const/4 v8, 0x0

    #@4f
    .restart local v8    # "neg":Z
    goto :goto_0

    #@50
    .line 3134
    :cond_2
    const/16 v0, 0xa

    #@52
    invoke-static {p1, p2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@59
    move-result-object v2

    #@5a
    .restart local v2    # "va":[C
    goto :goto_1

    #@5b
    .line 3144
    .end local v2    # "va":[C
    .end local v8    # "neg":Z
    :cond_3
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@5d
    const/16 v3, 0x6f

    #@5f
    if-ne v0, v3, :cond_7

    #@61
    .line 3145
    const/4 v0, 0x3

    #@62
    new-array v0, v0, [Ljava/util/Formatter$Flags;

    #@64
    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@66
    const/4 v4, 0x0

    #@67
    aput-object v3, v0, v4

    #@69
    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    #@6b
    const/4 v4, 0x1

    #@6c
    aput-object v3, v0, v4

    #@6e
    .line 3146
    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    #@70
    const/4 v4, 0x2

    #@71
    aput-object v3, v0, v4

    #@73
    .line 3145
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    #@76
    .line 3147
    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    #@79
    move-result-object v9

    #@7a
    .line 3148
    .local v9, "s":Ljava/lang/String;
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@7c
    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@7e
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@81
    move-result v0

    #@82
    if-eqz v0, :cond_5

    #@84
    .line 3149
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@87
    move-result v0

    #@88
    add-int/lit8 v7, v0, 0x1

    #@8a
    .line 3153
    .local v7, "len":I
    :goto_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@8c
    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@8e
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@91
    move-result v0

    #@92
    if-eqz v0, :cond_4

    #@94
    .line 3154
    const/16 v0, 0x30

    #@96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@99
    .line 3155
    :cond_4
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@9b
    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@9d
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@a0
    move-result v0

    #@a1
    if-eqz v0, :cond_6

    #@a3
    .line 3156
    const/4 v6, 0x0

    #@a4
    .local v6, "i":I
    :goto_4
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@a6
    sub-int/2addr v0, v7

    #@a7
    if-ge v6, v0, :cond_6

    #@a9
    const/16 v0, 0x30

    #@ab
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ae
    add-int/lit8 v6, v6, 0x1

    #@b0
    goto :goto_4

    #@b1
    .line 3150
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@b4
    move-result v7

    #@b5
    .restart local v7    # "len":I
    goto :goto_3

    #@b6
    .line 3157
    :cond_6
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    goto :goto_2

    #@ba
    .line 3158
    .end local v7    # "len":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_7
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@bc
    const/16 v3, 0x78

    #@be
    if-ne v0, v3, :cond_0

    #@c0
    .line 3159
    const/4 v0, 0x3

    #@c1
    new-array v0, v0, [Ljava/util/Formatter$Flags;

    #@c3
    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@c5
    const/4 v4, 0x0

    #@c6
    aput-object v3, v0, v4

    #@c8
    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    #@ca
    const/4 v4, 0x1

    #@cb
    aput-object v3, v0, v4

    #@cd
    .line 3160
    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    #@cf
    const/4 v4, 0x2

    #@d0
    aput-object v3, v0, v4

    #@d2
    .line 3159
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    #@d5
    .line 3161
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@d8
    move-result-object v9

    #@d9
    .line 3162
    .restart local v9    # "s":Ljava/lang/String;
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@db
    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@dd
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@e0
    move-result v0

    #@e1
    if-eqz v0, :cond_9

    #@e3
    .line 3163
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@e6
    move-result v0

    #@e7
    add-int/lit8 v7, v0, 0x2

    #@e9
    .line 3167
    .restart local v7    # "len":I
    :goto_5
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@eb
    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@ed
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@f0
    move-result v0

    #@f1
    if-eqz v0, :cond_8

    #@f3
    .line 3168
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@f5
    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@f7
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@fa
    move-result v0

    #@fb
    if-eqz v0, :cond_a

    #@fd
    const-string/jumbo v0, "0X"

    #@100
    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    .line 3169
    :cond_8
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@105
    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@107
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@10a
    move-result v0

    #@10b
    if-eqz v0, :cond_b

    #@10d
    .line 3170
    const/4 v6, 0x0

    #@10e
    .restart local v6    # "i":I
    :goto_7
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@110
    sub-int/2addr v0, v7

    #@111
    if-ge v6, v0, :cond_b

    #@113
    const/16 v0, 0x30

    #@115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@118
    add-int/lit8 v6, v6, 0x1

    #@11a
    goto :goto_7

    #@11b
    .line 3164
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@11e
    move-result v7

    #@11f
    .restart local v7    # "len":I
    goto :goto_5

    #@120
    .line 3168
    :cond_a
    const-string/jumbo v0, "0x"

    #@123
    goto :goto_6

    #@124
    .line 3171
    :cond_b
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@126
    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@128
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@12b
    move-result v0

    #@12c
    if-eqz v0, :cond_c

    #@12e
    .line 3172
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@131
    move-result-object v9

    #@132
    .line 3173
    :cond_c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    goto/16 :goto_2
.end method

.method private print(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2945
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 2946
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@f
    const/4 v1, 0x0

    #@10
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    .line 2947
    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@16
    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@18
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 2949
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@20
    invoke-static {v0}, Ljava/util/Formatter;->-get1(Ljava/util/Formatter;)Ljava/util/Locale;

    #@23
    move-result-object v0

    #@24
    if-eqz v0, :cond_2

    #@26
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@28
    invoke-static {v0}, Ljava/util/Formatter;->-get1(Ljava/util/Formatter;)Ljava/util/Locale;

    #@2b
    move-result-object v0

    #@2c
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@2f
    move-result-object p1

    #@30
    .line 2951
    :cond_1
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@32
    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    #@35
    move-result-object v0

    #@36
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@3d
    .line 2944
    return-void

    #@3e
    .line 2949
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@41
    move-result-object v0

    #@42
    goto :goto_0
.end method

.method private print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .locals 30
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # D
    .param p4, "l"    # Ljava/util/Locale;
    .param p5, "f"    # Ljava/util/Formatter$Flags;
    .param p6, "c"    # C
    .param p7, "precision"    # I
    .param p8, "neg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3296
    const/16 v4, 0x65

    #@2
    move/from16 v0, p6

    #@4
    if-ne v0, v4, :cond_a

    #@6
    .line 3299
    const/4 v4, -0x1

    #@7
    move/from16 v0, p7

    #@9
    if-ne v0, v4, :cond_3

    #@b
    const/16 v21, 0x6

    #@d
    .line 3302
    .local v21, "prec":I
    :goto_0
    new-instance v16, Lsun/misc/FormattedFloatingDecimal;

    #@f
    .line 3303
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    #@11
    .line 3302
    move-object/from16 v0, v16

    #@13
    move-wide/from16 v1, p2

    #@15
    move/from16 v3, v21

    #@17
    invoke-direct {v0, v1, v2, v3, v4}, Lsun/misc/FormattedFloatingDecimal;-><init>(DILsun/misc/FormattedFloatingDecimal$Form;)V

    #@1a
    .line 3305
    .local v16, "fd":Lsun/misc/FormattedFloatingDecimal;
    const/16 v4, 0x1e

    #@1c
    new-array v0, v4, [C

    #@1e
    move-object/from16 v27, v0

    #@20
    .line 3306
    .local v27, "v":[C
    move-object/from16 v0, v16

    #@22
    move-object/from16 v1, v27

    #@24
    invoke-virtual {v0, v1}, Lsun/misc/FormattedFloatingDecimal;->getChars([C)I

    #@27
    move-result v19

    #@28
    .line 3308
    .local v19, "len":I
    move-object/from16 v0, p0

    #@2a
    move-object/from16 v1, v27

    #@2c
    move/from16 v2, v19

    #@2e
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->mantissa([CI)[C

    #@31
    move-result-object v4

    #@32
    move-object/from16 v0, p0

    #@34
    move/from16 v1, v21

    #@36
    invoke-direct {v0, v4, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    #@39
    move-result-object v6

    #@3a
    .line 3312
    .local v6, "mant":[C
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@3c
    move-object/from16 v0, p5

    #@3e
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_0

    #@44
    if-nez v21, :cond_0

    #@46
    .line 3313
    move-object/from16 v0, p0

    #@48
    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    #@4b
    move-result-object v6

    #@4c
    .line 3315
    :cond_0
    const-wide/16 v4, 0x0

    #@4e
    cmpl-double v4, p2, v4

    #@50
    if-nez v4, :cond_4

    #@52
    .line 3316
    const/4 v4, 0x3

    #@53
    new-array v15, v4, [C

    #@55
    .local v15, "exp":[C
    fill-array-data v15, :array_0

    #@58
    .line 3318
    :goto_1
    move-object/from16 v0, p0

    #@5a
    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@5c
    .line 3319
    .local v8, "newW":I
    move-object/from16 v0, p0

    #@5e
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@60
    const/4 v5, -0x1

    #@61
    if-eq v4, v5, :cond_1

    #@63
    .line 3320
    move-object/from16 v0, p0

    #@65
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@67
    array-length v5, v15

    #@68
    sub-int/2addr v4, v5

    #@69
    add-int/lit8 v4, v4, -0x1

    #@6b
    move-object/from16 v0, p0

    #@6d
    move-object/from16 v1, p5

    #@6f
    move/from16 v2, p8

    #@71
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    #@74
    move-result v8

    #@75
    :cond_1
    move-object/from16 v4, p0

    #@77
    move-object/from16 v5, p1

    #@79
    move-object/from16 v7, p5

    #@7b
    move-object/from16 v9, p4

    #@7d
    .line 3321
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@80
    .line 3323
    if-eqz p4, :cond_5

    #@82
    move-object/from16 v23, p4

    #@84
    .line 3324
    .local v23, "separatorLocale":Ljava/util/Locale;
    :goto_2
    invoke-static/range {v23 .. v23}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@87
    move-result-object v20

    #@88
    .line 3325
    .local v20, "localeData":Llibcore/icu/LocaleData;
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@8a
    move-object/from16 v0, p5

    #@8c
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_6

    #@92
    .line 3326
    move-object/from16 v0, v20

    #@94
    iget-object v4, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    #@96
    move-object/from16 v0, v23

    #@98
    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@9b
    move-result-object v4

    #@9c
    .line 3325
    :goto_3
    move-object/from16 v0, p1

    #@9e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    .line 3329
    invoke-virtual/range {p5 .. p5}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    #@a4
    move-result-object v4

    #@a5
    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@a7
    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    #@aa
    move-result-object v12

    #@ab
    .line 3330
    .local v12, "flags":Ljava/util/Formatter$Flags;
    const/4 v4, 0x0

    #@ac
    aget-char v24, v15, v4

    #@ae
    .line 3331
    .local v24, "sign":C
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@b0
    if-nez v4, :cond_8

    #@b2
    const/16 v4, 0x2b

    #@b4
    move/from16 v0, v24

    #@b6
    if-eq v0, v4, :cond_2

    #@b8
    const/16 v4, 0x2d

    #@ba
    move/from16 v0, v24

    #@bc
    if-ne v0, v4, :cond_7

    #@be
    :cond_2
    const/4 v4, 0x1

    #@bf
    :goto_4
    if-nez v4, :cond_8

    #@c1
    new-instance v4, Ljava/lang/AssertionError;

    #@c3
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@c6
    throw v4

    #@c7
    .line 3299
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v15    # "exp":[C
    .end local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v19    # "len":I
    .end local v20    # "localeData":Llibcore/icu/LocaleData;
    .end local v21    # "prec":I
    .end local v23    # "separatorLocale":Ljava/util/Locale;
    .end local v24    # "sign":C
    .end local v27    # "v":[C
    :cond_3
    move/from16 v21, p7

    #@c9
    .restart local v21    # "prec":I
    goto/16 :goto_0

    #@cb
    .line 3316
    .restart local v6    # "mant":[C
    .restart local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .restart local v19    # "len":I
    .restart local v27    # "v":[C
    :cond_4
    move-object/from16 v0, p0

    #@cd
    move-object/from16 v1, v27

    #@cf
    move/from16 v2, v19

    #@d1
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->exponent([CI)[C

    #@d4
    move-result-object v15

    #@d5
    .restart local v15    # "exp":[C
    goto :goto_1

    #@d6
    .line 3323
    .restart local v8    # "newW":I
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@d9
    move-result-object v23

    #@da
    goto :goto_2

    #@db
    .line 3327
    .restart local v20    # "localeData":Llibcore/icu/LocaleData;
    .restart local v23    # "separatorLocale":Ljava/util/Locale;
    :cond_6
    move-object/from16 v0, v20

    #@dd
    iget-object v4, v0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    #@df
    move-object/from16 v0, v23

    #@e1
    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@e4
    move-result-object v4

    #@e5
    goto :goto_3

    #@e6
    .line 3331
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    .restart local v24    # "sign":C
    :cond_7
    const/4 v4, 0x0

    #@e7
    goto :goto_4

    #@e8
    .line 3332
    :cond_8
    move-object/from16 v0, p1

    #@ea
    move/from16 v1, v24

    #@ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ef
    .line 3334
    array-length v4, v15

    #@f0
    add-int/lit8 v4, v4, -0x1

    #@f2
    new-array v11, v4, [C

    #@f4
    .line 3335
    .local v11, "tmp":[C
    array-length v4, v15

    #@f5
    add-int/lit8 v4, v4, -0x1

    #@f7
    const/4 v5, 0x1

    #@f8
    const/4 v7, 0x0

    #@f9
    invoke-static {v15, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@fc
    .line 3336
    const/4 v10, 0x0

    #@fd
    const/4 v13, -0x1

    #@fe
    move-object/from16 v9, p0

    #@100
    move-object/from16 v14, p4

    #@102
    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v4

    #@106
    move-object/from16 v0, p1

    #@108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@10b
    .line 3294
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v11    # "tmp":[C
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v15    # "exp":[C
    .end local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v19    # "len":I
    .end local v20    # "localeData":Llibcore/icu/LocaleData;
    .end local v21    # "prec":I
    .end local v23    # "separatorLocale":Ljava/util/Locale;
    .end local v24    # "sign":C
    .end local v27    # "v":[C
    :cond_9
    :goto_5
    return-void

    #@10c
    .line 3337
    :cond_a
    const/16 v4, 0x66

    #@10e
    move/from16 v0, p6

    #@110
    if-ne v0, v4, :cond_e

    #@112
    .line 3340
    const/4 v4, -0x1

    #@113
    move/from16 v0, p7

    #@115
    if-ne v0, v4, :cond_d

    #@117
    const/16 v21, 0x6

    #@119
    .line 3343
    .restart local v21    # "prec":I
    :goto_6
    new-instance v16, Lsun/misc/FormattedFloatingDecimal;

    #@11b
    .line 3344
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    #@11d
    .line 3343
    move-object/from16 v0, v16

    #@11f
    move-wide/from16 v1, p2

    #@121
    move/from16 v3, v21

    #@123
    invoke-direct {v0, v1, v2, v3, v4}, Lsun/misc/FormattedFloatingDecimal;-><init>(DILsun/misc/FormattedFloatingDecimal$Form;)V

    #@126
    .line 3348
    .restart local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual/range {v16 .. v16}, Lsun/misc/FormattedFloatingDecimal;->getExponent()I

    #@129
    move-result v4

    #@12a
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@12d
    move-result v4

    #@12e
    .line 3347
    add-int/lit8 v4, v4, 0x1f

    #@130
    new-array v0, v4, [C

    #@132
    move-object/from16 v27, v0

    #@134
    .line 3349
    .restart local v27    # "v":[C
    move-object/from16 v0, v16

    #@136
    move-object/from16 v1, v27

    #@138
    invoke-virtual {v0, v1}, Lsun/misc/FormattedFloatingDecimal;->getChars([C)I

    #@13b
    move-result v19

    #@13c
    .line 3351
    .restart local v19    # "len":I
    move-object/from16 v0, p0

    #@13e
    move-object/from16 v1, v27

    #@140
    move/from16 v2, v19

    #@142
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->mantissa([CI)[C

    #@145
    move-result-object v4

    #@146
    move-object/from16 v0, p0

    #@148
    move/from16 v1, v21

    #@14a
    invoke-direct {v0, v4, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    #@14d
    move-result-object v6

    #@14e
    .line 3355
    .restart local v6    # "mant":[C
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@150
    move-object/from16 v0, p5

    #@152
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@155
    move-result v4

    #@156
    if-eqz v4, :cond_b

    #@158
    if-nez v21, :cond_b

    #@15a
    .line 3356
    move-object/from16 v0, p0

    #@15c
    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    #@15f
    move-result-object v6

    #@160
    .line 3358
    :cond_b
    move-object/from16 v0, p0

    #@162
    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@164
    .line 3359
    .restart local v8    # "newW":I
    move-object/from16 v0, p0

    #@166
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@168
    const/4 v5, -0x1

    #@169
    if-eq v4, v5, :cond_c

    #@16b
    .line 3360
    move-object/from16 v0, p0

    #@16d
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@16f
    move-object/from16 v0, p0

    #@171
    move-object/from16 v1, p5

    #@173
    move/from16 v2, p8

    #@175
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    #@178
    move-result v8

    #@179
    :cond_c
    move-object/from16 v4, p0

    #@17b
    move-object/from16 v5, p1

    #@17d
    move-object/from16 v7, p5

    #@17f
    move-object/from16 v9, p4

    #@181
    .line 3361
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@184
    goto :goto_5

    #@185
    .line 3340
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v19    # "len":I
    .end local v21    # "prec":I
    .end local v27    # "v":[C
    :cond_d
    move/from16 v21, p7

    #@187
    .restart local v21    # "prec":I
    goto :goto_6

    #@188
    .line 3362
    .end local v21    # "prec":I
    :cond_e
    const/16 v4, 0x67

    #@18a
    move/from16 v0, p6

    #@18c
    if-ne v0, v4, :cond_1a

    #@18e
    .line 3363
    move/from16 v21, p7

    #@190
    .line 3364
    .restart local v21    # "prec":I
    const/4 v4, -0x1

    #@191
    move/from16 v0, p7

    #@193
    if-ne v0, v4, :cond_13

    #@195
    .line 3365
    const/16 v21, 0x6

    #@197
    .line 3370
    :cond_f
    :goto_7
    new-instance v16, Lsun/misc/FormattedFloatingDecimal;

    #@199
    .line 3371
    sget-object v4, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    #@19b
    .line 3370
    move-object/from16 v0, v16

    #@19d
    move-wide/from16 v1, p2

    #@19f
    move/from16 v3, v21

    #@1a1
    invoke-direct {v0, v1, v2, v3, v4}, Lsun/misc/FormattedFloatingDecimal;-><init>(DILsun/misc/FormattedFloatingDecimal$Form;)V

    #@1a4
    .line 3375
    .restart local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual/range {v16 .. v16}, Lsun/misc/FormattedFloatingDecimal;->getExponent()I

    #@1a7
    move-result v4

    #@1a8
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@1ab
    move-result v4

    #@1ac
    .line 3374
    add-int/lit8 v4, v4, 0x1f

    #@1ae
    new-array v0, v4, [C

    #@1b0
    move-object/from16 v27, v0

    #@1b2
    .line 3376
    .restart local v27    # "v":[C
    move-object/from16 v0, v16

    #@1b4
    move-object/from16 v1, v27

    #@1b6
    invoke-virtual {v0, v1}, Lsun/misc/FormattedFloatingDecimal;->getChars([C)I

    #@1b9
    move-result v19

    #@1ba
    .line 3378
    .restart local v19    # "len":I
    move-object/from16 v0, p0

    #@1bc
    move-object/from16 v1, v27

    #@1be
    move/from16 v2, v19

    #@1c0
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->exponent([CI)[C

    #@1c3
    move-result-object v15

    #@1c4
    .line 3379
    .restart local v15    # "exp":[C
    if-eqz v15, :cond_14

    #@1c6
    .line 3380
    add-int/lit8 v21, v21, -0x1

    #@1c8
    .line 3385
    :goto_8
    move-object/from16 v0, p0

    #@1ca
    move-object/from16 v1, v27

    #@1cc
    move/from16 v2, v19

    #@1ce
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->mantissa([CI)[C

    #@1d1
    move-result-object v4

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    move/from16 v1, v21

    #@1d6
    invoke-direct {v0, v4, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    #@1d9
    move-result-object v6

    #@1da
    .line 3388
    .restart local v6    # "mant":[C
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@1dc
    move-object/from16 v0, p5

    #@1de
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@1e1
    move-result v4

    #@1e2
    if-eqz v4, :cond_10

    #@1e4
    if-nez v21, :cond_10

    #@1e6
    .line 3389
    move-object/from16 v0, p0

    #@1e8
    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    #@1eb
    move-result-object v6

    #@1ec
    .line 3391
    :cond_10
    move-object/from16 v0, p0

    #@1ee
    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@1f0
    .line 3392
    .restart local v8    # "newW":I
    move-object/from16 v0, p0

    #@1f2
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@1f4
    const/4 v5, -0x1

    #@1f5
    if-eq v4, v5, :cond_11

    #@1f7
    .line 3393
    if-eqz v15, :cond_16

    #@1f9
    .line 3394
    move-object/from16 v0, p0

    #@1fb
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@1fd
    array-length v5, v15

    #@1fe
    sub-int/2addr v4, v5

    #@1ff
    add-int/lit8 v4, v4, -0x1

    #@201
    move-object/from16 v0, p0

    #@203
    move-object/from16 v1, p5

    #@205
    move/from16 v2, p8

    #@207
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    #@20a
    move-result v8

    #@20b
    :cond_11
    :goto_9
    move-object/from16 v4, p0

    #@20d
    move-object/from16 v5, p1

    #@20f
    move-object/from16 v7, p5

    #@211
    move-object/from16 v9, p4

    #@213
    .line 3398
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@216
    .line 3400
    if-eqz v15, :cond_9

    #@218
    .line 3401
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@21a
    move-object/from16 v0, p5

    #@21c
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@21f
    move-result v4

    #@220
    if-eqz v4, :cond_17

    #@222
    const/16 v4, 0x45

    #@224
    :goto_a
    move-object/from16 v0, p1

    #@226
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@229
    .line 3403
    invoke-virtual/range {p5 .. p5}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    #@22c
    move-result-object v4

    #@22d
    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@22f
    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    #@232
    move-result-object v12

    #@233
    .line 3404
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    const/4 v4, 0x0

    #@234
    aget-char v24, v15, v4

    #@236
    .line 3405
    .restart local v24    # "sign":C
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@238
    if-nez v4, :cond_19

    #@23a
    const/16 v4, 0x2b

    #@23c
    move/from16 v0, v24

    #@23e
    if-eq v0, v4, :cond_12

    #@240
    const/16 v4, 0x2d

    #@242
    move/from16 v0, v24

    #@244
    if-ne v0, v4, :cond_18

    #@246
    :cond_12
    const/4 v4, 0x1

    #@247
    :goto_b
    if-nez v4, :cond_19

    #@249
    new-instance v4, Ljava/lang/AssertionError;

    #@24b
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@24e
    throw v4

    #@24f
    .line 3366
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v15    # "exp":[C
    .end local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v19    # "len":I
    .end local v24    # "sign":C
    .end local v27    # "v":[C
    :cond_13
    if-nez p7, :cond_f

    #@251
    .line 3367
    const/16 v21, 0x1

    #@253
    goto/16 :goto_7

    #@255
    .line 3382
    .restart local v15    # "exp":[C
    .restart local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .restart local v19    # "len":I
    .restart local v27    # "v":[C
    :cond_14
    const-wide/16 v4, 0x0

    #@257
    cmpl-double v4, p2, v4

    #@259
    if-nez v4, :cond_15

    #@25b
    const/4 v4, 0x0

    #@25c
    :goto_c
    sub-int v4, v21, v4

    #@25e
    add-int/lit8 v21, v4, -0x1

    #@260
    goto/16 :goto_8

    #@262
    :cond_15
    invoke-virtual/range {v16 .. v16}, Lsun/misc/FormattedFloatingDecimal;->getExponentRounded()I

    #@265
    move-result v4

    #@266
    goto :goto_c

    #@267
    .line 3396
    .restart local v6    # "mant":[C
    .restart local v8    # "newW":I
    :cond_16
    move-object/from16 v0, p0

    #@269
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@26b
    move-object/from16 v0, p0

    #@26d
    move-object/from16 v1, p5

    #@26f
    move/from16 v2, p8

    #@271
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    #@274
    move-result v8

    #@275
    goto :goto_9

    #@276
    .line 3401
    :cond_17
    const/16 v4, 0x65

    #@278
    goto :goto_a

    #@279
    .line 3405
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    .restart local v24    # "sign":C
    :cond_18
    const/4 v4, 0x0

    #@27a
    goto :goto_b

    #@27b
    .line 3406
    :cond_19
    move-object/from16 v0, p1

    #@27d
    move/from16 v1, v24

    #@27f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@282
    .line 3408
    array-length v4, v15

    #@283
    add-int/lit8 v4, v4, -0x1

    #@285
    new-array v11, v4, [C

    #@287
    .line 3409
    .restart local v11    # "tmp":[C
    array-length v4, v15

    #@288
    add-int/lit8 v4, v4, -0x1

    #@28a
    const/4 v5, 0x1

    #@28b
    const/4 v7, 0x0

    #@28c
    invoke-static {v15, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@28f
    .line 3410
    const/4 v10, 0x0

    #@290
    const/4 v13, -0x1

    #@291
    move-object/from16 v9, p0

    #@293
    move-object/from16 v14, p4

    #@295
    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@298
    move-result-object v4

    #@299
    move-object/from16 v0, p1

    #@29b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@29e
    goto/16 :goto_5

    #@2a0
    .line 3412
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v11    # "tmp":[C
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v15    # "exp":[C
    .end local v16    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v19    # "len":I
    .end local v21    # "prec":I
    .end local v24    # "sign":C
    .end local v27    # "v":[C
    :cond_1a
    const/16 v4, 0x61

    #@2a2
    move/from16 v0, p6

    #@2a4
    if-ne v0, v4, :cond_9

    #@2a6
    .line 3413
    move/from16 v21, p7

    #@2a8
    .line 3414
    .restart local v21    # "prec":I
    const/4 v4, -0x1

    #@2a9
    move/from16 v0, p7

    #@2ab
    if-ne v0, v4, :cond_1c

    #@2ad
    .line 3416
    const/16 v21, 0x0

    #@2af
    .line 3420
    :cond_1b
    :goto_d
    move-object/from16 v0, p0

    #@2b1
    move-wide/from16 v1, p2

    #@2b3
    move/from16 v3, v21

    #@2b5
    invoke-direct {v0, v1, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->hexDouble(DI)Ljava/lang/String;

    #@2b8
    move-result-object v22

    #@2b9
    .line 3423
    .local v22, "s":Ljava/lang/String;
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@2bb
    move-object/from16 v0, p5

    #@2bd
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@2c0
    move-result v26

    #@2c1
    .line 3424
    .local v26, "upper":Z
    if-eqz v26, :cond_1d

    #@2c3
    const-string/jumbo v4, "0X"

    #@2c6
    :goto_e
    move-object/from16 v0, p1

    #@2c8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cb
    .line 3426
    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@2cd
    move-object/from16 v0, p5

    #@2cf
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@2d2
    move-result v4

    #@2d3
    if-eqz v4, :cond_1e

    #@2d5
    .line 3427
    const/16 v17, 0x0

    #@2d7
    .local v17, "i":I
    :goto_f
    move-object/from16 v0, p0

    #@2d9
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@2db
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    #@2de
    move-result v5

    #@2df
    sub-int/2addr v4, v5

    #@2e0
    add-int/lit8 v4, v4, -0x2

    #@2e2
    move/from16 v0, v17

    #@2e4
    if-ge v0, v4, :cond_1e

    #@2e6
    .line 3428
    const/16 v4, 0x30

    #@2e8
    move-object/from16 v0, p1

    #@2ea
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2ed
    .line 3427
    add-int/lit8 v17, v17, 0x1

    #@2ef
    goto :goto_f

    #@2f0
    .line 3417
    .end local v17    # "i":I
    .end local v22    # "s":Ljava/lang/String;
    .end local v26    # "upper":Z
    :cond_1c
    if-nez p7, :cond_1b

    #@2f2
    .line 3418
    const/16 v21, 0x1

    #@2f4
    goto :goto_d

    #@2f5
    .line 3424
    .restart local v22    # "s":Ljava/lang/String;
    .restart local v26    # "upper":Z
    :cond_1d
    const-string/jumbo v4, "0x"

    #@2f8
    goto :goto_e

    #@2f9
    .line 3430
    :cond_1e
    const/16 v4, 0x70

    #@2fb
    move-object/from16 v0, v22

    #@2fd
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    #@300
    move-result v18

    #@301
    .line 3431
    .local v18, "idx":I
    const/4 v4, 0x0

    #@302
    move-object/from16 v0, v22

    #@304
    move/from16 v1, v18

    #@306
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@309
    move-result-object v4

    #@30a
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    #@30d
    move-result-object v28

    #@30e
    .line 3432
    .local v28, "va":[C
    if-eqz v26, :cond_1f

    #@310
    .line 3433
    new-instance v25, Ljava/lang/String;

    #@312
    move-object/from16 v0, v25

    #@314
    move-object/from16 v1, v28

    #@316
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@319
    .line 3435
    .local v25, "tmp":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@31b
    move-object/from16 v0, v25

    #@31d
    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@320
    move-result-object v25

    #@321
    .line 3436
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toCharArray()[C

    #@324
    move-result-object v28

    #@325
    .line 3438
    .end local v25    # "tmp":Ljava/lang/String;
    :cond_1f
    if-eqz v21, :cond_20

    #@327
    move-object/from16 v0, p0

    #@329
    move-object/from16 v1, v28

    #@32b
    move/from16 v2, v21

    #@32d
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->addZeros([CI)[C

    #@330
    move-result-object v28

    #@331
    .end local v28    # "va":[C
    :cond_20
    move-object/from16 v0, p1

    #@333
    move-object/from16 v1, v28

    #@335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@338
    .line 3439
    if-eqz v26, :cond_21

    #@33a
    const/16 v4, 0x50

    #@33c
    :goto_10
    move-object/from16 v0, p1

    #@33e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@341
    .line 3440
    add-int/lit8 v4, v18, 0x1

    #@343
    move-object/from16 v0, v22

    #@345
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@348
    move-result-object v4

    #@349
    move-object/from16 v0, p1

    #@34b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34e
    goto/16 :goto_5

    #@350
    .line 3439
    :cond_21
    const/16 v4, 0x70

    #@352
    goto :goto_10

    #@353
    .line 3316
    nop

    #@354
    :array_0
    .array-data 2
        0x2bs
        0x30s
        0x30s
    .end array-data
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .locals 41
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # Ljava/math/BigDecimal;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "f"    # Ljava/util/Formatter$Flags;
    .param p5, "c"    # C
    .param p6, "precision"    # I
    .param p7, "neg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3614
    const/16 v4, 0x65

    #@2
    move/from16 v0, p5

    #@4
    if-ne v0, v4, :cond_b

    #@6
    .line 3616
    const/4 v4, -0x1

    #@7
    move/from16 v0, p6

    #@9
    if-ne v0, v4, :cond_3

    #@b
    const/16 v19, 0x6

    #@d
    .line 3617
    .local v19, "prec":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    #@10
    move-result v35

    #@11
    .line 3618
    .local v35, "scale":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    #@14
    move-result v34

    #@15
    .line 3619
    .local v34, "origPrec":I
    const/16 v33, 0x0

    #@17
    .line 3622
    .local v33, "nzeros":I
    add-int/lit8 v4, v34, -0x1

    #@19
    move/from16 v0, v19

    #@1b
    if-le v0, v4, :cond_4

    #@1d
    .line 3623
    move/from16 v29, v34

    #@1f
    .line 3624
    .local v29, "compPrec":I
    add-int/lit8 v4, v34, -0x1

    #@21
    sub-int v33, v19, v4

    #@23
    .line 3629
    :goto_1
    new-instance v32, Ljava/math/MathContext;

    #@25
    move-object/from16 v0, v32

    #@27
    move/from16 v1, v29

    #@29
    invoke-direct {v0, v1}, Ljava/math/MathContext;-><init>(I)V

    #@2c
    .line 3631
    .local v32, "mc":Ljava/math/MathContext;
    new-instance v39, Ljava/math/BigDecimal;

    #@2e
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    #@31
    move-result-object v4

    #@32
    move-object/from16 v0, v39

    #@34
    move/from16 v1, v35

    #@36
    move-object/from16 v2, v32

    #@38
    invoke-direct {v0, v4, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    #@3b
    .line 3634
    .local v39, "v":Ljava/math/BigDecimal;
    new-instance v28, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    #@3d
    invoke-virtual/range {v39 .. v39}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    #@40
    move-result-object v4

    #@41
    invoke-virtual/range {v39 .. v39}, Ljava/math/BigDecimal;->scale()I

    #@44
    move-result v5

    #@45
    .line 3635
    sget-object v7, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    #@47
    .line 3634
    move-object/from16 v0, v28

    #@49
    move-object/from16 v1, p0

    #@4b
    invoke-direct {v0, v1, v4, v5, v7}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    #@4e
    .line 3637
    .local v28, "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    #@51
    move-result-object v6

    #@52
    .line 3644
    .local v6, "mant":[C
    const/4 v4, 0x1

    #@53
    move/from16 v0, v34

    #@55
    if-eq v0, v4, :cond_5

    #@57
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->hasDot()Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_5

    #@5d
    .line 3650
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    #@5f
    move/from16 v1, v33

    #@61
    invoke-direct {v0, v6, v1}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros([CI)[C

    #@64
    move-result-object v6

    #@65
    .line 3652
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exponent()[C

    #@68
    move-result-object v31

    #@69
    .line 3653
    .local v31, "exp":[C
    move-object/from16 v0, p0

    #@6b
    iget v8, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@6d
    .line 3654
    .local v8, "newW":I
    move-object/from16 v0, p0

    #@6f
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@71
    const/4 v5, -0x1

    #@72
    if-eq v4, v5, :cond_1

    #@74
    .line 3655
    move-object/from16 v0, p0

    #@76
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@78
    move-object/from16 v0, v31

    #@7a
    array-length v5, v0

    #@7b
    sub-int/2addr v4, v5

    #@7c
    add-int/lit8 v4, v4, -0x1

    #@7e
    move-object/from16 v0, p0

    #@80
    move-object/from16 v1, p4

    #@82
    move/from16 v2, p7

    #@84
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    #@87
    move-result v8

    #@88
    :cond_1
    move-object/from16 v4, p0

    #@8a
    move-object/from16 v5, p1

    #@8c
    move-object/from16 v7, p4

    #@8e
    move-object/from16 v9, p3

    #@90
    .line 3656
    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@93
    .line 3658
    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@95
    move-object/from16 v0, p4

    #@97
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@9a
    move-result v4

    #@9b
    if-eqz v4, :cond_7

    #@9d
    const/16 v4, 0x45

    #@9f
    :goto_3
    move-object/from16 v0, p1

    #@a1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a4
    .line 3660
    invoke-virtual/range {p4 .. p4}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    #@a7
    move-result-object v4

    #@a8
    sget-object v5, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    #@aa
    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    #@ad
    move-result-object v12

    #@ae
    .line 3661
    .local v12, "flags":Ljava/util/Formatter$Flags;
    const/4 v4, 0x0

    #@af
    aget-char v36, v31, v4

    #@b1
    .line 3662
    .local v36, "sign":C
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@b3
    if-nez v4, :cond_9

    #@b5
    const/16 v4, 0x2b

    #@b7
    move/from16 v0, v36

    #@b9
    if-eq v0, v4, :cond_2

    #@bb
    const/16 v4, 0x2d

    #@bd
    move/from16 v0, v36

    #@bf
    if-ne v0, v4, :cond_8

    #@c1
    :cond_2
    const/4 v4, 0x1

    #@c2
    :goto_4
    if-nez v4, :cond_9

    #@c4
    new-instance v4, Ljava/lang/AssertionError;

    #@c6
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@c9
    throw v4

    #@ca
    .line 3616
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v29    # "compPrec":I
    .end local v31    # "exp":[C
    .end local v32    # "mc":Ljava/math/MathContext;
    .end local v33    # "nzeros":I
    .end local v34    # "origPrec":I
    .end local v35    # "scale":I
    .end local v36    # "sign":C
    .end local v39    # "v":Ljava/math/BigDecimal;
    :cond_3
    move/from16 v19, p6

    #@cc
    .restart local v19    # "prec":I
    goto/16 :goto_0

    #@ce
    .line 3626
    .restart local v33    # "nzeros":I
    .restart local v34    # "origPrec":I
    .restart local v35    # "scale":I
    :cond_4
    add-int/lit8 v29, v19, 0x1

    #@d0
    .restart local v29    # "compPrec":I
    goto/16 :goto_1

    #@d2
    .line 3645
    .restart local v6    # "mant":[C
    .restart local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .restart local v32    # "mc":Ljava/math/MathContext;
    .restart local v39    # "v":Ljava/math/BigDecimal;
    :cond_5
    if-gtz v33, :cond_6

    #@d4
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@d6
    move-object/from16 v0, p4

    #@d8
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@db
    move-result v4

    #@dc
    .line 3644
    if-eqz v4, :cond_0

    #@de
    .line 3646
    :cond_6
    move-object/from16 v0, p0

    #@e0
    invoke-direct {v0, v6}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    #@e3
    move-result-object v6

    #@e4
    goto/16 :goto_2

    #@e6
    .line 3658
    .restart local v8    # "newW":I
    .restart local v31    # "exp":[C
    :cond_7
    const/16 v4, 0x65

    #@e8
    goto :goto_3

    #@e9
    .line 3662
    .restart local v12    # "flags":Ljava/util/Formatter$Flags;
    .restart local v36    # "sign":C
    :cond_8
    const/4 v4, 0x0

    #@ea
    goto :goto_4

    #@eb
    .line 3663
    :cond_9
    const/4 v4, 0x0

    #@ec
    aget-char v4, v31, v4

    #@ee
    move-object/from16 v0, p1

    #@f0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f3
    .line 3665
    move-object/from16 v0, v31

    #@f5
    array-length v4, v0

    #@f6
    add-int/lit8 v4, v4, -0x1

    #@f8
    new-array v11, v4, [C

    #@fa
    .line 3666
    .local v11, "tmp":[C
    move-object/from16 v0, v31

    #@fc
    array-length v4, v0

    #@fd
    add-int/lit8 v4, v4, -0x1

    #@ff
    const/4 v5, 0x1

    #@100
    const/4 v7, 0x0

    #@101
    move-object/from16 v0, v31

    #@103
    invoke-static {v0, v5, v11, v7, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@106
    .line 3667
    const/4 v10, 0x0

    #@107
    const/4 v13, -0x1

    #@108
    move-object/from16 v9, p0

    #@10a
    move-object/from16 v14, p3

    #@10c
    invoke-direct/range {v9 .. v14}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v4

    #@110
    move-object/from16 v0, p1

    #@112
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@115
    .line 3612
    .end local v6    # "mant":[C
    .end local v8    # "newW":I
    .end local v11    # "tmp":[C
    .end local v12    # "flags":Ljava/util/Formatter$Flags;
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v29    # "compPrec":I
    .end local v31    # "exp":[C
    .end local v32    # "mc":Ljava/math/MathContext;
    .end local v33    # "nzeros":I
    .end local v34    # "origPrec":I
    .end local v35    # "scale":I
    .end local v36    # "sign":C
    .end local v39    # "v":Ljava/math/BigDecimal;
    :cond_a
    :goto_5
    return-void

    #@116
    .line 3668
    :cond_b
    const/16 v4, 0x66

    #@118
    move/from16 v0, p5

    #@11a
    if-ne v0, v4, :cond_12

    #@11c
    .line 3670
    const/4 v4, -0x1

    #@11d
    move/from16 v0, p6

    #@11f
    if-ne v0, v4, :cond_f

    #@121
    const/16 v19, 0x6

    #@123
    .line 3671
    .restart local v19    # "prec":I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    #@126
    move-result v35

    #@127
    .line 3673
    .restart local v35    # "scale":I
    move/from16 v0, v35

    #@129
    move/from16 v1, v19

    #@12b
    if-le v0, v1, :cond_c

    #@12d
    .line 3675
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    #@130
    move-result v29

    #@131
    .line 3676
    .restart local v29    # "compPrec":I
    move/from16 v0, v29

    #@133
    move/from16 v1, v35

    #@135
    if-gt v0, v1, :cond_10

    #@137
    .line 3678
    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    #@139
    move-object/from16 v0, p2

    #@13b
    move/from16 v1, v19

    #@13d
    invoke-virtual {v0, v1, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    #@140
    move-result-object p2

    #@141
    .line 3686
    .end local v29    # "compPrec":I
    :cond_c
    :goto_7
    new-instance v28, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    #@143
    .line 3687
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    #@146
    move-result-object v4

    #@147
    .line 3688
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    #@14a
    move-result v5

    #@14b
    .line 3689
    sget-object v7, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    #@14d
    .line 3686
    move-object/from16 v0, v28

    #@14f
    move-object/from16 v1, p0

    #@151
    invoke-direct {v0, v1, v4, v5, v7}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    #@154
    .line 3691
    .restart local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    #@157
    move-result-object v6

    #@158
    .line 3692
    .restart local v6    # "mant":[C
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    #@15b
    move-result v4

    #@15c
    move/from16 v0, v19

    #@15e
    if-ge v4, v0, :cond_11

    #@160
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    #@163
    move-result v4

    #@164
    sub-int v33, v19, v4

    #@166
    .line 3699
    .restart local v33    # "nzeros":I
    :goto_8
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    #@169
    move-result v4

    #@16a
    if-nez v4, :cond_e

    #@16c
    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@16e
    move-object/from16 v0, p4

    #@170
    invoke-virtual {v0, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@173
    move-result v4

    #@174
    if-nez v4, :cond_d

    #@176
    if-lez v33, :cond_e

    #@178
    .line 3700
    :cond_d
    invoke-virtual/range {v28 .. v28}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    #@17b
    move-result-object v4

    #@17c
    move-object/from16 v0, p0

    #@17e
    invoke-direct {v0, v4}, Ljava/util/Formatter$FormatSpecifier;->addDot([C)[C

    #@181
    move-result-object v6

    #@182
    .line 3704
    :cond_e
    move-object/from16 v0, p0

    #@184
    move/from16 v1, v33

    #@186
    invoke-direct {v0, v6, v1}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros([CI)[C

    #@189
    move-result-object v6

    #@18a
    .line 3706
    move-object/from16 v0, p0

    #@18c
    iget v4, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@18e
    move-object/from16 v0, p0

    #@190
    move-object/from16 v1, p4

    #@192
    move/from16 v2, p7

    #@194
    invoke-direct {v0, v4, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    #@197
    move-result v17

    #@198
    move-object/from16 v13, p0

    #@19a
    move-object/from16 v14, p1

    #@19c
    move-object v15, v6

    #@19d
    move-object/from16 v16, p4

    #@19f
    move-object/from16 v18, p3

    #@1a1
    invoke-direct/range {v13 .. v18}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@1a4
    goto/16 :goto_5

    #@1a6
    .line 3670
    .end local v6    # "mant":[C
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v33    # "nzeros":I
    .end local v35    # "scale":I
    :cond_f
    move/from16 v19, p6

    #@1a8
    .restart local v19    # "prec":I
    goto/16 :goto_6

    #@1aa
    .line 3680
    .restart local v29    # "compPrec":I
    .restart local v35    # "scale":I
    :cond_10
    sub-int v4, v35, v19

    #@1ac
    sub-int v29, v29, v4

    #@1ae
    .line 3681
    new-instance v40, Ljava/math/BigDecimal;

    #@1b0
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    #@1b3
    move-result-object v4

    #@1b4
    .line 3683
    new-instance v5, Ljava/math/MathContext;

    #@1b6
    move/from16 v0, v29

    #@1b8
    invoke-direct {v5, v0}, Ljava/math/MathContext;-><init>(I)V

    #@1bb
    .line 3681
    move-object/from16 v0, v40

    #@1bd
    move/from16 v1, v35

    #@1bf
    invoke-direct {v0, v4, v1, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    #@1c2
    .end local p2    # "value":Ljava/math/BigDecimal;
    .local v40, "value":Ljava/math/BigDecimal;
    move-object/from16 p2, v40

    #@1c4
    .end local v40    # "value":Ljava/math/BigDecimal;
    .restart local p2    # "value":Ljava/math/BigDecimal;
    goto/16 :goto_7

    #@1c6
    .line 3692
    .end local v29    # "compPrec":I
    .restart local v6    # "mant":[C
    .restart local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    :cond_11
    const/16 v33, 0x0

    #@1c8
    .restart local v33    # "nzeros":I
    goto :goto_8

    #@1c9
    .line 3707
    .end local v6    # "mant":[C
    .end local v19    # "prec":I
    .end local v28    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v33    # "nzeros":I
    .end local v35    # "scale":I
    :cond_12
    const/16 v4, 0x67

    #@1cb
    move/from16 v0, p5

    #@1cd
    if-ne v0, v4, :cond_17

    #@1cf
    .line 3708
    move/from16 v19, p6

    #@1d1
    .line 3709
    .restart local v19    # "prec":I
    const/4 v4, -0x1

    #@1d2
    move/from16 v0, p6

    #@1d4
    if-ne v0, v4, :cond_15

    #@1d6
    .line 3710
    const/16 v19, 0x6

    #@1d8
    .line 3714
    :cond_13
    :goto_9
    const-wide/16 v4, 0x1

    #@1da
    const/4 v7, 0x4

    #@1db
    invoke-static {v4, v5, v7}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@1de
    move-result-object v37

    #@1df
    .line 3715
    .local v37, "tenToTheNegFour":Ljava/math/BigDecimal;
    const-wide/16 v4, 0x1

    #@1e1
    move/from16 v0, v19

    #@1e3
    neg-int v7, v0

    #@1e4
    invoke-static {v4, v5, v7}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    #@1e7
    move-result-object v38

    #@1e8
    .line 3716
    .local v38, "tenToThePrec":Ljava/math/BigDecimal;
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    #@1ea
    move-object/from16 v0, p2

    #@1ec
    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    #@1ef
    move-result v4

    #@1f0
    if-nez v4, :cond_14

    #@1f2
    .line 3717
    move-object/from16 v0, p2

    #@1f4
    move-object/from16 v1, v37

    #@1f6
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    #@1f9
    move-result v4

    #@1fa
    const/4 v5, -0x1

    #@1fb
    if-eq v4, v5, :cond_16

    #@1fd
    .line 3718
    move-object/from16 v0, p2

    #@1ff
    move-object/from16 v1, v38

    #@201
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    #@204
    move-result v4

    #@205
    const/4 v5, -0x1

    #@206
    if-ne v4, v5, :cond_16

    #@208
    .line 3720
    :cond_14
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    #@20b
    move-result v4

    #@20c
    neg-int v4, v4

    #@20d
    .line 3721
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    #@210
    move-result-object v5

    #@211
    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@214
    move-result-object v5

    #@215
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@218
    move-result v5

    #@219
    add-int/lit8 v5, v5, -0x1

    #@21b
    .line 3720
    add-int v30, v4, v5

    #@21d
    .line 3733
    .local v30, "e":I
    sub-int v4, v19, v30

    #@21f
    add-int/lit8 v19, v4, -0x1

    #@221
    .line 3735
    const/16 v18, 0x66

    #@223
    move-object/from16 v13, p0

    #@225
    move-object/from16 v14, p1

    #@227
    move-object/from16 v15, p2

    #@229
    move-object/from16 v16, p3

    #@22b
    move-object/from16 v17, p4

    #@22d
    move/from16 v20, p7

    #@22f
    invoke-direct/range {v13 .. v20}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    #@232
    goto/16 :goto_5

    #@234
    .line 3711
    .end local v30    # "e":I
    .end local v37    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .end local v38    # "tenToThePrec":Ljava/math/BigDecimal;
    :cond_15
    if-nez p6, :cond_13

    #@236
    .line 3712
    const/16 v19, 0x1

    #@238
    goto :goto_9

    #@239
    .line 3738
    .restart local v37    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .restart local v38    # "tenToThePrec":Ljava/math/BigDecimal;
    :cond_16
    add-int/lit8 v26, v19, -0x1

    #@23b
    const/16 v25, 0x65

    #@23d
    move-object/from16 v20, p0

    #@23f
    move-object/from16 v21, p1

    #@241
    move-object/from16 v22, p2

    #@243
    move-object/from16 v23, p3

    #@245
    move-object/from16 v24, p4

    #@247
    move/from16 v27, p7

    #@249
    invoke-direct/range {v20 .. v27}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    #@24c
    goto/16 :goto_5

    #@24e
    .line 3740
    .end local v19    # "prec":I
    .end local v37    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .end local v38    # "tenToThePrec":Ljava/math/BigDecimal;
    :cond_17
    const/16 v4, 0x61

    #@250
    move/from16 v0, p5

    #@252
    if-ne v0, v4, :cond_a

    #@254
    .line 3743
    sget-boolean v4, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@256
    if-nez v4, :cond_a

    #@258
    new-instance v4, Ljava/lang/AssertionError;

    #@25a
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@25d
    throw v4
.end method

.method private print(Ljava/math/BigDecimal;Ljava/util/Locale;)V
    .locals 8
    .param p1, "value"    # Ljava/math/BigDecimal;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3591
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@2
    const/16 v3, 0x61

    #@4
    if-ne v0, v3, :cond_0

    #@6
    .line 3592
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@8
    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    #@b
    .line 3593
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 3594
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    #@13
    move-result v0

    #@14
    const/4 v3, -0x1

    #@15
    if-ne v0, v3, :cond_1

    #@17
    const/4 v7, 0x1

    #@18
    .line 3595
    .local v7, "neg":Z
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    #@1b
    move-result-object v2

    #@1c
    .line 3597
    .local v2, "v":Ljava/math/BigDecimal;
    invoke-direct {p0, v1, v7}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    #@1f
    .line 3600
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@21
    iget-char v5, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@23
    iget v6, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@25
    move-object v0, p0

    #@26
    move-object v3, p2

    #@27
    invoke-direct/range {v0 .. v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    #@2a
    .line 3603
    invoke-direct {p0, v1, v7}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    #@2d
    .line 3606
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@2f
    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@3e
    .line 3590
    return-void

    #@3f
    .line 3594
    .end local v2    # "v":Ljava/math/BigDecimal;
    .end local v7    # "neg":Z
    :cond_1
    const/4 v7, 0x0

    #@40
    .restart local v7    # "neg":Z
    goto :goto_0
.end method

.method private print(Ljava/math/BigInteger;Ljava/util/Locale;)V
    .locals 12
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/16 v4, 0x30

    #@3
    .line 3205
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 3206
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@b
    move-result v0

    #@c
    if-ne v0, v11, :cond_1

    #@e
    const/4 v8, 0x1

    #@f
    .line 3207
    .local v8, "neg":Z
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@12
    move-result-object v10

    #@13
    .line 3210
    .local v10, "v":Ljava/math/BigInteger;
    invoke-direct {p0, v1, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    #@16
    .line 3213
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@18
    const/16 v3, 0x64

    #@1a
    if-ne v0, v3, :cond_2

    #@1c
    .line 3214
    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@23
    move-result-object v2

    #@24
    .line 3215
    .local v2, "va":[C
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@26
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@28
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@2a
    invoke-direct {p0, v0, v4, v8}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    #@2d
    move-result v4

    #@2e
    move-object v0, p0

    #@2f
    move-object v5, p2

    #@30
    invoke-direct/range {v0 .. v5}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    #@33
    .line 3254
    .end local v2    # "va":[C
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@36
    move-result v0

    #@37
    if-ne v0, v11, :cond_c

    #@39
    const/4 v0, 0x1

    #@3a
    :goto_2
    invoke-direct {p0, v1, v0}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    #@3d
    .line 3257
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@3f
    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@4e
    .line 3204
    return-void

    #@4f
    .line 3206
    .end local v8    # "neg":Z
    .end local v10    # "v":Ljava/math/BigInteger;
    :cond_1
    const/4 v8, 0x0

    #@50
    .restart local v8    # "neg":Z
    goto :goto_0

    #@51
    .line 3216
    .restart local v10    # "v":Ljava/math/BigInteger;
    :cond_2
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@53
    const/16 v3, 0x6f

    #@55
    if-ne v0, v3, :cond_6

    #@57
    .line 3217
    const/16 v0, 0x8

    #@59
    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    .line 3219
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@60
    move-result v0

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@64
    move-result v3

    #@65
    add-int v7, v0, v3

    #@67
    .line 3220
    .local v7, "len":I
    if-eqz v8, :cond_3

    #@69
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@6b
    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@6d
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@70
    move-result v0

    #@71
    if-eqz v0, :cond_3

    #@73
    .line 3221
    add-int/lit8 v7, v7, 0x1

    #@75
    .line 3224
    :cond_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@77
    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@79
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_4

    #@7f
    .line 3225
    add-int/lit8 v7, v7, 0x1

    #@81
    .line 3226
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@84
    .line 3228
    :cond_4
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@86
    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@88
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@8b
    move-result v0

    #@8c
    if-eqz v0, :cond_5

    #@8e
    .line 3229
    const/4 v6, 0x0

    #@8f
    .local v6, "i":I
    :goto_3
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@91
    sub-int/2addr v0, v7

    #@92
    if-ge v6, v0, :cond_5

    #@94
    .line 3230
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@97
    .line 3229
    add-int/lit8 v6, v6, 0x1

    #@99
    goto :goto_3

    #@9a
    .line 3232
    .end local v6    # "i":I
    :cond_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    goto :goto_1

    #@9e
    .line 3233
    .end local v7    # "len":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_6
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@a0
    const/16 v3, 0x78

    #@a2
    if-ne v0, v3, :cond_0

    #@a4
    .line 3234
    const/16 v0, 0x10

    #@a6
    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@a9
    move-result-object v9

    #@aa
    .line 3236
    .restart local v9    # "s":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@ad
    move-result v0

    #@ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@b1
    move-result v3

    #@b2
    add-int v7, v0, v3

    #@b4
    .line 3237
    .restart local v7    # "len":I
    if-eqz v8, :cond_7

    #@b6
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@b8
    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@ba
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@bd
    move-result v0

    #@be
    if-eqz v0, :cond_7

    #@c0
    .line 3238
    add-int/lit8 v7, v7, 0x1

    #@c2
    .line 3241
    :cond_7
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@c4
    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@c6
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@c9
    move-result v0

    #@ca
    if-eqz v0, :cond_8

    #@cc
    .line 3242
    add-int/lit8 v7, v7, 0x2

    #@ce
    .line 3243
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@d0
    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@d2
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@d5
    move-result v0

    #@d6
    if-eqz v0, :cond_9

    #@d8
    const-string/jumbo v0, "0X"

    #@db
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    .line 3245
    :cond_8
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@e0
    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    #@e2
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@e5
    move-result v0

    #@e6
    if-eqz v0, :cond_a

    #@e8
    .line 3246
    const/4 v6, 0x0

    #@e9
    .restart local v6    # "i":I
    :goto_5
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@eb
    sub-int/2addr v0, v7

    #@ec
    if-ge v6, v0, :cond_a

    #@ee
    .line 3247
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f1
    .line 3246
    add-int/lit8 v6, v6, 0x1

    #@f3
    goto :goto_5

    #@f4
    .line 3243
    .end local v6    # "i":I
    :cond_9
    const-string/jumbo v0, "0x"

    #@f7
    goto :goto_4

    #@f8
    .line 3248
    :cond_a
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@fa
    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@fc
    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@ff
    move-result v0

    #@100
    if-eqz v0, :cond_b

    #@102
    .line 3249
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@105
    move-result-object v9

    #@106
    .line 3250
    :cond_b
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    goto/16 :goto_1

    #@10b
    .line 3254
    .end local v7    # "len":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_c
    const/4 v0, 0x0

    #@10c
    goto/16 :goto_2
.end method

.method private print(Ljava/util/Calendar;CLjava/util/Locale;)V
    .locals 4
    .param p1, "t"    # Ljava/util/Calendar;
    .param p2, "c"    # C
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3906
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3907
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, p1, p2, p3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    #@8
    .line 3910
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 3911
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@12
    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@14
    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 3912
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 3914
    :cond_0
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@20
    invoke-static {v2}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@27
    .line 3904
    return-void
.end method

.method private print(SLjava/util/Locale;)V
    .locals 6
    .param p1, "value"    # S
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3103
    int-to-long v0, p1

    #@2
    .line 3104
    .local v0, "v":J
    if-gez p1, :cond_2

    #@4
    .line 3105
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@6
    const/16 v4, 0x6f

    #@8
    if-eq v3, v4, :cond_0

    #@a
    .line 3106
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@c
    const/16 v4, 0x78

    #@e
    if-ne v3, v4, :cond_2

    #@10
    .line 3107
    :cond_0
    const-wide/32 v4, 0x10000

    #@13
    add-long/2addr v0, v4

    #@14
    .line 3108
    sget-boolean v3, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@16
    if-nez v3, :cond_2

    #@18
    const-wide/16 v4, 0x0

    #@1a
    cmp-long v3, v0, v4

    #@1c
    if-ltz v3, :cond_1

    #@1e
    const/4 v2, 0x1

    #@1f
    :cond_1
    if-nez v2, :cond_2

    #@21
    new-instance v2, Ljava/lang/AssertionError;

    #@23
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2a
    throw v2

    #@2b
    .line 3110
    :cond_2
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    #@2e
    .line 3102
    return-void
.end method

.method private printBoolean(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2928
    if-eqz p1, :cond_1

    #@2
    .line 2929
    instance-of v1, p1, Ljava/lang/Boolean;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 2930
    check-cast p1, Ljava/lang/Boolean;

    #@8
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 2934
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    #@f
    .line 2926
    return-void

    #@10
    .line 2931
    .end local v0    # "s":Ljava/lang/String;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    #@11
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    #@16
    .line 2933
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@17
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method private printCharacter(Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2879
    if-nez p1, :cond_0

    #@2
    .line 2880
    const-string/jumbo v4, "null"

    #@5
    invoke-direct {p0, v4}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    #@8
    .line 2881
    return-void

    #@9
    .line 2883
    :cond_0
    const/4 v3, 0x0

    #@a
    .line 2884
    .local v3, "s":Ljava/lang/String;
    instance-of v4, p1, Ljava/lang/Character;

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 2885
    check-cast p1, Ljava/lang/Character;

    #@10
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 2907
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    #@17
    .line 2878
    return-void

    #@18
    .line 2886
    .restart local v3    # "s":Ljava/lang/String;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Ljava/lang/Byte;

    #@1a
    if-eqz v4, :cond_3

    #@1c
    .line 2887
    check-cast p1, Ljava/lang/Byte;

    #@1e
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    #@21
    move-result v0

    #@22
    .line 2888
    .local v0, "i":B
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_2

    #@28
    .line 2889
    new-instance v3, Ljava/lang/String;

    #@2a
    .end local v3    # "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    #@31
    .local v3, "s":Ljava/lang/String;
    goto :goto_0

    #@32
    .line 2891
    .local v3, "s":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    #@34
    invoke-direct {v4, v0}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    #@37
    throw v4

    #@38
    .line 2892
    .end local v0    # "i":B
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_3
    instance-of v4, p1, Ljava/lang/Short;

    #@3a
    if-eqz v4, :cond_5

    #@3c
    .line 2893
    check-cast p1, Ljava/lang/Short;

    #@3e
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    #@41
    move-result v2

    #@42
    .line 2894
    .local v2, "i":S
    invoke-static {v2}, Ljava/lang/Character;->isValidCodePoint(I)Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_4

    #@48
    .line 2895
    new-instance v3, Ljava/lang/String;

    #@4a
    .end local v3    # "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    #@4d
    move-result-object v4

    #@4e
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    #@51
    .local v3, "s":Ljava/lang/String;
    goto :goto_0

    #@52
    .line 2897
    .local v3, "s":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    #@54
    invoke-direct {v4, v2}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    #@57
    throw v4

    #@58
    .line 2898
    .end local v2    # "i":S
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_5
    instance-of v4, p1, Ljava/lang/Integer;

    #@5a
    if-eqz v4, :cond_7

    #@5c
    .line 2899
    check-cast p1, Ljava/lang/Integer;

    #@5e
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@61
    move-result v1

    #@62
    .line 2900
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_6

    #@68
    .line 2901
    new-instance v3, Ljava/lang/String;

    #@6a
    .end local v3    # "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    #@6d
    move-result-object v4

    #@6e
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    #@71
    .local v3, "s":Ljava/lang/String;
    goto :goto_0

    #@72
    .line 2903
    .local v3, "s":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/util/IllegalFormatCodePointException;

    #@74
    invoke-direct {v4, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    #@77
    throw v4

    #@78
    .line 2905
    .end local v1    # "i":I
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_7
    iget-char v4, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@7a
    invoke-direct {p0, v4, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    #@7d
    goto :goto_0
.end method

.method private printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2849
    if-nez p1, :cond_0

    #@2
    .line 2850
    const-string/jumbo v1, "null"

    #@5
    invoke-direct {p0, v1}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    #@8
    .line 2851
    return-void

    #@9
    .line 2853
    :cond_0
    const/4 v0, 0x0

    #@a
    .line 2857
    .local v0, "cal":Ljava/util/Calendar;
    instance-of v1, p1, Ljava/lang/Long;

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 2860
    if-nez p2, :cond_1

    #@10
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@12
    :goto_0
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@15
    move-result-object v0

    #@16
    .line 2861
    .local v0, "cal":Ljava/util/Calendar;
    check-cast p1, Ljava/lang/Long;

    #@18
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@1b
    move-result-wide v2

    #@1c
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@1f
    .line 2875
    .end local v0    # "cal":Ljava/util/Calendar;
    :goto_1
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@21
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/util/Calendar;CLjava/util/Locale;)V

    #@24
    .line 2848
    return-void

    #@25
    .local v0, "cal":Ljava/util/Calendar;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    move-object v1, p2

    #@26
    .line 2860
    goto :goto_0

    #@27
    .line 2862
    :cond_2
    instance-of v1, p1, Ljava/util/Date;

    #@29
    if-eqz v1, :cond_4

    #@2b
    .line 2865
    if-nez p2, :cond_3

    #@2d
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2f
    :goto_2
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@32
    move-result-object v0

    #@33
    .line 2866
    .local v0, "cal":Ljava/util/Calendar;
    check-cast p1, Ljava/util/Date;

    #@35
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@38
    goto :goto_1

    #@39
    .local v0, "cal":Ljava/util/Calendar;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_3
    move-object v1, p2

    #@3a
    .line 2865
    goto :goto_2

    #@3b
    .line 2867
    :cond_4
    instance-of v1, p1, Ljava/util/Calendar;

    #@3d
    if-eqz v1, :cond_5

    #@3f
    .line 2868
    check-cast p1, Ljava/util/Calendar;

    #@41
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    .end local v0    # "cal":Ljava/util/Calendar;
    check-cast v0, Ljava/util/Calendar;

    #@47
    .line 2869
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    #@48
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    #@4b
    goto :goto_1

    #@4c
    .line 2871
    .local v0, "cal":Ljava/util/Calendar;
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_5
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@4e
    invoke-direct {p0, v1, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    #@51
    goto :goto_1
.end method

.method private printFloat(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2836
    if-nez p1, :cond_0

    #@2
    .line 2837
    const-string/jumbo v0, "null"

    #@5
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    #@8
    .line 2835
    .end local p1    # "arg":Ljava/lang/Object;
    :goto_0
    return-void

    #@9
    .line 2838
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 2839
    check-cast p1, Ljava/lang/Float;

    #@f
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@12
    move-result v0

    #@13
    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(FLjava/util/Locale;)V

    #@16
    goto :goto_0

    #@17
    .line 2840
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 2841
    check-cast p1, Ljava/lang/Double;

    #@1d
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    #@20
    move-result-wide v0

    #@21
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    #@24
    goto :goto_0

    #@25
    .line 2842
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/math/BigDecimal;

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 2843
    check-cast p1, Ljava/math/BigDecimal;

    #@2b
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigDecimal;Ljava/util/Locale;)V

    #@2e
    goto :goto_0

    #@2f
    .line 2845
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_3
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@31
    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    #@34
    goto :goto_0
.end method

.method private printHashCode(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2938
    if-nez p1, :cond_0

    #@2
    .line 2939
    const-string/jumbo v0, "null"

    #@5
    .line 2941
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    #@8
    .line 2937
    return-void

    #@9
    .line 2940
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@c
    move-result v1

    #@d
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    goto :goto_0
.end method

.method private printInteger(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2819
    if-nez p1, :cond_0

    #@2
    .line 2820
    const-string/jumbo v0, "null"

    #@5
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    #@8
    .line 2818
    .end local p1    # "arg":Ljava/lang/Object;
    :goto_0
    return-void

    #@9
    .line 2821
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 2822
    check-cast p1, Ljava/lang/Byte;

    #@f
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    #@12
    move-result v0

    #@13
    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(BLjava/util/Locale;)V

    #@16
    goto :goto_0

    #@17
    .line 2823
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 2824
    check-cast p1, Ljava/lang/Short;

    #@1d
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    #@20
    move-result v0

    #@21
    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(SLjava/util/Locale;)V

    #@24
    goto :goto_0

    #@25
    .line 2825
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 2826
    check-cast p1, Ljava/lang/Integer;

    #@2b
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@2e
    move-result v0

    #@2f
    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(ILjava/util/Locale;)V

    #@32
    goto :goto_0

    #@33
    .line 2827
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 2828
    check-cast p1, Ljava/lang/Long;

    #@39
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@3c
    move-result-wide v0

    #@3d
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    #@40
    goto :goto_0

    #@41
    .line 2829
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/math/BigInteger;

    #@43
    if-eqz v0, :cond_5

    #@45
    .line 2830
    check-cast p1, Ljava/math/BigInteger;

    #@47
    .end local p1    # "arg":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigInteger;Ljava/util/Locale;)V

    #@4a
    goto :goto_0

    #@4b
    .line 2832
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_5
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@4d
    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    #@50
    goto :goto_0
.end method

.method private printString(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2911
    instance-of v2, p1, Ljava/util/Formattable;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2912
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@6
    .line 2913
    .local v0, "fmt":Ljava/util/Formatter;
    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    #@9
    move-result-object v2

    #@a
    if-eq v2, p2, :cond_0

    #@c
    .line 2914
    new-instance v1, Ljava/util/Formatter;

    #@e
    invoke-virtual {v0}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    #@11
    move-result-object v2

    #@12
    invoke-direct {v1, v2, p2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@15
    .end local v0    # "fmt":Ljava/util/Formatter;
    .local v1, "fmt":Ljava/util/Formatter;
    move-object v0, v1

    #@16
    .line 2915
    .end local v1    # "fmt":Ljava/util/Formatter;
    .restart local v0    # "fmt":Ljava/util/Formatter;
    :cond_0
    check-cast p1, Ljava/util/Formattable;

    #@18
    .end local p1    # "arg":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@1a
    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->valueOf()I

    #@1d
    move-result v2

    #@1e
    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@20
    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@22
    invoke-interface {p1, v0, v2, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    #@25
    .line 2910
    .end local v0    # "fmt":Ljava/util/Formatter;
    :goto_0
    return-void

    #@26
    .line 2917
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@28
    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@2a
    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 2918
    sget-object v2, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    #@32
    const/16 v3, 0x73

    #@34
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    #@37
    .line 2919
    :cond_2
    if-nez p1, :cond_3

    #@39
    .line 2920
    const-string/jumbo v2, "null"

    #@3c
    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    #@3f
    goto :goto_0

    #@40
    .line 2922
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-direct {p0, v2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;)V

    #@47
    goto :goto_0
.end method

.method private trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    #@0
    .prologue
    .line 3199
    if-eqz p2, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@4
    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 3200
    const/16 v0, 0x29

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    .line 3201
    :cond_0
    return-object p1
.end method

.method private trailingZeros([CI)[C
    .locals 4
    .param p1, "mant"    # [C
    .param p2, "nzeros"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3894
    move-object v1, p1

    #@2
    .line 3895
    .local v1, "tmp":[C
    if-lez p2, :cond_0

    #@4
    .line 3896
    array-length v2, p1

    #@5
    add-int/2addr v2, p2

    #@6
    new-array v1, v2, [C

    #@8
    .line 3897
    array-length v2, p1

    #@9
    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@c
    .line 3898
    array-length v0, p1

    #@d
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@e
    if-ge v0, v2, :cond_0

    #@10
    .line 3899
    const/16 v2, 0x30

    #@12
    aput-char v2, v1, v0

    #@14
    .line 3898
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 3901
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method private width(Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2691
    const/4 v1, -0x1

    #@1
    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@3
    .line 2692
    if-eqz p1, :cond_0

    #@5
    .line 2694
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8
    move-result v1

    #@9
    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@b
    .line 2695
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@d
    if-gez v1, :cond_0

    #@f
    .line 2696
    new-instance v1, Ljava/util/IllegalFormatWidthException;

    #@11
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@13
    invoke-direct {v1, v2}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    #@16
    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2697
    :catch_0
    move-exception v0

    #@18
    .line 2698
    .local v0, "x":Ljava/lang/NumberFormatException;
    sget-boolean v1, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@1a
    if-nez v1, :cond_0

    #@1c
    new-instance v1, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@21
    throw v1

    #@22
    .line 2701
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_0
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@24
    return v1
.end method


# virtual methods
.method flags()Ljava/util/Formatter$Flags;
    .locals 1

    #@0
    .prologue
    .line 2687
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@2
    return-object v0
.end method

.method public index()I
    .locals 1

    #@0
    .prologue
    .line 2676
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    #@2
    return v0
.end method

.method precision()I
    .locals 1

    #@0
    .prologue
    .line 2723
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@2
    return v0
.end method

.method public print(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2778
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2779
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V

    #@7
    .line 2780
    return-void

    #@8
    .line 2782
    :cond_0
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@a
    sparse-switch v0, :sswitch_data_0

    #@d
    .line 2814
    sget-boolean v0, Ljava/util/Formatter$FormatSpecifier;->-assertionsDisabled:Z

    #@f
    if-nez v0, :cond_1

    #@11
    new-instance v0, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v0

    #@17
    .line 2786
    :sswitch_0
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printInteger(Ljava/lang/Object;Ljava/util/Locale;)V

    #@1a
    .line 2777
    :cond_1
    :goto_0
    return-void

    #@1b
    .line 2792
    :sswitch_1
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printFloat(Ljava/lang/Object;Ljava/util/Locale;)V

    #@1e
    goto :goto_0

    #@1f
    .line 2796
    :sswitch_2
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printCharacter(Ljava/lang/Object;)V

    #@22
    goto :goto_0

    #@23
    .line 2799
    :sswitch_3
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printBoolean(Ljava/lang/Object;)V

    #@26
    goto :goto_0

    #@27
    .line 2802
    :sswitch_4
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printString(Ljava/lang/Object;Ljava/util/Locale;)V

    #@2a
    goto :goto_0

    #@2b
    .line 2805
    :sswitch_5
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->printHashCode(Ljava/lang/Object;)V

    #@2e
    goto :goto_0

    #@2f
    .line 2808
    :sswitch_6
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@31
    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    #@34
    move-result-object v0

    #@35
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@3c
    goto :goto_0

    #@3d
    .line 2811
    :sswitch_7
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    #@3f
    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    #@42
    move-result-object v0

    #@43
    const/16 v1, 0x25

    #@45
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@48
    goto :goto_0

    #@49
    .line 2782
    nop

    #@4a
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_7
        0x43 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_3
        0x63 -> :sswitch_2
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_5
        0x6e -> :sswitch_6
        0x6f -> :sswitch_0
        0x73 -> :sswitch_4
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2969
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    const-string/jumbo v2, "%"

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 2971
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@b
    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    #@e
    move-result-object v2

    #@f
    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@11
    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    #@14
    move-result-object v0

    #@15
    .line 2972
    .local v0, "dupf":Ljava/util/Formatter$Flags;
    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 2973
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    #@1e
    if-lez v2, :cond_0

    #@20
    .line 2974
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const/16 v3, 0x24

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 2975
    :cond_0
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@2d
    if-eq v2, v4, :cond_1

    #@2f
    .line 2976
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    .line 2977
    :cond_1
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@36
    if-eq v2, v4, :cond_2

    #@38
    .line 2978
    const/16 v2, 0x2e

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    .line 2979
    :cond_2
    iget-boolean v2, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    #@45
    if-eqz v2, :cond_3

    #@47
    .line 2980
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@49
    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@4b
    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_4

    #@51
    const/16 v2, 0x54

    #@53
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    .line 2981
    :cond_3
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    #@58
    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    #@5a
    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_5

    #@60
    .line 2982
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@62
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    #@65
    move-result v2

    #@66
    .line 2981
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@69
    .line 2983
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    return-object v2

    #@6e
    .line 2980
    :cond_4
    const/16 v2, 0x74

    #@70
    goto :goto_0

    #@71
    .line 2982
    :cond_5
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    #@73
    goto :goto_1
.end method

.method width()I
    .locals 1

    #@0
    .prologue
    .line 2705
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    #@2
    return v0
.end method
