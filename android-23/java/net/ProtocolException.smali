.class public Ljava/net/ProtocolException;
.super Ljava/io/IOException;
.source "ProtocolException.java"


# static fields
.field private static final serialVersionUID:J = -0x54a20b74e2cecb70L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 46
    return-void
.end method
