.class Landroid/icu/text/SpoofChecker$SpoofData;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpoofData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;,
        Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;
    }
.end annotation


# static fields
.field private static final greylist-max-o DATA_FORMAT:I = 0x43667520

.field private static final greylist-max-o IS_ACCEPTABLE:Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;


# instance fields
.field greylist-max-o fCFUKeys:[I

.field greylist-max-o fCFUStrings:Ljava/lang/String;

.field greylist-max-o fCFUValues:[S


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1854
    new-instance v0, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;-><init>(Landroid/icu/text/SpoofChecker-IA;)V

    sput-object v0, Landroid/icu/text/SpoofChecker$SpoofData;->IS_ACCEPTABLE:Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1886
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/SpoofChecker-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/SpoofChecker$SpoofData;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1891
    const v0, 0x43667520

    sget-object v1, Landroid/icu/text/SpoofChecker$SpoofData;->IS_ACCEPTABLE:Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    .line 1892
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 1893
    invoke-direct {p0, p1}, Landroid/icu/text/SpoofChecker$SpoofData;->readData(Ljava/nio/ByteBuffer;)V

    .line 1894
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/ByteBuffer;Landroid/icu/text/SpoofChecker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/SpoofChecker$SpoofData;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static greylist-max-o getDefault()Landroid/icu/text/SpoofChecker$SpoofData;
    .registers 4

    .line 1875
    invoke-static {}, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->-$$Nest$sfgetEXCEPTION()Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1880
    invoke-static {}, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->-$$Nest$sfgetINSTANCE()Landroid/icu/text/SpoofChecker$SpoofData;

    move-result-object v0

    return-object v0

    .line 1876
    :cond_b
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load default confusables data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->-$$Nest$sfgetEXCEPTION()Ljava/io/IOException;

    move-result-object v2

    .line 1877
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpoofChecker"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o readData(Ljava/nio/ByteBuffer;)V
    .registers 13
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1923
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1924
    .local v0, "magic":I
    const v1, 0x3845fdef

    if-ne v0, v1, :cond_4f

    .line 1928
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 1930
    .local v1, "dataFormatVersion":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 1932
    .local v2, "dataLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 1933
    .local v3, "CFUKeysOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 1935
    .local v4, "CFUKeysSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 1936
    .local v5, "CFUValuesOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 1938
    .local v6, "CFUValuesSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 1939
    .local v7, "CFUStringTableOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 1945
    .local v8, "CFUStringTableSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 1946
    invoke-static {p1, v3}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1947
    const/4 v9, 0x0

    invoke-static {p1, v4, v9}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v10

    iput-object v10, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    .line 1949
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 1950
    invoke-static {p1, v5}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1951
    invoke-static {p1, v6, v9}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v10

    iput-object v10, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    .line 1953
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 1954
    invoke-static {p1, v7}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1955
    invoke-static {p1, v8, v9}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    .line 1956
    return-void

    .line 1925
    .end local v1    # "dataFormatVersion":I
    .end local v2    # "dataLength":I
    .end local v3    # "CFUKeysOffset":I
    .end local v4    # "CFUKeysSize":I
    .end local v5    # "CFUValuesOffset":I
    .end local v6    # "CFUValuesSize":I
    .end local v7    # "CFUStringTableOffset":I
    .end local v8    # "CFUStringTableSize":I
    :cond_4f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad Spoof Check Data."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-o appendValueTo(ILjava/lang/StringBuilder;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "dest"    # Ljava/lang/StringBuilder;

    .line 2023
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    aget v0, v0, p1

    invoke-static {v0}, Landroid/icu/text/SpoofChecker$ConfusableDataUtils;->keyToLength(I)I

    move-result v0

    .line 2027
    .local v0, "stringLength":I
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    aget-short v1, v1, p1

    .line 2028
    .local v1, "value":S
    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 2029
    int-to-char v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 2031
    :cond_14
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    add-int v3, v1, v0

    invoke-virtual {p2, v2, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2033
    :goto_1b
    return-void
.end method

.method public greylist-max-o codePointAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 2011
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    aget v0, v0, p1

    invoke-static {v0}, Landroid/icu/text/SpoofChecker$ConfusableDataUtils;->keyToCodePoint(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o confusableLookup(ILjava/lang/StringBuilder;)V
    .registers 7
    .param p1, "inChar"    # I
    .param p2, "dest"    # Ljava/lang/StringBuilder;

    .line 1968
    const/4 v0, 0x0

    .line 1969
    .local v0, "lo":I
    invoke-virtual {p0}, Landroid/icu/text/SpoofChecker$SpoofData;->length()I

    move-result v1

    .line 1971
    .local v1, "hi":I
    :cond_5
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 1972
    .local v2, "mid":I
    invoke-virtual {p0, v2}, Landroid/icu/text/SpoofChecker$SpoofData;->codePointAt(I)I

    move-result v3

    if-le v3, p1, :cond_11

    .line 1973
    move v1, v2

    goto :goto_18

    .line 1974
    :cond_11
    invoke-virtual {p0, v2}, Landroid/icu/text/SpoofChecker$SpoofData;->codePointAt(I)I

    move-result v3

    if-ge v3, p1, :cond_1e

    .line 1975
    move v0, v2

    .line 1981
    .end local v2    # "mid":I
    :goto_18
    sub-int v2, v1, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_5

    goto :goto_20

    .line 1978
    .restart local v2    # "mid":I
    :cond_1e
    move v0, v2

    .line 1979
    nop

    .line 1984
    .end local v2    # "mid":I
    :goto_20
    invoke-virtual {p0, v0}, Landroid/icu/text/SpoofChecker$SpoofData;->codePointAt(I)I

    move-result v2

    if-eq v2, p1, :cond_2a

    .line 1985
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1986
    return-void

    .line 1990
    :cond_2a
    invoke-virtual {p0, v0, p2}, Landroid/icu/text/SpoofChecker$SpoofData;->appendValueTo(ILjava/lang/StringBuilder;)V

    .line 1991
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 1898
    instance-of v0, p1, Landroid/icu/text/SpoofChecker$SpoofData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1899
    return v1

    .line 1901
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/text/SpoofChecker$SpoofData;

    .line 1902
    .local v0, "otherData":Landroid/icu/text/SpoofChecker$SpoofData;
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    iget-object v3, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1903
    return v1

    .line 1904
    :cond_14
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    iget-object v3, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1905
    return v1

    .line 1906
    :cond_1f
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    .line 1907
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1908
    return v1

    .line 1909
    :cond_38
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1914
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    .line 1915
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    .line 1916
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1914
    return v0
.end method

.method public greylist-max-o length()I
    .registers 2

    .line 2000
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    array-length v0, v0

    return v0
.end method
