.class public Ljava/util/regex/PatternSyntaxException;
.super Ljava/lang/IllegalArgumentException;
.source "PatternSyntaxException.java"


# static fields
.field private static final nl:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x35a1f4cf3fc7bfd2L


# instance fields
.field private final desc:Ljava/lang/String;

.field private final index:I

.field private final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 98
    new-instance v0, Lsun/security/action/GetPropertyAction;

    #@2
    const-string/jumbo v1, "line.separator"

    #@5
    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 97
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    .line 96
    sput-object v0, Ljava/util/regex/PatternSyntaxException;->nl:Ljava/lang/String;

    #@10
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    #@5
    .line 64
    iput-object p2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    #@7
    .line 65
    iput p3, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@9
    .line 62
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@2
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 109
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a
    .line 110
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@c
    if-ltz v2, :cond_0

    #@e
    .line 111
    const-string/jumbo v2, " near index "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 112
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@19
    .line 114
    :cond_0
    sget-object v2, Ljava/util/regex/PatternSyntaxException;->nl:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 115
    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 116
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@25
    if-ltz v2, :cond_2

    #@27
    .line 117
    sget-object v2, Ljava/util/regex/PatternSyntaxException;->nl:Ljava/lang/String;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 118
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    #@2f
    if-ge v0, v2, :cond_1

    #@31
    const/16 v2, 0x20

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@36
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 119
    :cond_1
    const/16 v2, 0x5e

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3e
    .line 121
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    return-object v2
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method
