.class public Lcom/google/android/util/AbstractMessageParser$Video;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# static fields
.field private static final blacklist URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist docid:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 826
    const-string v0, "(?i)http://video\\.google\\.[a-z0-9]+(?:\\.[a-z0-9]+)?/videoplay\\?.*?\\bdocid=(-?\\d+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Video;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "docid"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 833
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p2}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 834
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Video;->docid:Ljava/lang/String;

    .line 835
    return-void
.end method

.method public static blacklist getRssUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "docid"    # Ljava/lang/String;

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://video.google.com/videofeed?type=docid&output=rss&sourceid=gtalk&docid="

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

    .line 867
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/util/AbstractMessageParser$Video;->getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "docid"    # Ljava/lang/String;
    .param p1, "extraParams"    # Ljava/lang/String;

    .line 872
    if-nez p1, :cond_5

    .line 873
    const-string p1, ""

    goto :goto_1e

    .line 874
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 877
    :cond_1e
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://video.google.com/videoplay?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "docid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Video;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .line 844
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Video;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 845
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 846
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Video;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/util/AbstractMessageParser$Video;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 848
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist getDocID()Ljava/lang/String;
    .registers 2

    .line 837
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Video;->docid:Ljava/lang/String;

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

    .line 853
    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    move-result-object v0

    .line 854
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$Video;->docid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser$Video;->getRssUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$Video;->docid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser$Video;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    return-object v0
.end method

.method public blacklist isHtml()Z
    .registers 2

    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMedia()Z
    .registers 2

    .line 840
    const/4 v0, 0x1

    return v0
.end method
