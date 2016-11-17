.class public Landroid/icu/text/StringPrepParseException;
.super Ljava/text/ParseException;
.source "StringPrepParseException.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ACE_PREFIX_ERROR:I = 0x6

.field public static final BUFFER_OVERFLOW_ERROR:I = 0x9

.field public static final CHECK_BIDI_ERROR:I = 0x4

.field public static final DOMAIN_NAME_TOO_LONG_ERROR:I = 0xb

.field public static final ILLEGAL_CHAR_FOUND:I = 0x1

.field public static final INVALID_CHAR_FOUND:I = 0x0

.field public static final LABEL_TOO_LONG_ERROR:I = 0x8

.field private static final PARSE_CONTEXT_LEN:I = 0x10

.field public static final PROHIBITED_ERROR:I = 0x2

.field public static final STD3_ASCII_RULES_ERROR:I = 0x5

.field public static final UNASSIGNED_ERROR:I = 0x3

.field public static final VERIFICATION_ERROR:I = 0x7

.field public static final ZERO_LENGTH_LABEL:I = 0xa

.field static final serialVersionUID:J = 0x635e5eec90e16737L


# instance fields
.field private error:I

.field private line:I

.field private postContext:Ljava/lang/StringBuffer;

.field private preContext:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/StringPrepParseException;

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
    sput-boolean v0, Landroid/icu/text/StringPrepParseException;->-assertionsDisabled:Z

    #@b
    .line 18
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # I

    #@0
    .prologue
    .line 69
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@4
    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    #@b
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    #@12
    .line 70
    iput p2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    #@14
    .line 71
    const/4 v0, 0x0

    #@15
    iput v0, p0, Landroid/icu/text/StringPrepParseException;->line:I

    #@17
    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "rules"    # Ljava/lang/String;
    .param p4, "pos"    # I

    #@0
    .prologue
    .line 84
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@4
    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    #@b
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    #@12
    .line 85
    iput p2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    #@14
    .line 86
    invoke-direct {p0, p3, p4}, Landroid/icu/text/StringPrepParseException;->setContext(Ljava/lang/String;I)V

    #@17
    .line 87
    const/4 v0, 0x0

    #@18
    iput v0, p0, Landroid/icu/text/StringPrepParseException;->line:I

    #@1a
    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "rules"    # Ljava/lang/String;
    .param p4, "pos"    # I
    .param p5, "lineNumber"    # I

    #@0
    .prologue
    .line 103
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@4
    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    #@b
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    iput-object v0, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    #@12
    .line 104
    iput p2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    #@14
    .line 105
    invoke-direct {p0, p3, p4}, Landroid/icu/text/StringPrepParseException;->setContext(Ljava/lang/String;I)V

    #@17
    .line 106
    iput p5, p0, Landroid/icu/text/StringPrepParseException;->line:I

    #@19
    .line 102
    return-void
.end method

.method private setContext(Ljava/lang/String;I)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Landroid/icu/text/StringPrepParseException;->setPreContext(Ljava/lang/String;I)V

    #@3
    .line 205
    invoke-direct {p0, p1, p2}, Landroid/icu/text/StringPrepParseException;->setPostContext(Ljava/lang/String;I)V

    #@6
    .line 203
    return-void
.end method

.method private setPostContext(Ljava/lang/String;I)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/icu/text/StringPrepParseException;->setPostContext([CI)V

    #@7
    .line 192
    return-void
.end method

.method private setPostContext([CI)V
    .locals 3
    .param p1, "str"    # [C
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 197
    move v1, p2

    #@1
    .line 198
    .local v1, "start":I
    array-length v2, p1

    #@2
    sub-int v0, v2, p2

    #@4
    .line 199
    .local v0, "len":I
    iget-object v2, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    #@6
    invoke-virtual {v2, p1, p2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@9
    .line 196
    return-void
.end method

.method private setPreContext(Ljava/lang/String;I)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/icu/text/StringPrepParseException;->setPreContext([CI)V

    #@7
    .line 181
    return-void
.end method

.method private setPreContext([CI)V
    .locals 3
    .param p1, "str"    # [C
    .param p2, "pos"    # I

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    .line 186
    if-gt p2, v2, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    .line 187
    .local v1, "start":I
    :goto_0
    if-gt v1, v2, :cond_1

    #@7
    move v0, v1

    #@8
    .line 188
    .local v0, "len":I
    :goto_1
    iget-object v2, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    #@a
    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@d
    .line 185
    return-void

    #@e
    .line 186
    .end local v0    # "len":I
    .end local v1    # "start":I
    :cond_0
    add-int/lit8 v1, p2, -0xf

    #@10
    goto :goto_0

    #@11
    .line 187
    .restart local v1    # "start":I
    :cond_1
    const/16 v0, 0x10

    #@13
    .restart local v0    # "len":I
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 117
    instance-of v1, p1, Landroid/icu/text/StringPrepParseException;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 118
    return v0

    #@6
    .line 120
    :cond_0
    check-cast p1, Landroid/icu/text/StringPrepParseException;

    #@8
    .end local p1    # "other":Ljava/lang/Object;
    iget v1, p1, Landroid/icu/text/StringPrepParseException;->error:I

    #@a
    iget v2, p0, Landroid/icu/text/StringPrepParseException;->error:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    :cond_1
    return v0
.end method

.method public getError()I
    .locals 1

    #@0
    .prologue
    .line 214
    iget v0, p0, Landroid/icu/text/StringPrepParseException;->error:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 133
    sget-boolean v0, Landroid/icu/text/StringPrepParseException;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "hashCode not designed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 134
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 144
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 145
    const-string/jumbo v1, ". line:  "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 146
    iget v1, p0, Landroid/icu/text/StringPrepParseException;->line:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    .line 147
    const-string/jumbo v1, ". preContext:  "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 148
    iget-object v1, p0, Landroid/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    #@22
    .line 149
    const-string/jumbo v1, ". postContext: "

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 150
    iget-object v1, p0, Landroid/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    #@2d
    .line 151
    const-string/jumbo v1, "\n"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method
