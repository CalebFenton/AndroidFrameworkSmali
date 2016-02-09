.class public Ljava/io/StreamCorruptedException;
.super Ljava/io/ObjectStreamException;
.source "StreamCorruptedException.java"


# static fields
.field private static final serialVersionUID:J = 0x7cac02968639f3c2L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
    return-void
.end method
