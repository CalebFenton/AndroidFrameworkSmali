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
.field private static final blacklist URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist docid:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 885
    const-string v0, "(?i)http://(?:[a-z0-9]+\\.)?youtube\\.[a-z0-9]+(?:\\.[a-z0-9]+)?/watch\\?.*\\bv=([-_a-zA-Z0-9=]+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "docid"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 892
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p2}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 893
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->docid:Ljava/lang/String;

    .line 894
    return-void
.end method

.method public static blacklist getPrefixedURL(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "http"    # Z
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "docid"    # Ljava/lang/String;
    .param p3, "extraParams"    # Ljava/lang/String;

    .line 945
    const-string v0, ""

    .line 947
    .local v0, "protocol":Ljava/lang/String;
    if-eqz p0, :cond_6

    .line 948
    const-string v0, "http://"

    .line 951
    :cond_6
    if-nez p1, :cond_a

    .line 952
    const-string p1, ""

    .line 955
    :cond_a
    if-nez p3, :cond_f

    .line 956
    const-string p3, ""

    goto :goto_28

    .line 957
    :cond_f
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_28

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 961
    :cond_28
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "youtube.com/watch?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getRssUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "docid"    # Ljava/lang/String;

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://youtube.com/watch?v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "docid"    # Ljava/lang/String;

    .line 925
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "docid"    # Ljava/lang/String;
    .param p1, "extraParams"    # Ljava/lang/String;

    .line 930
    if-nez p1, :cond_5

    .line 931
    const-string p1, ""

    goto :goto_1e

    .line 932
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 935
    :cond_1e
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://youtube.com/watch?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .line 903
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 904
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 905
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 907
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist getDocID()Ljava/lang/String;
    .registers 2

    .line 896
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->docid:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInfo()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 912
    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    move-result-object v0

    .line 913
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->docid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getRssUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->docid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    return-object v0
.end method

.method public blacklist isHtml()Z
    .registers 2

    .line 898
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMedia()Z
    .registers 2

    .line 899
    const/4 v0, 0x1

    return v0
.end method
