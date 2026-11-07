.class Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;
.super Ljava/io/FilterInputStream;
.source "ClassPathURLStreamHandler.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;


# direct methods
.method constructor blacklist <init>(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Ljava/io/InputStream;)V
    .registers 3
    .param p1, "this$1"    # Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;
    .param p2, "arg0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 168
    iput-object p1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 175
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-$$Nest$fgetconnectionJarFile(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Ljava/util/jar/JarFile;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-$$Nest$fgetuseCachedJarFile(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 176
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-$$Nest$fgetconnectionJarFile(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Ljava/util/jar/JarFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 177
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;->this$1:Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->-$$Nest$fputclosed(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Z)V

    .line 179
    :cond_22
    return-void
.end method
