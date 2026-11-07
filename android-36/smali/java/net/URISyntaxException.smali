.class public Ljava/net/URISyntaxException;
.super Ljava/lang/Exception;
.source "URISyntaxException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1daba13138e5d7fbL


# instance fields
.field private greylist-max-o index:I

.field private greylist-max-o input:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 62
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 63
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 65
    const/4 v0, -0x1

    if-lt p3, v0, :cond_f

    .line 67
    iput-object p1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    .line 68
    iput p3, p0, Ljava/net/URISyntaxException;->index:I

    .line 69
    return-void

    .line 66
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getIndex()I
    .registers 2

    .line 110
    iget v0, p0, Ljava/net/URISyntaxException;->index:I

    return v0
.end method

.method public whitelist test-api getInput()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Ljava/net/URISyntaxException;->index:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1b

    .line 127
    const-string v1, " at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, Ljava/net/URISyntaxException;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    :cond_1b
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getReason()Ljava/lang/String;
    .registers 2

    .line 100
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
