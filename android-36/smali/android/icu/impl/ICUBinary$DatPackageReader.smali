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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DATA_FORMAT:I = 0x436d6e44

.field private static final greylist-max-o IS_ACCEPTABLE:Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 41
    const-class v0, Landroid/icu/impl/ICUBinary;

    .line 53
    new-instance v0, Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;-><init>(Landroid/icu/impl/ICUBinary-IA;)V

    sput-object v0, Landroid/icu/impl/ICUBinary$DatPackageReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o addBaseName(Ljava/nio/ByteBuffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Set;)Z
    .registers 13
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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 174
    .local p5, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 176
    .local v0, "offset":I
    const-string v1, "icudt76b"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 177
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x2f

    const/4 v4, 0x0

    if-eqz v1, :cond_37

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2d

    .line 180
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_28

    .line 181
    return v4

    .line 179
    :cond_28
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 184
    .end local v1    # "i":I
    :cond_2d
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eq v0, v3, :cond_36

    .line 185
    return v4

    .line 184
    :cond_36
    move v0, v1

    .line 189
    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    :cond_37
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 191
    :goto_3a
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    move v5, v0

    .local v5, "b":B
    if-eqz v0, :cond_4c

    .line 192
    int-to-char v0, v5

    .line 193
    .local v0, "c":C
    if-ne v0, v3, :cond_47

    .line 194
    return v2

    .line 196
    :cond_47
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .end local v0    # "c":C
    move v0, v1

    goto :goto_3a

    .line 198
    :cond_4c
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    .line 199
    .local v0, "nameLimit":I
    invoke-virtual {p4, p3, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_62

    .line 200
    invoke-virtual {p4, v4, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_62
    return v2
.end method

.method static greylist-max-o addBaseNamesInFolder(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 14
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p3, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I

    move-result v0

    .line 113
    .local v0, "index":I
    if-gez v0, :cond_7

    .line 114
    not-int v0, v0

    .line 117
    :cond_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 118
    .local v1, "base":I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 119
    .local v2, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    move v5, v0

    .line 120
    .end local v0    # "index":I
    .local v5, "index":I
    .local v8, "sb":Ljava/lang/StringBuilder;
    :goto_16
    if-ge v5, v2, :cond_29

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v9, p3

    .end local p0    # "bytes":Ljava/nio/ByteBuffer;
    .end local p1    # "folder":Ljava/lang/String;
    .end local p2    # "suffix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "bytes":Ljava/nio/ByteBuffer;
    .local v6, "folder":Ljava/lang/String;
    .local v7, "suffix":Ljava/lang/String;
    .local v9, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {v4 .. v9}, Landroid/icu/impl/ICUBinary$DatPackageReader;->addBaseName(Ljava/nio/ByteBuffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 121
    add-int/lit8 v5, v5, 0x1

    move-object p0, v4

    move-object p1, v6

    move-object p2, v7

    move-object p3, v9

    goto :goto_16

    .line 120
    .end local v4    # "bytes":Ljava/nio/ByteBuffer;
    .end local v6    # "folder":Ljava/lang/String;
    .end local v7    # "suffix":Ljava/lang/String;
    .end local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p0    # "bytes":Ljava/nio/ByteBuffer;
    .restart local p1    # "folder":Ljava/lang/String;
    .restart local p2    # "suffix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_29
    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v9, p3

    .line 123
    .end local p0    # "bytes":Ljava/nio/ByteBuffer;
    .end local p1    # "folder":Ljava/lang/String;
    .end local p2    # "suffix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v6    # "folder":Ljava/lang/String;
    .restart local v7    # "suffix":Ljava/lang/String;
    .restart local v9    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2d
    return-void
.end method

.method private static greylist-max-o binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I
    .registers 9
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 126
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 127
    .local v0, "base":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 130
    .local v1, "count":I
    const/4 v2, 0x0

    .line 131
    .local v2, "start":I
    move v3, v1

    .line 132
    .local v3, "limit":I
    :goto_a
    if-ge v2, v3, :cond_2b

    .line 133
    add-int v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    .line 134
    .local v4, "mid":I
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 136
    .local v5, "nameOffset":I
    const-string v6, "icudt76b"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 137
    invoke-static {p1, p0, v5}, Landroid/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 138
    .local v6, "result":I
    if-gez v6, :cond_25

    .line 139
    move v3, v4

    goto :goto_29

    .line 140
    :cond_25
    if-lez v6, :cond_2a

    .line 141
    add-int/lit8 v2, v4, 0x1

    .line 146
    .end local v4    # "mid":I
    .end local v5    # "nameOffset":I
    .end local v6    # "result":I
    :goto_29
    goto :goto_a

    .line 144
    .restart local v4    # "mid":I
    .restart local v5    # "nameOffset":I
    .restart local v6    # "result":I
    :cond_2a
    return v4

    .line 147
    .end local v4    # "mid":I
    .end local v5    # "nameOffset":I
    .end local v6    # "result":I
    :cond_2b
    not-int v4, v2

    return v4
.end method

.method static greylist-max-o getData(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 99
    invoke-static {p0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I

    move-result v0

    .line 100
    .local v0, "index":I
    if-ltz v0, :cond_1f

    .line 101
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 102
    .local v1, "data":Ljava/nio/ByteBuffer;
    invoke-static {p0, v0}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getDataOffset(Ljava/nio/ByteBuffer;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getDataOffset(Ljava/nio/ByteBuffer;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 104
    invoke-static {v1}, Landroid/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 106
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o getDataOffset(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 159
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 160
    .local v0, "base":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 161
    .local v1, "count":I
    if-ne p1, v1, :cond_f

    .line 163
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    return v2

    .line 165
    :cond_f
    nop

    .line 169
    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method

.method private static greylist-max-o getNameOffset(Ljava/nio/ByteBuffer;I)I
    .registers 5
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    .line 151
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 152
    .local v0, "base":I
    nop

    .line 155
    add-int/lit8 v1, v0, 0x4

    mul-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private static greylist-max-o startsWithPackageName(Ljava/nio/ByteBuffer;I)Z
    .registers 9
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I

    .line 84
    const-string v0, "icudt76b"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 85
    .local v1, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1c

    .line 86
    add-int v5, p1, v3

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_19

    .line 87
    return v4

    .line 85
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 91
    .end local v3    # "i":I
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "length":I
    .local v0, "length":I
    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 92
    .local v1, "c":B
    const/16 v3, 0x62

    if-eq v1, v3, :cond_2b

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_35

    :cond_2b
    add-int v3, p1, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_36

    .line 93
    :cond_35
    return v4

    .line 95
    :cond_36
    return v2
.end method

.method static greylist-max-o validate(Ljava/nio/ByteBuffer;)Z
    .registers 5
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 61
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/icu/impl/ICUBinary$DatPackageReader;->IS_ACCEPTABLE:Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    const v2, 0x436d6e44

    invoke-static {p0, v2, v1}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_3f

    .line 64
    nop

    .line 65
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 66
    .local v1, "count":I
    if-gtz v1, :cond_15

    .line 67
    return v0

    .line 72
    :cond_15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v1, 0x18

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_25

    .line 73
    return v0

    .line 75
    :cond_25
    invoke-static {p0, v0}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result v2

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->startsWithPackageName(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_3e

    add-int/lit8 v2, v1, -0x1

    .line 76
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result v2

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary$DatPackageReader;->startsWithPackageName(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_3e

    .line 79
    :cond_3c
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_3e
    :goto_3e
    return v0

    .line 62
    .end local v1    # "count":I
    :catch_3f
    move-exception v1

    .line 63
    .local v1, "ignored":Ljava/io/IOException;
    return v0
.end method
