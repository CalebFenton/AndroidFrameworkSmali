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
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 81
    if-nez p1, :cond_0

    #@5
    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "input == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 83
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "reason == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 87
    :cond_1
    iput-object p1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    #@1b
    .line 88
    const/4 v0, -0x1

    #@1c
    iput v0, p0, Ljava/net/URISyntaxException;->index:I

    #@1e
    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 52
    if-nez p1, :cond_0

    #@5
    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "input == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 54
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "reason == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 58
    :cond_1
    const/4 v0, -0x1

    #@1a
    if-ge p3, v0, :cond_2

    #@1c
    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Bad index: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 62
    :cond_2
    iput-object p1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    #@38
    .line 63
    iput p3, p0, Ljava/net/URISyntaxException;->index:I

    #@3a
    .line 49
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget v0, p0, Ljava/net/URISyntaxException;->index:I

    #@2
    return v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 129
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 130
    .local v0, "reason":Ljava/lang/String;
    iget v1, p0, Ljava/net/URISyntaxException;->index:I

    #@6
    const/4 v2, -0x1

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " at index "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, p0, Ljava/net/URISyntaxException;->index:I

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, ": "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    return-object v1

    #@31
    .line 133
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, ": "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    iget-object v2, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    return-object v1
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
