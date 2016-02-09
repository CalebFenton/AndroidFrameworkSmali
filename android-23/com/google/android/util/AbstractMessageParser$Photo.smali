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
.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private album:Ljava/lang/String;

.field private photo:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 958
    const-string/jumbo v0, "http://picasaweb.google.com/([^/?#&]+)/+((?!searchbrowse)[^/?#&]+)(?:/|/photo)?(?:\\?[^#]*)?(?:#(.*))?"

    #@3
    .line 957
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Photo;->URL_PATTERN:Ljava/util/regex/Pattern;

    #@9
    .line 953
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 965
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@2
    invoke-direct {p0, v0, p4}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    #@5
    .line 966
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->user:Ljava/lang/String;

    #@7
    .line 967
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->album:Ljava/lang/String;

    #@9
    .line 968
    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->photo:Ljava/lang/String;

    #@b
    .line 964
    return-void
.end method

.method public static getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "album"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "http://picasaweb.google.com/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "/"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public static getPhotoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "album"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "http://picasaweb.google.com/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "/"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, "/photo#"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public static getRssUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "http://picasaweb.google.com/data/feed/api/user/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 1003
    const-string/jumbo v1, "?category=album&alt=rss"

    #@13
    .line 1002
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public static matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Photo;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 980
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Photo;->URL_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    .line 981
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 982
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Photo;

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x2

    #@14
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x3

    #@19
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/android/util/AbstractMessageParser$Photo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@20
    return-object v1

    #@21
    .line 984
    :cond_0
    const/4 v1, 0x0

    #@22
    return-object v1
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->album:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInfo()Ljava/util/List;
    .locals 4
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
    const/4 v1, 0x0

    #@1
    .line 989
    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    .line 990
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-static {v2}, Lcom/google/android/util/AbstractMessageParser$Photo;->getRssUrl(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 991
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-static {v2, v3}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    .line 992
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getPhoto()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 993
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Photo;->getPhoto()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Photo;->getPhotoURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 997
    :goto_0
    return-object v0

    #@39
    .line 995
    :cond_0
    check-cast v1, Ljava/lang/String;

    #@3b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->photo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Photo;->user:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isHtml()Z
    .locals 1

    #@0
    .prologue
    .line 975
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMedia()Z
    .locals 1

    #@0
    .prologue
    .line 976
    const/4 v0, 0x1

    #@1
    return v0
.end method
