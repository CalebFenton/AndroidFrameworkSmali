.class public final Landroid/content/UriRelativeFilterGroup;
.super Ljava/lang/Object;
.source "UriRelativeFilterGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/UriRelativeFilterGroup$Action;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ALLOW:I = 0x0

.field public static final whitelist ACTION_BLOCK:I = 0x1

.field private static final blacklist ALLOW_STR:Ljava/lang/String; = "allow"

.field private static final blacklist TAG:Ljava/lang/String; = "UriRelativeFilterGroup"

.field private static final blacklist URI_RELATIVE_FILTER_GROUP_STR:Ljava/lang/String; = "uriRelativeFilterGroup"


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mUriRelativeFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/UriRelativeFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "action"    # I

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    .line 130
    iput p1, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    .line 131
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/UriRelativeFilterGroupParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/content/UriRelativeFilterGroupParcel;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    .line 293
    iget v0, p1, Landroid/content/UriRelativeFilterGroupParcel;->action:I

    iput v0, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p1, Landroid/content/UriRelativeFilterGroupParcel;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 295
    iget-object v1, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    new-instance v2, Landroid/content/UriRelativeFilter;

    iget-object v3, p1, Landroid/content/UriRelativeFilterGroupParcel;->filters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriRelativeFilterParcel;

    invoke-direct {v2, v3}, Landroid/content/UriRelativeFilter;-><init>(Landroid/content/UriRelativeFilterParcel;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 297
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "src"    # Landroid/os/Parcel;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v0, :cond_24

    .line 287
    iget-object v2, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    new-instance v3, Landroid/content/UriRelativeFilter;

    invoke-direct {v3, p1}, Landroid/content/UriRelativeFilter;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 289
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method public constructor blacklist <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    .line 135
    const/4 v0, 0x0

    const-string v1, "allow"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 139
    .local v0, "outerDepth":I
    :cond_1b
    :goto_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_64

    const/4 v1, 0x3

    if-ne v2, v1, :cond_2c

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_64

    .line 142
    :cond_2c
    if-eq v2, v1, :cond_1b

    const/4 v1, 0x4

    if-ne v2, v1, :cond_32

    .line 144
    goto :goto_1b

    .line 147
    :cond_32
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "uriRelativeFilter"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 149
    new-instance v3, Landroid/content/UriRelativeFilter;

    invoke-direct {v3, p1}, Landroid/content/UriRelativeFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, v3}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    goto :goto_60

    .line 151
    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag parsing IntentFilter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IntentFilter"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_60
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 154
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_1b

    .line 155
    :cond_64
    return-void
.end method

.method public static blacklist groupsToParcels(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroupParcel;",
            ">;"
        }
    .end annotation

    .line 115
    .local p0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriRelativeFilterGroup;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "parcels":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriRelativeFilterGroupParcel;>;"
    if-eqz p0, :cond_1e

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 118
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriRelativeFilterGroup;

    invoke-virtual {v2}, Landroid/content/UriRelativeFilterGroup;->toParcel()Landroid/content/UriRelativeFilterGroupParcel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 121
    .end local v1    # "i":I
    :cond_1e
    return-object v0
.end method

