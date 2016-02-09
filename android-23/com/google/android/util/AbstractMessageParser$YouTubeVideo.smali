.class public Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YouTubeVideo"
.end annotation


# static fields
.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private docid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 872
    const-string/jumbo v0, "(?i)http://(?:[a-z0-9]+\\.)?youtube\\.[a-z0-9]+(?:\\.[a-z0-9]+)?/watch\\?.*\\bv=([-_a-zA-Z0-9=]+).*"

    #@3
    .line 871
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->URL_PATTERN:Ljava/util/regex/Pattern;

    #@9
    .line 869
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "docid"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 878
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@2
    invoke-direct {p0, v0, p2}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    #@5
    .line 879
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->docid:Ljava/lang/String;

    #@7
    .line 877
    return-void
.end method

.method public static getPrefixedURL(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "http"    # Z
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "docid"    # Ljava/lang/String;
    .param p3, "extraParams"    # Ljava/lang/String;

    #@0
    .prologue
    .line 931
    const-string/jumbo v0, ""

    #@3
    .line 933
    .local v0, "protocol":Ljava/lang/String;
    if-eqz p0, :cond_0

    #@5
    .line 934
    const-string/jumbo v0, "http://"

    #@8
    .line 937
    :cond_0
    if-nez p1, :cond_1

    #@a
    .line 938
    const-string/jumbo p1, ""

    #@d
    .line 941
    :cond_1
    if-nez p3, :cond_3

    #@f
    .line 942
    const-string/jumbo p3, ""

    #@12
    .line 947
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "youtube.com/watch?"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "v="

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    return-object v1

    #@3a
    .line 943
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@3d
    move-result v1

    #@3e
    if-lez v1, :cond_2

    #@40
    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, "&"

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object p3

    #@54
    goto :goto_0
.end method

.method public static getRssUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "docid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "http://youtube.com/watch?v="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "docid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 911
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "docid"    # Ljava/lang/String;
    .param p1, "extraParams"    # Ljava/lang/String;

    #@0
    .prologue
    .line 916
    if-nez p1, :cond_1

    #@2
    .line 917
    const-string/jumbo p1, ""

    #@5
    .line 921
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "http://youtube.com/watch?"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "v="

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 918
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@28
    move-result v0

    #@29
    if-lez v0, :cond_0

    #@2b
    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    const-string/jumbo v1, "&"

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object p1

    #@3f
    goto :goto_0
.end method

.method public static matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 889
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->URL_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    .line 890
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 891
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v1, v2, p1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    return-object v1

    #@17
    .line 893
    :cond_0
    const/4 v1, 0x0

    #@18
    return-object v1
.end method


# virtual methods
.method public getDocID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->docid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 898
    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 899
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->docid:Ljava/lang/String;

    #@6
    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getRssUrl(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 900
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->docid:Ljava/lang/String;

    #@f
    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getURL(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 901
    return-object v0
.end method

.method public isHtml()Z
    .locals 1

    #@0
    .prologue
    .line 884
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMedia()Z
    .locals 1

    #@0
    .prologue
    .line 885
    const/4 v0, 0x1

    #@1
    return v0
.end method
