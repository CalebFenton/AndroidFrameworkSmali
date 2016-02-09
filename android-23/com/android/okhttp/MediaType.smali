.class public final Lcom/android/okhttp/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

.field private static final TYPE_SUBTYPE:Ljava/util/regex/Pattern;


# instance fields
.field private final charset:Ljava/lang/String;

.field private final mediaType:Ljava/lang/String;

.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    const-string/jumbo v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/okhttp/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    #@9
    .line 32
    const-string/jumbo v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    #@c
    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lcom/android/okhttp/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    #@12
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    #@5
    .line 41
    iput-object p2, p0, Lcom/android/okhttp/MediaType;->type:Ljava/lang/String;

    #@7
    .line 42
    iput-object p3, p0, Lcom/android/okhttp/MediaType;->subtype:Ljava/lang/String;

    #@9
    .line 43
    iput-object p4, p0, Lcom/android/okhttp/MediaType;->charset:Ljava/lang/String;

    #@b
    .line 39
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;
    .locals 13
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x2

    #@2
    const/4 v10, 0x0

    #@3
    .line 51
    sget-object v8, Lcom/android/okhttp/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    #@5
    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@8
    move-result-object v7

    #@9
    .line 52
    .local v7, "typeSubtype":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@c
    move-result v8

    #@d
    if-nez v8, :cond_0

    #@f
    return-object v10

    #@10
    .line 53
    :cond_0
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@16
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    .line 54
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@20
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    .line 56
    .local v5, "subtype":Ljava/lang/String;
    const/4 v0, 0x0

    #@25
    .line 57
    .local v0, "charset":Ljava/lang/String;
    sget-object v8, Lcom/android/okhttp/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    #@27
    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@2a
    move-result-object v3

    #@2b
    .line 58
    .local v3, "parameter":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    #@2e
    move-result v4

    #@2f
    .end local v0    # "charset":Ljava/lang/String;
    .local v4, "s":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@32
    move-result v8

    #@33
    if-ge v4, v8, :cond_6

    #@35
    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@38
    move-result v8

    #@39
    invoke-virtual {v3, v4, v8}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@3c
    .line 60
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@3f
    move-result v8

    #@40
    if-nez v8, :cond_1

    #@42
    return-object v10

    #@43
    .line 62
    :cond_1
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 63
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    #@49
    const-string/jumbo v8, "charset"

    #@4c
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4f
    move-result v8

    #@50
    if-eqz v8, :cond_3

    #@52
    .line 64
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@55
    move-result-object v8

    #@56
    if-eqz v8, :cond_4

    #@58
    .line 65
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    .line 67
    .local v1, "charsetParameter":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    #@5e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@61
    move-result v8

    #@62
    if-eqz v8, :cond_5

    #@64
    .line 70
    :cond_2
    move-object v0, v1

    #@65
    .line 58
    .end local v1    # "charsetParameter":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    #@68
    move-result v4

    #@69
    goto :goto_0

    #@6a
    .line 66
    :cond_4
    const/4 v8, 0x3

    #@6b
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    .restart local v1    # "charsetParameter":Ljava/lang/String;
    goto :goto_1

    #@70
    .line 68
    :cond_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@72
    new-instance v9, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v10, "Multiple different charsets: "

    #@7a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v9

    #@86
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@89
    throw v8

    #@8a
    .line 73
    .end local v1    # "charsetParameter":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    new-instance v8, Lcom/android/okhttp/MediaType;

    #@8c
    invoke-direct {v8, p0, v6, v5, v0}, Lcom/android/okhttp/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8f
    return-object v8
.end method


# virtual methods
.method public charset()Ljava/nio/charset/Charset;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 97
    iget-object v1, p0, Lcom/android/okhttp/MediaType;->charset:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->charset:Ljava/lang/String;

    #@7
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1
    .param p1, "defaultValue"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->charset:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->charset:Ljava/lang/String;

    #@6
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@9
    move-result-object p1

    #@a
    .end local p1    # "defaultValue":Ljava/nio/charset/Charset;
    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 117
    instance-of v0, p1, Lcom/android/okhttp/MediaType;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Lcom/android/okhttp/MediaType;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    #@8
    iget-object v1, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subtype()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->subtype:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method
