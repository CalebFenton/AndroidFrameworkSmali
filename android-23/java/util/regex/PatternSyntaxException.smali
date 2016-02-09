.class public Ljava/util/regex/PatternSyntaxException;
.super Ljava/lang/IllegalArgumentException;
.source "PatternSyntaxException.java"


# static fields
.field private static final serialVersionUID:J = -0x35a1f4cf3fc7bfd2L


# instance fields
.field private desc:Ljava/lang/String;

.field private index:I

.field private pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@3
    .line 50
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@6
    .line 67
    iput-object p1, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    #@8
    .line 68
    iput-object p2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    #@a
    .line 69
    iput p3, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@c
    .line 66
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@2
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    const/16 v3, 0xa

    #@4
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 93
    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 96
    :cond_0
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@14
    if-ltz v2, :cond_2

    #@16
    .line 97
    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 100
    :cond_1
    const-string/jumbo v2, "near index "

    #@20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 101
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    .line 102
    const/16 v2, 0x3a

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 105
    :cond_2
    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    #@2f
    if-eqz v2, :cond_3

    #@31
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 107
    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    #@36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 109
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@3b
    if-ltz v2, :cond_3

    #@3d
    .line 110
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@3f
    new-array v1, v2, [C

    #@41
    .line 111
    .local v1, "spaces":[C
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([CC)V

    #@44
    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@47
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@4a
    .line 114
    const/16 v2, 0x5e

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    .line 118
    .end local v1    # "spaces":[C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    return-object v2
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method
