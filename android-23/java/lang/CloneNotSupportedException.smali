.class public Ljava/lang/CloneNotSupportedException;
.super Ljava/lang/Exception;
.source "CloneNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = 0x481a29f4778b29fbL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 44
    return-void
.end method
