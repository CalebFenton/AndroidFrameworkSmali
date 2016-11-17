.class public final Lsun/misc/IoTrace;
.super Ljava/lang/Object;
.source "IoTrace.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static fileReadBegin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static fileReadEnd(Ljava/lang/Object;J)V
    .locals 0
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "bytesRead"    # J

    #@0
    .prologue
    .line 145
    return-void
.end method

.method public static fileWriteBegin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static fileWriteEnd(Ljava/lang/Object;J)V
    .locals 0
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "bytesWritten"    # J

    #@0
    .prologue
    .line 168
    return-void
.end method

.method public static socketReadBegin()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V
    .locals 0
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "bytesRead"    # J

    #@0
    .prologue
    .line 95
    return-void
.end method

.method public static socketWriteBegin()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V
    .locals 0
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "bytesWritten"    # J

    #@0
    .prologue
    .line 122
    return-void
.end method
