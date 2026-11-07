.class public Lorg/apache/xml/res/XMLMessages;
.super Ljava/lang/Object;
.source "XMLMessages.java"


# static fields
.field protected static final greylist BAD_CODE:Ljava/lang/String; = "BAD_CODE"

.field protected static final greylist FORMAT_FAILED:Ljava/lang/String; = "FORMAT_FAILED"

.field private static greylist XMLBundle:Ljava/util/ListResourceBundle;


# instance fields
.field protected greylist fLocale:Ljava/util/Locale;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lorg/apache/xml/res/XMLErrorResources;

    invoke-direct {v0}, Lorg/apache/xml/res/XMLErrorResources;-><init>()V

    sput-object v0, Lorg/apache/xml/res/XMLMessages;->XMLBundle:Ljava/util/ListResourceBundle;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/res/XMLMessages;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method public static final greylist createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    if-eqz p1, :cond_7

    .line 105
    invoke-virtual {p0, p1}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const/4 v0, 0x0

    if-nez p1, :cond_13

    .line 109
    const-string p1, "BAD_CODE"

    invoke-virtual {p0, p1}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    move v1, v0

    :goto_14
    if-eqz p2, :cond_43

    .line 121
    :try_start_16
    array-length v2, p2

    :goto_17
    if-ge v0, v2, :cond_24

    .line 125
    aget-object v3, p2, v0

    if-nez v3, :cond_21

    .line 126
    const-string v3, ""

    aput-object v3, p2, v0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 129
    :cond_24
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_29

    goto :goto_43

    .line 133
    :catch_29
    const-string p2, "FORMAT_FAILED"

    invoke-virtual {p0, p2}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_43
    :goto_43
    if-nez v1, :cond_46

    return-object p1

    .line 142
    :cond_46
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final greylist createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 81
    sget-object v0, Lorg/apache/xml/res/XMLMessages;->XMLBundle:Ljava/util/ListResourceBundle;

    invoke-static {v0, p0, p1}, Lorg/apache/xml/res/XMLMessages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist getLocale()Ljava/util/Locale;
    .registers 1

    .line 64
    iget-object p0, p0, Lorg/apache/xml/res/XMLMessages;->fLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public greylist setLocale(Ljava/util/Locale;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lorg/apache/xml/res/XMLMessages;->fLocale:Ljava/util/Locale;

    return-void
.end method
