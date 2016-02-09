.class public Ljava/lang/IndexOutOfBoundsException;
.super Ljava/lang/RuntimeException;
.source "IndexOutOfBoundsException.java"


# static fields
.field private static final serialVersionUID:J = 0x33fc59fdab42b27L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 42
    return-void
.end method
