.class public final Lorg/apache/xml/serializer/utils/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# instance fields
.field private final greylist m_locale:Ljava/util/Locale;

.field private greylist m_resourceBundle:Ljava/util/ListResourceBundle;

.field private greylist m_resourceBundleName:Ljava/lang/String;


# direct methods
.method constructor greylist <init>(Ljava/lang/String;)V
    .registers 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_locale:Ljava/util/Locale;

    .line 124
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    return-void
.end method

.method private final greylist createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 10

    .line 209
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    .line 210
    invoke-virtual {p1, p2}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_a
    move-object p2, v0

    move-object p1, v1

    :goto_c
    const/4 v2, 0x1

    if-nez p1, :cond_1b

    .line 223
    :try_start_f
    const-string p1, "BAD_MSGKEY"

    iget-object p0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 224
    invoke-static {p1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_76

    goto :goto_76

    :cond_1b
    const/4 v1, 0x0

    if-eqz p3, :cond_74

    .line 247
    :try_start_1e
    array-length v3, p3

    move v4, v1

    :goto_20
    if-ge v4, v3, :cond_2b

    .line 251
    aget-object v5, p3, v4

    if-nez v5, :cond_28

    .line 252
    aput-object v0, p3, v4

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 255
    :cond_2b
    invoke-static {p1, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2f} :catch_32

    move v2, v1

    :goto_30
    move-object v1, p0

    goto :goto_76

    .line 264
    :catch_32
    :try_start_32
    const-string p3, "BAD_MSGFORMAT"

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 265
    invoke-static {p3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_52} :catch_53

    goto :goto_30

    .line 274
    :catch_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The format of message \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' in message class \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' failed."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_30

    :cond_74
    move v2, v1

    move-object v1, p1

    :catch_76
    :goto_76
    if-nez v2, :cond_79

    return-object v1

    .line 288
    :cond_79
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist getLocale()Ljava/util/Locale;
    .registers 1

    .line 148
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_locale:Ljava/util/Locale;

    return-object p0
.end method

.method private greylist getResourceBundle()Ljava/util/ListResourceBundle;
    .registers 1

    .line 158
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    return-object p0
.end method

.method private static greylist getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 361
    const-string v2, "TW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    return-object v0
.end method

.method private greylist loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    .line 308
    invoke-direct {p0}, Lorg/apache/xml/serializer/utils/Messages;->getLocale()Ljava/util/Locale;

    move-result-object p1

    .line 315
    :try_start_6
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    .line 316
    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    .line 317
    check-cast p1, Ljava/util/ListResourceBundle;
    :try_end_e
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_20

    .line 326
    :catch_f
    :try_start_f
    iget-object p1, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {p1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    check-cast p1, Ljava/util/ListResourceBundle;
    :try_end_20
    .catch Ljava/util/MissingResourceException; {:try_start_f .. :try_end_20} :catch_23

    .line 342
    :goto_20
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    return-object p1

    .line 336
    :catch_23
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load any resource bundles."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p1, v0, p0, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final greylist createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 174
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    if-nez v0, :cond_c

    .line 175
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/utils/Messages;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    .line 177
    :cond_c
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    if-eqz v0, :cond_15

    .line 179
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xml/serializer/utils/Messages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 182
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not load the resource bundles: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
