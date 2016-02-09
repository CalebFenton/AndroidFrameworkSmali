.class public Ljava/nio/charset/MalformedInputException;
.super Ljava/nio/charset/CharacterCodingException;
.source "MalformedInputException.java"


# static fields
.field private static final serialVersionUID:J = -0x2fb927a9987467b2L


# instance fields
.field private inputLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    #@3
    .line 42
    iput p1, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    #@5
    .line 41
    return-void
.end method


# virtual methods
.method public getInputLength()I
    .locals 1

    #@0
    .prologue
    .line 51
    iget v0, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    #@2
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Length: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
