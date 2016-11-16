.class public Lorg/apache/xpath/functions/WrongNumberArgsException;
.super Ljava/lang/Exception;
.source "WrongNumberArgsException.java"


# static fields
.field static final serialVersionUID:J = -0x3f2a734144d5dd00L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "argsExpected"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 38
    return-void
.end method
