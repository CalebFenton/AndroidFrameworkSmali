.class Ljava/util/regex/Matcher$ImmutableMatchResult;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/regex/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmutableMatchResult"
.end annotation


# instance fields
.field private final blacklist first:I

.field private final blacklist groupCount:I

.field private final blacklist groups:[I

.field private final blacklist last:I

.field private final blacklist text:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(III[ILjava/lang/String;)V
    .registers 6
    .param p1, "first"    # I
    .param p2, "last"    # I
    .param p3, "groupCount"    # I
    .param p4, "groups"    # [I
    .param p5, "text"    # Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput p1, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->first:I

    .line 257
    iput p2, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->last:I

    .line 258
    iput p3, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groupCount:I

    .line 259
    iput-object p4, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groups:[I

    .line 260
    iput-object p5, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->text:Ljava/lang/String;

    .line 261
    return-void
.end method

.method private blacklist checkMatch()V
    .registers 3

    .line 313
    iget v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->first:I

    if-ltz v0, :cond_5

    .line 316
    return-void

    .line 314
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No match found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api end()I
    .registers 2

    .line 279
    invoke-direct {p0}, Ljava/util/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    .line 280
    iget v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->last:I

    return v0
.end method

.method public whitelist test-api end(I)I
    .registers 5
    .param p1, "group"    # I

    .line 285
    invoke-direct {p0}, Ljava/util/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    .line 286
    if-ltz p1, :cond_12

    iget v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groupCount:I

    if-gt p1, v0, :cond_12

    .line 288
    iget-object v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0

    .line 287
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api group()Ljava/lang/String;
    .registers 2

    .line 298
    invoke-direct {p0}, Ljava/util/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher$ImmutableMatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api group(I)Ljava/lang/String;
    .registers 6
    .param p1, "group"    # I

    .line 304
    invoke-direct {p0}, Ljava/util/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    .line 305
    if-ltz p1, :cond_38

    iget v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groupCount:I

    if-gt p1, v0, :cond_38

    .line 307
    iget-object v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groups:[I

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v0, v0, v2

    if-ne v0, v1, :cond_1d

    goto :goto_36

    .line 309
    :cond_1d
    iget-object v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->text:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groups:[I

    mul-int/lit8 v2, p1, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groups:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    :cond_36
    :goto_36
    const/4 v0, 0x0

    return-object v0

    .line 306
    :cond_38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api groupCount()I
    .registers 2

    .line 293
    iget v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groupCount:I

    return v0
.end method

.method public whitelist test-api start()I
    .registers 2

    .line 265
    invoke-direct {p0}, Ljava/util/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    .line 266
    iget v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->first:I

    return v0
.end method

.method public whitelist test-api start(I)I
    .registers 5
    .param p1, "group"    # I

    .line 271
    invoke-direct {p0}, Ljava/util/regex/Matcher$ImmutableMatchResult;->checkMatch()V

    .line 272
    if-ltz p1, :cond_10

    iget v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groupCount:I

    if-gt p1, v0, :cond_10

    .line 274
    iget-object v0, p0, Ljava/util/regex/Matcher$ImmutableMatchResult;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0

    .line 273
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
