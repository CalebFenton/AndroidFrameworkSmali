.class public Ljava/net/MalformedURLException;
.super Ljava/io/IOException;
.source "MalformedURLException.java"


# static fields
.field private static final serialVersionUID:J = -0x289644872212e7aL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 49
    return-void
.end method
