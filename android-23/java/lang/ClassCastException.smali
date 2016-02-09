.class public Ljava/lang/ClassCastException;
.super Ljava/lang/RuntimeException;
.source "ClassCastException.java"


# static fields
.field private static final serialVersionUID:J = -0x7ffffa3131981aa4L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 41
    return-void
.end method
