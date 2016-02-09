.class public final Ljava/util/regex/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANON_EQ:I = 0x80

.field public static final CASE_INSENSITIVE:I = 0x2

.field public static final COMMENTS:I = 0x4

.field public static final DOTALL:I = 0x20

.field public static final LITERAL:I = 0x10

.field public static final MULTILINE:I = 0x8

.field public static final UNICODE_CASE:I = 0x40

.field public static final UNIX_LINES:I = 0x1

.field private static final serialVersionUID:J = 0x4667d56b6e49020dL


# instance fields
.field transient address:J

.field private final flags:I

.field private final pattern:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 385
    and-int/lit16 v1, p2, 0x80

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 386
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v2, "CANON_EQ flag not supported"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 388
    :cond_0
    const/16 v0, 0x7f

    #@12
    .line 389
    .local v0, "supportedFlags":I
    not-int v1, v0

    #@13
    and-int/2addr v1, p2

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 390
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Unsupported flags: "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    not-int v3, v0

    #@25
    and-int/2addr v3, p2

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1

    #@32
    .line 392
    :cond_1
    iput-object p1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@34
    .line 393
    iput p2, p0, Ljava/util/regex/Pattern;->flags:I

    #@36
    .line 394
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    #@39
    .line 384
    return-void
.end method

.method private static native closeImpl(J)V
.end method

.method public static compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 381
    new-instance v0, Ljava/util/regex/Pattern;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    #@6
    return-object v0
.end method

.method public static compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "regularExpression"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    new-instance v0, Ljava/util/regex/Pattern;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    #@5
    return-object v0
.end method

.method private compile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    iget-object v2, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 399
    new-instance v2, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v3, "pattern == null"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 402
    :cond_0
    iget-object v1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@f
    .line 403
    .local v1, "icuPattern":Ljava/lang/String;
    iget v2, p0, Ljava/util/regex/Pattern;->flags:I

    #@11
    and-int/lit8 v2, v2, 0x10

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 404
    iget-object v2, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@17
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 409
    :cond_1
    iget v2, p0, Ljava/util/regex/Pattern;->flags:I

    #@1d
    and-int/lit8 v0, v2, 0x2f

    #@1f
    .line 411
    .local v0, "icuFlags":I
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compileImpl(Ljava/lang/String;I)J

    #@22
    move-result-wide v2

    #@23
    iput-wide v2, p0, Ljava/util/regex/Pattern;->address:J

    #@25
    .line 397
    return-void
.end method

.method private static native compileImpl(Ljava/lang/String;I)J
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "regularExpression"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 424
    new-instance v0, Ljava/util/regex/Matcher;

    #@2
    new-instance v1, Ljava/util/regex/Pattern;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v1, p0, v2}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    #@8
    invoke-direct {v0, v1, p1}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    #@b
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 436
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\\Q"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 437
    const/4 v0, 0x0

    #@c
    .line 439
    .local v0, "apos":I
    :goto_0
    const-string/jumbo v3, "\\E"

    #@f
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@12
    move-result v1

    #@13
    .local v1, "k":I
    if-ltz v1, :cond_0

    #@15
    .line 440
    add-int/lit8 v3, v1, 0x2

    #@17
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, "\\\\E\\Q"

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 441
    add-int/lit8 v0, v1, 0x2

    #@27
    goto :goto_0

    #@28
    .line 443
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, "\\E"

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 455
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 456
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    #@6
    .line 454
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 448
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Pattern;->address:J

    #@2
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->closeImpl(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 450
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 446
    return-void

    #@9
    .line 449
    :catchall_0
    move-exception v0

    #@a
    .line 450
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 449
    throw v0
.end method

.method public flags()I
    .locals 1

    #@0
    .prologue
    .line 355
    iget v0, p0, Ljava/util/regex/Pattern;->flags:I

    #@2
    return v0
.end method

.method public matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 297
    new-instance v0, Ljava/util/regex/Matcher;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    #@5
    return-object v0
.end method

.method public pattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 336
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {p0, v0, v1, p2}, Ljava/util/regex/Splitter;->split(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method
