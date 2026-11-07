.class public Landroid/content/pm/AppSearchShortcutPerson;
.super Landroid/app/appsearch/GenericDocument;
.source "AppSearchShortcutPerson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/AppSearchShortcutPerson$Builder;
    }
.end annotation


# static fields
.field private static final blacklist KEY_ICON:Ljava/lang/String; = "icon"

.field private static final blacklist KEY_IS_BOT:Ljava/lang/String; = "isBot"

.field private static final blacklist KEY_IS_IMPORTANT:Ljava/lang/String; = "isImportant"

.field private static final blacklist KEY_KEY:Ljava/lang/String; = "key"

.field private static final blacklist KEY_NAME:Ljava/lang/String; = "name"

.field public static final blacklist SCHEMA:Landroid/app/appsearch/AppSearchSchema;

.field public static final blacklist SCHEMA_TYPE:Ljava/lang/String; = "ShortcutPerson"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 59
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$Builder;

    const-string v1, "ShortcutPerson"

    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v2, "name"

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 61
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 62
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v4, "key"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;

    const-string/jumbo v3, "isBot"

    invoke-direct {v1, v3}, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 73
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;

    const-string/jumbo v4, "isImportant"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    const-string/jumbo v3, "icon"

    invoke-direct {v1, v3}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchSchema$Builder;->build()Landroid/app/appsearch/AppSearchSchema;

    move-result-object v0

    sput-object v0, Landroid/content/pm/AppSearchShortcutPerson;->SCHEMA:Landroid/app/appsearch/AppSearchSchema;

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/GenericDocument;)V
    .registers 2
    .param p1, "document"    # Landroid/app/appsearch/GenericDocument;

    .line 56
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/GenericDocument;)V

    .line 57
    return-void
.end method

.method public static blacklist instance(Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutPerson;
    .registers 4
    .param p0, "person"    # Landroid/app/Person;

    .line 89
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 92
    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v0

    .local v0, "id":Ljava/lang/String;
    goto :goto_16

    .line 95
    .end local v0    # "id":Ljava/lang/String;
    :cond_e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0    # "id":Ljava/lang/String;
    :goto_16
    new-instance v1, Landroid/content/pm/AppSearchShortcutPerson$Builder;

    invoke-direct {v1, v0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setName(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutPerson$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setKey(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutPerson$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Person;->isBot()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setIsBot(Z)Landroid/content/pm/AppSearchShortcutPerson$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Landroid/app/Person;->isImportant()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setIsImportant(Z)Landroid/content/pm/AppSearchShortcutPerson$Builder;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/AppSearchShortcutPerson;->transformToByteArray(Landroid/graphics/drawable/Icon;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setIcon([B)Landroid/content/pm/AppSearchShortcutPerson$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->build()Landroid/content/pm/AppSearchShortcutPerson;

    move-result-object v1

    .line 97
    return-object v1
.end method

.method private static blacklist transformToByteArray(Landroid/graphics/drawable/Icon;)[B
    .registers 5
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;

    .line 186
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 187
    return-object v0

    .line 189
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_1e

    .line 190
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_9
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Icon;->writeToStream(Ljava/io/OutputStream;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 192
    :try_start_10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1e

    .line 191
    return-object v2

    .line 189
    :catchall_14
    move-exception v2

    :try_start_15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v3

    :try_start_1a
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "icon":Landroid/graphics/drawable/Icon;
    :goto_1d
    throw v2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1e

    .line 192
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "icon":Landroid/graphics/drawable/Icon;
    :catch_1e
    move-exception v1

    .line 193
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method private blacklist transformToIcon([B)Landroid/graphics/drawable/Icon;
    .registers 6
    .param p1, "icon"    # [B

    .line 202
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 203
    return-object v0

    .line 205
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_1b

    .line 206
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_9
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 207
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1b

    .line 206
    return-object v2

    .line 205
    :catchall_11
    move-exception v2

    :try_start_12
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v3

    :try_start_17
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/content/pm/AppSearchShortcutPerson;
    .end local p1    # "icon":[B
    :goto_1a
    throw v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1b

    .line 207
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Landroid/content/pm/AppSearchShortcutPerson;
    .restart local p1    # "icon":[B
    :catch_1b
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method


# virtual methods
.method public blacklist toPerson()Landroid/app/Person;
    .registers 5

    .line 110
    nop

    .line 111
    :try_start_1
    invoke-virtual {p0}, Landroid/content/pm/AppSearchShortcutPerson;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 110
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Landroid/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_d} :catch_e

    .line 115
    .local v0, "uri":Ljava/lang/String;
    goto :goto_11

    .line 113
    .end local v0    # "uri":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 116
    .local v0, "uri":Ljava/lang/String;
    :goto_11
    new-instance v1, Landroid/app/Person$Builder;

    invoke-direct {v1}, Landroid/app/Person$Builder;-><init>()V

    const-string/jumbo v2, "name"

    invoke-virtual {p0, v2}, Landroid/content/pm/AppSearchShortcutPerson;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v1

    const-string/jumbo v2, "key"

    invoke-virtual {p0, v2}, Landroid/content/pm/AppSearchShortcutPerson;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v1

    .line 118
    const-string/jumbo v2, "isBot"

    invoke-virtual {p0, v2}, Landroid/content/pm/AppSearchShortcutPerson;->getPropertyBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v1

    .line 119
    const-string/jumbo v2, "isImportant"

    invoke-virtual {p0, v2}, Landroid/content/pm/AppSearchShortcutPerson;->getPropertyBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    move-result-object v1

    .line 120
    const-string/jumbo v2, "icon"

    invoke-virtual {p0, v2}, Landroid/content/pm/AppSearchShortcutPerson;->getPropertyBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/pm/AppSearchShortcutPerson;->transformToIcon([B)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    .line 116
    return-object v1
.end method
