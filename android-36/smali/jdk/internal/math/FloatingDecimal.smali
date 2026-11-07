.class public Ljdk/internal/math/FloatingDecimal;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;,
        Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;,
        Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;,
        Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;,
        Ljdk/internal/math/FloatingDecimal$HexFloatPattern;,
        Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;,
        Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist A2BC_NEGATIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

.field static final blacklist A2BC_NEGATIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

.field static final blacklist A2BC_NOT_A_NUMBER:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

.field static final blacklist A2BC_POSITIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

.field static final blacklist A2BC_POSITIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

.field private static final blacklist B2AC_NEGATIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

.field private static final blacklist B2AC_NEGATIVE_ZERO:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

.field private static final blacklist B2AC_NOT_A_NUMBER:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

.field private static final blacklist B2AC_POSITIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

.field private static final blacklist B2AC_POSITIVE_ZERO:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

.field static final blacklist BIG_DECIMAL_EXPONENT:I = 0x144

.field static final blacklist EXP_ONE:J = 0x3ff0000000000000L

.field static final blacklist EXP_SHIFT:I = 0x34

.field static final blacklist FRACT_HOB:J = 0x10000000000000L

.field private static final blacklist INFINITY_LENGTH:I

.field private static final blacklist INFINITY_REP:Ljava/lang/String; = "Infinity"

.field static final blacklist INT_DECIMAL_DIGITS:I = 0x9

.field static final blacklist MAX_DECIMAL_DIGITS:I = 0xf

.field static final blacklist MAX_DECIMAL_EXPONENT:I = 0x134

.field static final blacklist MAX_NDIGITS:I = 0x44c

.field static final blacklist MAX_SMALL_BIN_EXP:I = 0x3e

.field static final blacklist MIN_DECIMAL_EXPONENT:I = -0x144

.field static final blacklist MIN_SMALL_BIN_EXP:I = -0x15

.field private static final blacklist NAN_LENGTH:I

.field private static final blacklist NAN_REP:Ljava/lang/String; = "NaN"

.field static final blacklist SINGLE_EXP_SHIFT:I = 0x17

.field static final blacklist SINGLE_FRACT_HOB:I = 0x800000

.field static final blacklist SINGLE_MAX_DECIMAL_DIGITS:I = 0x7

.field static final blacklist SINGLE_MAX_DECIMAL_EXPONENT:I = 0x26

.field static final blacklist SINGLE_MAX_NDIGITS:I = 0xc8

.field static final blacklist SINGLE_MIN_DECIMAL_EXPONENT:I = -0x2d

