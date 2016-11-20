.class public Lsun/security/pkcs/ParsingException;
.super Ljava/io/IOException;
.source "ParsingException.java"


# static fields
.field private static final serialVersionUID:J = -0x57a8f6dfeae5affbL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 44
    return-void
.end method
