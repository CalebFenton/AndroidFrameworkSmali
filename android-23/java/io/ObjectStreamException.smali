.class public abstract Ljava/io/ObjectStreamException;
.super Ljava/io/IOException;
.source "ObjectStreamException.java"


# static fields
.field private static final serialVersionUID:J = 0x64c3e46b8d39fbdfL


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 50
    return-void
.end method
