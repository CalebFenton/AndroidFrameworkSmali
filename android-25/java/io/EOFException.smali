.class public Ljava/io/EOFException;
.super Ljava/io/IOException;
.source "EOFException.java"


# static fields
.field private static final serialVersionUID:J = 0x5949a7f76b53ec41L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 62
    return-void
.end method
