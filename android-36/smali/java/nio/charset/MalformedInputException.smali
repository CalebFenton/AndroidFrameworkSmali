.class public Ljava/nio/charset/MalformedInputException;
.super Ljava/nio/charset/CharacterCodingException;
.source "MalformedInputException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x2fb927a9987467b2L


# instance fields
.field private greylist-max-o inputLength:I


# direct methods
.method public constructor whitelist test-api <init>(I)V
    .registers 2
    .param p1, "inputLength"    # I

    .line 50
    invoke-direct {p0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    .line 51
    iput p1, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist test-api getInputLength()I
    .registers 2

    .line 59
    iget v0, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    return v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
