.class public Ljava/nio/charset/IllegalCharsetNameException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalCharsetNameException.java"


# static fields
.field private static final serialVersionUID:J = 0x143a2b975aba792dL


# instance fields
.field private charsetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    if-eqz p1, :cond_0

    #@2
    move-object v0, p1

    #@3
    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6
    .line 44
    iput-object p1, p0, Ljava/nio/charset/IllegalCharsetNameException;->charsetName:Ljava/lang/String;

    #@8
    .line 42
    return-void

    #@9
    .line 43
    :cond_0
    const-string/jumbo v0, "null"

    #@c
    goto :goto_0
.end method


# virtual methods
.method public getCharsetName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Ljava/nio/charset/IllegalCharsetNameException;->charsetName:Ljava/lang/String;

    #@2
    return-object v0
.end method
