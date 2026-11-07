.class Lsun/misc/URLClassPath$Loader$1;
.super Lsun/misc/Resource;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/misc/URLClassPath$Loader;

.field final synthetic blacklist val$name:Ljava/lang/String;

.field final synthetic blacklist val$uc:Ljava/net/URLConnection;

.field final synthetic blacklist val$url:Ljava/net/URL;


# direct methods
.method constructor blacklist <init>(Lsun/misc/URLClassPath$Loader;Ljava/lang/String;Ljava/net/URL;Ljava/net/URLConnection;)V
    .registers 5
    .param p1, "this$0"    # Lsun/misc/URLClassPath$Loader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 767
    iput-object p1, p0, Lsun/misc/URLClassPath$Loader$1;->this$0:Lsun/misc/URLClassPath$Loader;

    iput-object p2, p0, Lsun/misc/URLClassPath$Loader$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lsun/misc/URLClassPath$Loader$1;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lsun/misc/URLClassPath$Loader$1;->val$uc:Ljava/net/URLConnection;

    invoke-direct {p0}, Lsun/misc/Resource;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getCodeSourceURL()Ljava/net/URL;
    .registers 2

    .line 770
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->this$0:Lsun/misc/URLClassPath$Loader;

    invoke-static {v0}, Lsun/misc/URLClassPath$Loader;->-$$Nest$fgetbase(Lsun/misc/URLClassPath$Loader;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$uc:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public blacklist getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$uc:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 768
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getURL()Ljava/net/URL;
    .registers 2

    .line 769
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$url:Ljava/net/URL;

    return-object v0
.end method
