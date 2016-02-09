.class public Lcom/android/internal/http/multipart/StringPart;
.super Lcom/android/internal/http/multipart/PartBase;
.source "StringPart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "US-ASCII"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "text/plain"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "8bit"

.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private content:[B

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 53
    const-class v0, Lcom/android/internal/http/multipart/StringPart;

    #@2
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/internal/http/multipart/StringPart;->LOG:Lorg/apache/commons/logging/Log;

    #@8
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    const-string/jumbo v0, "text/plain"

    #@3
    .line 83
    if-nez p3, :cond_0

    #@5
    const-string/jumbo p3, "US-ASCII"

    #@8
    .line 84
    .end local p3    # "charset":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "8bit"

    #@b
    .line 80
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/internal/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 86
    if-nez p2, :cond_1

    #@10
    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Value may not be null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 89
    :cond_1
    const/4 v0, 0x0

    #@1a
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    #@1d
    move-result v0

    #@1e
    const/4 v1, -0x1

    #@1f
    if-eq v0, v1, :cond_2

    #@21
    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v1, "NULs may not be present in string parts"

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 93
    :cond_2
    iput-object p2, p0, Lcom/android/internal/http/multipart/StringPart;->value:Ljava/lang/String;

    #@2c
    .line 78
    return-void
.end method

.method private getContent()[B
    .locals 2

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/http/multipart/StringPart;->content:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 114
    iget-object v0, p0, Lcom/android/internal/http/multipart/StringPart;->value:Ljava/lang/String;

    #@6
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/StringPart;->getCharSet()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/internal/http/multipart/StringPart;->content:[B

    #@10
    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/internal/http/multipart/StringPart;->content:[B

    #@12
    return-object v0
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    #@0
    .prologue
    .line 137
    sget-object v0, Lcom/android/internal/http/multipart/StringPart;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v1, "enter lengthOfData()"

    #@5
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 138
    invoke-direct {p0}, Lcom/android/internal/http/multipart/StringPart;->getContent()[B

    #@b
    move-result-object v0

    #@c
    array-length v0, v0

    #@d
    int-to-long v0, v0

    #@e
    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    sget-object v0, Lcom/android/internal/http/multipart/StringPart;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v1, "enter sendData(OutputStream)"

    #@5
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 127
    invoke-direct {p0}, Lcom/android/internal/http/multipart/StringPart;->getContent()[B

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@f
    .line 125
    return-void
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 1
    .param p1, "charSet"    # Ljava/lang/String;

    #@0
    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/internal/http/multipart/PartBase;->setCharSet(Ljava/lang/String;)V

    #@3
    .line 147
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/internal/http/multipart/StringPart;->content:[B

    #@6
    .line 145
    return-void
.end method
