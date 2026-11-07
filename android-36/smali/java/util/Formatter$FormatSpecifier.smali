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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o c:C

.field private greylist-max-o dt:Z

.field private greylist-max-o f:Ljava/util/Formatter$Flags;

.field private greylist-max-o index:I

.field private greylist-max-o precision:I

.field final synthetic blacklist this$0:Ljava/util/Formatter;

.field private greylist-max-o width:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtrailingZeros(Ljava/util/Formatter$FormatSpecifier;Ljava/lang/StringBuilder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros(Ljava/lang/StringBuilder;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2902
    const-class v0, Ljava/util/Formatter;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Formatter;C)V
    .registers 4
    .param p2, "conv"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3025
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2904
    const/4 p1, 0x0

    iput p1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2905
    sget-object v0, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 2906
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 2907
    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    .line 2908
    iput-boolean p1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    .line 3026
    iput-char p2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 3027
    invoke-static {p2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 3028
    sget-object p1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 3029
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 3031
    :cond_25
    invoke-static {p2}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 3032
    const/4 p1, -0x2

    iput p1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 3034
    :cond_2e
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Formatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p2, "indexStr"    # Ljava/lang/String;
    .param p3, "flagsStr"    # Ljava/lang/String;
    .param p4, "widthStr"    # Ljava/lang/String;
    .param p5, "precisionStr"    # Ljava/lang/String;
    .param p6, "tTStr"    # Ljava/lang/String;
    .param p7, "convStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3038
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2904
    const/4 p1, 0x0

    iput p1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2905
    sget-object v0, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 2906
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 2907
    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    .line 2908
    iput-boolean p1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    .line 3039
    invoke-direct {p0, p2}, Ljava/util/Formatter$FormatSpecifier;->index(Ljava/lang/String;)V

    .line 3040
    invoke-direct {p0, p3}, Ljava/util/Formatter$FormatSpecifier;->flags(Ljava/lang/String;)V

    .line 3041
    invoke-direct {p0, p4}, Ljava/util/Formatter$FormatSpecifier;->width(Ljava/lang/String;)V

    .line 3042
    invoke-direct {p0, p5}, Ljava/util/Formatter$FormatSpecifier;->precision(Ljava/lang/String;)V

    .line 3044
    if-eqz p6, :cond_33

    .line 3045
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    .line 3046
    const-string v0, "T"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3047
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-static {v0, v1}, Ljava/util/Formatter$Flags;->-$$Nest$madd(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    .line 3051
    :cond_33
    invoke-virtual {p7, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifier;->conversion(C)V

    .line 3053
    iget-boolean p1, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz p1, :cond_42

    .line 3054
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkDateTime()V

    goto :goto_7d

    .line 3055
    :cond_42
    iget-char p1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {p1}, Ljava/util/Formatter$Conversion;->isGeneral(C)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 3056
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkGeneral()V

    goto :goto_7d

    .line 3057
    :cond_4e
    iget-char p1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {p1}, Ljava/util/Formatter$Conversion;->isCharacter(C)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 3058
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkCharacter()V

    goto :goto_7d

    .line 3059
    :cond_5a
    iget-char p1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {p1}, Ljava/util/Formatter$Conversion;->isInteger(C)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 3060
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkInteger()V

    goto :goto_7d

    .line 3061
    :cond_66
    iget-char p1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {p1}, Ljava/util/Formatter$Conversion;->isFloat(C)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 3062
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkFloat()V

    goto :goto_7d

    .line 3063
    :cond_72
    iget-char p1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {p1}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 3064
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkText()V

    .line 3067
    :goto_7d
    return-void

    .line 3066
    :cond_7e
    new-instance p1, Ljava/util/UnknownFormatConversionException;

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist addZeros(Ljava/lang/StringBuilder;I)V
    .registers 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prec"    # I

    .line 3752
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 3754
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/16 v2, 0x2e

    if-ge v1, v0, :cond_13

    .line 3755
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_10

    .line 3756
    goto :goto_13

    .line 3754
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3759
    :cond_13
    :goto_13
    const/4 v3, 0x0

    .line 3760
    .local v3, "needDot":Z
    if-ne v1, v0, :cond_17

    .line 3761
    const/4 v3, 0x1

    .line 3765
    :cond_17
    sub-int v4, v0, v1

    xor-int/lit8 v5, v3, 0x1

    sub-int/2addr v4, v5

    .line 3766
    .local v4, "outPrec":I
    nop

    .line 3767
    if-ne v4, p2, :cond_20

    .line 3768
    return-void

    .line 3772
    :cond_20
    if-eqz v3, :cond_25

    .line 3773
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3777
    :cond_25
    sub-int v2, p2, v4

    invoke-direct {p0, p1, v2}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros(Ljava/lang/StringBuilder;I)V

    .line 3778
    return-void
.end method

.method private greylist-max-o adjustWidth(ILjava/util/Formatter$Flags;Z)I
    .registers 6
    .param p1, "width"    # I
    .param p2, "f"    # Ljava/util/Formatter$Flags;
    .param p3, "neg"    # Z

    .line 4135
    move v0, p1

    .line 4136
    .local v0, "newW":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    if-eqz p3, :cond_10

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {p2, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4137
    add-int/lit8 v0, v0, -0x1

    .line 4138
    :cond_10
    return v0
.end method

.method private blacklist appendJustified(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "a"    # Ljava/lang/Appendable;
    .param p2, "cs"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3252
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 3253
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3254
    return-void

    .line 3256
    :cond_9
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    .line 3257
    .local v0, "padRight":Z
    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3258
    .local v1, "sp":I
    if-eqz v0, :cond_1d

    .line 3259
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3261
    :cond_1d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v1, :cond_28

    .line 3262
    const/16 v3, 0x20

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 3261
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 3264
    .end local v2    # "i":I
    :cond_28
    if-nez v0, :cond_2d

    .line 3265
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3267
    :cond_2d
    return-void
.end method

.method private varargs blacklist checkBadFlags([Ljava/util/Formatter$Flags;)V
    .registers 6
    .param p1, "badFlags"    # [Ljava/util/Formatter$Flags;

    .line 3334
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    .line 3335
    .local v2, "badFlag":Ljava/util/Formatter$Flags;
    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v2}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3336
    iget-char v3, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 3334
    .end local v2    # "badFlag":Ljava/util/Formatter$Flags;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3337
    :cond_16
    return-void
.end method

.method private greylist-max-o checkCharacter()V
    .registers 5

    .line 3311
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_43

    .line 3313
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3316
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_42

    .line 3317
    :cond_38
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3318
    :cond_42
    :goto_42
    return-void

    .line 3312
    :cond_43
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0
.end method

.method private greylist-max-o checkDateTime()V
    .registers 5

    .line 3299
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_66

    .line 3301
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$DateTime;->isValid(C)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3303
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v3, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3306
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_4a

    .line 3307
    :cond_40
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3308
    :cond_4a
    :goto_4a
    return-void

    .line 3302
    :cond_4b
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3300
    :cond_66
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0
.end method

.method private greylist-max-o checkFloat()V
    .registers 5

    .line 3340
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    .line 3341
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x66

    if-ne v0, v1, :cond_a

    goto :goto_40

    .line 3342
    :cond_a
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x61

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_21

    .line 3343
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_40

    .line 3344
    :cond_21
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_31

    .line 3345
    new-array v0, v2, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_40

    .line 3346
    :cond_31
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_40

    .line 3347
    new-array v0, v2, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3349
    :cond_40
    :goto_40
    return-void
.end method

.method private greylist-max-o checkGeneral()V
    .registers 4

    .line 3288
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x62

    if-eq v0, v1, :cond_c

    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1d

    :cond_c
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    .line 3289
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3290
    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 3292
    :cond_1d
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_37

    .line 3293
    :cond_2d
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3294
    :cond_37
    :goto_37
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Formatter$Flags;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3296
    return-void
.end method

.method private greylist-max-o checkInteger()V
    .registers 5

    .line 3321
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifier;->checkNumeric()V

    .line 3322
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 3325
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    .line 3326
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_33

    .line 3327
    :cond_1a
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_2a

    .line 3328
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    goto :goto_33

    .line 3330
    :cond_2a
    new-array v0, v3, [Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3331
    :goto_33
    return-void

    .line 3323
    :cond_34
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0
.end method

.method private greylist-max-o checkNumeric()V
    .registers 3

    .line 3352
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ltz v0, :cond_a

    goto :goto_12

    .line 3353
    :cond_a
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v0

    .line 3355
    :cond_12
    :goto_12
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v0, v1, :cond_23

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-ltz v0, :cond_1b

    goto :goto_23

    .line 3356
    :cond_1b
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3359
    :cond_23
    :goto_23
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    .line 3360
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_46

    .line 3361
    :cond_3c
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3364
    :cond_46
    :goto_46
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_6f

    :cond_5a
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    .line 3365
    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto :goto_7b

    .line 3366
    :cond_6f
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3367
    :cond_7b
    :goto_7b
    return-void
.end method

.method private greylist-max-o checkText()V
    .registers 4

    .line 3370
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_75

    .line 3372
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    sparse-switch v0, :sswitch_data_7e

    .line 3388
    goto :goto_74

    .line 3382
    :sswitch_b
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_2a

    .line 3384
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_1e

    goto :goto_74

    .line 3385
    :cond_1e
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3383
    :cond_2a
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v0

    .line 3374
    :sswitch_32
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v2, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v2

    if-eq v0, v2, :cond_5b

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 3375
    invoke-virtual {v0}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v0

    sget-object v2, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v2

    if-ne v0, v2, :cond_4f

    goto :goto_5b

    .line 3376
    :cond_4f
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3378
    :cond_5b
    :goto_5b
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_74

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_74

    .line 3379
    :cond_6a
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3390
    :cond_74
    :goto_74
    return-void

    .line 3371
    :cond_75
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    nop

    :sswitch_data_7e
    .sparse-switch
        0x25 -> :sswitch_32
        0x6e -> :sswitch_b
    .end sparse-switch
.end method

.method private blacklist conversion(C)V
    .registers 4
    .param p1, "conv"    # C

    .line 3010
    iput-char p1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 3011
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-nez v0, :cond_3d

    .line 3012
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isValid(C)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3015
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3016
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-static {v0, v1}, Ljava/util/Formatter$Flags;->-$$Nest$madd(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    .line 3017
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 3019
    :cond_25
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/util/Formatter$Conversion;->isText(C)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3020
    const/4 v0, -0x2

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    goto :goto_3d

    .line 3013
    :cond_31
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3023
    :cond_3d
    :goto_3d
    return-void
.end method

.method private greylist-max-o failConversion(CLjava/lang/Object;)V
    .registers 5
    .param p1, "c"    # C
    .param p2, "arg"    # Ljava/lang/Object;

    .line 4608
    new-instance v0, Ljava/util/IllegalFormatConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v0
.end method

.method private greylist-max-o failMismatch(Ljava/util/Formatter$Flags;C)V
    .registers 5
    .param p1, "f"    # Ljava/util/Formatter$Flags;
    .param p2, "c"    # C

    .line 4603
    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4604
    .local v0, "fs":Ljava/lang/String;
    new-instance v1, Ljava/util/FormatFlagsConversionMismatchException;

    invoke-direct {v1, v0, p2}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v1
.end method

.method private blacklist flags(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 2960
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Ljava/util/Formatter$Flags;->parse(Ljava/lang/String;II)Ljava/util/Formatter$Flags;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    .line 2961
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2962
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2963
    :cond_18
    return-void
.end method

.method private greylist-max-o getZero(Ljava/util/Locale;)C
    .registers 4
    .param p1, "l"    # Ljava/util/Locale;

    .line 4612
    if-eqz p1, :cond_1b

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 4615
    invoke-static {p1}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p1

    .line 4616
    invoke-static {p1}, Llibcore/icu/DecimalFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/DecimalFormatData;

    move-result-object v0

    .line 4617
    .local v0, "decimalFormatData":Llibcore/icu/DecimalFormatData;
    invoke-virtual {v0}, Llibcore/icu/DecimalFormatData;->getZeroDigit()C

    move-result v1

    return v1

    .line 4621
    .end local v0    # "decimalFormatData":Llibcore/icu/DecimalFormatData;
    :cond_1b
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-$$Nest$mzero(Ljava/util/Formatter;)C

    move-result v0

    return v0
.end method

.method private greylist-max-o hexDouble(DI)Ljava/lang/String;
    .registers 30
    .param p1, "d"    # D
    .param p3, "prec"    # I

    .line 3783
    move/from16 v0, p3

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_eb

    const-wide/16 v3, 0x0

    cmpl-double v1, p1, v3

    if-eqz v1, :cond_eb

    if-eqz v0, :cond_eb

    const/16 v1, 0xd

    if-lt v0, v1, :cond_17

    goto/16 :goto_eb

    .line 3787
    :cond_17
    nop

    .line 3789
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    .line 3790
    .local v1, "exponent":I
    const/16 v3, -0x3ff

    const/4 v5, 0x1

    if-ne v1, v3, :cond_23

    move v3, v5

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    .line 3795
    .local v3, "subnormal":Z
    :goto_24
    const/16 v6, 0x36

    if-eqz v3, :cond_35

    .line 3796
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8, v6}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v7

    .line 3797
    .local v7, "scaleUp":D
    mul-double v9, p1, v7

    .line 3800
    .end local p1    # "d":D
    .local v9, "d":D
    invoke-static {v9, v10}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    .line 3801
    goto :goto_37

    .line 3795
    .end local v7    # "scaleUp":D
    .end local v9    # "d":D
    .restart local p1    # "d":D
    :cond_35
    move-wide/from16 v9, p1

    .line 3805
    .end local p1    # "d":D
    .restart local v9    # "d":D
    :goto_37
    mul-int/lit8 v7, v0, 0x4

    add-int/2addr v7, v5

    .line 3806
    .local v7, "precision":I
    rsub-int/lit8 v8, v7, 0x35

    .line 3808
    .local v8, "shiftDistance":I
    nop

    .line 3810
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v11

    .line 3812
    .local v11, "doppel":J
    const-wide v13, 0x7fffffffffffffffL

    and-long/2addr v13, v11

    shr-long/2addr v13, v8

    .line 3817
    .local v13, "newSignif":J
    const-wide/16 v15, -0x1

    move/from16 v17, v6

    move/from16 p1, v7

    .end local v7    # "precision":I
    .local p1, "precision":I
    shl-long v6, v15, v8

    not-long v6, v6

    and-long/2addr v6, v11

    .line 3824
    .local v6, "roundingBits":J
    const-wide/16 v15, 0x1

    and-long v18, v13, v15

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_5f

    move/from16 v18, v5

    goto :goto_61

    :cond_5f
    const/16 v18, 0x0

    .line 3825
    .local v18, "leastZero":Z
    :goto_61
    add-int/lit8 v19, v8, -0x1

    shl-long v22, v15, v19

    and-long v22, v22, v6

    cmp-long v19, v22, v20

    if-eqz v19, :cond_6e

    move/from16 v19, v5

    goto :goto_70

    :cond_6e
    const/16 v19, 0x0

    .line 3827
    .local v19, "round":Z
    :goto_70
    if-le v8, v5, :cond_81

    add-int/lit8 v22, v8, -0x1

    move-wide/from16 v24, v6

    .end local v6    # "roundingBits":J
    .local v24, "roundingBits":J
    shl-long v5, v15, v22

    not-long v5, v5

    and-long v5, v5, v24

    cmp-long v5, v5, v20

    if-eqz v5, :cond_83

    const/4 v5, 0x1

    goto :goto_84

    .end local v24    # "roundingBits":J
    .restart local v6    # "roundingBits":J
    :cond_81
    move-wide/from16 v24, v6

    .end local v6    # "roundingBits":J
    .restart local v24    # "roundingBits":J
    :cond_83
    const/4 v5, 0x0

    .line 3829
    .local v5, "sticky":Z
    :goto_84
    if-eqz v18, :cond_8a

    if-eqz v19, :cond_8a

    if-nez v5, :cond_8e

    :cond_8a
    if-nez v18, :cond_8f

    if-eqz v19, :cond_8f

    .line 3830
    :cond_8e
    add-long/2addr v13, v15

    .line 3833
    :cond_8f
    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v6, v11

    .line 3834
    .local v6, "signBit":J
    shl-long v15, v13, v8

    or-long v13, v6, v15

    .line 3835
    invoke-static {v13, v14}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v15

    .line 3837
    .local v15, "result":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v20

    if-eqz v20, :cond_a3

    .line 3839
    const-string v2, "1.0p1024"

    return-object v2

    .line 3841
    :cond_a3
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3842
    .local v2, "res":Ljava/lang/String;
    if-nez v3, :cond_ae

    .line 3843
    return-object v2

    .line 3846
    :cond_ae
    const/16 v4, 0x70

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 3847
    .local v4, "idx":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_ba

    .line 3849
    nop

    .line 3850
    const/4 v0, 0x0

    return-object v0

    .line 3853
    :cond_ba
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3854
    .local v0, "exp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, -0x36

    .line 3855
    .local v21, "iexp":I
    move-object/from16 p2, v0

    .end local v0    # "exp":Ljava/lang/String;
    .local p2, "exp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "exponent":I
    .local v17, "exponent":I
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3856
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3855
    return-object v0

    .line 3785
    .end local v2    # "res":Ljava/lang/String;
    .end local v3    # "subnormal":Z
    .end local v4    # "idx":I
    .end local v5    # "sticky":Z
    .end local v6    # "signBit":J
    .end local v8    # "shiftDistance":I
    .end local v9    # "d":D
    .end local v11    # "doppel":J
    .end local v13    # "newSignif":J
    .end local v15    # "result":D
    .end local v17    # "exponent":I
    .end local v18    # "leastZero":Z
    .end local v19    # "round":Z
    .end local v21    # "iexp":I
    .end local v24    # "roundingBits":J
    .end local p2    # "exp":Ljava/lang/String;
    .local p1, "d":D
    :cond_eb
    :goto_eb
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist index(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 2928
    if-eqz p1, :cond_2f

    .line 2931
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    .line 2933
    invoke-static {}, Ljava/util/Formatter;->-$$Nest$smisStrictValidationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2934
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    if-lez v0, :cond_13

    goto :goto_1b

    .line 2935
    :cond_13
    new-instance v0, Ljava/util/IllegalFormatArgumentIndexException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatArgumentIndexException;-><init>(I)V

    .end local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .end local p1    # "s":Ljava/lang/String;
    throw v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 2947
    .restart local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .restart local p1    # "s":Ljava/lang/String;
    :cond_1b
    :goto_1b
    goto :goto_2f

    .line 2938
    :catch_1c
    move-exception v0

    .line 2940
    .local v0, "x":Ljava/lang/NumberFormatException;
    invoke-static {}, Ljava/util/Formatter;->-$$Nest$smisStrictValidationEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    .line 2945
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    goto :goto_2f

    .line 2941
    :cond_27
    new-instance v1, Ljava/util/IllegalFormatArgumentIndexException;

    const/high16 v2, -0x80000000

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatArgumentIndexException;-><init>(I)V

    throw v1

    .line 2949
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_2f
    :goto_2f
    return-void
.end method

.method private greylist-max-o leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    .line 3480
    if-nez p2, :cond_22

    .line 3481
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3482
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 3483
    :cond_12
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3484
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 3487
    :cond_22
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3488
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 3490
    :cond_32
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3492
    :cond_37
    :goto_37
    return-object p1
.end method

.method private greylist-max-o localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .registers 15
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # J
    .param p4, "f"    # Ljava/util/Formatter$Flags;
    .param p5, "width"    # I
    .param p6, "l"    # Ljava/util/Locale;

    .line 4626
    const/16 v0, 0xa

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .end local p4    # "f":Ljava/util/Formatter$Flags;
    .end local p5    # "width":I
    .end local p6    # "l":Ljava/util/Locale;
    .local v2, "sb":Ljava/lang/StringBuilder;
    .local v5, "f":Ljava/util/Formatter$Flags;
    .local v6, "width":I
    .local v7, "l":Ljava/util/Locale;
    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;ILjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private blacklist localizedMagnitude(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;ILjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .registers 23
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "offset"    # I
    .param p4, "f"    # Ljava/util/Formatter$Flags;
    .param p5, "width"    # I
    .param p6, "l"    # Ljava/util/Locale;

    .line 4632
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    if-nez p1, :cond_10

    .line 4633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    goto :goto_12

    .line 4632
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_10
    move-object/from16 v4, p1

    .line 4635
    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 4637
    .local v5, "begin":I
    move-object/from16 v6, p0

    invoke-direct {v6, v3}, Ljava/util/Formatter$FormatSpecifier;->getZero(Ljava/util/Locale;)C

    move-result v7

    .line 4640
    .local v7, "zero":C
    const/4 v8, 0x0

    .line 4641
    .local v8, "grpSep":C
    const/4 v9, -0x1

    .line 4642
    .local v9, "grpSize":I
    const/4 v10, 0x0

    .line 4644
    .local v10, "decSep":C
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 4645
    .local v11, "len":I
    move v12, v11

    .line 4646
    .local v12, "dot":I
    move/from16 v13, p3

    .local v13, "j":I
    :goto_26
    if-ge v13, v11, :cond_35

    .line 4647
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-ne v14, v15, :cond_32

    .line 4648
    move v12, v13

    .line 4649
    goto :goto_35

    .line 4646
    :cond_32
    add-int/lit8 v13, v13, 0x1

    goto :goto_26

    .line 4653
    .end local v13    # "j":I
    :cond_35
    :goto_35
    if-ge v12, v11, :cond_4d

    .line 4654
    if-eqz v3, :cond_4b

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_42

    goto :goto_4b

    .line 4657
    :cond_42
    invoke-static {v3}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v13

    .line 4658
    .local v13, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v13}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v10

    goto :goto_4d

    .line 4655
    .end local v13    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_4b
    :goto_4b
    const/16 v10, 0x2e

    .line 4662
    :cond_4d
    :goto_4d
    sget-object v13, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v1, v13}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v13

    if-eqz v13, :cond_7f

    .line 4663
    if-eqz v3, :cond_7c

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_60

    goto :goto_7c

    .line 4667
    :cond_60
    invoke-static {v3}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v13

    .line 4668
    .restart local v13    # "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v13}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v8

    .line 4690
    invoke-static {v3}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v14

    check-cast v14, Ljava/text/DecimalFormat;

    .line 4691
    .local v14, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v14}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v9

    .line 4693
    invoke-virtual {v14}, Ljava/text/DecimalFormat;->isGroupingUsed()Z

    move-result v15

    if-eqz v15, :cond_7a

    if-nez v9, :cond_7f

    .line 4694
    :cond_7a
    const/4 v8, 0x0

    goto :goto_7f

    .line 4664
    .end local v13    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v14    # "df":Ljava/text/DecimalFormat;
    :cond_7c
    :goto_7c
    const/16 v8, 0x2c

    .line 4665
    const/4 v9, 0x3

    .line 4700
    :cond_7f
    :goto_7f
    move/from16 v13, p3

    .local v13, "j":I
    :goto_81
    if-ge v13, v11, :cond_a9

    .line 4701
    if-ne v13, v12, :cond_8a

    .line 4702
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4704
    const/4 v8, 0x0

    .line 4705
    goto :goto_a4

    .line 4708
    :cond_8a
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .line 4709
    .local v14, "c":C
    add-int/lit8 v15, v14, -0x30

    add-int/2addr v15, v7

    int-to-char v15, v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4710
    if-eqz v8, :cond_a4

    add-int/lit8 v15, v12, -0x1

    if-eq v13, v15, :cond_a4

    sub-int v15, v12, v13

    rem-int/2addr v15, v9

    const/4 v0, 0x1

    if-ne v15, v0, :cond_a4

    .line 4711
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4700
    .end local v14    # "c":C
    :cond_a4
    :goto_a4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    goto :goto_81

    .line 4716
    .end local v13    # "j":I
    :cond_a9
    const/4 v0, -0x1

    if-eq v2, v0, :cond_c0

    sget-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v1, v0}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 4717
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .local v0, "k":I
    :goto_b8
    if-ge v0, v2, :cond_c0

    .line 4718
    invoke-virtual {v4, v5, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4717
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 4722
    .end local v0    # "k":I
    :cond_c0
    return-object v4
.end method

.method private blacklist localizedMagnitudeExp(Ljava/lang/StringBuilder;[CILjava/util/Locale;)V
    .registers 10
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # [C
    .param p3, "offset"    # I
    .param p4, "l"    # Ljava/util/Locale;

    .line 4730
    invoke-direct {p0, p4}, Ljava/util/Formatter$FormatSpecifier;->getZero(Ljava/util/Locale;)C

    move-result v0

    .line 4732
    .local v0, "zero":C
    array-length v1, p2

    .line 4733
    .local v1, "len":I
    move v2, p3

    .local v2, "j":I
    :goto_6
    if-ge v2, v1, :cond_14

    .line 4734
    aget-char v3, p2, v2

    .line 4735
    .local v3, "c":C
    add-int/lit8 v4, v3, -0x30

    add-int/2addr v4, v0

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4733
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4737
    .end local v2    # "j":I
    :cond_14
    return-void
.end method

.method private blacklist precision(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 2989
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    .line 2991
    if-eqz p1, :cond_28

    .line 2996
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    .line 2997
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-ltz v0, :cond_10

    .line 3005
    goto :goto_28

    .line 2998
    :cond_10
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    .end local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .end local p1    # "s":Ljava/lang/String;
    throw v0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_18} :catch_18

    .line 2999
    .restart local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .restart local p1    # "s":Ljava/lang/String;
    :catch_18
    move-exception v0

    .line 3002
    .local v0, "x":Ljava/lang/NumberFormatException;
    invoke-static {}, Ljava/util/Formatter;->-$$Nest$smisStrictValidationEnabled()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_28

    .line 3003
    :cond_20
    new-instance v1, Ljava/util/IllegalFormatPrecisionException;

    const/high16 v2, -0x80000000

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v1

    .line 3007
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_28
    :goto_28
    return-void
.end method

.method private greylist-max-o print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;
    .registers 21
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "c"    # C
    .param p4, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4376
    move-object/from16 v8, p2

    move/from16 v9, p3

    if-nez p1, :cond_d

    .line 4377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v0, "sb":Ljava/lang/StringBuilder;
    goto :goto_f

    .line 4376
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_d
    move-object/from16 v10, p1

    .line 4379
    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v10, "sb":Ljava/lang/StringBuilder;
    :goto_f
    const/16 v0, 0x53

    const/16 v1, 0x54

    const/16 v2, 0x4d

    const/16 v3, 0x59

    const/16 v4, 0x6d

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x64

    packed-switch v9, :pswitch_data_3d2

    .line 4592
    :pswitch_20
    move-object/from16 v7, p4

    goto/16 :goto_3d0

    .line 4455
    :pswitch_24
    :try_start_24
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4456
    .local v0, "i":I
    if-gez v0, :cond_2d

    move v5, v6

    :cond_2d
    move v11, v5

    .line 4457
    .local v11, "neg":Z
    if-eqz v11, :cond_33

    const/16 v1, 0x2d

    goto :goto_35

    :cond_33
    const/16 v1, 0x2b

    :goto_35
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4458
    if-eqz v11, :cond_3b

    .line 4459
    neg-int v0, v0

    .line 4460
    :cond_3b
    div-int/lit8 v1, v0, 0x3c

    move v12, v1

    .line 4462
    .local v12, "min":I
    div-int/lit8 v1, v12, 0x3c

    mul-int/2addr v1, v7

    rem-int/lit8 v2, v12, 0x3c

    add-int v13, v1, v2

    .line 4463
    .local v13, "offset":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;
    :try_end_47
    .catch Ljava/time/DateTimeException; {:try_start_24 .. :try_end_47} :catch_59

    .line 4464
    .local v5, "flags":Ljava/util/Formatter$Flags;
    int-to-long v3, v13

    const/4 v6, 0x4

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    :try_start_4e
    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4465
    move-object/from16 v7, p4

    goto/16 :goto_3d0

    .line 4594
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    .end local v11    # "neg":Z
    .end local v12    # "min":I
    .end local v13    # "offset":I
    :catch_59
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_2e1

    .line 4443
    :pswitch_5e
    move-object/from16 v1, p0

    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    .line 4444
    .local v3, "i":J
    sget-object v5, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4445
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    iget v6, v1, Ljava/util/Formatter$FormatSpecifier;->width:I
    :try_end_6a
    .catch Ljava/time/DateTimeException; {:try_start_4e .. :try_end_6a} :catch_2e0

    const/4 v2, 0x0

    move-object/from16 v7, p4

    :try_start_6d
    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4446
    goto/16 :goto_3d0

    .line 4557
    .end local v3    # "i":J
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_76
    move-object/from16 v1, p0

    move-object/from16 v7, p4

    const/16 v3, 0x3a

    .line 4558
    .local v3, "sep":C
    const/16 v4, 0x49

    invoke-direct {v1, v10, v8, v4, v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4559
    invoke-direct {v1, v10, v8, v2, v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4560
    invoke-direct {v1, v10, v8, v0, v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4563
    .local v0, "tsb":Ljava/lang/StringBuilder;
    const/16 v2, 0x70

    invoke-direct {v1, v0, v8, v2, v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/util/Formatter$FormatSpecifier;->toUpperCaseWithLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4565
    goto/16 :goto_3d0

    .line 4432
    .end local v0    # "tsb":Ljava/lang/StringBuilder;
    .end local v3    # "sep":C
    :pswitch_ac
    move-object/from16 v1, p0

    move-object/from16 v7, p4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "AM"

    aput-object v2, v0, v5

    const-string v2, "PM"

    aput-object v2, v0, v6

    .line 4433
    .local v0, "ampm":[Ljava/lang/String;
    if-eqz v7, :cond_ca

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eq v7, v2, :cond_ca

    .line 4434
    invoke-static {v7}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4435
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 4437
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_ca
    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v2}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    aget-object v2, v0, v2

    .line 4438
    .local v2, "s":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 4439
    invoke-static {v3}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v3

    .line 4438
    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e5
    .catch Ljava/time/DateTimeException; {:try_start_6d .. :try_end_e5} :catch_3c5

    .line 4440
    goto/16 :goto_3d0

    .line 4538
    .end local v0    # "ampm":[Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_e7
    move-object/from16 v1, p0

    move-object/from16 v7, p4

    :try_start_eb
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4539
    .local v0, "i":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4540
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v3, v0

    const/4 v6, 0x2

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4541
    move-object/from16 v7, p4

    goto/16 :goto_3d0

    .line 4396
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_101
    sget-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4397
    .restart local v0    # "i":I
    int-to-long v3, v0

    sget-object v5, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4398
    move-object/from16 v7, p4

    goto/16 :goto_3d0

    .line 4386
    .end local v0    # "i":I
    :pswitch_11b
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4387
    .restart local v0    # "i":I
    int-to-long v3, v0

    sget-object v5, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4388
    move-object/from16 v7, p4

    goto/16 :goto_3d0

    .line 4532
    .end local v0    # "i":I
    :pswitch_135
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4533
    .restart local v0    # "i":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4534
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v3, v0

    const/4 v6, 0x3

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_14b
    .catch Ljava/time/DateTimeException; {:try_start_eb .. :try_end_14b} :catch_2e0

    .line 4535
    move-object/from16 v7, p4

    goto/16 :goto_3d0

    .line 4524
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_14f
    :try_start_14f
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0
    :try_end_155
    .catch Ljava/time/DateTimeException; {:try_start_14f .. :try_end_155} :catch_176

    .line 4525
    .restart local v0    # "i":I
    if-ne v9, v7, :cond_15b

    .line 4526
    :try_start_157
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;
    :try_end_159
    .catch Ljava/time/DateTimeException; {:try_start_157 .. :try_end_159} :catch_2e0

    move-object v5, v1

    goto :goto_15e

    .line 4527
    :cond_15b
    :try_start_15b
    sget-object v1, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;
    :try_end_15d
    .catch Ljava/time/DateTimeException; {:try_start_15b .. :try_end_15d} :catch_176

    move-object v5, v1

    :goto_15e
    nop

    .line 4528
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v3, v0

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    :try_start_166
    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_16a
    .catch Ljava/time/DateTimeException; {:try_start_166 .. :try_end_16a} :catch_172

    move-object v4, v1

    move-object v6, v7

    :try_start_16c
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4529
    move-object v7, v6

    goto/16 :goto_3d0

    .line 4594
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :catch_172
    move-exception v0

    move-object v4, v1

    goto/16 :goto_300

    :catch_176
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_306

    .line 4568
    :pswitch_17b
    move-object/from16 v4, p0

    move-object/from16 v6, p4

    const/16 v0, 0x20

    .line 4569
    .local v0, "sep":C
    const/16 v2, 0x61

    invoke-direct {v4, v10, v8, v2, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4570
    const/16 v2, 0x62

    invoke-direct {v4, v10, v8, v2, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4571
    invoke-direct {v4, v10, v8, v7, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4572
    invoke-direct {v4, v10, v8, v1, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4573
    const/16 v1, 0x5a

    invoke-direct {v4, v10, v8, v1, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4574
    invoke-direct {v4, v10, v8, v3, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4575
    move-object v7, v6

    goto/16 :goto_3d0

    .line 4468
    .end local v0    # "sep":C
    :pswitch_1b0
    move-object/from16 v4, p0

    move-object/from16 v6, p4

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 4469
    .local v0, "zid":Ljava/time/ZoneId;
    if-eqz v0, :cond_1fc

    .line 4472
    instance-of v1, v0, Ljava/time/ZoneOffset;

    if-nez v1, :cond_1f2

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    .line 4473
    invoke-interface {v8, v1}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_1f2

    .line 4474
    invoke-static {v8}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v1

    .line 4475
    .local v1, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 4476
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/time/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result v3

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4478
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale;

    .line 4476
    invoke-virtual {v2, v3, v5, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 4475
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4479
    move-object v7, v6

    goto/16 :goto_3d0

    .line 4481
    .end local v1    # "instant":Ljava/time/Instant;
    :cond_1f2
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4482
    move-object v7, v6

    goto/16 :goto_3d0

    .line 4470
    :cond_1fc
    new-instance v1, Ljava/util/IllegalFormatConversionException;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .end local p2    # "t":Ljava/time/temporal/TemporalAccessor;
    .end local p3    # "c":C
    .end local p4    # "l":Ljava/util/Locale;
    throw v1

    .line 4449
    .end local v0    # "zid":Ljava/time/ZoneId;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .restart local p2    # "t":Ljava/time/temporal/TemporalAccessor;
    .restart local p3    # "c":C
    .restart local p4    # "l":Ljava/util/Locale;
    :pswitch_206
    move-object/from16 v4, p0

    move-object/from16 v6, p4

    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4450
    .local v0, "i":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;
    :try_end_212
    .catch Ljava/time/DateTimeException; {:try_start_16c .. :try_end_212} :catch_366

    .line 4451
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v3, v0

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    :try_start_219
    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_21d
    .catch Ljava/time/DateTimeException; {:try_start_219 .. :try_end_21d} :catch_223

    move-object v4, v1

    :try_start_21e
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4452
    goto/16 :goto_3d0

    .line 4594
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :catch_223
    move-exception v0

    move-object v4, v1

    goto/16 :goto_3c6

    .line 4547
    :pswitch_227
    move-object/from16 v4, p0

    move-object/from16 v7, p4

    const/16 v3, 0x3a

    .line 4548
    .restart local v3    # "sep":C
    const/16 v5, 0x48

    invoke-direct {v4, v10, v8, v5, v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4549
    invoke-direct {v4, v10, v8, v2, v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4550
    if-ne v9, v1, :cond_3d0

    .line 4551
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4552
    invoke-direct {v4, v10, v8, v0, v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;
    :try_end_241
    .catch Ljava/time/DateTimeException; {:try_start_21e .. :try_end_241} :catch_3c5

    goto/16 :goto_3d0

    .line 4424
    .end local v3    # "sep":C
    :pswitch_243
    move-object/from16 v4, p0

    move-object/from16 v7, p4

    :try_start_247
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 4425
    invoke-interface {v8, v2}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 4426
    .local v0, "i":J
    sget-object v5, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4427
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    iget v6, v4, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v2, 0x0

    move-wide v14, v0

    move-object v1, v4

    move-wide v3, v14

    .end local v0    # "i":J
    .local v3, "i":J
    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_266
    .catch Ljava/time/DateTimeException; {:try_start_247 .. :try_end_266} :catch_2e0

    .line 4428
    move-object/from16 v7, p4

    goto/16 :goto_3d0

    .line 4409
    .end local v3    # "i":J
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_26a
    :try_start_26a
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0
    :try_end_270
    .catch Ljava/time/temporal/UnsupportedTemporalTypeException; {:try_start_26a .. :try_end_270} :catch_271
    .catch Ljava/time/DateTimeException; {:try_start_26a .. :try_end_270} :catch_2e0

    .line 4412
    .local v0, "i":I
    goto :goto_27d

    .line 4410
    .end local v0    # "i":I
    :catch_271
    move-exception v0

    .line 4411
    .local v0, "u":Ljava/time/temporal/UnsupportedTemporalTypeException;
    :try_start_272
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    const v2, 0xf4240

    mul-int/2addr v1, v2

    move v0, v1

    .line 4413
    .local v0, "i":I
    :goto_27d
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4414
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v3, v0

    const/16 v6, 0x9

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4415
    move-object/from16 v7, p4

    goto/16 :goto_3d0

    .line 4401
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_292
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4402
    .restart local v0    # "i":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4403
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v3, v0

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4404
    move-object/from16 v7, p4

    goto/16 :goto_3d0

    .line 4418
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_2ac
    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4419
    .restart local v0    # "i":I
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4420
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v3, v0

    const/4 v6, 0x3

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4421
    move-object/from16 v7, p4

    goto/16 :goto_3d0

    .line 4391
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_2c6
    sget-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4392
    .restart local v0    # "i":I
    int-to-long v3, v0

    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_2dc
    .catch Ljava/time/DateTimeException; {:try_start_272 .. :try_end_2dc} :catch_2e0

    .line 4393
    move-object/from16 v7, p4

    goto/16 :goto_3d0

    .line 4594
    .end local v0    # "i":I
    :catch_2e0
    move-exception v0

    :goto_2e1
    move-object/from16 v7, p4

    goto/16 :goto_3c6

    .line 4381
    :pswitch_2e5
    :try_start_2e5
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4382
    .restart local v0    # "i":I
    int-to-long v3, v0

    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;
    :try_end_2ee
    .catch Ljava/time/DateTimeException; {:try_start_2e5 .. :try_end_2ee} :catch_303

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p4

    :try_start_2f4
    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_2f8
    .catch Ljava/time/DateTimeException; {:try_start_2f4 .. :try_end_2f8} :catch_2ff

    move-object v6, v7

    :try_start_2f9
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4383
    move-object v7, v6

    goto/16 :goto_3d0

    .line 4594
    .end local v0    # "i":I
    :catch_2ff
    move-exception v0

    :goto_300
    move-object v6, v7

    goto/16 :goto_3c6

    :catch_303
    move-exception v0

    move-object/from16 v1, p0

    :goto_306
    move-object/from16 v6, p4

    goto :goto_367

    .line 4585
    :pswitch_309
    move-object/from16 v1, p0

    move-object/from16 v6, p4

    const/16 v0, 0x2d

    .line 4586
    .local v0, "sep":C
    invoke-direct {v1, v10, v8, v3, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4587
    invoke-direct {v1, v10, v8, v4, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4588
    invoke-direct {v1, v10, v8, v7, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4589
    move-object v7, v6

    goto/16 :goto_3d0

    .line 4578
    .end local v0    # "sep":C
    :pswitch_323
    move-object/from16 v1, p0

    move-object/from16 v6, p4

    const/16 v0, 0x2f

    .line 4579
    .restart local v0    # "sep":C
    invoke-direct {v1, v10, v8, v4, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4580
    invoke-direct {v1, v10, v8, v7, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4581
    const/16 v2, 0x79

    invoke-direct {v1, v10, v8, v2, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4582
    move-object v7, v6

    goto/16 :goto_3d0

    .line 4511
    .end local v0    # "sep":C
    :pswitch_33f
    move-object/from16 v1, p0

    move-object/from16 v6, p4

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4512
    .local v0, "i":I
    const/4 v2, 0x2

    .line 4513
    .local v2, "size":I
    sparse-switch v9, :sswitch_data_44a

    goto :goto_357

    .line 4515
    :sswitch_34e
    rem-int/lit8 v3, v0, 0x64

    move v0, v3

    goto :goto_357

    .line 4516
    :sswitch_352
    const/4 v2, 0x4

    goto :goto_357

    .line 4514
    :sswitch_354
    div-int/lit8 v3, v0, 0x64

    move v0, v3

    .line 4518
    :goto_357
    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;
    :try_end_359
    .catch Ljava/time/DateTimeException; {:try_start_2f9 .. :try_end_359} :catch_366

    .line 4519
    .restart local v5    # "flags":Ljava/util/Formatter$Flags;
    move v6, v2

    .end local v2    # "size":I
    .local v6, "size":I
    const/4 v2, 0x0

    int-to-long v3, v0

    move-object/from16 v7, p4

    :try_start_35e
    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4520
    goto :goto_3d0

    .line 4594
    .end local v0    # "i":I
    .end local v5    # "flags":Ljava/util/Formatter$Flags;
    .end local v6    # "size":I
    :catch_366
    move-exception v0

    :goto_367
    move-object v7, v6

    goto :goto_3c6

    .line 4499
    :pswitch_369
    move-object/from16 v7, p4

    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sub-int/2addr v0, v6

    .line 4500
    .restart local v0    # "i":I
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 4501
    .local v1, "lt":Ljava/util/Locale;
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4502
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x42

    if-ne v9, v3, :cond_38c

    .line 4503
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d0

    .line 4505
    :cond_38c
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4506
    goto :goto_3d0

    .line 4487
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :pswitch_396
    move-object/from16 v7, p4

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v6

    .line 4488
    .restart local v0    # "i":I
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 4489
    .restart local v1    # "lt":Ljava/util/Locale;
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4490
    .restart local v2    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x41

    if-ne v9, v3, :cond_3bb

    .line 4491
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d0

    .line 4493
    :cond_3bb
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3c4
    .catch Ljava/time/DateTimeException; {:try_start_35e .. :try_end_3c4} :catch_3c5

    .line 4494
    goto :goto_3d0

    .line 4594
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :catch_3c5
    move-exception v0

    .line 4595
    .local v0, "x":Ljava/time/DateTimeException;
    :goto_3c6
    new-instance v1, Ljava/util/IllegalFormatConversionException;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v1

    .line 4596
    .end local v0    # "x":Ljava/time/DateTimeException;
    :cond_3d0
    :goto_3d0
    nop

    .line 4597
    return-object v10

    :pswitch_data_3d2
    .packed-switch 0x41
        :pswitch_396
        :pswitch_369
        :pswitch_33f
        :pswitch_323
        :pswitch_20
        :pswitch_309
        :pswitch_20
        :pswitch_2e5
        :pswitch_2c6
        :pswitch_20
        :pswitch_20
        :pswitch_2ac
        :pswitch_292
        :pswitch_26a
        :pswitch_20
        :pswitch_20
        :pswitch_243
        :pswitch_227
        :pswitch_206
        :pswitch_227
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_33f
        :pswitch_1b0
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_396
        :pswitch_369
        :pswitch_17b
        :pswitch_14f
        :pswitch_14f
        :pswitch_20
        :pswitch_20
        :pswitch_369
        :pswitch_20
        :pswitch_135
        :pswitch_11b
        :pswitch_101
        :pswitch_e7
        :pswitch_20
        :pswitch_20
        :pswitch_ac
        :pswitch_20
        :pswitch_76
        :pswitch_5e
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_33f
        :pswitch_24
    .end packed-switch

    :sswitch_data_44a
    .sparse-switch
        0x43 -> :sswitch_354
        0x59 -> :sswitch_352
        0x79 -> :sswitch_34e
    .end sparse-switch
.end method

.method private greylist-max-o print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;
    .registers 23
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/util/Calendar;
    .param p3, "c"    # C
    .param p4, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4162
    move-object/from16 v7, p2

    move/from16 v8, p3

    if-nez p1, :cond_d

    .line 4163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v0, "sb":Ljava/lang/StringBuilder;
    goto :goto_f

    .line 4162
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_d
    move-object/from16 v9, p1

    .line 4164
    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v9, "sb":Ljava/lang/StringBuilder;
    :goto_f
    const/16 v0, 0x53

    const/16 v1, 0x10

    const/16 v2, 0x54

    const/16 v3, 0x4d

    const/16 v4, 0x48

    const/16 v5, 0xe

    const/16 v6, 0x59

    const/16 v10, 0x6d

    const/16 v11, 0x49

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/16 p1, 0x1

    const/16 v15, 0x64

    packed-switch v8, :pswitch_data_326

    .line 4358
    :pswitch_2c
    move-object/from16 v6, p4

    goto/16 :goto_325

    .line 4228
    :pswitch_30
    const/16 v0, 0xf

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 4229
    .local v0, "i":I
    if-gez v0, :cond_3f

    move/from16 v13, p1

    .line 4230
    .local v13, "neg":Z
    :cond_3f
    if-eqz v13, :cond_44

    const/16 v1, 0x2d

    goto :goto_46

    :cond_44
    const/16 v1, 0x2b

    :goto_46
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4231
    if-eqz v13, :cond_4e

    .line 4232
    neg-int v0, v0

    move v10, v0

    goto :goto_4f

    .line 4231
    :cond_4e
    move v10, v0

    .line 4233
    .end local v0    # "i":I
    .local v10, "i":I
    :goto_4f
    const v0, 0xea60

    div-int v11, v10, v0

    .line 4235
    .local v11, "min":I
    div-int/lit8 v0, v11, 0x3c

    mul-int/2addr v0, v15

    rem-int/lit8 v1, v11, 0x3c

    add-int v12, v0, v1

    .line 4236
    .local v12, "offset":I
    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4238
    .local v4, "flags":Ljava/util/Formatter$Flags;
    int-to-long v2, v12

    const/4 v5, 0x4

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4239
    goto/16 :goto_325

    .line 4216
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v10    # "i":I
    .end local v11    # "min":I
    .end local v12    # "offset":I
    .end local v13    # "neg":Z
    :pswitch_6d
    move-object/from16 v0, p0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v2, v1, v3

    .line 4217
    .local v2, "i":J
    sget-object v4, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4218
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    iget v5, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v16, v2

    move-object v2, v0

    move-object v0, v4

    move-wide/from16 v3, v16

    .end local v2    # "i":J
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .local v0, "flags":Ljava/util/Formatter$Flags;
    .local v3, "i":J
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4219
    goto/16 :goto_325

    .line 4322
    .end local v0    # "flags":Ljava/util/Formatter$Flags;
    .end local v3    # "i":J
    :pswitch_8d
    move-object/from16 v2, p0

    move-object/from16 v6, p4

    const/16 v1, 0x3a

    .line 4323
    .local v1, "sep":C
    invoke-direct {v2, v9, v7, v11, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4324
    invoke-direct {v2, v9, v7, v3, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4325
    invoke-direct {v2, v9, v7, v0, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v0

    const/16 v3, 0x20

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4328
    .local v0, "tsb":Ljava/lang/StringBuilder;
    const/16 v3, 0x70

    invoke-direct {v2, v0, v7, v3, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Ljava/util/Formatter$FormatSpecifier;->toUpperCaseWithLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4331
    goto/16 :goto_325

    .line 4205
    .end local v0    # "tsb":Ljava/lang/StringBuilder;
    .end local v1    # "sep":C
    :pswitch_c1
    move-object/from16 v2, p0

    move-object/from16 v6, p4

    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "AM"

    aput-object v1, v0, v13

    const-string v1, "PM"

    aput-object v1, v0, p1

    .line 4206
    .local v0, "ampm":[Ljava/lang/String;
    if-eqz v6, :cond_dd

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eq v6, v1, :cond_dd

    .line 4207
    invoke-static {v6}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 4208
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 4210
    .end local v1    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_dd
    const/16 v1, 0x9

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v1, v0, v1

    .line 4211
    .local v1, "s":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 4212
    invoke-static {v3}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v3

    .line 4211
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4213
    goto/16 :goto_325

    .line 4303
    .end local v0    # "ampm":[Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    :pswitch_fa
    move-object/from16 v2, p0

    move-object/from16 v6, p4

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v10, v0, 0x1

    .line 4304
    .restart local v10    # "i":I
    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4305
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v2, v10

    const/4 v5, 0x2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4306
    goto/16 :goto_325

    .line 4297
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v10    # "i":I
    :pswitch_114
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 4298
    .restart local v10    # "i":I
    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4299
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v2, v10

    const/4 v5, 0x3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4300
    goto/16 :goto_325

    .line 4289
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v10    # "i":I
    :pswitch_12b
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 4290
    .restart local v10    # "i":I
    if-ne v8, v15, :cond_136

    .line 4291
    sget-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move-object v4, v0

    goto :goto_139

    .line 4292
    :cond_136
    sget-object v0, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    move-object v4, v0

    :goto_139
    nop

    .line 4293
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v2, v10

    const/4 v5, 0x2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, v6

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4294
    goto/16 :goto_325

    .line 4334
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v10    # "i":I
    :pswitch_14b
    move-object/from16 v0, p0

    move-object/from16 v3, p4

    const/16 v1, 0x20

    .line 4335
    .local v1, "sep":C
    const/16 v4, 0x61

    invoke-direct {v0, v9, v7, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4336
    const/16 v4, 0x62

    invoke-direct {v0, v9, v7, v4, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4337
    invoke-direct {v0, v9, v7, v15, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4338
    invoke-direct {v0, v9, v7, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4339
    const/16 v2, 0x5a

    invoke-direct {v0, v9, v7, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4340
    invoke-direct {v0, v9, v7, v6, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4341
    move-object v6, v3

    goto/16 :goto_325

    .line 4242
    .end local v1    # "sep":C
    :pswitch_180
    move-object/from16 v0, p0

    move-object/from16 v3, p4

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 4243
    .local v2, "tz":Ljava/util/TimeZone;
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eqz v1, :cond_191

    move/from16 v15, p1

    goto :goto_192

    :cond_191
    move v15, v13

    :goto_192
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4245
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 4243
    invoke-virtual {v2, v15, v13, v1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4246
    move-object v6, v3

    goto/16 :goto_325

    .line 4222
    .end local v2    # "tz":Ljava/util/TimeZone;
    :pswitch_1a4
    move-object/from16 v0, p0

    move-object/from16 v3, p4

    const/16 v1, 0xd

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 4223
    .restart local v10    # "i":I
    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4224
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v2, v10

    const/4 v5, 0x2

    const/4 v1, 0x0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v5, v0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4225
    goto/16 :goto_325

    .line 4312
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v10    # "i":I
    :pswitch_1bf
    move-object/from16 v5, p0

    move-object/from16 v6, p4

    const/16 v1, 0x3a

    .line 4313
    .restart local v1    # "sep":C
    invoke-direct {v5, v9, v7, v4, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4314
    invoke-direct {v5, v9, v7, v3, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4315
    if-ne v8, v2, :cond_325

    .line 4316
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4317
    invoke-direct {v5, v9, v7, v0, v6}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_325

    .line 4198
    .end local v1    # "sep":C
    :pswitch_1d9
    move-object/from16 v5, p0

    move-object/from16 v6, p4

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 4199
    .local v2, "i":J
    sget-object v4, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4200
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    move-object v0, v5

    iget v5, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4201
    goto/16 :goto_325

    .line 4186
    .end local v2    # "i":J
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    :pswitch_1f0
    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const v1, 0xf4240

    mul-int v10, v0, v1

    .line 4187
    .restart local v10    # "i":I
    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4188
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v2, v10

    const/16 v5, 0x9

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4189
    goto/16 :goto_325

    .line 4180
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v10    # "i":I
    :pswitch_20c
    invoke-virtual {v7, v14}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 4181
    .restart local v10    # "i":I
    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4182
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v2, v10

    const/4 v5, 0x2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4183
    goto/16 :goto_325

    .line 4192
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v10    # "i":I
    :pswitch_222
    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 4193
    .restart local v10    # "i":I
    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4194
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v2, v10

    const/4 v5, 0x3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4195
    goto/16 :goto_325

    .line 4169
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v10    # "i":I
    :pswitch_238
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4170
    .local v0, "i":I
    if-eq v8, v11, :cond_247

    const/16 v1, 0x6c

    if-ne v8, v1, :cond_245

    goto :goto_247

    :cond_245
    move v10, v0

    goto :goto_250

    .line 4171
    :cond_247
    :goto_247
    if-eqz v0, :cond_24e

    if-ne v0, v14, :cond_24c

    goto :goto_24e

    :cond_24c
    rem-int/lit8 v14, v0, 0xc

    :cond_24e
    :goto_24e
    move v0, v14

    move v10, v0

    .line 4173
    .end local v0    # "i":I
    .restart local v10    # "i":I
    :goto_250
    if-eq v8, v4, :cond_259

    if-ne v8, v11, :cond_255

    goto :goto_259

    .line 4175
    :cond_255
    sget-object v0, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    move-object v4, v0

    goto :goto_25c

    .line 4174
    :cond_259
    :goto_259
    sget-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    move-object v4, v0

    .line 4175
    :goto_25c
    nop

    .line 4176
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    int-to-long v2, v10

    const/4 v5, 0x2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, v6

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4177
    goto/16 :goto_325

    .line 4351
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v10    # "i":I
    :pswitch_26e
    move-object/from16 v0, p0

    move-object/from16 v3, p4

    const/16 v1, 0x2d

    .line 4352
    .restart local v1    # "sep":C
    invoke-direct {v0, v9, v7, v6, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4353
    invoke-direct {v0, v9, v7, v10, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4354
    invoke-direct {v0, v9, v7, v15, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4355
    move-object v6, v3

    goto/16 :goto_325

    .line 4344
    .end local v1    # "sep":C
    :pswitch_288
    move-object/from16 v0, p0

    move-object/from16 v3, p4

    const/16 v1, 0x2f

    .line 4345
    .restart local v1    # "sep":C
    invoke-direct {v0, v9, v7, v10, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4346
    invoke-direct {v0, v9, v7, v15, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4347
    const/16 v2, 0x79

    invoke-direct {v0, v9, v7, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4348
    move-object v6, v3

    goto/16 :goto_325

    .line 4276
    .end local v1    # "sep":C
    :pswitch_2a4
    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v1, p1

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 4277
    .local v1, "i":I
    const/4 v2, 0x2

    .line 4278
    .local v2, "size":I
    sparse-switch v8, :sswitch_data_39e

    move v10, v1

    move v5, v2

    goto :goto_2c2

    .line 4280
    :sswitch_2b5
    rem-int/lit8 v1, v1, 0x64

    move v10, v1

    move v5, v2

    goto :goto_2c2

    .line 4281
    :sswitch_2ba
    const/4 v2, 0x4

    move v10, v1

    move v5, v2

    goto :goto_2c2

    .line 4279
    :sswitch_2be
    div-int/lit8 v1, v1, 0x64

    move v10, v1

    move v5, v2

    .line 4283
    .end local v1    # "i":I
    .end local v2    # "size":I
    .local v5, "size":I
    .restart local v10    # "i":I
    :goto_2c2
    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4284
    .restart local v4    # "flags":Ljava/util/Formatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v10

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4285
    goto :goto_325

    .line 4264
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v5    # "size":I
    .end local v10    # "i":I
    :pswitch_2d0
    move-object/from16 v6, p4

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4265
    .restart local v0    # "i":I
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 4266
    .local v1, "lt":Ljava/util/Locale;
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4267
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x42

    if-ne v8, v3, :cond_2f0

    .line 4268
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_325

    .line 4270
    :cond_2f0
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4271
    goto :goto_325

    .line 4252
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :pswitch_2fa
    move-object/from16 v6, p4

    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4253
    .restart local v0    # "i":I
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 4254
    .restart local v1    # "lt":Ljava/util/Locale;
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4255
    .restart local v2    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x41

    if-ne v8, v3, :cond_31b

    .line 4256
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_325

    .line 4258
    :cond_31b
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4259
    nop

    .line 4360
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_325
    :goto_325
    return-object v9

    :pswitch_data_326
    .packed-switch 0x41
        :pswitch_2fa
        :pswitch_2d0
        :pswitch_2a4
        :pswitch_288
        :pswitch_2c
        :pswitch_26e
        :pswitch_2c
        :pswitch_238
        :pswitch_238
        :pswitch_2c
        :pswitch_2c
        :pswitch_222
        :pswitch_20c
        :pswitch_1f0
        :pswitch_2c
        :pswitch_2c
        :pswitch_1d9
        :pswitch_1bf
        :pswitch_1a4
        :pswitch_1bf
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2a4
        :pswitch_180
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2fa
        :pswitch_2d0
        :pswitch_14b
        :pswitch_12b
        :pswitch_12b
        :pswitch_2c
        :pswitch_2c
        :pswitch_2d0
        :pswitch_2c
        :pswitch_114
        :pswitch_238
        :pswitch_238
        :pswitch_fa
        :pswitch_2c
        :pswitch_2c
        :pswitch_c1
        :pswitch_2c
        :pswitch_8d
        :pswitch_6d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2a4
        :pswitch_30
    .end packed-switch

    :sswitch_data_39e
    .sparse-switch
        0x43 -> :sswitch_2be
        0x59 -> :sswitch_2ba
        0x79 -> :sswitch_2b5
    .end sparse-switch
.end method

.method private greylist-max-o print(BLjava/util/Locale;)V
    .registers 7
    .param p1, "value"    # B
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3393
    int-to-long v0, p1

    .line 3394
    .local v0, "v":J
    if-gez p1, :cond_12

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_f

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_12

    .line 3397
    :cond_f
    const-wide/16 v2, 0x100

    add-long/2addr v0, v2

    .line 3399
    :cond_12
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3400
    return-void
.end method

.method private greylist-max-o print(DLjava/util/Locale;)V
    .registers 14
    .param p1, "value"    # D
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 3562
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    move v9, v0

    .line 3564
    .local v9, "neg":Z
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 3565
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 3568
    .local v3, "v":D
    invoke-direct {p0, v2, v9}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3571
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_32

    .line 3572
    iget-object v6, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget-char v7, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget v8, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    move-object v1, p0

    move-object v5, p3

    .end local p3    # "l":Ljava/util/Locale;
    .local v5, "l":Ljava/util/Locale;
    invoke-direct/range {v1 .. v9}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    goto :goto_46

    .line 3574
    .end local v5    # "l":Ljava/util/Locale;
    .restart local p3    # "l":Ljava/util/Locale;
    :cond_32
    move-object v1, p0

    move-object v5, p3

    .end local p3    # "l":Ljava/util/Locale;
    .restart local v5    # "l":Ljava/util/Locale;
    iget-object p3, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v0, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {p3, v0}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result p3

    if-eqz p3, :cond_41

    .line 3575
    const-string p3, "INFINITY"

    goto :goto_43

    :cond_41
    const-string p3, "Infinity"

    .line 3574
    :goto_43
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3578
    :goto_46
    invoke-direct {p0, v2, v9}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3579
    .end local v3    # "v":D
    goto :goto_5e

    .line 3580
    .end local v5    # "l":Ljava/util/Locale;
    .restart local p3    # "l":Ljava/util/Locale;
    :cond_4a
    move-object v1, p0

    move-object v5, p3

    .end local p3    # "l":Ljava/util/Locale;
    .restart local v5    # "l":Ljava/util/Locale;
    iget-object p3, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v0, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {p3, v0}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result p3

    if-eqz p3, :cond_59

    const-string p3, "NAN"

    goto :goto_5b

    :cond_59
    const-string p3, "NaN"

    :goto_5b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3584
    :goto_5e
    iget-object p3, v1, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {p3}, Ljava/util/Formatter;->-$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-direct {p0, p3, v2}, Ljava/util/Formatter$FormatSpecifier;->appendJustified(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 3585
    return-void
.end method

.method private greylist-max-o print(FLjava/util/Locale;)V
    .registers 5
    .param p1, "value"    # F
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3557
    float-to-double v0, p1

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    .line 3558
    return-void
.end method

.method private greylist-max-o print(ILjava/util/Locale;)V
    .registers 7
    .param p1, "value"    # I
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3414
    int-to-long v0, p1

    .line 3415
    .local v0, "v":J
    if-gez p1, :cond_16

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_f

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_16

    .line 3418
    :cond_f
    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    .line 3419
    nop

    .line 3421
    :cond_16
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3422
    return-void
.end method

.method private greylist-max-o print(JLjava/util/Locale;)V
    .registers 12
    .param p1, "value"    # J
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 3428
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_39

    .line 3429
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_16

    move v0, v4

    goto :goto_17

    :cond_16
    move v0, v3

    .line 3430
    .local v0, "neg":Z
    :goto_17
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    .line 3433
    .local v1, "valueStr":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3436
    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    move v4, v3

    :goto_24
    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget-object v6, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-direct {p0, v3, v6, v0}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v6

    move-object v7, p3

    move-object v3, v1

    move-object v1, p0

    .end local v1    # "valueStr":Ljava/lang/String;
    .end local p3    # "l":Ljava/util/Locale;
    .local v3, "valueStr":Ljava/lang/String;
    .local v7, "l":Ljava/util/Locale;
    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;ILjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3439
    invoke-direct {p0, v2, v0}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3440
    .end local v0    # "neg":Z
    .end local v3    # "valueStr":Ljava/lang/String;
    goto/16 :goto_ff

    .end local v7    # "l":Ljava/util/Locale;
    .restart local p3    # "l":Ljava/util/Locale;
    :cond_39
    move-object v1, p0

    move-object v7, p3

    .end local p3    # "l":Ljava/util/Locale;
    .restart local v7    # "l":Ljava/util/Locale;
    iget-char p3, v1, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v0, 0x6f

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne p3, v0, :cond_90

    .line 3441
    new-array p3, v5, [Ljava/util/Formatter$Flags;

    sget-object v0, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v0, p3, v3

    sget-object v0, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    aput-object v0, p3, v4

    sget-object v0, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    aput-object v0, p3, v6

    invoke-direct {p0, p3}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3443
    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object p3

    .line 3444
    .local p3, "s":Ljava/lang/String;
    iget-object v0, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3445
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_6c

    .line 3446
    :cond_68
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    :goto_6c
    nop

    .line 3449
    .local v0, "len":I
    iget-object v3, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 3450
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3451
    :cond_7c
    iget-object v3, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 3452
    iget v3, v1, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros(Ljava/lang/StringBuilder;I)V

    .line 3454
    :cond_8c
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "len":I
    .end local p3    # "s":Ljava/lang/String;
    goto :goto_fe

    .line 3455
    :cond_90
    iget-char p3, v1, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v0, 0x78

    if-ne p3, v0, :cond_fe

    .line 3456
    new-array p3, v5, [Ljava/util/Formatter$Flags;

    sget-object v0, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    aput-object v0, p3, v3

    sget-object v0, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    aput-object v0, p3, v4

    sget-object v0, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    aput-object v0, p3, v6

    invoke-direct {p0, p3}, Ljava/util/Formatter$FormatSpecifier;->checkBadFlags([Ljava/util/Formatter$Flags;)V

    .line 3458
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p3

    .line 3459
    .restart local p3    # "s":Ljava/lang/String;
    iget-object v0, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 3460
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    goto :goto_bf

    .line 3461
    :cond_bb
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    :goto_bf
    nop

    .line 3464
    .restart local v0    # "len":I
    iget-object v3, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 3465
    iget-object v3, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_d7

    const-string v3, "0X"

    goto :goto_d9

    :cond_d7
    const-string v3, "0x"

    :goto_d9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3466
    :cond_dc
    iget-object v3, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 3467
    iget v3, v1, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros(Ljava/lang/StringBuilder;I)V

    .line 3469
    :cond_ec
    iget-object v3, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v4, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v3, v4}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 3470
    invoke-direct {p0, p3, v7}, Ljava/util/Formatter$FormatSpecifier;->toUpperCaseWithLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 3471
    :cond_fa
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ff

    .line 3455
    .end local v0    # "len":I
    .end local p3    # "s":Ljava/lang/String;
    :cond_fe
    :goto_fe
    nop

    .line 3475
    :goto_ff
    iget-object p3, v1, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {p3}, Ljava/util/Formatter;->-$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-direct {p0, p3, v2}, Ljava/util/Formatter$FormatSpecifier;->appendJustified(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 3476
    return-void
.end method

.method private blacklist print(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3239
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 3240
    const/4 v0, 0x0

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3241
    :cond_14
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3242
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->toUpperCaseWithLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3243
    :cond_22
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->appendJustified(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 3244
    return-void
.end method

.method private greylist-max-o print(Ljava/lang/StringBuilder;DLjava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .registers 29
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

    .line 3592
    move-object/from16 v0, p0

    move-wide/from16 v7, p2

    move-object/from16 v4, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    const/4 v3, 0x6

    const/16 v5, 0x2e

    const/16 v6, 0x30

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/16 v15, 0x65

    if-ne v9, v15, :cond_ae

    .line 3595
    if-ne v10, v14, :cond_1b

    goto :goto_1c

    :cond_1b
    move v3, v10

    :goto_1c
    move v15, v3

    .line 3597
    .local v15, "prec":I
    sget-object v3, Ljdk/internal/math/FormattedFloatingDecimal$Form;->SCIENTIFIC:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    .line 3598
    invoke-static {v7, v8, v15, v3}, Ljdk/internal/math/FormattedFloatingDecimal;->valueOf(DILjdk/internal/math/FormattedFloatingDecimal$Form;)Ljdk/internal/math/FormattedFloatingDecimal;

    move-result-object v16

    .line 3601
    .local v16, "fd":Ljdk/internal/math/FormattedFloatingDecimal;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Ljdk/internal/math/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3602
    .local v2, "mant":Ljava/lang/StringBuilder;
    invoke-direct {v0, v2, v15}, Ljava/util/Formatter$FormatSpecifier;->addZeros(Ljava/lang/StringBuilder;I)V

    .line 3606
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_42

    if-nez v15, :cond_42

    .line 3607
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3610
    :cond_42
    cmpl-double v1, v7, v17

    if-nez v1, :cond_53

    .line 3611
    const/4 v1, 0x3

    new-array v1, v1, [C

    const/16 v3, 0x2b

    aput-char v3, v1, v12

    aput-char v6, v1, v13

    const/4 v3, 0x2

    aput-char v6, v1, v3

    goto :goto_57

    :cond_53
    invoke-virtual/range {v16 .. v16}, Ljdk/internal/math/FormattedFloatingDecimal;->getExponent()[C

    move-result-object v1

    .line 3613
    .local v1, "exp":[C
    :goto_57
    iget v3, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3614
    .local v3, "newW":I
    iget v5, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v5, v14, :cond_68

    .line 3615
    iget v5, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    array-length v6, v1

    sub-int/2addr v5, v6

    sub-int/2addr v5, v13

    invoke-direct {v0, v5, v4, v11}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v3

    move v5, v3

    goto :goto_69

    .line 3614
    :cond_68
    move v5, v3

    .line 3617
    .end local v3    # "newW":I
    .local v5, "newW":I
    :goto_69
    const/4 v3, 0x0

    move-object/from16 v6, p4

    move-object v14, v1

    move-object/from16 v1, p1

    .end local v1    # "exp":[C
    .local v14, "exp":[C
    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;ILjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3620
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    .end local v2    # "mant":Ljava/lang/StringBuilder;
    .local v3, "mant":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_7a

    move-object v6, v0

    goto :goto_7e

    :cond_7a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 3621
    .local v6, "separatorLocale":Ljava/util/Locale;
    :goto_7e
    invoke-static {v6}, Llibcore/icu/DecimalFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/DecimalFormatData;

    move-result-object v17

    .line 3622
    .local v17, "formatData":Llibcore/icu/DecimalFormatData;
    move/from16 v19, v12

    sget-object v12, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v12}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v12

    if-eqz v12, :cond_95

    .line 3623
    invoke-virtual/range {v17 .. v17}, Llibcore/icu/DecimalFormatData;->getExponentSeparator()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    goto :goto_9d

    .line 3624
    :cond_95
    invoke-virtual/range {v17 .. v17}, Llibcore/icu/DecimalFormatData;->getExponentSeparator()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 3622
    :goto_9d
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3627
    aget-char v12, v14, v19

    .line 3628
    .local v12, "sign":C
    nop

    .line 3629
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3631
    invoke-direct {v1, v2, v14, v13, v0}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitudeExp(Ljava/lang/StringBuilder;[CILjava/util/Locale;)V

    .line 3632
    .end local v3    # "mant":Ljava/lang/StringBuilder;
    .end local v5    # "newW":I
    .end local v6    # "separatorLocale":Ljava/util/Locale;
    .end local v12    # "sign":C
    .end local v14    # "exp":[C
    .end local v15    # "prec":I
    .end local v16    # "fd":Ljdk/internal/math/FormattedFloatingDecimal;
    .end local v17    # "formatData":Llibcore/icu/DecimalFormatData;
    move-object v6, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_215

    :cond_ae
    move-object/from16 v2, p1

    move-object v1, v0

    move/from16 v19, v12

    const-wide/16 v17, 0x0

    move-object/from16 v0, p4

    const/16 v12, 0x66

    if-ne v9, v12, :cond_fc

    .line 3635
    if-ne v10, v14, :cond_be

    goto :goto_bf

    :cond_be
    move v3, v10

    :goto_bf
    move v12, v3

    .line 3637
    .local v12, "prec":I
    sget-object v3, Ljdk/internal/math/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    .line 3638
    invoke-static {v7, v8, v12, v3}, Ljdk/internal/math/FormattedFloatingDecimal;->valueOf(DILjdk/internal/math/FormattedFloatingDecimal$Form;)Ljdk/internal/math/FormattedFloatingDecimal;

    move-result-object v13

    .line 3641
    .local v13, "fd":Ljdk/internal/math/FormattedFloatingDecimal;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljdk/internal/math/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3642
    .restart local v3    # "mant":Ljava/lang/StringBuilder;
    invoke-direct {v1, v3, v12}, Ljava/util/Formatter$FormatSpecifier;->addZeros(Ljava/lang/StringBuilder;I)V

    .line 3646
    sget-object v6, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v6}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v6

    if-eqz v6, :cond_e3

    if-nez v12, :cond_e3

    .line 3647
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3649
    :cond_e3
    iget v5, v1, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3650
    .restart local v5    # "newW":I
    iget v6, v1, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v6, v14, :cond_ef

    .line 3651
    iget v6, v1, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v1, v6, v4, v11}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v5

    .line 3652
    :cond_ef
    move-object v2, v3

    .end local v3    # "mant":Ljava/lang/StringBuilder;
    .restart local v2    # "mant":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move-object v6, v0

    move-object v0, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;ILjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3653
    .end local v2    # "mant":Ljava/lang/StringBuilder;
    .end local v5    # "newW":I
    .end local v12    # "prec":I
    .end local v13    # "fd":Ljdk/internal/math/FormattedFloatingDecimal;
    move-object/from16 v6, p4

    goto/16 :goto_215

    :cond_fc
    move-object v0, v1

    const/16 v1, 0x67

    if-ne v9, v1, :cond_18a

    .line 3654
    move/from16 v1, p7

    .line 3655
    .local v1, "prec":I
    if-ne v10, v14, :cond_107

    .line 3656
    const/4 v1, 0x6

    goto :goto_10a

    .line 3657
    :cond_107
    if-nez v10, :cond_10a

    .line 3658
    const/4 v1, 0x1

    .line 3661
    :cond_10a
    :goto_10a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3663
    .restart local v2    # "mant":Ljava/lang/StringBuilder;
    cmpl-double v3, v7, v17

    if-nez v3, :cond_11c

    .line 3664
    const/4 v3, 0x0

    .line 3665
    .local v3, "exp":[C
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3666
    const/4 v6, 0x0

    move-object v12, v3

    move/from16 v16, v6

    .local v6, "expRounded":I
    goto :goto_134

    .line 3668
    .end local v3    # "exp":[C
    .end local v6    # "expRounded":I
    :cond_11c
    sget-object v3, Ljdk/internal/math/FormattedFloatingDecimal$Form;->GENERAL:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    .line 3669
    invoke-static {v7, v8, v1, v3}, Ljdk/internal/math/FormattedFloatingDecimal;->valueOf(DILjdk/internal/math/FormattedFloatingDecimal$Form;)Ljdk/internal/math/FormattedFloatingDecimal;

    move-result-object v3

    .line 3671
    .local v3, "fd":Ljdk/internal/math/FormattedFloatingDecimal;
    invoke-virtual {v3}, Ljdk/internal/math/FormattedFloatingDecimal;->getExponent()[C

    move-result-object v6

    .line 3672
    .local v6, "exp":[C
    invoke-virtual {v3}, Ljdk/internal/math/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3673
    invoke-virtual {v3}, Ljdk/internal/math/FormattedFloatingDecimal;->getExponentRounded()I

    move-result v12

    move/from16 v16, v12

    move-object v12, v6

    .line 3676
    .end local v3    # "fd":Ljdk/internal/math/FormattedFloatingDecimal;
    .end local v6    # "exp":[C
    .local v12, "exp":[C
    .local v16, "expRounded":I
    :goto_134
    if-eqz v12, :cond_138

    .line 3677
    add-int/2addr v1, v14

    goto :goto_13b

    .line 3679
    :cond_138
    add-int/lit8 v3, v16, 0x1

    sub-int/2addr v1, v3

    .line 3682
    :goto_13b
    invoke-direct {v0, v2, v1}, Ljava/util/Formatter$FormatSpecifier;->addZeros(Ljava/lang/StringBuilder;I)V

    .line 3685
    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_14b

    if-nez v1, :cond_14b

    .line 3686
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3689
    :cond_14b
    iget v3, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3690
    .local v3, "newW":I
    iget v5, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-eq v5, v14, :cond_166

    .line 3691
    if-eqz v12, :cond_15e

    .line 3692
    iget v5, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    array-length v6, v12

    sub-int/2addr v5, v6

    sub-int/2addr v5, v13

    invoke-direct {v0, v5, v4, v11}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v3

    move v5, v3

    goto :goto_167

    .line 3694
    :cond_15e
    iget v5, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v0, v5, v4, v11}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v3

    move v5, v3

    goto :goto_167

    .line 3690
    :cond_166
    move v5, v3

    .line 3696
    .end local v3    # "newW":I
    .restart local v5    # "newW":I
    :goto_167
    const/4 v3, 0x0

    move-object/from16 v6, p4

    move v14, v1

    move-object/from16 v1, p1

    .end local v1    # "prec":I
    .local v14, "prec":I
    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;ILjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3698
    if-eqz v12, :cond_214

    .line 3699
    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_17c

    const/16 v15, 0x45

    :cond_17c
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3701
    aget-char v3, v12, v19

    .line 3702
    .local v3, "sign":C
    nop

    .line 3703
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3705
    invoke-direct {v0, v1, v12, v13, v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitudeExp(Ljava/lang/StringBuilder;[CILjava/util/Locale;)V

    goto/16 :goto_214

    .line 3707
    .end local v2    # "mant":Ljava/lang/StringBuilder;
    .end local v3    # "sign":C
    .end local v5    # "newW":I
    .end local v12    # "exp":[C
    .end local v14    # "prec":I
    .end local v16    # "expRounded":I
    :cond_18a
    move-object/from16 v1, p1

    move-object/from16 v6, p4

    const/16 v2, 0x61

    if-ne v9, v2, :cond_214

    .line 3708
    move/from16 v2, p7

    .line 3709
    .local v2, "prec":I
    if-ne v10, v14, :cond_198

    .line 3711
    const/4 v2, 0x0

    goto :goto_19b

    .line 3712
    :cond_198
    if-nez v10, :cond_19b

    .line 3713
    const/4 v2, 0x1

    .line 3715
    :cond_19b
    :goto_19b
    invoke-direct {v0, v7, v8, v2}, Ljava/util/Formatter$FormatSpecifier;->hexDouble(DI)Ljava/lang/String;

    move-result-object v3

    .line 3717
    .local v3, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3718
    .local v5, "va":Ljava/lang/StringBuilder;
    sget-object v12, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v12}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v12

    .line 3719
    .local v12, "upper":Z
    if-eqz v12, :cond_1af

    const-string v13, "0X"

    goto :goto_1b1

    :cond_1af
    const-string v13, "0x"

    :goto_1b1
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3721
    sget-object v13, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v13}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v13

    if-eqz v13, :cond_1db

    .line 3722
    const/4 v13, 0x2

    .line 3723
    .local v13, "leadingCharacters":I
    sget-object v14, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v14}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v14

    if-nez v14, :cond_1cf

    sget-object v14, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    .line 3724
    invoke-virtual {v4, v14}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v14

    if-nez v14, :cond_1cf

    if-eqz v11, :cond_1d0

    .line 3725
    :cond_1cf
    const/4 v13, 0x3

    .line 3727
    :cond_1d0
    iget v14, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int/2addr v14, v13

    invoke-direct {v0, v1, v14}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros(Ljava/lang/StringBuilder;I)V

    .line 3730
    .end local v13    # "leadingCharacters":I
    :cond_1db
    const/16 v13, 0x70

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 3731
    .local v14, "idx":I
    if-eqz v12, :cond_1f3

    .line 3732
    move/from16 v15, v19

    invoke-virtual {v3, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 3734
    .local v15, "tmp":Ljava/lang/String;
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 3735
    .end local v15    # "tmp":Ljava/lang/String;
    .local v13, "tmp":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3736
    .end local v13    # "tmp":Ljava/lang/String;
    goto :goto_1f8

    .line 3737
    :cond_1f3
    move/from16 v15, v19

    invoke-virtual {v5, v3, v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 3739
    :goto_1f8
    if-eqz v2, :cond_1fd

    .line 3740
    invoke-direct {v0, v5, v2}, Ljava/util/Formatter$FormatSpecifier;->addZeros(Ljava/lang/StringBuilder;I)V

    .line 3742
    :cond_1fd
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3743
    if-eqz v12, :cond_205

    const/16 v13, 0x50

    goto :goto_207

    :cond_205
    const/16 v13, 0x70

    :goto_207
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3744
    add-int/lit8 v13, v14, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v1, v3, v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_215

    .line 3707
    .end local v2    # "prec":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "va":Ljava/lang/StringBuilder;
    .end local v12    # "upper":Z
    .end local v14    # "idx":I
    :cond_214
    :goto_214
    nop

    .line 3746
    :goto_215
    return-void
.end method

.method private greylist-max-o print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V
    .registers 32
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

    .line 3887
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v4, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    const/4 v2, 0x6

    const/4 v3, -0x1

    const/16 v12, 0x65

    if-ne v8, v12, :cond_da

    .line 3889
    if-ne v9, v3, :cond_15

    goto :goto_16

    :cond_15
    move v2, v9

    :goto_16
    move v13, v2

    .line 3890
    .local v13, "prec":I
    invoke-virtual {v7}, Ljava/math/BigDecimal;->scale()I

    move-result v14

    .line 3891
    .local v14, "scale":I
    invoke-virtual {v7}, Ljava/math/BigDecimal;->precision()I

    move-result v15

    .line 3892
    .local v15, "origPrec":I
    const/4 v2, 0x0

    .line 3895
    .local v2, "nzeros":I
    add-int/lit8 v6, v15, -0x1

    if-le v13, v6, :cond_2a

    .line 3896
    move v6, v15

    .line 3897
    .local v6, "compPrec":I
    add-int/lit8 v16, v15, -0x1

    sub-int v2, v13, v16

    goto :goto_2c

    .line 3899
    .end local v6    # "compPrec":I
    :cond_2a
    add-int/lit8 v6, v13, 0x1

    .line 3902
    .restart local v6    # "compPrec":I
    :goto_2c
    new-instance v12, Ljava/math/MathContext;

    invoke-direct {v12, v6}, Ljava/math/MathContext;-><init>(I)V

    .line 3903
    .local v12, "mc":Ljava/math/MathContext;
    new-instance v11, Ljava/math/BigDecimal;

    .line 3904
    invoke-virtual {v7}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v11, v3, v14, v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    .line 3906
    .local v11, "v":Ljava/math/BigDecimal;
    new-instance v3, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    .line 3907
    invoke-virtual {v11}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v11}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    move/from16 v21, v6

    .end local v6    # "compPrec":I
    .local v21, "compPrec":I
    sget-object v6, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    invoke-direct {v3, v0, v1, v5, v6}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    move-object/from16 v22, v3

    .line 3910
    .local v22, "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual/range {v22 .. v22}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3917
    .local v1, "mant":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    if-eq v15, v3, :cond_5a

    invoke-virtual/range {v22 .. v22}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->hasDot()Z

    move-result v3

    if-nez v3, :cond_69

    :cond_5a
    if-gtz v2, :cond_64

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    .line 3918
    invoke-virtual {v4, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 3919
    :cond_64
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3924
    :cond_69
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros(Ljava/lang/StringBuilder;I)V

    .line 3926
    invoke-virtual/range {v22 .. v22}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exponent()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3927
    .local v3, "exp":Ljava/lang/StringBuilder;
    iget v5, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 3928
    .local v5, "newW":I
    iget v6, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    move-object/from16 v19, v1

    const/4 v1, -0x1

    .end local v1    # "mant":Ljava/lang/StringBuilder;
    .local v19, "mant":Ljava/lang/StringBuilder;
    if-eq v6, v1, :cond_88

    .line 3929
    iget v1, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v1, v6

    const/16 v20, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1, v4, v10}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v5

    .line 3931
    :cond_88
    move-object v1, v3

    .end local v3    # "exp":Ljava/lang/StringBuilder;
    .local v1, "exp":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move-object/from16 v6, v19

    move/from16 v19, v2

    move-object v2, v6

    move-object/from16 v6, p3

    move-object/from16 v18, v11

    move-object v11, v1

    move-object/from16 v1, p1

    .end local v1    # "exp":Ljava/lang/StringBuilder;
    .local v2, "mant":Ljava/lang/StringBuilder;
    .local v11, "exp":Ljava/lang/StringBuilder;
    .local v18, "v":Ljava/math/BigDecimal;
    .local v19, "nzeros":I
    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;ILjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3933
    move-object v0, v1

    move-object/from16 v20, v2

    move-object v1, v4

    move/from16 v23, v5

    .end local v2    # "mant":Ljava/lang/StringBuilder;
    .end local v5    # "newW":I
    .local v20, "mant":Ljava/lang/StringBuilder;
    .local v23, "newW":I
    sget-object v2, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1, v2}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_aa

    const/16 v2, 0x45

    goto :goto_ac

    :cond_aa
    const/16 v2, 0x65

    :goto_ac
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3935
    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v2

    sget-object v3, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v4

    .line 3936
    .local v4, "flags":Ljava/util/Formatter$Flags;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 3937
    .local v2, "sign":C
    nop

    .line 3938
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3940
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    move-object/from16 v6, p3

    move/from16 v17, v2

    move-object v2, v11

    move-object/from16 v16, v12

    move-object/from16 v12, p4

    move-object v11, v0

    move-object/from16 v0, p0

    .end local v11    # "exp":Ljava/lang/StringBuilder;
    .end local v12    # "mc":Ljava/math/MathContext;
    .local v2, "exp":Ljava/lang/StringBuilder;
    .local v16, "mc":Ljava/math/MathContext;
    .local v17, "sign":C
    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;ILjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3941
    .end local v2    # "exp":Ljava/lang/StringBuilder;
    .end local v4    # "flags":Ljava/util/Formatter$Flags;
    .end local v13    # "prec":I
    .end local v14    # "scale":I
    .end local v15    # "origPrec":I
    .end local v16    # "mc":Ljava/math/MathContext;
    .end local v17    # "sign":C
    .end local v18    # "v":Ljava/math/BigDecimal;
    .end local v19    # "nzeros":I
    .end local v20    # "mant":Ljava/lang/StringBuilder;
    .end local v21    # "compPrec":I
    .end local v22    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    .end local v23    # "newW":I
    goto/16 :goto_1da

    :cond_da
    move-object/from16 v11, p1

    move-object v12, v4

    const/4 v3, 0x0

    const/16 v1, 0x66

    if-ne v8, v1, :cond_15a

    .line 3943
    const/4 v1, -0x1

    if-ne v9, v1, :cond_e6

    goto :goto_e7

    :cond_e6
    move v2, v9

    :goto_e7
    move v13, v2

    .line 3944
    .restart local v13    # "prec":I
    invoke-virtual {v7}, Ljava/math/BigDecimal;->scale()I

    move-result v14

    .line 3946
    .restart local v14    # "scale":I
    if-le v14, v13, :cond_10e

    .line 3948
    invoke-virtual {v7}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    .line 3949
    .local v1, "compPrec":I
    if-gt v1, v14, :cond_fc

    .line 3951
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v7, v13, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v7, v2

    .end local p2    # "value":Ljava/math/BigDecimal;
    .local v2, "value":Ljava/math/BigDecimal;
    goto :goto_10e

    .line 3953
    .end local v2    # "value":Ljava/math/BigDecimal;
    .restart local p2    # "value":Ljava/math/BigDecimal;
    :cond_fc
    sub-int v2, v14, v13

    sub-int/2addr v1, v2

    .line 3954
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v7}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    new-instance v5, Ljava/math/MathContext;

    invoke-direct {v5, v1}, Ljava/math/MathContext;-><init>(I)V

    invoke-direct {v2, v4, v14, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    move-object v7, v2

    .line 3959
    .end local v1    # "compPrec":I
    .end local p2    # "value":Ljava/math/BigDecimal;
    .local v7, "value":Ljava/math/BigDecimal;
    :cond_10e
    :goto_10e
    new-instance v1, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;

    .line 3960
    invoke-virtual {v7}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 3961
    invoke-virtual {v7}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    sget-object v5, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    invoke-direct {v1, v0, v2, v4, v5}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;-><init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    move-object v15, v1

    .line 3964
    .local v15, "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mantissa()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3965
    .local v2, "mant":Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v1

    if-ge v1, v13, :cond_12f

    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v1

    sub-int v1, v13, v1

    goto :goto_130

    :cond_12f
    move v1, v3

    .line 3972
    .local v1, "nzeros":I
    :goto_130
    invoke-virtual {v15}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v3

    if-nez v3, :cond_145

    sget-object v3, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v12, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v3

    if-nez v3, :cond_140

    if-lez v1, :cond_145

    .line 3974
    :cond_140
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3979
    :cond_145
    invoke-direct {v0, v2, v1}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros(Ljava/lang/StringBuilder;I)V

    .line 3981
    iget v3, v0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v0, v3, v12, v10}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v5

    const/4 v3, 0x0

    move-object v4, v11

    move v11, v1

    move-object v1, v4

    move-object/from16 v6, p3

    move-object v4, v12

    .end local v1    # "nzeros":I
    .local v11, "nzeros":I
    invoke-direct/range {v0 .. v6}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;ILjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3982
    .end local v2    # "mant":Ljava/lang/StringBuilder;
    .end local v11    # "nzeros":I
    .end local v13    # "prec":I
    .end local v14    # "scale":I
    .end local v15    # "bdl":Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
    goto/16 :goto_1da

    .end local v7    # "value":Ljava/math/BigDecimal;
    .restart local p2    # "value":Ljava/math/BigDecimal;
    :cond_15a
    const/16 v0, 0x67

    if-ne v8, v0, :cond_1d5

    .line 3983
    move/from16 v0, p6

    .line 3984
    .local v0, "prec":I
    const/4 v1, -0x1

    if-ne v9, v1, :cond_166

    .line 3985
    const/4 v0, 0x6

    move v11, v0

    goto :goto_16c

    .line 3986
    :cond_166
    if-nez v9, :cond_16b

    .line 3987
    const/4 v0, 0x1

    move v11, v0

    goto :goto_16c

    .line 3986
    :cond_16b
    move v11, v0

    .line 3989
    .end local v0    # "prec":I
    .local v11, "prec":I
    :goto_16c
    new-instance v0, Ljava/math/MathContext;

    invoke-direct {v0, v11}, Ljava/math/MathContext;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3990
    .end local p2    # "value":Ljava/math/BigDecimal;
    .local v2, "value":Ljava/math/BigDecimal;
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a8

    .line 3991
    const-wide/16 v0, 0x1

    const/4 v3, 0x4

    invoke-static {v0, v1, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_197

    neg-int v3, v11

    .line 3992
    invoke-static {v0, v1, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ne v0, v4, :cond_197

    goto :goto_1a8

    .line 4012
    :cond_197
    add-int/lit8 v6, v11, -0x1

    const/16 v5, 0x65

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    goto :goto_1d3

    .line 3994
    :cond_1a8
    :goto_1a8
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    neg-int v0, v0

    .line 3995
    invoke-virtual {v2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v20, 0x1

    add-int/lit8 v1, v1, -0x1

    add-int v10, v0, v1

    .line 4007
    .local v10, "e":I
    sub-int v0, v11, v10

    add-int/lit8 v6, v0, -0x1

    .line 4009
    .end local v11    # "prec":I
    .local v6, "prec":I
    const/16 v5, 0x66

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    .line 4011
    .end local v10    # "e":I
    nop

    .line 4014
    .end local v6    # "prec":I
    :goto_1d3
    move-object v7, v2

    goto :goto_1da

    .end local v2    # "value":Ljava/math/BigDecimal;
    .restart local p2    # "value":Ljava/math/BigDecimal;
    :cond_1d5
    const/16 v0, 0x61

    if-ne v8, v0, :cond_1da

    .line 4017
    nop

    .line 4019
    .end local p2    # "value":Ljava/math/BigDecimal;
    .restart local v7    # "value":Ljava/math/BigDecimal;
    :cond_1da
    :goto_1da
    return-void
.end method

.method private greylist-max-o print(Ljava/math/BigDecimal;Ljava/util/Locale;)V
    .registers 12
    .param p1, "value"    # Ljava/math/BigDecimal;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3864
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_b

    .line 3865
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 3866
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 3867
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    move v8, v0

    .line 3868
    .local v8, "neg":Z
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v3

    .line 3870
    .local v3, "v":Ljava/math/BigDecimal;
    invoke-direct {p0, v2, v8}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3873
    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget-char v6, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    iget v7, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    move-object v1, p0

    move-object v4, p2

    .end local p2    # "l":Ljava/util/Locale;
    .local v4, "l":Ljava/util/Locale;
    invoke-direct/range {v1 .. v8}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Ljava/util/Formatter$Flags;CIZ)V

    .line 3876
    invoke-direct {p0, v2, v8}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3879
    iget-object p2, v1, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {p2}, Ljava/util/Formatter;->-$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Ljava/util/Formatter$FormatSpecifier;->appendJustified(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 3880
    return-void
.end method

.method private greylist-max-o print(Ljava/math/BigInteger;Ljava/util/Locale;)V
    .registers 15
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 3504
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-ne v0, v10, :cond_11

    move v0, v9

    goto :goto_12

    :cond_11
    move v0, v8

    .line 3505
    .local v0, "neg":Z
    :goto_12
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    .line 3508
    .local v11, "v":Ljava/math/BigInteger;
    invoke-direct {p0, v2, v0}, Ljava/util/Formatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3511
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x64

    if-ne v1, v3, :cond_35

    .line 3512
    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-direct {p0, v1, v4, v0}, Ljava/util/Formatter$FormatSpecifier;->adjustWidth(ILjava/util/Formatter$Flags;Z)I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v7, p2

    .end local p2    # "l":Ljava/util/Locale;
    .local v7, "l":Ljava/util/Locale;
    invoke-direct/range {v1 .. v7}, Ljava/util/Formatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;ILjava/util/Formatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    goto/16 :goto_e3

    .line 3513
    .end local v7    # "l":Ljava/util/Locale;
    .restart local p2    # "l":Ljava/util/Locale;
    :cond_35
    move-object v1, p0

    move-object v7, p2

    .end local p2    # "l":Ljava/util/Locale;
    .restart local v7    # "l":Ljava/util/Locale;
    iget-char p2, v1, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-ne p2, v3, :cond_7f

    .line 3514
    const/16 p2, 0x8

    invoke-virtual {v11, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 3516
    .local p2, "s":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 3517
    .local v3, "len":I
    if-eqz v0, :cond_5a

    iget-object v4, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 3518
    add-int/lit8 v3, v3, 0x1

    .line 3521
    :cond_5a
    iget-object v4, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 3522
    add-int/lit8 v3, v3, 0x1

    .line 3523
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3525
    :cond_6b
    iget-object v4, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 3526
    iget v4, v1, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v4, v3

    invoke-direct {p0, v2, v4}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros(Ljava/lang/StringBuilder;I)V

    .line 3528
    :cond_7b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v3    # "len":I
    .end local p2    # "s":Ljava/lang/String;
    goto :goto_e2

    .line 3529
    :cond_7f
    iget-char p2, v1, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne p2, v3, :cond_e2

    .line 3530
    const/16 p2, 0x10

    invoke-virtual {v11, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 3532
    .restart local p2    # "s":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 3533
    .restart local v3    # "len":I
    if-eqz v0, :cond_a2

    iget-object v4, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 3534
    add-int/lit8 v3, v3, 0x1

    .line 3537
    :cond_a2
    iget-object v4, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 3538
    add-int/lit8 v3, v3, 0x2

    .line 3539
    iget-object v4, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_bb

    const-string v4, "0X"

    goto :goto_bd

    :cond_bb
    const-string v4, "0x"

    :goto_bd
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3541
    :cond_c0
    iget-object v4, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 3542
    iget v4, v1, Ljava/util/Formatter$FormatSpecifier;->width:I

    sub-int/2addr v4, v3

    invoke-direct {p0, v2, v4}, Ljava/util/Formatter$FormatSpecifier;->trailingZeros(Ljava/lang/StringBuilder;I)V

    .line 3544
    :cond_d0
    iget-object v4, v1, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v5, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v4, v5}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 3545
    invoke-direct {p0, p2, v7}, Ljava/util/Formatter$FormatSpecifier;->toUpperCaseWithLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 3546
    :cond_de
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e3

    .line 3529
    .end local v3    # "len":I
    .end local p2    # "s":Ljava/lang/String;
    :cond_e2
    :goto_e2
    nop

    .line 3550
    :goto_e3
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p2

    if-ne p2, v10, :cond_ea

    move v8, v9

    :cond_ea
    invoke-direct {p0, v2, v8}, Ljava/util/Formatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3553
    iget-object p2, v1, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {p2}, Ljava/util/Formatter;->-$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Ljava/util/Formatter$FormatSpecifier;->appendJustified(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 3554
    return-void
.end method

.method private greylist-max-o print(Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)V
    .registers 7
    .param p1, "t"    # Ljava/time/temporal/TemporalAccessor;
    .param p2, "c"    # C
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4365
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4367
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v2, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1, v2}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4368
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v1}, Ljava/util/Formatter;->-$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Ljava/util/Formatter$FormatSpecifier;->toUpperCaseWithLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->appendJustified(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 4370
    :cond_24
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v1}, Ljava/util/Formatter;->-$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/util/Formatter$FormatSpecifier;->appendJustified(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 4372
    :goto_2d
    return-void
.end method

.method private greylist-max-o print(Ljava/util/Calendar;CLjava/util/Locale;)V
    .registers 7
    .param p1, "t"    # Ljava/util/Calendar;
    .param p2, "c"    # C
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4150
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4153
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v2, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1, v2}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4154
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v1}, Ljava/util/Formatter;->-$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Ljava/util/Formatter$FormatSpecifier;->toUpperCaseWithLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/util/Formatter$FormatSpecifier;->appendJustified(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 4156
    :cond_24
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v1}, Ljava/util/Formatter;->-$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/util/Formatter$FormatSpecifier;->appendJustified(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 4158
    :goto_2d
    return-void
.end method

.method private greylist-max-o print(SLjava/util/Locale;)V
    .registers 7
    .param p1, "value"    # S
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3403
    int-to-long v0, p1

    .line 3404
    .local v0, "v":J
    if-gez p1, :cond_14

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_f

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_14

    .line 3407
    :cond_f
    const-wide/32 v2, 0x10000

    add-long/2addr v0, v2

    .line 3408
    nop

    .line 3410
    :cond_14
    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3411
    return-void
.end method

.method private blacklist printBoolean(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 4
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3222
    if-eqz p1, :cond_15

    .line 3223
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    .line 3224
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 3225
    :cond_e
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    :goto_13
    nop

    .local v0, "s":Ljava/lang/String;
    goto :goto_1a

    .line 3227
    .end local v0    # "s":Ljava/lang/String;
    :cond_15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 3228
    .restart local v0    # "s":Ljava/lang/String;
    :goto_1a
    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3229
    return-void
.end method

.method private blacklist printCharacter(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 7
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3173
    if-nez p1, :cond_8

    .line 3174
    const-string v0, "null"

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3175
    return-void

    .line 3177
    :cond_8
    const/4 v0, 0x0

    .line 3178
    .local v0, "s":Ljava/lang/String;
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_16

    .line 3179
    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_81

    .line 3180
    :cond_16
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_38

    .line 3181
    move-object v1, p1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 3182
    .local v1, "i":B
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 3183
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    move-object v0, v2

    .line 3186
    .end local v1    # "i":B
    goto :goto_81

    .line 3185
    .restart local v1    # "i":B
    :cond_32
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 3186
    .end local v1    # "i":B
    :cond_38
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_5a

    .line 3187
    move-object v1, p1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 3188
    .local v1, "i":S
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3189
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    move-object v0, v2

    .line 3192
    .end local v1    # "i":S
    goto :goto_81

    .line 3191
    .restart local v1    # "i":S
    :cond_54
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 3192
    .end local v1    # "i":S
    :cond_5a
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_7c

    .line 3193
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3194
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 3195
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    move-object v0, v2

    .line 3198
    .end local v1    # "i":I
    goto :goto_81

    .line 3197
    .restart local v1    # "i":I
    :cond_76
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 3199
    .end local v1    # "i":I
    :cond_7c
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 3201
    :goto_81
    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3202
    return-void
.end method

.method private greylist-max-o printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 6
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3140
    if-nez p1, :cond_8

    .line 3141
    const-string v0, "null"

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3142
    return-void

    .line 3144
    :cond_8
    const/4 v0, 0x0

    .line 3148
    .local v0, "cal":Ljava/util/Calendar;
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_22

    .line 3151
    if-nez p2, :cond_12

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_13

    :cond_12
    move-object v1, p2

    :goto_13
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 3152
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_5c

    .line 3153
    :cond_22
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_37

    .line 3156
    if-nez p2, :cond_2b

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_2c

    :cond_2b
    move-object v1, p2

    :goto_2c
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 3157
    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_5c

    .line 3158
    :cond_37
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_4a

    .line 3159
    move-object v1, p1

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Calendar;

    .line 3160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    goto :goto_5c

    .line 3161
    :cond_4a
    instance-of v1, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v1, :cond_57

    .line 3162
    move-object v1, p1

    check-cast v1, Ljava/time/temporal/TemporalAccessor;

    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, v2, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)V

    .line 3163
    return-void

    .line 3165
    :cond_57
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 3169
    :goto_5c
    iget-char v1, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/util/Calendar;CLjava/util/Locale;)V

    .line 3170
    return-void
.end method

.method private greylist-max-o printFloat(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3127
    if-nez p1, :cond_8

    .line 3128
    const-string v0, "null"

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_36

    .line 3129
    :cond_8
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_17

    .line 3130
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(FLjava/util/Locale;)V

    goto :goto_36

    .line 3131
    :cond_17
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_26

    .line 3132
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    goto :goto_36

    .line 3133
    :cond_26
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_31

    .line 3134
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigDecimal;Ljava/util/Locale;)V

    goto :goto_36

    .line 3136
    :cond_31
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 3137
    :goto_36
    return-void
.end method

.method private blacklist printHashCode(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 4
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3232
    if-nez p1, :cond_5

    .line 3233
    const-string v0, "null"

    goto :goto_d

    .line 3234
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    nop

    .line 3235
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3236
    return-void
.end method

.method private greylist-max-o printInteger(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3110
    if-nez p1, :cond_8

    .line 3111
    const-string v0, "null"

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_54

    .line 3112
    :cond_8
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_17

    .line 3113
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(BLjava/util/Locale;)V

    goto :goto_54

    .line 3114
    :cond_17
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_26

    .line 3115
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(SLjava/util/Locale;)V

    goto :goto_54

    .line 3116
    :cond_26
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_35

    .line 3117
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(ILjava/util/Locale;)V

    goto :goto_54

    .line 3118
    :cond_35
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_44

    .line 3119
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/util/Formatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    goto :goto_54

    .line 3120
    :cond_44
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_4f

    .line 3121
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/math/BigInteger;Ljava/util/Locale;)V

    goto :goto_54

    .line 3123
    :cond_4f
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 3124
    :goto_54
    return-void
.end method

.method private greylist-max-o printString(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 8
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3205
    instance-of v0, p1, Ljava/util/Formattable;

    if-eqz v0, :cond_27

    .line 3206
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    .line 3207
    .local v0, "fmt":Ljava/util/Formatter;
    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v1

    if-eq v1, p2, :cond_16

    .line 3208
    new-instance v1, Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object v0, v1

    .line 3209
    :cond_16
    move-object v1, p1

    check-cast v1, Ljava/util/Formattable;

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v2}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v2

    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    iget v4, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    .line 3210
    .end local v0    # "fmt":Ljava/util/Formatter;
    goto :goto_47

    .line 3211
    :cond_27
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3212
    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    const/16 v1, 0x73

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter$FormatSpecifier;->failMismatch(Ljava/util/Formatter$Flags;C)V

    .line 3213
    :cond_38
    if-nez p1, :cond_40

    .line 3214
    const-string v0, "null"

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_47

    .line 3216
    :cond_40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3218
    :goto_47
    return-void
.end method

.method private blacklist toUpperCaseWithLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "l"    # Ljava/util/Locale;

    .line 3247
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 3248
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 3247
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    .line 3497
    if-eqz p2, :cond_11

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {v0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3498
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3499
    :cond_11
    return-object p1
.end method

.method private blacklist trailingZeros(Ljava/lang/StringBuilder;I)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "nzeros"    # I

    .line 4143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_b

    .line 4144
    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4146
    .end local v0    # "i":I
    :cond_b
    return-void
.end method

.method private blacklist width(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 2968
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 2970
    if-eqz p1, :cond_28

    .line 2973
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    .line 2974
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    if-ltz v0, :cond_10

    .line 2982
    goto :goto_28

    .line 2975
    :cond_10
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    .end local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .end local p1    # "s":Ljava/lang/String;
    throw v0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_18} :catch_18

    .line 2976
    .restart local p0    # "this":Ljava/util/Formatter$FormatSpecifier;
    .restart local p1    # "s":Ljava/lang/String;
    :catch_18
    move-exception v0

    .line 2979
    .local v0, "x":Ljava/lang/NumberFormatException;
    invoke-static {}, Ljava/util/Formatter;->-$$Nest$smisStrictValidationEnabled()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_28

    .line 2980
    :cond_20
    new-instance v1, Ljava/util/IllegalFormatWidthException;

    const/high16 v2, -0x80000000

    invoke-direct {v1, v2}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v1

    .line 2984
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public greylist-max-o index()I
    .registers 2

    .line 2953
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    return v0
.end method

.method public greylist-max-o print(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3070
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v0, :cond_8

    .line 3071
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 3072
    return-void

    .line 3074
    :cond_8
    iget-char v0, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    sparse-switch v0, :sswitch_data_3c

    .line 3105
    goto :goto_3a

    .line 3093
    :sswitch_e
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printString(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 3094
    goto :goto_3a

    .line 3099
    :sswitch_12
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3100
    goto :goto_3a

    .line 3096
    :sswitch_20
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printHashCode(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 3097
    goto :goto_3a

    .line 3078
    :sswitch_24
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printInteger(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 3079
    goto :goto_3a

    .line 3087
    :sswitch_28
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printCharacter(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 3088
    goto :goto_3a

    .line 3090
    :sswitch_2c
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printBoolean(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 3091
    goto :goto_3a

    .line 3084
    :sswitch_30
    invoke-direct {p0, p1, p2}, Ljava/util/Formatter$FormatSpecifier;->printFloat(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 3085
    goto :goto_3a

    .line 3102
    :sswitch_34
    const-string v0, "%"

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter$FormatSpecifier;->print(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3103
    nop

    .line 3107
    :goto_3a
    return-void

    nop

    :sswitch_data_3c
    .sparse-switch
        0x25 -> :sswitch_34
        0x61 -> :sswitch_30
        0x62 -> :sswitch_2c
        0x63 -> :sswitch_28
        0x64 -> :sswitch_24
        0x65 -> :sswitch_30
        0x66 -> :sswitch_30
        0x67 -> :sswitch_30
        0x68 -> :sswitch_20
        0x6e -> :sswitch_12
        0x6f -> :sswitch_24
        0x73 -> :sswitch_e
        0x78 -> :sswitch_24
    .end sparse-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 3270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3272
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->dup()Ljava/util/Formatter$Flags;

    move-result-object v1

    sget-object v2, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v1, v2}, Ljava/util/Formatter$Flags;->remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v1

    .line 3273
    .local v1, "dupf":Ljava/util/Formatter$Flags;
    invoke-virtual {v1}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3274
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    if-lez v2, :cond_29

    .line 3275
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3276
    :cond_29
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_33

    .line 3277
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3278
    :cond_33
    iget v2, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    if-eq v2, v3, :cond_42

    .line 3279
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Formatter$FormatSpecifier;->precision:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3280
    :cond_42
    iget-boolean v2, p0, Ljava/util/Formatter$FormatSpecifier;->dt:Z

    if-eqz v2, :cond_58

    .line 3281
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_53

    const/16 v2, 0x54

    goto :goto_55

    :cond_53
    const/16 v2, 0x74

    :goto_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3282
    :cond_58
    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifier;->f:Ljava/util/Formatter$Flags;

    sget-object v3, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 3283
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    goto :goto_6b

    :cond_69
    iget-char v2, p0, Ljava/util/Formatter$FormatSpecifier;->c:C

    .line 3282
    :goto_6b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
