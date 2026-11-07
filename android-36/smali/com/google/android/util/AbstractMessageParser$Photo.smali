.class public Lcom/google/android/util/AbstractMessageParser$Photo;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Photo"
.end annotation


# static fields
.field private static final blacklist URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist album:Ljava/lang/String;

.field private blacklist photo:Ljava/lang/String;

.field private blacklist user:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 971
    const-string v0, "http://picasaweb.google.com/([^/?#&]+)/+((?!searchbrowse)[^/?#&]+)(?:/|/photo)?(?:\\?[^#]*)?(?:#(.*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Photo;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;

    .line 979
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p4}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 980
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->user:Ljava/lang/String;

    .line 981
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->album:Ljava/lang/String;

    .line 982
    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->photo:Ljava/lang/String;

    .line 983
    return-void
.end method

.method public static blacklist getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "album"    # Ljava/lang/String;

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://picasaweb.google.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPhotoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "album"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://picasaweb.google.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/photo#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRssUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "user"    # Ljava/lang/String;

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://picasaweb.google.com/data/feed/api/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?category=album&alt=rss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Photo;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .line 994
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Photo;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 995
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 996
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Photo;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/android/util/AbstractMessageParser$Photo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 998
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist getAlbum()Ljava/lang/String;
    .registers 2

    .line 986
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1003
    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    move-result-object v0

    .line 1004
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser$Photo;->getRssUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getPhoto()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 1007
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getPhoto()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Photo;->getPhotoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 1009
    :cond_38
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    :goto_3f
    return-object v0
.end method

.method public blacklist getPhoto()Ljava/lang/String;
    .registers 2

    .line 987
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUser()Ljava/lang/String;
    .registers 2

    .line 985
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->user:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isHtml()Z
    .registers 2

    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMedia()Z
    .registers 2

    .line 990
    const/4 v0, 0x1

    return v0
.end method
