.class Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;
.super Ljava/io/FilterInputStream;
.source "JarURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/jar/JarURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JarURLInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/www/protocol/jar/JarURLConnection;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/jar/JarURLConnection;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/www/protocol/jar/JarURLConnection;
    .param p2, "src"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;->this$0:Lsun/net/www/protocol/jar/JarURLConnection;

    #@2
    .line 104
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 103
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
    .line 108
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 110
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;->this$0:Lsun/net/www/protocol/jar/JarURLConnection;

    #@5
    invoke-virtual {v0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 111
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;->this$0:Lsun/net/www/protocol/jar/JarURLConnection;

    #@d
    invoke-static {v0}, Lsun/net/www/protocol/jar/JarURLConnection;->-get0(Lsun/net/www/protocol/jar/JarURLConnection;)Ljava/util/jar/JarFile;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    #@14
    .line 106
    :cond_0
    return-void

    #@15
    .line 109
    :catchall_0
    move-exception v0

    #@16
    .line 110
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;->this$0:Lsun/net/www/protocol/jar/JarURLConnection;

    #@18
    invoke-virtual {v1}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_1

    #@1e
    .line 111
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;->this$0:Lsun/net/www/protocol/jar/JarURLConnection;

    #@20
    invoke-static {v1}, Lsun/net/www/protocol/jar/JarURLConnection;->-get0(Lsun/net/www/protocol/jar/JarURLConnection;)Ljava/util/jar/JarFile;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    #@27
    .line 109
    :cond_1
    throw v0
.end method
