.class public Ljava/util/zip/DataFormatException;
.super Ljava/lang/Exception;
.source "DataFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1ecdb85601655eecL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 41
    return-void
.end method
