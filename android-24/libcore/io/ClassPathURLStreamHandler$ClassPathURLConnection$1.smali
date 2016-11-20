.class Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;
.super Ljava/io/FilterInputStream;
.source "ClassPathURLStreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;


# direct methods
.method constructor <init>(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$1"    # Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;
    .param p2, "$anonymous0"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 162
    iput-object p1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    #@2
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
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
    .line 165
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    #@3
    .line 168
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    #@5
    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-get0(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Ljava/util/jar/JarFile;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    #@d
    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-get1(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 164
    :cond_0
    :goto_0
    return-void

    #@14
    .line 169
    :cond_1
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    #@16
    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-get0(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Ljava/util/jar/JarFile;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    #@1d
    .line 170
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    #@1f
    const/4 v1, 0x1

    #@20
    invoke-static {v0, v1}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-set0(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Z)Z

    #@23
    goto :goto_0
.end method
