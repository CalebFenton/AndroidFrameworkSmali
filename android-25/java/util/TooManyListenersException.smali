.class public Ljava/util/TooManyListenersException;
.super Ljava/lang/Exception;
.source "TooManyListenersException.java"


# static fields
.field private static final serialVersionUID:J = 0x466cbeb059da0357L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 68
    return-void
.end method
