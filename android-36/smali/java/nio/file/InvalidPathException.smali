.class public Ljava/nio/file/InvalidPathException;
.super Ljava/lang/IllegalArgumentException;
.source "InvalidPathException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x3c72fc8164703219L


# instance fields
.field private greylist-max-o index:I

.field private greylist-max-o input:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/file/InvalidPathException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 60
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 63
    const/4 v0, -0x1

    if-lt p3, v0, :cond_f

    .line 65
    iput-object p1, p0, Ljava/nio/file/InvalidPathException;->input:Ljava/lang/String;

    .line 66
    iput p3, p0, Ljava/nio/file/InvalidPathException;->index:I

    .line 67
    return-void

    .line 64
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 62
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getIndex()I
    .registers 2

    .line 108
    iget v0, p0, Ljava/nio/file/InvalidPathException;->index:I

    return v0
.end method

.method public whitelist test-api getInput()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Ljava/nio/file/InvalidPathException;->input:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/nio/file/InvalidPathException;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget v1, p0, Ljava/nio/file/InvalidPathException;->index:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1b

    .line 125
    const-string v1, " at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Ljava/nio/file/InvalidPathException;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    :cond_1b
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Ljava/nio/file/InvalidPathException;->input:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getReason()Ljava/lang/String;
    .registers 2

    .line 98
    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
