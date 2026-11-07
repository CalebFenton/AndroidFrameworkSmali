.class Lsun/net/ftp/impl/FtpClient$FtpFileIterator;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/impl/FtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FtpFileIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lsun/net/ftp/FtpDirEntry;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private blacklist eof:Z

.field private blacklist fparser:Lsun/net/ftp/FtpDirParser;

.field private blacklist in:Ljava/io/BufferedReader;

.field private blacklist nextFile:Lsun/net/ftp/FtpDirEntry;


# direct methods
.method public constructor blacklist <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V
    .registers 4
    .param p2, "p"    # Lsun/net/ftp/FtpDirParser;
    .param p3, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1819
    const/4 p1, 0x0

    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    .line 1820
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1821
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    .line 1822
    const/4 p1, 0x0

    iput-boolean p1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    .line 1825
    iput-object p3, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    .line 1826
    iput-object p2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    .line 1827
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->readNext()V

    .line 1828
    return-void
.end method

.method private blacklist readNext()V
    .registers 3

    .line 1831
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1832
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    if-eqz v0, :cond_8

    .line 1833
    return-void

    .line 1835
    :cond_8
    const/4 v0, 0x0

    .line 1838
    .local v0, "line":Ljava/lang/String;
    :cond_9
    :try_start_9
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1839
    if-eqz v0, :cond_1f

    .line 1840
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    invoke-interface {v1, v0}, Lsun/net/ftp/FtpDirParser;->parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    move-result-object v1

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1841
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    if-eqz v1, :cond_1f

    .line 1842
    return-void

    .line 1845
    :cond_1f
    if-nez v0, :cond_9

    .line 1846
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_26} :catch_27

    .line 1848
    goto :goto_28

    .line 1847
    :catch_27
    move-exception v1

    .line 1849
    :goto_28
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    .line 1850
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1867
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    if-nez v0, :cond_d

    .line 1868
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1870
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    .line 1871
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1872
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1853
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 1817
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->next()Lsun/net/ftp/FtpDirEntry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Lsun/net/ftp/FtpDirEntry;
    .registers 2

    .line 1857
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1858
    .local v0, "ret":Lsun/net/ftp/FtpDirEntry;
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->readNext()V

    .line 1859
    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 1863
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
