.class final Ljava/util/regex/Matcher$OffsetBasedMatchResult;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/regex/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OffsetBasedMatchResult"
.end annotation


# instance fields
.field private final input:Ljava/lang/String;

.field private final offsets:[I


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "offsets"    # [I

    #@0
    .prologue
    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1122
    iput-object p1, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->input:Ljava/lang/String;

    #@5
    .line 1123
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [I

    #@b
    iput-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    #@d
    .line 1121
    return-void
.end method


# virtual methods
.method public end()I
    .locals 1

    #@0
    .prologue
    .line 1138
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->end(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public end(I)I
    .locals 2
    .param p1, "group"    # I

    #@0
    .prologue
    .line 1143
    iget-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    #@2
    mul-int/lit8 v1, p1, 0x2

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public group()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1148
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->group(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .locals 3
    .param p1, "group"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 1153
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->start(I)I

    #@4
    move-result v1

    #@5
    .line 1154
    .local v1, "start":I
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->end(I)I

    #@8
    move-result v0

    #@9
    .line 1155
    .local v0, "end":I
    if-eq v1, v2, :cond_0

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 1156
    :cond_0
    const/4 v2, 0x0

    #@e
    return-object v2

    #@f
    .line 1159
    :cond_1
    iget-object v2, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->input:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    return-object v2
.end method

.method public groupCount()I
    .locals 1

    #@0
    .prologue
    .line 1164
    iget-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    #@2
    array-length v0, v0

    #@3
    div-int/lit8 v0, v0, 0x2

    #@5
    add-int/lit8 v0, v0, -0x1

    #@7
    return v0
.end method

.method public start()I
    .locals 1

    #@0
    .prologue
    .line 1128
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->start(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public start(I)I
    .locals 2
    .param p1, "group"    # I

    #@0
    .prologue
    .line 1133
    iget-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    #@2
    mul-int/lit8 v1, p1, 0x2

    #@4
    aget v0, v0, v1

    #@6
    return v0
.end method
