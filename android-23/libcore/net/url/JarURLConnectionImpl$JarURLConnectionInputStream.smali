.class Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;
.super Ljava/io/FilterInputStream;
.source "JarURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/url/JarURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JarURLConnectionInputStream"
.end annotation


# instance fields
.field final jarFile:Ljava/util/jar/JarFile;

.field final synthetic this$0:Llibcore/net/url/JarURLConnectionImpl;


# direct methods
.method protected constructor <init>(Llibcore/net/url/JarURLConnectionImpl;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V
    .locals 0
    .param p1, "this$0"    # Llibcore/net/url/JarURLConnectionImpl;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "file"    # Ljava/util/jar/JarFile;

    #@0
    .prologue
    .line 346
    iput-object p1, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Llibcore/net/url/JarURLConnectionImpl;

    #@2
    .line 347
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 348
    iput-object p3, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    #@7
    .line 346
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 353
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    #@3
    .line 354
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Llibcore/net/url/JarURLConnectionImpl;

    #@5
    invoke-virtual {v0}, Llibcore/net/url/JarURLConnectionImpl;->getUseCaches()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 355
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->this$0:Llibcore/net/url/JarURLConnectionImpl;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-static {v0, v1}, Llibcore/net/url/JarURLConnectionImpl;->-set0(Llibcore/net/url/JarURLConnectionImpl;Z)Z

    #@11
    .line 356
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;->jarFile:Ljava/util/jar/JarFile;

    #@13
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    #@16
    .line 352
    :cond_0
    return-void
.end method
