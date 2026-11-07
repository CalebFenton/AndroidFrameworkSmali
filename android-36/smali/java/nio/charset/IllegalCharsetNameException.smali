.class public Ljava/nio/charset/IllegalCharsetNameException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalCharsetNameException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x143a2b975aba792dL


# instance fields
.field private greylist-max-o charsetName:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Ljava/nio/charset/IllegalCharsetNameException;->charsetName:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist test-api getCharsetName()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Ljava/nio/charset/IllegalCharsetNameException;->charsetName:Ljava/lang/String;

    return-object v0
.end method