.field private static final blacklist threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 37
    nop

    .line 246
    const-string v0, "Infinity"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Ljdk/internal/math/FloatingDecimal;->INFINITY_LENGTH:I

    .line 248
    const-string v1, "NaN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sput v2, Ljdk/internal/math/FloatingDecimal;->NAN_LENGTH:I

    .line 250
    new-instance v2, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Ljdk/internal/math/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    .line 251
    new-instance v0, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    const-string v2, "-Infinity"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Ljdk/internal/math/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    .line 252
    new-instance v0, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    invoke-direct {v0, v1, v3}, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Ljdk/internal/math/FloatingDecimal;->B2AC_NOT_A_NUMBER:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    .line 253
    new-instance v0, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;

    new-array v1, v4, [C

    const/16 v2, 0x30

    aput-char v2, v1, v3

    invoke-direct {v0, v3, v1}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;-><init>(Z[C)V

    sput-object v0, Ljdk/internal/math/FloatingDecimal;->B2AC_POSITIVE_ZERO:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    .line 254
    new-instance v0, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;

    new-array v1, v4, [C

    aput-char v2, v1, v3

    invoke-direct {v0, v4, v1}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;-><init>(Z[C)V

    sput-object v0, Ljdk/internal/math/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    .line 977
    new-instance v0, Ljdk/internal/math/FloatingDecimal$1;

    invoke-direct {v0}, Ljdk/internal/math/FloatingDecimal$1;-><init>()V

    sput-object v0, Ljdk/internal/math/FloatingDecimal;->threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;

    .line 1025
    new-instance v0, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v3}, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Ljdk/internal/math/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1026
    new-instance v0, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2, v3}, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Ljdk/internal/math/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1027
    new-instance v0, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v2, v3}, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Ljdk/internal/math/FloatingDecimal;->A2BC_NOT_A_NUMBER:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1028
    new-instance v0, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Ljdk/internal/math/FloatingDecimal;->A2BC_POSITIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    .line 1029
    new-instance v0, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    const-wide/high16 v1, -0x8000000000000000L

    const/high16 v3, -0x80000000

    invoke-direct {v0, v1, v2, v3}, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    sput-object v0, Ljdk/internal/math/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendTo(DLjava/lang/Appendable;)V
    .registers 4
    .param p0, "d"    # D
    .param p2, "buf"    # Ljava/lang/Appendable;

    .line 89
    invoke-static {p0, p1}, Ljdk/internal/math/FloatingDecimal;->getBinaryToASCIIConverter(D)Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;->appendTo(Ljava/lang/Appendable;)V

    .line 90
    return-void
.end method

.method public static blacklist appendTo(FLjava/lang/Appendable;)V
    .registers 3
    .param p0, "f"    # F
    .param p1, "buf"    # Ljava/lang/Appendable;

    .line 98
    invoke-static {p0}, Ljdk/internal/math/FloatingDecimal;->getBinaryToASCIIConverter(F)Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;->appendTo(Ljava/lang/Appendable;)V

    .line 99
    return-void
.end method

.method private static blacklist getBinaryToASCIIBuffer()Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;
    .registers 1

    .line 986
    sget-object v0, Ljdk/internal/math/FloatingDecimal;->threadLocalBinaryToASCIIBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;

    return-object v0
.end method

.method public static blacklist getBinaryToASCIIConverter(D)Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;
    .registers 3
    .param p0, "d"    # D

    .line 1738
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljdk/internal/math/FloatingDecimal;->getBinaryToASCIIConverter(DZ)Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getBinaryToASCIIConverter(DZ)Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;
    .registers 13
    .param p0, "d"    # D
    .param p2, "isCompatibleFormat"    # Z

    .line 1750
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1751
    .local v0, "dBits":J
    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 1752
    .local v2, "isNegative":Z
    :goto_10
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v6, v0

    .line 1753
    .local v6, "fractBits":J
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v8, v0

    const/16 v3, 0x34

    shr-long/2addr v8, v3

    long-to-int v3, v8

    .line 1755
    .local v3, "binExp":I
    const/16 v8, 0x7ff

    if-ne v3, v8, :cond_30

    .line 1756
    cmp-long v4, v6, v4

    if-nez v4, :cond_2d

    .line 1757
    if-eqz v2, :cond_2a

    sget-object v4, Ljdk/internal/math/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_2c

    :cond_2a
    sget-object v4, Ljdk/internal/math/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    :goto_2c
    return-object v4

    .line 1759
    :cond_2d
    sget-object v4, Ljdk/internal/math/FloatingDecimal;->B2AC_NOT_A_NUMBER:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    return-object v4

    .line 1767
    :cond_30
    if-nez v3, :cond_4b

    .line 1768
    cmp-long v4, v6, v4

    if-nez v4, :cond_3e

    .line 1770
    if-eqz v2, :cond_3b

    sget-object v4, Ljdk/internal/math/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_3d

    :cond_3b
    sget-object v4, Ljdk/internal/math/FloatingDecimal;->B2AC_POSITIVE_ZERO:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    :goto_3d
    return-object v4

    .line 1772
    :cond_3e
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    .line 1773
    .local v4, "leadingZeros":I
    add-int/lit8 v5, v4, -0xb

    .line 1774
    .local v5, "shift":I
    shl-long/2addr v6, v5

    .line 1775
    rsub-int/lit8 v3, v5, 0x1

    .line 1776
    rsub-int/lit8 v4, v4, 0x40

    .line 1777
    .end local v5    # "shift":I
    .local v4, "nSignificantBits":I
    move v8, v4

    goto :goto_51

    .line 1778
    .end local v4    # "nSignificantBits":I
    :cond_4b
    const-wide/high16 v4, 0x10000000000000L

    or-long/2addr v6, v4

    .line 1779
    const/16 v4, 0x35

    move v8, v4

    .line 1781
    .local v8, "nSignificantBits":I
    :goto_51
    add-int/lit16 v5, v3, -0x3ff

    .line 1782
    .end local v3    # "binExp":I
    .local v5, "binExp":I
    invoke-static {}, Ljdk/internal/math/FloatingDecimal;->getBinaryToASCIIBuffer()Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;

    move-result-object v4

    .line 1783
    .local v4, "buf":Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;
    invoke-static {v4, v2}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;->-$$Nest$msetSign(Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;Z)V

    .line 1785
    move v9, p2

    .end local p2    # "isCompatibleFormat":Z
    .local v9, "isCompatibleFormat":Z
    invoke-static/range {v4 .. v9}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;->-$$Nest$mdtoa(Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;IJIZ)V

    .line 1786
    return-object v4
.end method

.method private static blacklist getBinaryToASCIIConverter(F)Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;
    .registers 11
    .param p0, "f"    # F

    .line 1790
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1791
    .local v0, "fBits":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 1792
    .local v1, "isNegative":Z
    :goto_c
    const v2, 0x7fffff

    and-int/2addr v2, v0

    .line 1793
    .local v2, "fractBits":I
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x17

    .line 1795
    .local v3, "binExp":I
    const/16 v4, 0xff

    if-ne v3, v4, :cond_2b

    .line 1796
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_28

    .line 1797
    if-eqz v1, :cond_25

    sget-object v4, Ljdk/internal/math/FloatingDecimal;->B2AC_NEGATIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_27

    :cond_25
    sget-object v4, Ljdk/internal/math/FloatingDecimal;->B2AC_POSITIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    :goto_27
    return-object v4

    .line 1799
    :cond_28
    sget-object v4, Ljdk/internal/math/FloatingDecimal;->B2AC_NOT_A_NUMBER:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    return-object v4

    .line 1807
    :cond_2b
    if-nez v3, :cond_44

    .line 1808
    if-nez v2, :cond_37

    .line 1810
    if-eqz v1, :cond_34

    sget-object v4, Ljdk/internal/math/FloatingDecimal;->B2AC_NEGATIVE_ZERO:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    goto :goto_36

    :cond_34
    sget-object v4, Ljdk/internal/math/FloatingDecimal;->B2AC_POSITIVE_ZERO:Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    :goto_36
    return-object v4

    .line 1812
    :cond_37
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v4

    .line 1813
    .local v4, "leadingZeros":I
    add-int/lit8 v5, v4, -0x8

    .line 1814
    .local v5, "shift":I
    shl-int/2addr v2, v5

    .line 1815
    rsub-int/lit8 v3, v5, 0x1

    .line 1816
    rsub-int/lit8 v4, v4, 0x20

    .line 1817
    .end local v5    # "shift":I
    .local v4, "nSignificantBits":I
    move v8, v4

    goto :goto_4a

    .line 1818
    .end local v4    # "nSignificantBits":I
    :cond_44
    const/high16 v4, 0x800000

    or-int/2addr v2, v4

    .line 1819
    const/16 v4, 0x18

    move v8, v4

    .line 1821
    .local v8, "nSignificantBits":I
    :goto_4a
    add-int/lit8 v5, v3, -0x7f

    .line 1822
    .end local v3    # "binExp":I
    .local v5, "binExp":I
    invoke-static {}, Ljdk/internal/math/FloatingDecimal;->getBinaryToASCIIBuffer()Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;

    move-result-object v4

    .line 1823
    .local v4, "buf":Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;
    invoke-static {v4, v1}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;->-$$Nest$msetSign(Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;Z)V

    .line 1825
    int-to-long v6, v2

    const/16 v3, 0x1d

    shl-long/2addr v6, v3

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;->-$$Nest$mdtoa(Ljdk/internal/math/FloatingDecimal$BinaryToASCIIBuffer;IJIZ)V

    .line 1826
    return-object v4
.end method

.method static blacklist getHexDigit(Ljava/lang/String;I)I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "position"    # I

    .line 2544
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2545
    .local v0, "value":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_10

    if-ge v0, v1, :cond_10

    .line 2549
    return v0

    .line 2546
    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected failure of digit conversion of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2547
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static blacklist parseDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 110
    invoke-static {p0}, Ljdk/internal/math/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v0

    invoke-interface {v0}, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist parseFloat(Ljava/lang/String;)F
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 122
    invoke-static {p0}, Ljdk/internal/math/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v0

    invoke-interface {v0}, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;->floatValue()F

    move-result v0

    return v0
.end method

.method static blacklist parseHexString(Ljava/lang/String;)Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;
    .registers 45
    .param p0, "s"    # Ljava/lang/String;

    .line 2078
    move-object/from16 v1, p0

    invoke-static {}, Ljdk/internal/math/FloatingDecimal$HexFloatPattern;->-$$Nest$sfgetVALUE()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2079
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 2080
    .local v3, "validInput":Z
    if-eqz v3, :cond_34b

    .line 2108
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 2109
    .local v4, "group1":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v4, :cond_22

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    move v6, v0

    goto :goto_23

    :cond_22
    move v6, v5

    .line 2144
    .local v6, "isNegative":Z
    :goto_23
    const/4 v7, 0x0

    .line 2147
    .local v7, "leftDigits":I
    const/4 v8, 0x0

    .line 2161
    .local v8, "rightDigits":I
    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    .local v11, "group4":Ljava/lang/String;
    if-eqz v10, :cond_36

    .line 2163
    invoke-static {v11}, Ljdk/internal/math/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2164
    .local v10, "significandString":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_64

    .line 2168
    .end local v10    # "significandString":Ljava/lang/String;
    :cond_36
    const/4 v10, 0x6

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljdk/internal/math/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2169
    .local v10, "group6":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    .line 2172
    const/4 v12, 0x7

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 2173
    .local v12, "group7":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    .line 2176
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2177
    if-nez v10, :cond_56

    const-string v14, ""

    goto :goto_57

    :cond_56
    move-object v14, v10

    :goto_57
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 2182
    .end local v12    # "group7":Ljava/lang/String;
    .local v10, "significandString":Ljava/lang/String;
    :goto_64
    invoke-static {v10}, Ljdk/internal/math/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2183
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    .line 2188
    .local v12, "signifLength":I
    if-lt v7, v0, :cond_72

    .line 2189
    add-int/lit8 v13, v7, -0x1

    mul-int/2addr v13, v9

    .local v13, "exponentAdjust":I
    goto :goto_77

    .line 2191
    .end local v13    # "exponentAdjust":I
    :cond_72
    sub-int v9, v8, v12

    add-int/2addr v9, v0

    mul-int/lit8 v13, v9, -0x4

    .line 2197
    .restart local v13    # "exponentAdjust":I
    :goto_77
    if-nez v12, :cond_81

    .line 2198
    if-eqz v6, :cond_7e

    sget-object v0, Ljdk/internal/math/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_80

    :cond_7e
    sget-object v0, Ljdk/internal/math/FloatingDecimal;->A2BC_POSITIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_80
    return-object v0

    .line 2210
    .end local v7    # "leftDigits":I
    .end local v8    # "rightDigits":I
    .end local v11    # "group4":Ljava/lang/String;
    :cond_81
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 2211
    .local v7, "group8":Ljava/lang/String;
    if-eqz v7, :cond_94

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    goto :goto_94

    :cond_92
    move v8, v5

    goto :goto_95

    :cond_94
    :goto_94
    move v8, v0

    .line 2214
    .local v8, "positiveExponent":Z
    :goto_95
    const/16 v9, 0x9

    :try_start_97
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_97 .. :try_end_9f} :catch_330

    int-to-long v14, v9

    .line 2234
    .local v14, "unsignedRawExponent":J
    nop

    .line 2237
    const-wide/16 v16, -0x1

    const-wide/16 v18, 0x1

    if-eqz v8, :cond_aa

    move-wide/from16 v20, v18

    goto :goto_ac

    :cond_aa
    move-wide/from16 v20, v16

    :goto_ac
    mul-long v20, v20, v14

    .line 2241
    .local v20, "rawExponent":J
    move v9, v0

    int-to-long v0, v13

    add-long v0, v20, v0

    .line 2247
    .local v0, "exponent":J
    const/4 v11, 0x0

    .line 2248
    .local v11, "round":Z
    const/16 v22, 0x0

    .line 2250
    .local v22, "sticky":Z
    const-wide/16 v23, 0x0

    .line 2257
    .local v23, "significand":J
    move/from16 v25, v9

    invoke-static {v10, v5}, Ljdk/internal/math/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v9

    move/from16 v26, v6

    .end local v6    # "isNegative":Z
    .local v26, "isNegative":Z
    int-to-long v5, v9

    .line 2268
    .local v5, "leadingDigit":J
    cmp-long v9, v5, v18

    const-wide/16 v27, 0x2

    const-wide/16 v29, 0x7

    const/16 v31, 0x34

    const-wide/16 v32, 0x3

    if-nez v9, :cond_d3

    .line 2269
    shl-long v34, v5, v31

    or-long v23, v23, v34

    .line 2270
    const/16 v9, 0x30

    .local v9, "nextShift":I
    goto :goto_101

    .line 2272
    .end local v9    # "nextShift":I
    :cond_d3
    cmp-long v9, v5, v32

    if-gtz v9, :cond_e2

    .line 2273
    const/16 v9, 0x33

    shl-long v34, v5, v9

    or-long v23, v23, v34

    .line 2274
    const/16 v9, 0x2f

    .line 2275
    .restart local v9    # "nextShift":I
    add-long v0, v0, v18

    goto :goto_101

    .line 2276
    .end local v9    # "nextShift":I
    :cond_e2
    cmp-long v9, v5, v29

    if-gtz v9, :cond_f1

    .line 2277
    const/16 v9, 0x32

    shl-long v34, v5, v9

    or-long v23, v23, v34

    .line 2278
    const/16 v9, 0x2e

    .line 2279
    .restart local v9    # "nextShift":I
    add-long v0, v0, v27

    goto :goto_101

    .line 2280
    .end local v9    # "nextShift":I
    :cond_f1
    const-wide/16 v34, 0xf

    cmp-long v9, v5, v34

    if-gtz v9, :cond_324

    .line 2281
    const/16 v9, 0x31

    shl-long v34, v5, v9

    or-long v23, v23, v34

    .line 2282
    const/16 v9, 0x2d

    .line 2283
    .restart local v9    # "nextShift":I
    add-long v0, v0, v32

    .line 2306
    :goto_101
    const/16 v34, 0x0

    .line 2307
    .local v34, "i":I
    const/16 v34, 0x1

    move-wide/from16 v42, v23

    move/from16 v23, v9

    move/from16 v9, v34

    move-wide/from16 v34, v42

    .line 2308
    .local v9, "i":I
    .local v23, "nextShift":I
    .local v34, "significand":J
    :goto_10d
    if-ge v9, v12, :cond_128

    if-ltz v23, :cond_128

    .line 2310
    move-object/from16 v36, v2

    .end local v2    # "m":Ljava/util/regex/Matcher;
    .local v36, "m":Ljava/util/regex/Matcher;
    invoke-static {v10, v9}, Ljdk/internal/math/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v2

    move/from16 v37, v3

    .end local v3    # "validInput":Z
    .local v37, "validInput":Z
    int-to-long v2, v2

    .line 2311
    .local v2, "currentDigit":J
    shl-long v38, v2, v23

    or-long v34, v34, v38

    .line 2312
    nop

    .end local v2    # "currentDigit":J
    add-int/lit8 v23, v23, -0x4

    .line 2309
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v36

    move/from16 v3, v37

    goto :goto_10d

    .line 2308
    .end local v36    # "m":Ljava/util/regex/Matcher;
    .end local v37    # "validInput":Z
    .local v2, "m":Ljava/util/regex/Matcher;
    .restart local v3    # "validInput":Z
    :cond_128
    move-object/from16 v36, v2

    move/from16 v37, v3

    .line 2320
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "validInput":Z
    .restart local v36    # "m":Ljava/util/regex/Matcher;
    .restart local v37    # "validInput":Z
    if-ge v9, v12, :cond_1e4

    .line 2321
    const-wide/16 v38, 0x0

    invoke-static {v10, v9}, Ljdk/internal/math/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 2325
    .local v2, "currentDigit":J
    const-wide/16 v40, 0x8

    packed-switch v23, :pswitch_data_370

    .line 2358
    move-wide/from16 v27, v2

    .end local v2    # "currentDigit":J
    .local v27, "currentDigit":J
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Unexpected shift distance remainder."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2329
    .end local v27    # "currentDigit":J
    .restart local v2    # "currentDigit":J
    :pswitch_144
    const-wide/16 v27, 0xe

    and-long v27, v2, v27

    shr-long v27, v27, v25

    or-long v27, v34, v27

    .line 2330
    .end local v34    # "significand":J
    .local v27, "significand":J
    and-long v29, v2, v18

    cmp-long v24, v29, v38

    if-eqz v24, :cond_155

    move/from16 v24, v25

    goto :goto_157

    :cond_155
    const/16 v24, 0x0

    .line 2331
    .end local v11    # "round":Z
    .local v24, "round":Z
    :goto_157
    move/from16 v11, v24

    move-wide/from16 v34, v27

    goto/16 :goto_1c2

    .line 2336
    .end local v24    # "round":Z
    .end local v27    # "significand":J
    .restart local v11    # "round":Z
    .restart local v34    # "significand":J
    :pswitch_15d
    const-wide/16 v29, 0xc

    and-long v29, v2, v29

    const/16 v24, 0x2

    shr-long v29, v29, v24

    or-long v29, v34, v29

    .line 2337
    .end local v34    # "significand":J
    .local v29, "significand":J
    and-long v27, v2, v27

    cmp-long v24, v27, v38

    if-eqz v24, :cond_170

    move/from16 v24, v25

    goto :goto_172

    :cond_170
    const/16 v24, 0x0

    .line 2338
    .end local v11    # "round":Z
    .restart local v24    # "round":Z
    :goto_172
    and-long v27, v2, v18

    cmp-long v11, v27, v38

    if-eqz v11, :cond_17b

    move/from16 v11, v25

    goto :goto_17c

    :cond_17b
    const/4 v11, 0x0

    :goto_17c
    move/from16 v22, v11

    .line 2339
    move/from16 v11, v24

    move-wide/from16 v34, v29

    goto :goto_1c2

    .line 2343
    .end local v24    # "round":Z
    .end local v29    # "significand":J
    .restart local v11    # "round":Z
    .restart local v34    # "significand":J
    :pswitch_183
    and-long v27, v2, v40

    const/16 v24, 0x3

    shr-long v27, v27, v24

    or-long v27, v34, v27

    .line 2345
    .end local v34    # "significand":J
    .restart local v27    # "significand":J
    const-wide/16 v29, 0x4

    and-long v29, v2, v29

    cmp-long v24, v29, v38

    if-eqz v24, :cond_196

    move/from16 v24, v25

    goto :goto_198

    :cond_196
    const/16 v24, 0x0

    .line 2346
    .end local v11    # "round":Z
    .restart local v24    # "round":Z
    :goto_198
    and-long v29, v2, v32

    cmp-long v11, v29, v38

    if-eqz v11, :cond_1a1

    move/from16 v11, v25

    goto :goto_1a2

    :cond_1a1
    const/4 v11, 0x0

    :goto_1a2
    move/from16 v22, v11

    .line 2347
    move/from16 v11, v24

    move-wide/from16 v34, v27

    goto :goto_1c2

    .line 2352
    .end local v24    # "round":Z
    .end local v27    # "significand":J
    .restart local v11    # "round":Z
    .restart local v34    # "significand":J
    :pswitch_1a9
    and-long v27, v2, v40

    cmp-long v24, v27, v38

    if-eqz v24, :cond_1b2

    move/from16 v24, v25

    goto :goto_1b4

    :cond_1b2
    const/16 v24, 0x0

    .line 2354
    .end local v11    # "round":Z
    .restart local v24    # "round":Z
    :goto_1b4
    and-long v27, v2, v29

    cmp-long v11, v27, v38

    if-eqz v11, :cond_1bd

    move/from16 v11, v25

    goto :goto_1be

    :cond_1bd
    const/4 v11, 0x0

    :goto_1be
    move/from16 v22, v11

    .line 2355
    move/from16 v11, v24

    .line 2367
    .end local v24    # "round":Z
    .restart local v11    # "round":Z
    :goto_1c2
    add-int/lit8 v9, v9, 0x1

    .line 2368
    :goto_1c4
    if-ge v9, v12, :cond_1e0

    if-nez v22, :cond_1e0

    .line 2369
    move-wide/from16 v27, v2

    .end local v2    # "currentDigit":J
    .local v27, "currentDigit":J
    invoke-static {v10, v9}, Ljdk/internal/math/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 2370
    .end local v27    # "currentDigit":J
    .restart local v2    # "currentDigit":J
    if-nez v22, :cond_1d9

    cmp-long v24, v2, v38

    if-eqz v24, :cond_1d6

    goto :goto_1d9

    :cond_1d6
    const/16 v24, 0x0

    goto :goto_1db

    :cond_1d9
    :goto_1d9
    move/from16 v24, v25

    :goto_1db
    move/from16 v22, v24

    .line 2371
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c4

    .line 2368
    :cond_1e0
    move-wide/from16 v27, v2

    .line 2379
    .end local v2    # "currentDigit":J
    move v2, v9

    goto :goto_1e7

    .line 2320
    :cond_1e4
    const-wide/16 v38, 0x0

    move v2, v9

    .line 2379
    .end local v9    # "i":I
    .local v2, "i":I
    :goto_1e7
    if-eqz v26, :cond_1ec

    const/high16 v3, -0x80000000

    goto :goto_1ed

    :cond_1ec
    const/4 v3, 0x0

    .line 2380
    .local v3, "floatBits":I
    :goto_1ed
    const-wide/16 v27, -0x7e

    cmp-long v9, v0, v27

    if-ltz v9, :cond_238

    .line 2381
    const-wide/16 v27, 0x7f

    cmp-long v9, v0, v27

    if-lez v9, :cond_202

    .line 2383
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    or-int/2addr v3, v9

    move/from16 v28, v2

    move-object/from16 v25, v10

    goto/16 :goto_274

    .line 2385
    :cond_202
    const/16 v24, 0x1c

    .line 2386
    .local v24, "threshShift":I
    shl-long v27, v18, v24

    sub-long v27, v27, v18

    and-long v27, v34, v27

    cmp-long v9, v27, v38

    if-nez v9, :cond_215

    if-nez v11, :cond_215

    if-eqz v22, :cond_213

    goto :goto_215

    :cond_213
    const/4 v9, 0x0

    goto :goto_217

    :cond_215
    :goto_215
    move/from16 v9, v25

    :goto_217
    move/from16 v27, v9

    .line 2387
    .local v27, "floatSticky":Z
    move/from16 v28, v2

    move/from16 v29, v3

    .end local v2    # "i":I
    .end local v3    # "floatBits":I
    .local v28, "i":I
    .local v29, "floatBits":I
    ushr-long v2, v34, v24

    long-to-int v2, v2

    .line 2388
    .local v2, "iValue":I
    and-int/lit8 v3, v2, 0x3

    move/from16 v9, v25

    if-ne v3, v9, :cond_228

    if-eqz v27, :cond_22a

    .line 2389
    :cond_228
    add-int/lit8 v2, v2, 0x1

    .line 2391
    :cond_22a
    long-to-int v3, v0

    add-int/lit8 v3, v3, 0x7e

    shl-int/lit8 v3, v3, 0x17

    shr-int/lit8 v25, v2, 0x1

    add-int v3, v3, v25

    or-int v3, v29, v3

    .line 2392
    .end local v2    # "iValue":I
    .end local v24    # "threshShift":I
    .end local v27    # "floatSticky":Z
    .end local v29    # "floatBits":I
    .restart local v3    # "floatBits":I
    move-object/from16 v25, v10

    goto :goto_274

    .line 2394
    .end local v28    # "i":I
    .local v2, "i":I
    :cond_238
    move/from16 v28, v2

    move/from16 v29, v3

    .end local v2    # "i":I
    .end local v3    # "floatBits":I
    .restart local v28    # "i":I
    .restart local v29    # "floatBits":I
    const-wide/16 v2, -0x96

    cmp-long v2, v0, v2

    if-gez v2, :cond_247

    move-object/from16 v25, v10

    move/from16 v3, v29

    goto :goto_274

    .line 2398
    :cond_247
    const-wide/16 v2, -0x62

    sub-long/2addr v2, v0

    long-to-int v2, v2

    .line 2399
    .local v2, "threshShift":I
    nop

    .line 2400
    nop

    .line 2401
    shl-long v24, v18, v2

    sub-long v24, v24, v18

    and-long v24, v34, v24

    cmp-long v3, v24, v38

    if-nez v3, :cond_25e

    if-nez v11, :cond_25e

    if-eqz v22, :cond_25c

    goto :goto_25e

    :cond_25c
    const/4 v3, 0x0

    goto :goto_25f

    :cond_25e
    :goto_25e
    const/4 v3, 0x1

    .line 2402
    .local v3, "floatSticky":Z
    :goto_25f
    move-object/from16 v25, v10

    .end local v10    # "significandString":Ljava/lang/String;
    .local v25, "significandString":Ljava/lang/String;
    ushr-long v9, v34, v2

    long-to-int v10, v9

    .line 2403
    .local v10, "iValue":I
    and-int/lit8 v9, v10, 0x3

    move/from16 v27, v2

    const/4 v2, 0x1

    .end local v2    # "threshShift":I
    .local v27, "threshShift":I
    if-ne v9, v2, :cond_26d

    if-eqz v3, :cond_26f

    .line 2404
    :cond_26d
    add-int/lit8 v10, v10, 0x1

    .line 2406
    :cond_26f
    shr-int/lit8 v2, v10, 0x1

    or-int v2, v29, v2

    move v3, v2

    .line 2409
    .end local v10    # "iValue":I
    .end local v27    # "threshShift":I
    .end local v29    # "floatBits":I
    .local v3, "floatBits":I
    :goto_274
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 2412
    .local v2, "fValue":F
    const-wide/16 v29, 0x3ff

    cmp-long v10, v0, v29

    if-lez v10, :cond_286

    .line 2414
    if-eqz v26, :cond_283

    sget-object v9, Ljdk/internal/math/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_285

    :cond_283
    sget-object v9, Ljdk/internal/math/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_285
    return-object v9

    .line 2416
    :cond_286
    cmp-long v10, v0, v29

    const-wide v32, 0xfffffffffffffL

    if-gtz v10, :cond_2a4

    const-wide/16 v40, -0x3fe

    cmp-long v10, v0, v40

    if-ltz v10, :cond_2a4

    .line 2430
    add-long v29, v0, v29

    shl-long v16, v29, v31

    const-wide/high16 v29, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v16, v16, v29

    and-long v29, v34, v32

    or-long v16, v16, v29

    move-wide/from16 v29, v0

    .end local v34    # "significand":J
    .local v16, "significand":J
    goto :goto_2f9

    .line 2439
    .end local v16    # "significand":J
    .restart local v34    # "significand":J
    :cond_2a4
    const-wide/16 v29, -0x433

    cmp-long v10, v0, v29

    if-gez v10, :cond_2b2

    .line 2443
    if-eqz v26, :cond_2af

    sget-object v9, Ljdk/internal/math/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_2b1

    :cond_2af
    sget-object v9, Ljdk/internal/math/FloatingDecimal;->A2BC_POSITIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_2b1
    return-object v9

    .line 2451
    :cond_2b2
    if-nez v22, :cond_2b9

    if-eqz v11, :cond_2b7

    goto :goto_2b9

    :cond_2b7
    const/4 v10, 0x0

    goto :goto_2ba

    :cond_2b9
    :goto_2b9
    const/4 v10, 0x1

    .line 2452
    .end local v22    # "sticky":Z
    .local v10, "sticky":Z
    :goto_2ba
    const/4 v11, 0x0

    .line 2460
    long-to-int v9, v0

    add-int/lit16 v9, v9, 0x432

    const/16 v24, 0x1

    add-int/lit8 v22, v9, 0x1

    rsub-int/lit8 v9, v22, 0x35

    .line 2462
    .local v9, "bitsDiscarded":I
    nop

    .line 2466
    add-int/lit8 v22, v9, -0x1

    shl-long v29, v18, v22

    and-long v29, v34, v29

    cmp-long v22, v29, v38

    if-eqz v22, :cond_2d2

    const/16 v22, 0x1

    goto :goto_2d4

    :cond_2d2
    const/16 v22, 0x0

    :goto_2d4
    move/from16 v11, v22

    .line 2467
    move-wide/from16 v29, v0

    const/4 v0, 0x1

    .end local v0    # "exponent":J
    .local v29, "exponent":J
    if-le v9, v0, :cond_2f1

    .line 2470
    add-int/lit8 v1, v9, -0x1

    shl-long v0, v16, v1

    not-long v0, v0

    .line 2471
    .local v0, "mask":J
    if-nez v10, :cond_2ec

    and-long v16, v34, v0

    cmp-long v16, v16, v38

    if-eqz v16, :cond_2e9

    goto :goto_2ec

    :cond_2e9
    const/16 v16, 0x0

    goto :goto_2ee

    :cond_2ec
    :goto_2ec
    const/16 v16, 0x1

    :goto_2ee
    move/from16 v22, v16

    .end local v10    # "sticky":Z
    .local v16, "sticky":Z
    goto :goto_2f3

    .line 2467
    .end local v0    # "mask":J
    .end local v16    # "sticky":Z
    .restart local v10    # "sticky":Z
    :cond_2f1
    move/from16 v22, v10

    .line 2475
    .end local v10    # "sticky":Z
    .restart local v22    # "sticky":Z
    :goto_2f3
    shr-long v0, v34, v9

    .line 2477
    .end local v34    # "significand":J
    .local v0, "significand":J
    and-long v16, v0, v32

    or-long v16, v16, v38

    .line 2509
    .end local v0    # "significand":J
    .end local v9    # "bitsDiscarded":I
    .local v16, "significand":J
    :goto_2f9
    and-long v0, v16, v18

    cmp-long v0, v0, v38

    if-nez v0, :cond_301

    const/4 v0, 0x1

    goto :goto_302

    :cond_301
    const/4 v0, 0x0

    .line 2510
    .local v0, "leastZero":Z
    :goto_302
    if-eqz v0, :cond_308

    if-eqz v11, :cond_308

    if-nez v22, :cond_30c

    :cond_308
    if-nez v0, :cond_30e

    if-eqz v11, :cond_30e

    .line 2512
    :cond_30c
    add-long v16, v16, v18

    .line 2515
    :cond_30e
    if-eqz v26, :cond_319

    .line 2516
    const-wide/high16 v9, -0x8000000000000000L

    or-long v9, v16, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    goto :goto_31d

    .line 2517
    :cond_319
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    :goto_31d
    nop

    .line 2519
    .local v9, "value":D
    new-instance v1, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;

    invoke-direct {v1, v9, v10, v2}, Ljdk/internal/math/FloatingDecimal$PreparedASCIIToBinaryBuffer;-><init>(DF)V

    return-object v1

    .line 2285
    .end local v9    # "value":D
    .end local v16    # "significand":J
    .end local v25    # "significandString":Ljava/lang/String;
    .end local v28    # "i":I
    .end local v29    # "exponent":J
    .end local v36    # "m":Ljava/util/regex/Matcher;
    .end local v37    # "validInput":Z
    .local v0, "exponent":J
    .local v2, "m":Ljava/util/regex/Matcher;
    .local v3, "validInput":Z
    .local v10, "significandString":Ljava/lang/String;
    .local v23, "significand":J
    :cond_324
    move-object/from16 v36, v2

    move/from16 v37, v3

    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "validInput":Z
    .restart local v36    # "m":Ljava/util/regex/Matcher;
    .restart local v37    # "validInput":Z
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Result from digit conversion too large!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2216
    .end local v0    # "exponent":J
    .end local v5    # "leadingDigit":J
    .end local v11    # "round":Z
    .end local v14    # "unsignedRawExponent":J
    .end local v20    # "rawExponent":J
    .end local v22    # "sticky":Z
    .end local v23    # "significand":J
    .end local v26    # "isNegative":Z
    .end local v36    # "m":Ljava/util/regex/Matcher;
    .end local v37    # "validInput":Z
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "validInput":Z
    .restart local v6    # "isNegative":Z
    :catch_330
    move-exception v0

    move-object/from16 v36, v2

    move/from16 v37, v3

    move/from16 v26, v6

    move-object/from16 v25, v10

    .line 2230
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "validInput":Z
    .end local v6    # "isNegative":Z
    .end local v10    # "significandString":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v25    # "significandString":Ljava/lang/String;
    .restart local v26    # "isNegative":Z
    .restart local v36    # "m":Ljava/util/regex/Matcher;
    .restart local v37    # "validInput":Z
    if-eqz v26, :cond_343

    .line 2231
    if-eqz v8, :cond_340

    sget-object v1, Ljdk/internal/math/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_34a

    :cond_340
    sget-object v1, Ljdk/internal/math/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_34a

    .line 2232
    :cond_343
    if-eqz v8, :cond_348

    sget-object v1, Ljdk/internal/math/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_34a

    :cond_348
    sget-object v1, Ljdk/internal/math/FloatingDecimal;->A2BC_POSITIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    .line 2230
    :goto_34a
    return-object v1

    .line 2082
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "group1":Ljava/lang/String;
    .end local v7    # "group8":Ljava/lang/String;
    .end local v8    # "positiveExponent":Z
    .end local v12    # "signifLength":I
    .end local v13    # "exponentAdjust":I
    .end local v25    # "significandString":Ljava/lang/String;
    .end local v26    # "isNegative":Z
    .end local v36    # "m":Ljava/util/regex/Matcher;
    .end local v37    # "validInput":Z
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "validInput":Z
    :cond_34b
    move-object/from16 v36, v2

    move/from16 v37, v3

    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "validInput":Z
    .restart local v36    # "m":Ljava/util/regex/Matcher;
    .restart local v37    # "validInput":Z
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For input string: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_370
    .packed-switch -0x4
        :pswitch_1a9
        :pswitch_183
        :pswitch_15d
        :pswitch_144
    .end packed-switch
