.class public Ljava/io/UTFDataFormatException;
.super Ljava/io/IOException;
.source "UTFDataFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x5d6c7f018d30324L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 44
    return-void
.end method
