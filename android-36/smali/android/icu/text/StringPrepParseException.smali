.class public Landroid/icu/text/StringPrepParseException;
.super Ljava/text/ParseException;
.source "StringPrepParseException.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api ACE_PREFIX_ERROR:I = 0x6

.field public static final whitelist test-api BUFFER_OVERFLOW_ERROR:I = 0x9

.field public static final whitelist test-api CHECK_BIDI_ERROR:I = 0x4

.field public static final whitelist test-api DOMAIN_NAME_TOO_LONG_ERROR:I = 0xb

.field public static final whitelist test-api ILLEGAL_CHAR_FOUND:I = 0x1

.field public static final whitelist test-api INVALID_CHAR_FOUND:I = 0x0

.field public static final whitelist test-api LABEL_TOO_LONG_ERROR:I = 0x8

.field private static final greylist-max-o PARSE_CONTEXT_LEN:I = 0x10

.field public static final whitelist test-api PROHIBITED_ERROR:I = 0x2

.field public static final whitelist test-api STD3_ASCII_RULES_ERROR:I = 0x5

.field public static final whitelist test-api UNASSIGNED_ERROR:I = 0x3

.field public static final whitelist test-api VERIFICATION_ERROR:I = 0x7

.field public static final whitelist test-api ZERO_LENGTH_LABEL:I = 0xa

.field static final whitelist serialVersionUID:J = 0x635e5eec90e16737L


# instance fields
.field private greylist-max-o error:I

.field private greylist-max-o line:I

.field private greylist-max-o postContext:Ljava/lang/StringBuffer;

.field private greylist-max-o preContext:Ljava/lang/StringBuffer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 20
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 71
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 174
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    .line 180
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    .line 72
    iput p2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringPrepParseException;->line:I

    .line 74
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "rules"    # Ljava/lang/String;
    .param p4, "pos"    # I

    .line 86
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 174
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    .line 180
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    .line 87
    iput p2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    .line 88
    invoke-direct {p0, p3, p4}, Landroid/icu/text/StringPrepParseException;->setContext(Ljava/lang/String;I)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringPrepParseException;->line:I

    .line 90
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "rules"    # Ljava/lang/String;
    .param p4, "pos"    # I
    .param p5, "lineNumber"    # I

    .line 105
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 174
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    .line 180
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    .line 106
    iput p2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    .line 107
    invoke-direct {p0, p3, p4}, Landroid/icu/text/StringPrepParseException;->setContext(Ljava/lang/String;I)V

    .line 108
    iput p5, p0, Landroid/icu/text/StringPrepParseException;->line:I

    .line 109
    return-void
.end method

.method private greylist-max-o setContext(Ljava/lang/String;I)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 207
    invoke-direct {p0, p1, p2}, Landroid/icu/text/StringPrepParseException;->setPreContext(Ljava/lang/String;I)V

    .line 208
    invoke-direct {p0, p1, p2}, Landroid/icu/text/StringPrepParseException;->setPostContext(Ljava/lang/String;I)V

    .line 209
    return-void
.end method

.method private greylist-max-o setPostContext(Ljava/lang/String;I)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/StringPrepParseException;->setPostContext([CI)V

    .line 197
    return-void
.end method

.method private greylist-max-o setPostContext([CI)V
    .registers 6
    .param p1, "str"    # [C
    .param p2, "pos"    # I

    .line 200
    move v0, p2

    .line 201
    .local v0, "start":I
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 202
    .local v1, "len":I
    iget-object v2, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1, v0, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 204
    return-void
.end method

.method private greylist-max-o setPreContext(Ljava/lang/String;I)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/StringPrepParseException;->setPreContext([CI)V

    .line 186
    return-void
.end method

.method private greylist-max-o setPreContext([CI)V
    .registers 6
    .param p1, "str"    # [C
    .param p2, "pos"    # I

    .line 189
    const/16 v0, 0x10

    if-gt p2, v0, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    add-int/lit8 v1, p2, -0xf

    .line 190
    .local v1, "start":I
    :goto_8
    if-gt v1, v0, :cond_b

    move v0, v1

    .line 191
    .local v0, "len":I
    :cond_b
    iget-object v2, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 193
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 120
    instance-of v0, p1, Landroid/icu/text/StringPrepParseException;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 121
    return v1

    .line 123
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/text/StringPrepParseException;

    iget v0, v0, Landroid/icu/text/StringPrepParseException;->error:I

    iget v2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public whitelist test-api getError()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/icu/text/StringPrepParseException;->error:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 135
    nop

    .line 136
    const/16 v0, 0x2a

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ". line:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v1, p0, Landroid/icu/text/StringPrepParseException;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, ". preContext:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ". postContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
