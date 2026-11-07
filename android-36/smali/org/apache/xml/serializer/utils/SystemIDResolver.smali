.class public final Lorg/apache/xml/serializer/utils/SystemIDResolver;
.super Ljava/lang/Object;
.source "SystemIDResolver.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 226
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsoluteURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 229
    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x5

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 235
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 237
    const-string v2, "///"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    :cond_2d
    const/16 v1, 0x3a

    .line 241
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_59

    add-int/lit8 v0, v0, -0x1

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    :try_start_3b
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_3b .. :try_end_59} :catch_66

    .line 261
    :cond_59
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 258
    :cond_5e
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :catch_66
    :cond_66
    return-object p0

    .line 267
    :cond_67
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 285
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 287
    :cond_7
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    :try_start_b
    new-instance v0, Lorg/apache/xml/serializer/utils/URI;

    invoke-direct {v0, p1}, Lorg/apache/xml/serializer/utils/URI;-><init>(Ljava/lang/String;)V

    .line 292
    new-instance p1, Lorg/apache/xml/serializer/utils/URI;

    invoke-direct {p1, v0, p0}, Lorg/apache/xml/serializer/utils/URI;-><init>(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/apache/xml/serializer/utils/URI$MalformedURIException; {:try_start_b .. :try_end_15} :catch_1e

    .line 299
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1e
    move-exception p0

    .line 296
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static greylist getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_69

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_69

    .line 70
    :cond_9
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "file:"

    if-nez v0, :cond_26

    .line 74
    :try_start_11
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_27

    .line 79
    :catch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    move-object v0, p0

    :goto_27
    if-eqz v0, :cond_55

    .line 86
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_64

    .line 89
    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_64

    .line 92
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    :goto_64
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_69
    :goto_69
    const-string p0, ""

    return-object p0
.end method

.method public static greylist isAbsolutePath(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 159
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result p0

    return p0
.end method

.method public static greylist isAbsoluteURI(Ljava/lang/String;)Z
    .registers 7

    .line 127
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isWindowsAbsolutePath(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x23

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v2, 0x3f

    .line 132
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x2f

    .line 133
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0x3a

    .line 134
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v5, 0x1

    sub-int/2addr p0, v5

    if-lez v0, :cond_29

    goto :goto_2a

    :cond_29
    move v0, p0

    :goto_2a
    if-lez v2, :cond_2f

    if-ge v2, v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v2, v0

    :goto_30
    if-lez v3, :cond_35

    if-ge v3, v2, :cond_35

    goto :goto_36

    :cond_35
    move v3, v2

    :goto_36
    if-lez v4, :cond_3b

    if-ge v4, v3, :cond_3b

    return v5

    :cond_3b
    return v1
.end method

.method private static greylist isWindowsAbsolutePath(Ljava/lang/String;)Z
    .registers 6

    .line 172
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 175
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_33

    const/4 v0, 0x1

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_33

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 178
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_32

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v2, 0x2f

    if-ne p0, v2, :cond_33

    :cond_32
    return v0

    :cond_33
    return v1
.end method

.method private static greylist replaceChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, p0, :cond_31

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_25

    const/16 v2, 0x25

    .line 201
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v2, v1, 0x1

    .line 202
    const-string v3, "20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, v1, 0x2

    goto :goto_2e

    :cond_25
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2e

    const/16 v2, 0x2f

    .line 209
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 213
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
