.class Ljava/util/Formatter$FormatSpecifierParser;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatSpecifierParser"
.end annotation


# static fields
.field private static final FLAGS:Ljava/lang/String; = ",-(+# 0<"


# instance fields
.field private conv:Ljava/lang/String;

.field private cursor:I

.field private flags:Ljava/lang/String;

.field private final format:Ljava/lang/String;

.field private fs:Ljava/util/Formatter$FormatSpecifier;

.field private index:Ljava/lang/String;

.field private precision:Ljava/lang/String;

.field private tT:Ljava/lang/String;

.field final synthetic this$0:Ljava/util/Formatter;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Formatter;Ljava/lang/String;I)V
    .locals 9
    .param p1, "this$0"    # Ljava/util/Formatter;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "startIdx"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2550
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->this$0:Ljava/util/Formatter;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2551
    iput-object p2, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    #@8
    .line 2552
    iput p3, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    #@a
    .line 2554
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 2555
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    .line 2556
    .local v8, "nint":Ljava/lang/String;
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    #@17
    move-result v0

    #@18
    const/16 v1, 0x24

    #@1a
    if-ne v0, v1, :cond_1

    #@1c
    .line 2557
    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifierParser;->index:Ljava/lang/String;

    #@1e
    .line 2558
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@21
    .line 2568
    .end local v8    # "nint":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    #@24
    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    #@26
    .line 2569
    :goto_1
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    #@28
    if-nez v0, :cond_3

    #@2a
    const-string/jumbo v0, ",-(+# 0<"

    #@2d
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    #@30
    move-result v1

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@34
    move-result v0

    #@35
    if-ltz v0, :cond_3

    #@37
    .line 2570
    new-instance v0, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@45
    move-result v1

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    #@50
    goto :goto_1

    #@51
    .line 2559
    .restart local v8    # "nint":Ljava/lang/String;
    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    #@54
    move-result v0

    #@55
    const/16 v1, 0x30

    #@57
    if-ne v0, v1, :cond_2

    #@59
    .line 2561
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@5c
    move-result v0

    #@5d
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifierParser;->back(I)V

    #@60
    goto :goto_0

    #@61
    .line 2564
    :cond_2
    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    #@63
    goto :goto_0

    #@64
    .line 2573
    .end local v8    # "nint":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    #@66
    if-nez v0, :cond_4

    #@68
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_4

    #@6e
    .line 2574
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    #@74
    .line 2577
    :cond_4
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    #@77
    move-result v0

    #@78
    const/16 v1, 0x2e

    #@7a
    if-ne v0, v1, :cond_6

    #@7c
    .line 2578
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@7f
    .line 2579
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    #@82
    move-result v0

    #@83
    if-nez v0, :cond_5

    #@85
    .line 2580
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    #@87
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    #@8a
    move-result v1

    #@8b
    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    #@8e
    throw v0

    #@8f
    .line 2582
    :cond_5
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->precision:Ljava/lang/String;

    #@95
    .line 2585
    :cond_6
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    #@98
    move-result v0

    #@99
    const/16 v1, 0x74

    #@9b
    if-eq v0, v1, :cond_7

    #@9d
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    #@a0
    move-result v0

    #@a1
    const/16 v1, 0x54

    #@a3
    if-ne v0, v1, :cond_8

    #@a5
    .line 2586
    :cond_7
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@a8
    move-result v0

    #@a9
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@ac
    move-result-object v0

    #@ad
    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->tT:Ljava/lang/String;

    #@af
    .line 2589
    :cond_8
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@b2
    move-result v0

    #@b3
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@b6
    move-result-object v0

    #@b7
    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->conv:Ljava/lang/String;

    #@b9
    .line 2591
    new-instance v0, Ljava/util/Formatter$FormatSpecifier;

    #@bb
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->index:Ljava/lang/String;

    #@bd
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    #@bf
    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    #@c1
    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifierParser;->precision:Ljava/lang/String;

    #@c3
    iget-object v6, p0, Ljava/util/Formatter$FormatSpecifierParser;->tT:Ljava/lang/String;

    #@c5
    iget-object v7, p0, Ljava/util/Formatter$FormatSpecifierParser;->conv:Ljava/lang/String;

    #@c7
    move-object v1, p1

    #@c8
    invoke-direct/range {v0 .. v7}, Ljava/util/Formatter$FormatSpecifier;-><init>(Ljava/util/Formatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@cb
    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->fs:Ljava/util/Formatter$FormatSpecifier;

    #@cd
    .line 2550
    return-void
.end method

.method private advance()C
    .locals 3

    #@0
    .prologue
    .line 2614
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2615
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    #@8
    const-string/jumbo v1, "End of String"

    #@b
    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 2617
    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    #@11
    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    #@13
    add-int/lit8 v2, v1, 0x1

    #@15
    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method private back(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 2621
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    #@2
    sub-int/2addr v0, p1

    #@3
    iput v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    #@5
    .line 2620
    return-void
.end method

.method private isEnd()Z
    .locals 2

    #@0
    .prologue
    .line 2625
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    #@2
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private nextInt()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2595
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    #@2
    .line 2596
    .local v0, "strBegin":I
    :goto_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2597
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    #@b
    goto :goto_0

    #@c
    .line 2599
    :cond_0
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    #@e
    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    #@10
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method private nextIsInt()Z
    .locals 1

    #@0
    .prologue
    .line 2603
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private peek()C
    .locals 2

    #@0
    .prologue
    .line 2607
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2608
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    #@8
    const-string/jumbo v1, "End of String"

    #@b
    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 2610
    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    #@11
    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    return v0
.end method


# virtual methods
.method public getEndIdx()I
    .locals 1

    #@0
    .prologue
    .line 2633
    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    #@2
    return v0
.end method

.method public getFormatSpecifier()Ljava/util/Formatter$FormatSpecifier;
    .locals 1

    #@0
    .prologue
    .line 2629
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->fs:Ljava/util/Formatter$FormatSpecifier;

    #@2
    return-object v0
.end method
