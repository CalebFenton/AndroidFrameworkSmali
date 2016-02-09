.class final Landroid/icu/impl/ICUBinary$DatPackageReader;
.super Ljava/lang/Object;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatPackageReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DATA_FORMAT:I = 0x436d6e44

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/ICUBinary$DatPackageReader;

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
    sput-boolean v0, Landroid/icu/impl/ICUBinary$DatPackageReader;->-assertionsDisabled:Z

    #@b
    .line 45
    new-instance v0, Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, v1}, Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;-><init>(Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;)V

    #@11
    sput-object v0, Landroid/icu/impl/ICUBinary$DatPackageReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    #@13
    .line 33
    return-void

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static addBaseName(Ljava/nio/ByteBuffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Set;)Z
    .locals 8
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 166
    .local p5, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    #@3
    move-result v4

    #@4
    .line 168
    .local v4, "offset":I
    const-string/jumbo v6, "icudt55b"

    #@7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@a
    move-result v6

    #@b
    add-int/lit8 v6, v6, 0x1

    #@d
    add-int/2addr v4, v6

    #@e
    .line 169
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_3

    #@14
    .line 171
    const/4 v2, 0x0

    #@15
    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@18
    move-result v6

    #@19
    if-ge v2, v6, :cond_1

    #@1b
    .line 172
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@1e
    move-result v6

    #@1f
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v7

    #@23
    if-eq v6, v7, :cond_0

    #@25
    .line 173
    const/4 v6, 0x0

    #@26
    return v6

    #@27
    .line 171
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@29
    add-int/lit8 v4, v4, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 176
    :cond_1
    add-int/lit8 v5, v4, 0x1

    #@2e
    .end local v4    # "offset":I
    .local v5, "offset":I
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@31
    move-result v6

    #@32
    const/16 v7, 0x2f

    #@34
    if-eq v6, v7, :cond_2

    #@36
    .line 177
    const/4 v6, 0x0

    #@37
    return v6

    #@38
    :cond_2
    move v4, v5

    #@39
    .line 181
    .end local v2    # "i":I
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const/4 v6, 0x0

    #@3a
    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@3d
    .line 183
    :goto_1
    add-int/lit8 v5, v4, 0x1

    #@3f
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@42
    move-result v0

    #@43
    .local v0, "b":B
    if-eqz v0, :cond_5

    #@45
    .line 184
    int-to-char v1, v0

    #@46
    .line 185
    .local v1, "c":C
    const/16 v6, 0x2f

    #@48
    if-ne v1, v6, :cond_4

    #@4a
    .line 186
    const/4 v6, 0x1

    #@4b
    return v6

    #@4c
    .line 188
    :cond_4
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    move v4, v5

    #@50
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1

    #@51
    .line 190
    .end local v1    # "c":C
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_5
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    #@54
    move-result v6

    #@55
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@58
    move-result v7

    #@59
    sub-int v3, v6, v7

    #@5b
    .line 191
    .local v3, "nameLimit":I
    invoke-virtual {p4, p3, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@5e
    move-result v6

    #@5f
    if-ltz v6, :cond_6

    #@61
    .line 192
    const/4 v6, 0x0

    #@62
    invoke-virtual {p4, v6, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-interface {p5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@69
    .line 194
    :cond_6
    const/4 v6, 0x1

    #@6a
    return v6
.end method

.method static addBaseNamesInFolder(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 8
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p3, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I

    #@3
    move-result v1

    #@4
    .line 105
    .local v1, "index":I
    if-gez v1, :cond_0

    #@6
    .line 106
    not-int v1, v1

    #@7
    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@a
    move-result v6

    #@b
    .line 110
    .local v6, "base":I
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@e
    move-result v7

    #@f
    .line 111
    .local v7, "count":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 112
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    if-ge v1, v7, :cond_1

    #@16
    move-object v0, p0

    #@17
    move-object v2, p1

    #@18
    move-object v3, p2

    #@19
    move-object v5, p3

    #@1a
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/ICUBinary$DatPackageReader;->addBaseName(Ljava/nio/ByteBuffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Set;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 113
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 102
    :cond_1
    return-void
.end method

.method private static binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I
    .locals 8
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "key"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v0

    #@4
    .line 119
    .local v0, "base":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@7
    move-result v1

    #@8
    .line 122
    .local v1, "count":I
    const/4 v6, 0x0

    #@9
    .line 123
    .local v6, "start":I
    move v2, v1

    #@a
    .line 124
    .local v2, "limit":I
    :goto_0
    if-ge v6, v2, :cond_2

    #@c
    .line 125
    add-int v7, v6, v2

    #@e
    ushr-int/lit8 v3, v7, 0x1

    #@10
    .line 126
    .local v3, "mid":I
    invoke-static {p0, v3}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    #@13
    move-result v4

    #@14
    .line 128
    .local v4, "nameOffset":I
    const-string/jumbo v7, "icudt55b"

    #@17
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@1a
    move-result v7

    #@1b
    add-int/lit8 v7, v7, 0x1

    #@1d
    add-int/2addr v4, v7

    #@1e
    .line 129
    invoke-static {p1, p0, v4}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I

    #@21
    move-result v5

    #@22
    .line 130
    .local v5, "result":I
    if-gez v5, :cond_0

    #@24
    .line 131
    move v2, v3

    #@25
    goto :goto_0

    #@26
    .line 132
    :cond_0
    if-lez v5, :cond_1

    #@28
    .line 133
    add-int/lit8 v6, v3, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 136
    :cond_1
    return v3

    #@2c
    .line 139
    .end local v3    # "mid":I
    .end local v4    # "nameOffset":I
    .end local v5    # "result":I
    :cond_2
    not-int v7, v6

    #@2d
    return v7
.end method

.method static getData(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "key"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 91
    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I

    #@3
    move-result v1

    #@4
    .line 92
    .local v1, "index":I
    if-ltz v1, :cond_0

    #@6
    .line 93
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@9
    move-result-object v0

    #@a
    .line 94
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getDataOffset(Ljava/nio/ByteBuffer;I)I

    #@d
    move-result v2

    #@e
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@11
    .line 95
    add-int/lit8 v2, v1, 0x1

    #@13
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getDataOffset(Ljava/nio/ByteBuffer;I)I

    #@16
    move-result v2

    #@17
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@1a
    .line 96
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 98
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v2, 0x0

    #@20
    return-object v2
.end method

.method private static getDataOffset(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 151
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@4
    move-result v0

    #@5
    .line 152
    .local v0, "base":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@8
    move-result v1

    #@9
    .line 153
    .local v1, "count":I
    if-ne p1, v1, :cond_0

    #@b
    .line 155
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    #@e
    move-result v2

    #@f
    return v2

    #@10
    .line 157
    :cond_0
    sget-boolean v3, Landroid/icu/impl/ICUBinary$DatPackageReader;->-assertionsDisabled:Z

    #@12
    if-nez v3, :cond_2

    #@14
    if-ltz p1, :cond_1

    #@16
    if-ge p1, v1, :cond_1

    #@18
    const/4 v2, 0x1

    #@19
    :cond_1
    if-nez v2, :cond_2

    #@1b
    new-instance v2, Ljava/lang/AssertionError;

    #@1d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@20
    throw v2

    #@21
    .line 161
    :cond_2
    add-int/lit8 v2, v0, 0x4

    #@23
    add-int/lit8 v2, v2, 0x4

    #@25
    mul-int/lit8 v3, p1, 0x8

    #@27
    add-int/2addr v2, v3

    #@28
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@2b
    move-result v2

    #@2c
    add-int/2addr v2, v0

    #@2d
    return v2
.end method

.method private static getNameOffset(Ljava/nio/ByteBuffer;I)I
    .locals 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 143
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@4
    move-result v0

    #@5
    .line 144
    .local v0, "base":I
    sget-boolean v2, Landroid/icu/impl/ICUBinary$DatPackageReader;->-assertionsDisabled:Z

    #@7
    if-nez v2, :cond_1

    #@9
    if-ltz p1, :cond_0

    #@b
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@e
    move-result v2

    #@f
    if-ge p1, v2, :cond_0

    #@11
    const/4 v1, 0x1

    #@12
    :cond_0
    if-nez v1, :cond_1

    #@14
    new-instance v1, Ljava/lang/AssertionError;

    #@16
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@19
    throw v1

    #@1a
    .line 147
    :cond_1
    add-int/lit8 v1, v0, 0x4

    #@1c
    mul-int/lit8 v2, p1, 0x8

    #@1e
    add-int/2addr v1, v2

    #@1f
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@22
    move-result v1

    #@23
    add-int/2addr v1, v0

    #@24
    return v1
.end method

.method private static startsWithPackageName(Ljava/nio/ByteBuffer;I)Z
    .locals 7
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 76
    const-string/jumbo v4, "icudt55b"

    #@4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@7
    move-result v4

    #@8
    add-int/lit8 v2, v4, -0x1

    #@a
    .line 77
    .local v2, "length":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@d
    .line 78
    add-int v4, p1, v1

    #@f
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@12
    move-result v4

    #@13
    const-string/jumbo v5, "icudt55b"

    #@16
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v5

    #@1a
    if-eq v4, v5, :cond_0

    #@1c
    .line 79
    return v6

    #@1d
    .line 77
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 83
    :cond_1
    add-int/lit8 v3, v2, 0x1

    #@22
    .end local v2    # "length":I
    .local v3, "length":I
    add-int v4, p1, v2

    #@24
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@27
    move-result v0

    #@28
    .line 84
    .local v0, "c":B
    const/16 v4, 0x62

    #@2a
    if-eq v0, v4, :cond_3

    #@2c
    const/16 v4, 0x6c

    #@2e
    if-eq v0, v4, :cond_3

    #@30
    .line 85
    :cond_2
    return v6

    #@31
    .line 84
    :cond_3
    add-int v4, p1, v3

    #@33
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@36
    move-result v4

    #@37
    const/16 v5, 0x2f

    #@39
    if-ne v4, v5, :cond_2

    #@3b
    .line 87
    const/4 v4, 0x1

    #@3c
    return v4
.end method

.method static validate(Ljava/nio/ByteBuffer;)Z
    .locals 5
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 53
    :try_start_0
    sget-object v2, Landroid/icu/impl/ICUBinary$DatPackageReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    #@3
    const v3, 0x436d6e44

    #@6
    invoke-static {p0, v3, v2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@c
    move-result v2

    #@d
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@10
    move-result v0

    #@11
    .line 58
    .local v0, "count":I
    if-gtz v0, :cond_0

    #@13
    .line 59
    return v4

    #@14
    .line 54
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    #@15
    .line 55
    .local v1, "ignored":Ljava/io/IOException;
    return v4

    #@16
    .line 64
    .end local v1    # "ignored":Ljava/io/IOException;
    .restart local v0    # "count":I
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@19
    move-result v2

    #@1a
    add-int/lit8 v2, v2, 0x4

    #@1c
    mul-int/lit8 v3, v0, 0x18

    #@1e
    add-int/2addr v2, v3

    #@1f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    #@22
    move-result v3

    #@23
    if-le v2, v3, :cond_1

    #@25
    .line 65
    return v4

    #@26
    .line 67
    :cond_1
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    #@29
    move-result v2

    #@2a
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->startsWithPackageName(Ljava/nio/ByteBuffer;I)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 68
    add-int/lit8 v2, v0, -0x1

    #@32
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    #@35
    move-result v2

    #@36
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->startsWithPackageName(Ljava/nio/ByteBuffer;I)Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_2

    #@3c
    .line 71
    const/4 v2, 0x1

    #@3d
    return v2

    #@3e
    .line 69
    :cond_2
    return v4
.end method