.method public static blacklist matchGroupsToUri(Ljava/util/List;Landroid/net/Uri;)Z
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .line 92
    .local p0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriRelativeFilterGroup;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_25

    .line 93
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriRelativeFilterGroup;

    invoke-virtual {v1, p1}, Landroid/content/UriRelativeFilterGroup;->matchData(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 94
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriRelativeFilterGroup;

    invoke-virtual {v1}, Landroid/content/UriRelativeFilterGroup;->getAction()I

    move-result v1

    if-nez v1, :cond_21

    const/4 v2, 0x1

    :cond_21
    return v2

    .line 92
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "i":I
    :cond_25
    return v2
.end method

.method public static blacklist parcelsToGroups(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroupParcel;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;"
        }
    .end annotation

    .line 103
    .local p0, "parcels":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriRelativeFilterGroupParcel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriRelativeFilterGroup;>;"
    if-eqz p0, :cond_1f

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 106
    new-instance v2, Landroid/content/UriRelativeFilterGroup;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriRelativeFilterGroupParcel;

    invoke-direct {v2, v3}, Landroid/content/UriRelativeFilterGroup;-><init>(Landroid/content/UriRelativeFilterGroupParcel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 109
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method


# virtual methods
.method public whitelist addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V
    .registers 3
    .param p1, "uriRelativeFilter"    # Landroid/content/UriRelativeFilter;

    .line 169
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 171
    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_10
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 204
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 205
    .local v0, "token":J
    const-wide v2, 0x10e00000001L

    iget v4, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 206
    iget-object v2, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 207
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/UriRelativeFilter;>;"
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 208
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriRelativeFilter;

    const-wide v4, 0x20b00000002L

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/UriRelativeFilter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_14

    .line 210
    :cond_29
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 211
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 255
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 256
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_25

    .line 258
    :cond_12
    move-object v1, p1

    check-cast v1, Landroid/content/UriRelativeFilterGroup;

    .line 259
    .local v1, "that":Landroid/content/UriRelativeFilterGroup;
    iget v2, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    iget v3, v1, Landroid/content/UriRelativeFilterGroup;->mAction:I

    if-eq v2, v3, :cond_1c

    return v0

    .line 260
    :cond_1c
    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    iget-object v2, v1, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 256
    .end local v1    # "that":Landroid/content/UriRelativeFilterGroup;
    :cond_25
    :goto_25
    return v0
.end method

.method public whitelist getAction()I
    .registers 2

    .line 162
    iget v0, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    return v0
.end method

.method public whitelist getUriRelativeFilters()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/content/UriRelativeFilter;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    add-int/2addr v1, v2

    .line 267
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 268
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist matchData(Landroid/net/Uri;)Z
    .registers 6
    .param p1, "data"    # Landroid/net/Uri;

    .line 191
    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 192
    return v1

    .line 194
    :cond_a
    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriRelativeFilter;

    .line 195
    .local v2, "filter":Landroid/content/UriRelativeFilter;
    invoke-virtual {v2, p1}, Landroid/content/UriRelativeFilter;->matchData(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 196
    return v1

    .line 198
    .end local v2    # "filter":Landroid/content/UriRelativeFilter;
    :cond_23
    goto :goto_10

    .line 199
    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toParcel()Landroid/content/UriRelativeFilterGroupParcel;
    .registers 6

    .line 273
    new-instance v0, Landroid/content/UriRelativeFilterGroupParcel;

    invoke-direct {v0}, Landroid/content/UriRelativeFilterGroupParcel;-><init>()V

    .line 274
    .local v0, "parcel":Landroid/content/UriRelativeFilterGroupParcel;
    iget v1, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    iput v1, v0, Landroid/content/UriRelativeFilterGroupParcel;->action:I

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/content/UriRelativeFilterGroupParcel;->filters:Ljava/util/List;

    .line 276
    iget-object v1, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriRelativeFilter;

    .line 277
    .local v2, "filter":Landroid/content/UriRelativeFilter;
    iget-object v3, v0, Landroid/content/UriRelativeFilterGroupParcel;->filters:Ljava/util/List;

    invoke-virtual {v2}, Landroid/content/UriRelativeFilter;->toParcel()Landroid/content/UriRelativeFilterParcel;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v2    # "filter":Landroid/content/UriRelativeFilter;
    goto :goto_16

    .line 279
    :cond_2c
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UriRelativeFilterGroup { allow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri_filters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 233
    iget v0, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 235
    .local v0, "n":I
    if-lez v0, :cond_59

    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "i":I
    iget-object v2, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 239
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/UriRelativeFilter;>;"
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriRelativeFilter;

    invoke-virtual {v3, p1, p2}, Landroid/content/UriRelativeFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 243
    :cond_29
    if-eq v1, v0, :cond_58

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UriRelativeFilters was unexpectedly modified while writing to parcel. Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " filters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    const-string v5, "UriRelativeFilterGroup"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/UriRelativeFilter;>;"
    :cond_58
    goto :goto_5d

    .line 249
    :cond_59
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    :goto_5d
    return-void
.end method

.method public blacklist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    const-string/jumbo v1, "uriRelativeFilterGroup"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    iget v2, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "allow"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    iget-object v2, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 218
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/UriRelativeFilter;>;"
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriRelativeFilter;

    .line 220
    .local v3, "filter":Landroid/content/UriRelativeFilter;
    invoke-virtual {v3, p1}, Landroid/content/UriRelativeFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 221
    .end local v3    # "filter":Landroid/content/UriRelativeFilter;
    goto :goto_18

    .line 222
    :cond_28
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    return-void
.end method
