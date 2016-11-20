.class public Ljava/util/zip/ZipException;
.super Ljava/io/IOException;
.source "ZipException.java"


# static fields
.field private static final serialVersionUID:J = 0x6f0668a23bc0d4cfL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

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
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 57
    return-void
.end method