.end method

.method static blacklist readJavaFormatString(Ljava/lang/String;)Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;
    .registers 24
    .param p0, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1831
    const/4 v1, 0x0

    .line 1832
    .local v1, "isNegative":Z
    const/4 v2, 0x0

    .line 1838
    .local v2, "signSeen":Z
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_6} :catch_1bb

    move-object v3, v0

    .line 1840
    .end local p0    # "in":Ljava/lang/String;
    .local v3, "in":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1841
    .local v0, "len":I
    if-eqz v0, :cond_1b1

    .line 1844
    const/4 v4, 0x0

    .line 1845
    .local v4, "i":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_12
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_12} :catch_1b9

    packed-switch v5, :pswitch_data_1de

    :pswitch_15
    goto :goto_1a

    .line 1847
    :pswitch_16
    const/4 v1, 0x1

    .line 1850
    :pswitch_17
    add-int/lit8 v4, v4, 0x1

    .line 1851
    const/4 v2, 0x1

    .line 1853
    :goto_1a
    :try_start_1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_1e
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1a .. :try_end_1e} :catch_1ad

    .line 1854
    .local v5, "c":C
    const/16 v6, 0x4e

    if-ne v5, v6, :cond_37

    .line 1855
    sub-int v6, v0, v4

    :try_start_24
    sget v7, Ljdk/internal/math/FloatingDecimal;->NAN_LENGTH:I

    if-ne v6, v7, :cond_33

    const-string v6, "NaN"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_33

    .line 1856
    sget-object v6, Ljdk/internal/math/FloatingDecimal;->A2BC_NOT_A_NUMBER:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    return-object v6

    .line 1859
    :cond_33
    move/from16 v17, v2

    goto/16 :goto_196

    .line 1860
    :cond_37
    const/16 v6, 0x49

    if-ne v5, v6, :cond_55

    .line 1861
    sub-int v6, v0, v4

    sget v7, Ljdk/internal/math/FloatingDecimal;->INFINITY_LENGTH:I

    if-ne v6, v7, :cond_51

    const-string v6, "Infinity"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_51

    .line 1862
    if-eqz v1, :cond_4e

    sget-object v6, Ljdk/internal/math/FloatingDecimal;->A2BC_NEGATIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_50

    :cond_4e
    sget-object v6, Ljdk/internal/math/FloatingDecimal;->A2BC_POSITIVE_INFINITY:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_50
    return-object v6

    .line 1865
    :cond_51
    move/from16 v17, v2

    goto/16 :goto_196

    .line 1866
    :cond_55
    const/16 v6, 0x30

    if-ne v5, v6, :cond_70

    .line 1867
    add-int/lit8 v7, v4, 0x1

    if-le v0, v7, :cond_70

    .line 1868
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1869
    .local v7, "ch":C
    const/16 v8, 0x78

    if-eq v7, v8, :cond_6b

    const/16 v8, 0x58

    if-ne v7, v8, :cond_70

    .line 1870
    :cond_6b
    invoke-static {v3}, Ljdk/internal/math/FloatingDecimal;->parseHexString(Ljava/lang/String;)Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    move-result-object v6
    :try_end_6f
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_24 .. :try_end_6f} :catch_1b9

    return-object v6

    .line 1875
    .end local v7    # "ch":C
    :cond_70
    :try_start_70
    new-array v7, v0, [C
    :try_end_72
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_70 .. :try_end_72} :catch_1ad

    .line 1876
    .local v7, "digits":[C
    const/4 v8, 0x0

    .line 1877
    .local v8, "decSeen":Z
    const/4 v9, 0x0

    .line 1878
    .local v9, "nDigits":I
    const/4 v10, 0x0

    .line 1879
    .local v10, "decPt":I
    const/4 v11, 0x0

    .line 1880
    .local v11, "nLeadZero":I
    const/4 v12, 0x0

    .line 1883
    .local v12, "nTrailZero":I
    :goto_77
    const-string v13, "multiple points"

    const/16 v14, 0x2e

    if-ge v4, v0, :cond_9a

    .line 1884
    :try_start_7d
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move v5, v15

    .line 1885
    if-ne v5, v6, :cond_87

    .line 1886
    add-int/lit8 v11, v11, 0x1

    goto :goto_91

    .line 1887
    :cond_87
    if-ne v5, v14, :cond_9a

    .line 1888
    if-nez v8, :cond_94

    .line 1892
    move v10, v4

    .line 1893
    if-eqz v2, :cond_90

    .line 1894
    add-int/lit8 v10, v10, -0x1

    .line 1896
    :cond_90
    const/4 v8, 0x1

    .line 1900
    :goto_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 1890
    :cond_94
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isNegative":Z
    .end local v2    # "signSeen":Z
    .end local v3    # "in":Ljava/lang/String;
    throw v6

    .line 1903
    .restart local v1    # "isNegative":Z
    .restart local v2    # "signSeen":Z
    .restart local v3    # "in":Ljava/lang/String;
    :cond_9a
    :goto_9a
    const/16 v15, 0x39

    if-ge v4, v0, :cond_d5

    .line 1904
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v5, v16

    .line 1905
    const/16 v14, 0x31

    if-lt v5, v14, :cond_b4

    if-gt v5, v15, :cond_b4

    .line 1906
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "nDigits":I
    .local v14, "nDigits":I
    aput-char v5, v7, v9

    .line 1907
    const/4 v9, 0x0

    move v12, v9

    move v9, v14

    const/16 v14, 0x2e

    .end local v12    # "nTrailZero":I
    .local v9, "nTrailZero":I
    goto :goto_cc

    .line 1908
    .end local v14    # "nDigits":I
    .local v9, "nDigits":I
    .restart local v12    # "nTrailZero":I
    :cond_b4
    if-ne v5, v6, :cond_c0

    .line 1909
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "nDigits":I
    .restart local v14    # "nDigits":I
    aput-char v5, v7, v9

    .line 1910
    add-int/lit8 v12, v12, 0x1

    move v9, v14

    const/16 v14, 0x2e

    goto :goto_cc

    .line 1911
    .end local v14    # "nDigits":I
    .restart local v9    # "nDigits":I
    :cond_c0
    const/16 v14, 0x2e

    if-ne v5, v14, :cond_d5

    .line 1912
    if-nez v8, :cond_cf

    .line 1916
    move v10, v4

    .line 1917
    if-eqz v2, :cond_cb

    .line 1918
    add-int/lit8 v10, v10, -0x1

    .line 1920
    :cond_cb
    const/4 v8, 0x1

    .line 1924
    :goto_cc
    add-int/lit8 v4, v4, 0x1

    goto :goto_9a

    .line 1914
    :cond_cf
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isNegative":Z
    .end local v2    # "signSeen":Z
    .end local v3    # "in":Ljava/lang/String;
    throw v6
    :try_end_d5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7d .. :try_end_d5} :catch_1b9

    .line 1926
    .restart local v1    # "isNegative":Z
    .restart local v2    # "signSeen":Z
    .restart local v3    # "in":Ljava/lang/String;
    :cond_d5
    sub-int/2addr v9, v12

    .line 1946
    if-nez v9, :cond_da

    const/4 v14, 0x1

    goto :goto_db

    :cond_da
    const/4 v14, 0x0

    .line 1947
    .local v14, "isZero":Z
    :goto_db
    if-eqz v14, :cond_e4

    if-eqz v11, :cond_e0

    goto :goto_e4

    .line 1951
    :cond_e0
    move/from16 v17, v2

    goto/16 :goto_196

    .line 1958
    :cond_e4
    :goto_e4
    if-eqz v8, :cond_e9

    .line 1959
    sub-int v16, v10, v11

    .local v16, "decExp":I
    goto :goto_eb

    .line 1961
    .end local v16    # "decExp":I
    :cond_e9
    add-int v16, v9, v12

    .line 1967
    .restart local v16    # "decExp":I
    :goto_eb
    if-ge v4, v0, :cond_16a

    :try_start_ed
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v5, v13

    const/16 v15, 0x65

    if-eq v13, v15, :cond_101

    const/16 v13, 0x45

    if-ne v5, v13, :cond_fb

    goto :goto_101

    :cond_fb
    move/from16 v17, v2

    move/from16 v2, v16

    goto/16 :goto_16e

    .line 1968
    :cond_101
    :goto_101
    const/4 v13, 0x1

    .line 1969
    .local v13, "expSign":I
    const/4 v15, 0x0

    .line 1970
    .local v15, "expVal":I
    const v6, 0xccccccc

    .line 1971
    .local v6, "reallyBig":I
    const/16 v19, 0x0

    .line 1972
    .local v19, "expOverflow":Z
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v20
    :try_end_10e
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_ed .. :try_end_10e} :catch_1ad

    packed-switch v20, :pswitch_data_1e8

    :pswitch_111
    goto :goto_115

    .line 1974
    :pswitch_112
    const/4 v13, -0x1

    .line 1977
    :pswitch_113
    add-int/lit8 v4, v4, 0x1

    .line 1979
    :goto_115
    move/from16 v20, v4

    .line 1981
    .local v20, "expAt":I
    :goto_117
    if-ge v4, v0, :cond_139

    .line 1982
    if-lt v15, v6, :cond_11d

    .line 1985
    const/16 v19, 0x1

    .line 1987
    :cond_11d
    add-int/lit8 v21, v4, 0x1

    .end local v4    # "i":I
    .local v21, "i":I
    :try_start_11f
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_123
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_11f .. :try_end_123} :catch_1b9

    move v5, v4

    .line 1988
    const/16 v4, 0x30

    if-lt v5, v4, :cond_135

    const/16 v4, 0x39

    if-gt v5, v4, :cond_135

    .line 1989
    mul-int/lit8 v17, v15, 0xa

    add-int/lit8 v22, v5, -0x30

    add-int v15, v17, v22

    move/from16 v4, v21

    goto :goto_117

    .line 1991
    :cond_135
    add-int/lit8 v21, v21, -0x1

    .line 1992
    move/from16 v4, v21

    .line 1995
    .end local v21    # "i":I
    .restart local v4    # "i":I
    :cond_139
    move/from16 v17, v2

    .end local v2    # "signSeen":Z
    .local v17, "signSeen":Z
    add-int/lit16 v2, v9, 0x144

    add-int/2addr v2, v12

    .line 1996
    .local v2, "expLimit":I
    if-nez v19, :cond_14a

    if-le v15, v2, :cond_143

    goto :goto_14a

    .line 2024
    :cond_143
    mul-int v18, v13, v15

    add-int v16, v16, v18

    move/from16 v18, v5

    goto :goto_160

    .line 2001
    :cond_14a
    :goto_14a
    if-nez v19, :cond_15a

    move/from16 v18, v5

    const/4 v5, 0x1

    .end local v5    # "c":C
    .local v18, "c":C
    if-ne v13, v5, :cond_15c

    if-gez v16, :cond_15c

    add-int v5, v15, v16

    if-ge v5, v2, :cond_15c

    .line 2004
    add-int v16, v16, v15

    goto :goto_160

    .line 2001
    .end local v18    # "c":C
    .restart local v5    # "c":C
    :cond_15a
    move/from16 v18, v5

    .line 2019
    .end local v5    # "c":C
    .restart local v18    # "c":C
    :cond_15c
    mul-int v5, v13, v2

    move/from16 v16, v5

    .line 2033
    :goto_160
    move/from16 v5, v20

    .end local v20    # "expAt":I
    .local v5, "expAt":I
    if-eq v4, v5, :cond_169

    move/from16 v2, v16

    move/from16 v5, v18

    goto :goto_16e

    .line 2034
    :cond_169
    goto :goto_196

    .line 1967
    .end local v6    # "reallyBig":I
    .end local v13    # "expSign":I
    .end local v15    # "expVal":I
    .end local v17    # "signSeen":Z
    .end local v18    # "c":C
    .end local v19    # "expOverflow":Z
    .local v2, "signSeen":Z
    .local v5, "c":C
    :cond_16a
    move/from16 v17, v2

    .end local v2    # "signSeen":Z
    .restart local v17    # "signSeen":Z
    move/from16 v2, v16

    .line 2041
    .end local v16    # "decExp":I
    .local v2, "decExp":I
    :goto_16e
    if-ge v4, v0, :cond_199

    add-int/lit8 v6, v0, -0x1

    if-ne v4, v6, :cond_195

    .line 2043
    :try_start_174
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v13, 0x66

    if-eq v6, v13, :cond_199

    .line 2044
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v13, 0x46

    if-eq v6, v13, :cond_199

    .line 2045
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v13, 0x64

    if-eq v6, v13, :cond_199

    .line 2046
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v13, 0x44

    if-ne v6, v13, :cond_195

    goto :goto_199

    .line 2047
    :cond_195
    nop

    .line 2054
    .end local v0    # "len":I
    .end local v4    # "i":I
    .end local v5    # "c":C
    .end local v7    # "digits":[C
    .end local v8    # "decSeen":Z
    .end local v9    # "nDigits":I
    .end local v10    # "decPt":I
    .end local v11    # "nLeadZero":I
    .end local v12    # "nTrailZero":I
    .end local v14    # "isZero":Z
    .end local v17    # "signSeen":Z
    .local v2, "signSeen":Z
    :goto_196
    move/from16 v2, v17

    .end local v2    # "signSeen":Z
    .restart local v17    # "signSeen":Z
    goto :goto_1be

    .line 2049
    .restart local v0    # "len":I
    .local v2, "decExp":I
    .restart local v4    # "i":I
    .restart local v5    # "c":C
    .restart local v7    # "digits":[C
    .restart local v8    # "decSeen":Z
    .restart local v9    # "nDigits":I
    .restart local v10    # "decPt":I
    .restart local v11    # "nLeadZero":I
    .restart local v12    # "nTrailZero":I
    .restart local v14    # "isZero":Z
    :cond_199
    :goto_199
    if-eqz v14, :cond_1a3

    .line 2050
    if-eqz v1, :cond_1a0

    sget-object v6, Ljdk/internal/math/FloatingDecimal;->A2BC_NEGATIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    goto :goto_1a2

    :cond_1a0
    sget-object v6, Ljdk/internal/math/FloatingDecimal;->A2BC_POSITIVE_ZERO:Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;

    :goto_1a2
    return-object v6

    .line 2052
    :cond_1a3
    new-instance v6, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;

    invoke-direct {v6, v1, v2, v7, v9}, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;-><init>(ZI[CI)V
    :try_end_1a8
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_174 .. :try_end_1a8} :catch_1a9

    return-object v6

    .line 2053
    .end local v0    # "len":I
    .end local v2    # "decExp":I
    .end local v4    # "i":I
    .end local v5    # "c":C
    .end local v7    # "digits":[C
    .end local v8    # "decSeen":Z
    .end local v9    # "nDigits":I
    .end local v10    # "decPt":I
    .end local v11    # "nLeadZero":I
    .end local v12    # "nTrailZero":I
    .end local v14    # "isZero":Z
    :catch_1a9
    move-exception v0

    move/from16 v2, v17

    goto :goto_1be

    .end local v17    # "signSeen":Z
    .local v2, "signSeen":Z
    :catch_1ad
    move-exception v0

    move/from16 v17, v2

    .end local v2    # "signSeen":Z
    .restart local v17    # "signSeen":Z
    goto :goto_1be

    .line 1842
    .end local v17    # "signSeen":Z
    .restart local v0    # "len":I
    .restart local v2    # "signSeen":Z
    :cond_1b1
    :try_start_1b1
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "empty String"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "isNegative":Z
    .end local v2    # "signSeen":Z
    .end local v3    # "in":Ljava/lang/String;
    throw v4
    :try_end_1b9
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1b1 .. :try_end_1b9} :catch_1b9

    .line 2053
    .end local v0    # "len":I
    .restart local v1    # "isNegative":Z
    .restart local v2    # "signSeen":Z
    .restart local v3    # "in":Ljava/lang/String;
    :catch_1b9
    move-exception v0

    goto :goto_1be

    .end local v3    # "in":Ljava/lang/String;
    .restart local p0    # "in":Ljava/lang/String;
    :catch_1bb
    move-exception v0

    move-object/from16 v3, p0

    .line 2054
    .end local p0    # "in":Ljava/lang/String;
    .restart local v3    # "in":Ljava/lang/String;
    :goto_1be
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "For input string: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_1de
    .packed-switch 0x2b
        :pswitch_17
        :pswitch_15
        :pswitch_16
    .end packed-switch

    :pswitch_data_1e8
    .packed-switch 0x2b
        :pswitch_113
        :pswitch_111
        :pswitch_112
    .end packed-switch
.end method

.method static blacklist stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 2528
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_27

    .line 2529
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 2530
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_21

    .line 2531
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2529
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2534
    .end local v0    # "i":I
    :cond_24
    const-string v0, ""

    return-object v0

    .line 2536
    :cond_27
    return-object p0
.end method

.method public static blacklist toJavaFormatString(D)Ljava/lang/String;
    .registers 3
    .param p0, "d"    # D

    .line 70
    invoke-static {p0, p1}, Ljdk/internal/math/FloatingDecimal;->getBinaryToASCIIConverter(D)Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toJavaFormatString(F)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # F

    .line 80
    invoke-static {p0}, Ljdk/internal/math/FloatingDecimal;->getBinaryToASCIIConverter(F)Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;

    move-result-object v0

    invoke-interface {v0}, Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
