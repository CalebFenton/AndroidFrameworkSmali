.class Landroid/media/MediaScanner$WplHandler;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WplHandler"
.end annotation


# instance fields
.field final handler:Lorg/xml/sax/ContentHandler;

.field playListDirectory:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "this$0"    # Landroid/media/MediaScanner;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "fileList"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 1727
    iput-object p1, p0, Landroid/media/MediaScanner$WplHandler;->this$0:Landroid/media/MediaScanner;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1728
    iput-object p2, p0, Landroid/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    #@7
    .line 1730
    new-instance v2, Landroid/sax/RootElement;

    #@9
    const-string/jumbo v4, "smil"

    #@c
    invoke-direct {v2, v4}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    #@f
    .line 1731
    .local v2, "root":Landroid/sax/RootElement;
    const-string/jumbo v4, "body"

    #@12
    invoke-virtual {v2, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    #@15
    move-result-object v0

    #@16
    .line 1732
    .local v0, "body":Landroid/sax/Element;
    const-string/jumbo v4, "seq"

    #@19
    invoke-virtual {v0, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    #@1c
    move-result-object v3

    #@1d
    .line 1733
    .local v3, "seq":Landroid/sax/Element;
    const-string/jumbo v4, "media"

    #@20
    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    #@23
    move-result-object v1

    #@24
    .line 1734
    .local v1, "media":Landroid/sax/Element;
    invoke-virtual {v1, p0}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    #@27
    .line 1736
    invoke-virtual {v2}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    #@2a
    move-result-object v4

    #@2b
    iput-object v4, p0, Landroid/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    #@2d
    .line 1727
    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    #@0
    .prologue
    .line 1748
    return-void
.end method

.method getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 1752
    iget-object v0, p0, Landroid/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    #@2
    return-object v0
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 1741
    const-string/jumbo v1, ""

    #@3
    const-string/jumbo v2, "src"

    #@6
    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1742
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    .line 1743
    iget-object v1, p0, Landroid/media/MediaScanner$WplHandler;->this$0:Landroid/media/MediaScanner;

    #@e
    iget-object v2, p0, Landroid/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    #@10
    invoke-static {v1, v0, v2}, Landroid/media/MediaScanner;->-wrap2(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 1740
    :cond_0
    return-void
.end method
