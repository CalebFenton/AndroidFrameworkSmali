.class public final Lcom/android/okhttp/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field private static final greylist-max-o PARAMETER:Ljava/util/regex/Pattern;

.field private static final greylist-max-o QUOTED:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final greylist-max-o TOKEN:Ljava/lang/String; = "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

.field private static final greylist-max-o TYPE_SUBTYPE:Ljava/util/regex/Pattern;


# instance fields
.field private final greylist-max-o charset:Ljava/lang/String;

.field private final greylist-max-o mediaType:Ljava/lang/String;

.field private final greylist-max-o subtype:Ljava/lang/String;

.field private final greylist-max-o type:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-string v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/android/okhttp/MediaType;->type:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/android/okhttp/MediaType;->subtype:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/android/okhttp/MediaType;->charset:Ljava/lang/String;

    return-void
.end method

.method public static greylist-max-o parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;
    .registers 10

    .line 53
    sget-object v0, Lcom/android/okhttp/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return-object v2

    :cond_e
    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    .line 56
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 59
    sget-object v6, Lcom/android/okhttp/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 60
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    move-object v7, v2

    :goto_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_86

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v0, v8}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 62
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_41

    return-object v2

    .line 64
    :cond_41
    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 65
    const-string v8, "charset"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_81

    .line 66
    :cond_50
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 67
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    :cond_5b
    const/4 v0, 0x3

    .line 68
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_60
    if-eqz v7, :cond_80

    .line 69
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_69

    goto :goto_80

    .line 70
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple different charsets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    :goto_80
    move-object v7, v0

    .line 60
    :cond_81
    :goto_81
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_2d

    .line 75
    :cond_86
    new-instance v0, Lcom/android/okhttp/MediaType;

    invoke-direct {v0, p0, v3, v4, v7}, Lcom/android/okhttp/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o charset()Ljava/nio/charset/Charset;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/okhttp/MediaType;->charset:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/android/okhttp/MediaType;->charset:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 119
    instance-of v0, p1, Lcom/android/okhttp/MediaType;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/android/okhttp/MediaType;

    iget-object p1, p1, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public greylist-max-o subtype()Ljava/lang/String;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/okhttp/MediaType;->subtype:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o type()Ljava/lang/String;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/okhttp/MediaType;->type:Ljava/lang/String;

    return-object p0
.end method
