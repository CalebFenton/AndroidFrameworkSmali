.class Landroid/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# static fields
.field public static final blacklist BYTES_OFFSET_UNKNOWN:J = -0x1L


# instance fields
.field public final greylist-max-o bytes:[B

.field public final blacklist bytesOffset:J

.field public final greylist-max-o format:I

.field public final greylist-max-o numberOfComponents:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(IIJ[B)V
    .registers 6
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytesOffset"    # J
    .param p5, "bytes"    # [B

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    .line 741
    iput p2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 742
    iput-wide p3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytesOffset:J

    .line 743
    iput-object p5, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 744
    return-void
.end method

.method synthetic constructor blacklist <init>(IIJ[BLandroid/media/ExifInterface-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    return-void
.end method

.method private constructor greylist-max-o <init>(II[B)V
    .registers 10
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .line 736
    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .end local p1    # "format":I
    .end local p2    # "numberOfComponents":I
    .end local p3    # "bytes":[B
    .local v1, "format":I
    .local v2, "numberOfComponents":I
    .local v5, "bytes":[B
    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 737
    return-void
.end method

.method public static greylist-max-o createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .line 790
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_29

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_29

    .line 791
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    new-array v3, v1, [B

    aput-byte v2, v3, v0

    .line 792
    .local v3, "bytes":[B
    new-instance v0, Landroid/media/ExifInterface$ExifAttribute;

    array-length v2, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0

    .line 794
    .end local v3    # "bytes":[B
    :cond_29
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 795
    .local v0, "ascii":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createDouble(DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 844
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 8
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 834
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 836
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 837
    array-length v2, p0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_1f

    aget-wide v4, p0, v3

    .line 838
    .local v4, "value":D
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 837
    .end local v4    # "value":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 840
    :cond_1f
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createSLong(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 3
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 785
    filled-new-array {p0}, [I

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 7
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 775
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 777
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 778
    array-length v2, p0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_1f

    aget v4, p0, v3

    .line 779
    .local v4, "value":I
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 778
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 781
    :cond_1f
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createSRational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 830
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 9
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 819
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 821
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 822
    array-length v2, p0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_28

    aget-object v4, p0, v3

    .line 823
    .local v4, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 824
    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 822
    .end local v4    # "value":Landroid/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 826
    :cond_28
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 800
    .local v0, "ascii":[B
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x2

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static greylist-max-o createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 771
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 9
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 761
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 763
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 764
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_1f

    aget-wide v4, p0, v3

    .line 765
    .local v4, "value":J
    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 764
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 767
    :cond_1f
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 815
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 9
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 804
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 806
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 807
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_27

    aget-object v4, p0, v3

    .line 808
    .local v4, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 809
    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 807
    .end local v4    # "value":Landroid/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 811
    :cond_27
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 3
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 757
    filled-new-array {p0}, [I

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 8
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 747
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 749
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 750
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_1f

    aget v4, p0, v3

    .line 751
    .local v4, "value":I
    int-to-short v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 750
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 753
    :cond_1f
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method private greylist-max-o getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 14
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 854
    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v2, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 856
    .local v0, "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    invoke-virtual {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 857
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v2, :pswitch_data_14e

    .line 958
    return-object v1

    .line 951
    :pswitch_11
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v2, v2, [D

    .line 952
    .local v2, "values":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    iget v4, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v4, :cond_23

    .line 953
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 952
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 955
    .end local v3    # "i":I
    :cond_23
    return-object v2

    .line 944
    .end local v2    # "values":[D
    :pswitch_24
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v2, v2, [D

    .line 945
    .restart local v2    # "values":[D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_29
    iget v4, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v4, :cond_37

    .line 946
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v4

    float-to-double v4, v4

    aput-wide v4, v2, v3

    .line 945
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 948
    .end local v3    # "i":I
    :cond_37
    return-object v2

    .line 935
    .end local v2    # "values":[D
    :pswitch_38
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v2, v2, [Landroid/media/ExifInterface$Rational;

    .line 936
    .local v2, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3d
    iget v4, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v4, :cond_56

    .line 937
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    int-to-long v6, v4

    .line 938
    .local v6, "numerator":J
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    int-to-long v8, v4

    .line 939
    .local v8, "denominator":J
    new-instance v5, Landroid/media/ExifInterface$Rational;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface-IA;)V

    aput-object v5, v2, v3

    .line 936
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 941
    .end local v3    # "i":I
    :cond_56
    return-object v2

    .line 928
    .end local v2    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_57
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v2, v2, [I

    .line 929
    .local v2, "values":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5c
    iget v4, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v4, :cond_69

    .line 930
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 929
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 932
    .end local v3    # "i":I
    :cond_69
    return-object v2

    .line 921
    .end local v2    # "values":[I
    :pswitch_6a
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v2, v2, [I

    .line 922
    .restart local v2    # "values":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6f
    iget v4, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v4, :cond_7c

    .line 923
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v4

    aput v4, v2, v3

    .line 922
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 925
    .end local v3    # "i":I
    :cond_7c
    return-object v2

    .line 912
    .end local v2    # "values":[I
    :pswitch_7d
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v2, v2, [Landroid/media/ExifInterface$Rational;

    .line 913
    .local v2, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_82
    iget v4, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v4, :cond_9a

    .line 914
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    move-wide v7, v4

    .line 915
    .local v7, "numerator":J
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v9

    .line 916
    .local v9, "denominator":J
    new-instance v6, Landroid/media/ExifInterface$Rational;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface-IA;)V

    aput-object v6, v2, v3

    .line 913
    .end local v7    # "numerator":J
    .end local v9    # "denominator":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 918
    .end local v3    # "i":I
    :cond_9a
    return-object v2

    .line 905
    .end local v2    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_9b
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v2, v2, [J

    .line 906
    .local v2, "values":[J
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a0
    iget v4, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v4, :cond_ad

    .line 907
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 906
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 909
    .end local v3    # "i":I
    :cond_ad
    return-object v2

    .line 898
    .end local v2    # "values":[J
    :pswitch_ae
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v2, v2, [I

    .line 899
    .local v2, "values":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b3
    iget v4, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v4, :cond_c0

    .line 900
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    aput v4, v2, v3

    .line 899
    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    .line 902
    .end local v3    # "i":I
    :cond_c0
    return-object v2

    .line 868
    .end local v2    # "values":[I
    :pswitch_c1
    const/4 v2, 0x0

    .line 869
    .local v2, "index":I
    iget v3, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v4

    array-length v4, v4

    if-lt v3, v4, :cond_ed

    .line 870
    const/4 v3, 0x1

    .line 871
    .local v3, "same":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_cd
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_e5

    .line 872
    iget-object v5, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v5, v5, v4

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v6

    aget-byte v6, v6, v4

    if-eq v5, v6, :cond_e2

    .line 873
    const/4 v3, 0x0

    .line 874
    goto :goto_e5

    .line 871
    :cond_e2
    add-int/lit8 v4, v4, 0x1

    goto :goto_cd

    .line 877
    .end local v4    # "i":I
    :cond_e5
    :goto_e5
    if-eqz v3, :cond_ed

    .line 878
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v4

    array-length v4, v4

    move v2, v4

    .line 882
    .end local v3    # "same":Z
    :cond_ed
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_f2
    iget v4, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v2, v4, :cond_10f

    .line 884
    iget-object v4, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v4, v4, v2

    .line 885
    .local v4, "ch":I
    if-nez v4, :cond_fd

    .line 886
    goto :goto_10f

    .line 888
    :cond_fd
    const/16 v5, 0x20

    if-lt v4, v5, :cond_106

    .line 889
    int-to-char v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10b

    .line 891
    :cond_106
    const/16 v5, 0x3f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 893
    :goto_10b
    nop

    .end local v4    # "ch":I
    add-int/lit8 v2, v2, 0x1

    .line 894
    goto :goto_f2

    .line 895
    :cond_10f
    :goto_10f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 861
    .end local v2    # "index":I
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_114
    iget-object v2, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_138

    iget-object v2, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v4, 0x0

    aget-byte v2, v2, v4

    if-ltz v2, :cond_138

    iget-object v2, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v2, v2, v4

    if-gt v2, v3, :cond_138

    .line 862
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v5, v5, v4

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    new-array v3, v3, [C

    aput-char v5, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 864
    :cond_138
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_143} :catch_144

    return-object v2

    .line 960
    .end local v0    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_144
    move-exception v0

    .line 961
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred during reading a value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    return-object v1

    nop

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_114
        :pswitch_c1
        :pswitch_ae
        :pswitch_9b
        :pswitch_7d
        :pswitch_114
        :pswitch_c1
        :pswitch_6a
        :pswitch_57
        :pswitch_38
        :pswitch_24
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o getDoubleValue(Ljava/nio/ByteOrder;)D
    .registers 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 967
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 968
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_70

    .line 971
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 972
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 974
    :cond_12
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2a

    .line 975
    move-object v1, v0

    check-cast v1, [J

    .line 976
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_24

    .line 977
    aget-wide v2, v1, v2

    long-to-double v2, v2

    return-wide v2

    .line 979
    :cond_24
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 981
    .end local v1    # "array":[J
    :cond_2a
    instance-of v1, v0, [I

    if-eqz v1, :cond_3e

    .line 982
    move-object v1, v0

    check-cast v1, [I

    .line 983
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_38

    .line 984
    aget v2, v1, v2

    int-to-double v2, v2

    return-wide v2

    .line 986
    :cond_38
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 988
    .end local v1    # "array":[I
    :cond_3e
    instance-of v1, v0, [D

    if-eqz v1, :cond_51

    .line 989
    move-object v1, v0

    check-cast v1, [D

    .line 990
    .local v1, "array":[D
    array-length v5, v1

    if-ne v5, v4, :cond_4b

    .line 991
    aget-wide v2, v1, v2

    return-wide v2

    .line 993
    :cond_4b
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 995
    .end local v1    # "array":[D
    :cond_51
    instance-of v1, v0, [Landroid/media/ExifInterface$Rational;

    if-eqz v1, :cond_68

    .line 996
    move-object v1, v0

    check-cast v1, [Landroid/media/ExifInterface$Rational;

    .line 997
    .local v1, "array":[Landroid/media/ExifInterface$Rational;
    array-length v5, v1

    if-ne v5, v4, :cond_62

    .line 998
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/media/ExifInterface$Rational;->calculate()D

    move-result-wide v2

    return-wide v2

    .line 1000
    :cond_62
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1002
    .end local v1    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_68
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 969
    :cond_70
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getIntValue(Ljava/nio/ByteOrder;)I
    .registers 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 1006
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 1007
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_45

    .line 1010
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 1011
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1013
    :cond_12
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2a

    .line 1014
    move-object v1, v0

    check-cast v1, [J

    .line 1015
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_24

    .line 1016
    aget-wide v2, v1, v2

    long-to-int v2, v2

    return v2

    .line 1018
    :cond_24
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1020
    .end local v1    # "array":[J
    :cond_2a
    instance-of v1, v0, [I

    if-eqz v1, :cond_3d

    .line 1021
    move-object v1, v0

    check-cast v1, [I

    .line 1022
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_37

    .line 1023
    aget v2, v1, v2

    return v2

    .line 1025
    :cond_37
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1027
    .end local v1    # "array":[I
    :cond_3d
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1008
    :cond_45
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .registers 9
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 1031
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 1032
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1033
    return-object v1

    .line 1035
    :cond_8
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 1036
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1039
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1040
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v3, v0, [J

    const-string v4, ","

    if-eqz v3, :cond_37

    .line 1041
    move-object v1, v0

    check-cast v1, [J

    .line 1042
    .local v1, "array":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v5, v1

    if-ge v3, v5, :cond_32

    .line 1043
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1044
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_2f

    .line 1045
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1048
    .end local v3    # "i":I
    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1050
    .end local v1    # "array":[J
    :cond_37
    instance-of v3, v0, [I

    if-eqz v3, :cond_57

    .line 1051
    move-object v1, v0

    check-cast v1, [I

    .line 1052
    .local v1, "array":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3f
    array-length v5, v1

    if-ge v3, v5, :cond_52

    .line 1053
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1054
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_4f

    .line 1055
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 1058
    .end local v3    # "i":I
    :cond_52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1060
    .end local v1    # "array":[I
    :cond_57
    instance-of v3, v0, [D

    if-eqz v3, :cond_77

    .line 1061
    move-object v1, v0

    check-cast v1, [D

    .line 1062
    .local v1, "array":[D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5f
    array-length v5, v1

    if-ge v3, v5, :cond_72

    .line 1063
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1064
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_6f

    .line 1065
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1068
    .end local v3    # "i":I
    :cond_72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1070
    .end local v1    # "array":[D
    :cond_77
    instance-of v3, v0, [Landroid/media/ExifInterface$Rational;

    if-eqz v3, :cond_a5

    .line 1071
    move-object v1, v0

    check-cast v1, [Landroid/media/ExifInterface$Rational;

    .line 1072
    .local v1, "array":[Landroid/media/ExifInterface$Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7f
    array-length v5, v1

    if-ge v3, v5, :cond_a0

    .line 1073
    aget-object v5, v1, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1074
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1075
    aget-object v5, v1, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1076
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_9d

    .line 1077
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    :cond_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 1080
    .end local v3    # "i":I
    :cond_a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1082
    .end local v1    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_a5
    return-object v1
.end method

.method public greylist-max-o size()I
    .registers 3

    .line 1086
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_NAMES()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
