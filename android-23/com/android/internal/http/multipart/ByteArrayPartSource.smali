.class public Lcom/android/internal/http/multipart/ByteArrayPartSource;
.super Ljava/lang/Object;
.source "ByteArrayPartSource.java"

# interfaces
.implements Lcom/android/internal/http/multipart/PartSource;


# instance fields
.field private bytes:[B

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Lcom/android/internal/http/multipart/ByteArrayPartSource;->fileName:Ljava/lang/String;

    #@5
    .line 61
    iput-object p2, p0, Lcom/android/internal/http/multipart/ByteArrayPartSource;->bytes:[B

    #@7
    .line 58
    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2

    #@0
    .prologue
    .line 83
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    iget-object v1, p0, Lcom/android/internal/http/multipart/ByteArrayPartSource;->bytes:[B

    #@4
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/http/multipart/ByteArrayPartSource;->fileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLength()J
    .locals 2

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/http/multipart/ByteArrayPartSource;->bytes:[B

    #@2
    array-length v0, v0

    #@3
    int-to-long v0, v0

    #@4
    return-wide v0
.end method
