.class public Ljava/util/NoSuchElementException;
.super Ljava/lang/RuntimeException;
.source "NoSuchElementException.java"


# static fields
.field private static final serialVersionUID:J = 0x5df343d5da693aa8L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 57
    return-void
.end method
