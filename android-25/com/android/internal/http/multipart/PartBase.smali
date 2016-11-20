.class public abstract Lcom/android/internal/http/multipart/PartBase;
.super Lcom/android/internal/http/multipart/Part;
.source "PartBase.java"


# instance fields
.field private charSet:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "charSet"    # Ljava/lang/String;
    .param p4, "transferEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/http/multipart/Part;-><init>()V

    #@3
    .line 63
    if-nez p1, :cond_0

    #@5
    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Name must not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 66
    :cond_0
    iput-object p1, p0, Lcom/android/internal/http/multipart/PartBase;->name:Ljava/lang/String;

    #@10
    .line 67
    iput-object p2, p0, Lcom/android/internal/http/multipart/PartBase;->contentType:Ljava/lang/String;

    #@12
    .line 68
    iput-object p3, p0, Lcom/android/internal/http/multipart/PartBase;->charSet:Ljava/lang/String;

    #@14
    .line 69
    iput-object p4, p0, Lcom/android/internal/http/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    #@16
    .line 61
    return-void
.end method


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/http/multipart/PartBase;->charSet:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/http/multipart/PartBase;->contentType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/http/multipart/PartBase;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/http/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "charSet"    # Ljava/lang/String;

    #@0
    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/http/multipart/PartBase;->charSet:Ljava/lang/String;

    #@2
    .line 115
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/http/multipart/PartBase;->contentType:Ljava/lang/String;

    #@2
    .line 124
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    if-nez p1, :cond_0

    #@2
    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Name must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 137
    :cond_0
    iput-object p1, p0, Lcom/android/internal/http/multipart/PartBase;->name:Ljava/lang/String;

    #@d
    .line 133
    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "transferEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/http/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    #@2
    .line 146
    return-void
.end method
