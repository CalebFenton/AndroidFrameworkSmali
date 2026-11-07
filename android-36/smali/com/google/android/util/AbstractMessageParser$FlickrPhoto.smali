.class public Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlickrPhoto"
.end annotation


# static fields
.field private static final blacklist GROUPING_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist SETS:Ljava/lang/String; = "sets"

.field private static final blacklist TAGS:Ljava/lang/String; = "tags"

.field private static final blacklist URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist grouping:Ljava/lang/String;

.field private blacklist groupingId:Ljava/lang/String;

.field private blacklist photo:Ljava/lang/String;

.field private blacklist user:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1035
    const-string v0, "http://(?:www.)?flickr.com/photos/([^/?#&]+)/?([^/?#&]+)?/?.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->URL_PATTERN:Ljava/util/regex/Pattern;

    .line 1037
    const-string v0, "http://(?:www.)?flickr.com/photos/([^/?#&]+)/(tags|sets)/([^/?#&]+)/?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->GROUPING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "grouping"    # Ljava/lang/String;
    .param p4, "groupingId"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;

    .line 1051
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p5}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v0, "tags"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 1055
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    .line 1057
    const-string/jumbo v0, "show"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    move-object v2, p2

    :cond_1b
    iput-object v2, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    .line 1058
    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    .line 1059
    iput-object p4, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    goto :goto_2a

    .line 1061
    :cond_22
    iput-object v2, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    .line 1062
    iput-object v2, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    .line 1063
    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    .line 1064
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    .line 1066
    :goto_2a
    return-void
.end method

.method public static blacklist getPhotoURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "photo"    # Ljava/lang/String;

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

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

.method public static blacklist getRssUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "user"    # Ljava/lang/String;

    .line 1122
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getTagsURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/tags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserSetsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "setId"    # Ljava/lang/String;

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserTagsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "tagId"    # Ljava/lang/String;

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "user"    # Ljava/lang/String;

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://flickr.com/photos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;
    .registers 18
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .line 1081
    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->GROUPING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1082
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_26

    .line 1083
    new-instance v5, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 1086
    :cond_26
    sget-object v2, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1087
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1088
    new-instance v10, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v15}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 1090
    :cond_44
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public blacklist getGrouping()Ljava/lang/String;
    .registers 2

    .line 1070
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroupingId()Ljava/lang/String;
    .registers 2

    .line 1071
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1095
    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    move-result-object v0

    .line 1096
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUser()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    move-object v1, v2

    :goto_19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getPhoto()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getPhoto()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    :cond_27
    move-object v1, v2

    :goto_28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGrouping()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGrouping()Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_36
    move-object v1, v2

    :goto_37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGroupingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getGroupingId()Ljava/lang/String;

    move-result-object v2

    :cond_44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    return-object v0
.end method

.method public blacklist getPhoto()Ljava/lang/String;
    .registers 2

    .line 1069
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUrl()Ljava/lang/String;
    .registers 3

    .line 1105
    const-string/jumbo v0, "sets"

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1106
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUserSetsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1107
    :cond_14
    const-string/jumbo v0, "tags"

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->grouping:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1108
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 1109
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUserTagsURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1111
    :cond_2c
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->groupingId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getTagsURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1113
    :cond_33
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 1114
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->photo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getPhotoURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1116
    :cond_40
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUserURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUser()Ljava/lang/String;
    .registers 2

    .line 1068
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->user:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isHtml()Z
    .registers 2

    .line 1073
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMedia()Z
    .registers 2

    .line 1074
    const/4 v0, 0x1

    return v0
.end method
