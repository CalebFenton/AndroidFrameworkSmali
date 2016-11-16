.class public Ljava/net/URISyntaxException;
.super Ljava/lang/Exception;
.source "URISyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x1daba13138e5d7fbL


# instance fields
.field private index:I

.field private input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@4
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 62
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 63
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 64
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@c
    throw v0

    #@d
    .line 65
    :cond_1
    const/4 v0, -0x1

    #@e
    if-ge p3, v0, :cond_2

    #@10
    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@15
    throw v0

    #@16
    .line 67
    :cond_2
    iput-object p1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    #@18
    .line 68
    iput p3, p0, Ljava/net/URISyntaxException;->index:I

    #@1a
    .line 61
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Ljava/net/URISyntaxException;->index:I

    #@2
    return v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 125
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    .line 126
    iget v1, p0, Ljava/net/URISyntaxException;->index:I

    #@e
    const/4 v2, -0x1

    #@f
    if-le v1, v2, :cond_0

    #@11
    .line 127
    const-string/jumbo v1, " at index "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    .line 128
    iget v1, p0, Ljava/net/URISyntaxException;->index:I

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1c
    .line 130
    :cond_0
    const-string/jumbo v1, ": "

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    .line 131
    iget-object v1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
