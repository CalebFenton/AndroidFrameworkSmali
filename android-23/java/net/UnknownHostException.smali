.class public Ljava/net/UnknownHostException;
.super Ljava/io/IOException;
.source "UnknownHostException.java"


# static fields
.field private static final serialVersionUID:J = -0x40617c964762288bL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
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
