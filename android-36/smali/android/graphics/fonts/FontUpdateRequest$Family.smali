.class public final Landroid/graphics/fonts/FontUpdateRequest$Family;
.super Ljava/lang/Object;
.source "FontUpdateRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Family"
.end annotation


# static fields
.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/fonts/FontUpdateRequest$Family;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG_FAMILY:Ljava/lang/String; = "family"

.field private static final blacklist TAG_FONT:Ljava/lang/String; = "font"


# instance fields
.field private final blacklist mFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest$Font;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 233
    new-instance v0, Landroid/graphics/fonts/FontUpdateRequest$Family$1;

    invoke-direct {v0}, Landroid/graphics/fonts/FontUpdateRequest$Family$1;-><init>()V

    sput-object v0, Landroid/graphics/fonts/FontUpdateRequest$Family;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest$Font;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p2, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Font;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    .line 220
    return-void
.end method

.method public static blacklist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Family;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Font;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5e

    .line 281
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "family"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 284
    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_55

    .line 288
    const/4 v4, 0x0

    .line 289
    .local v4, "type":I
    :cond_23
    :goto_23
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4f

    .line 290
    if-ne v4, v2, :cond_41

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "font"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 291
    invoke-static {p0}, Landroid/graphics/fonts/FontUpdateRequest$Font;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Font;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 292
    :cond_41
    const/4 v5, 0x3

    if-ne v4, v5, :cond_23

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 293
    nop

    .line 296
    :cond_4f
    new-instance v2, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-direct {v2, v1, v0}, Landroid/graphics/fonts/FontUpdateRequest$Family;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 286
    .end local v4    # "type":I
    :cond_55
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "name attribute is missing in family tag."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    .end local v1    # "name":Ljava/lang/String;
    :cond_5e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected parser state: must be START_TAG with family"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist writeFamilyToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/graphics/fonts/FontUpdateRequest$Family;)V
    .registers 7
    .param p0, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p1, "family"    # Landroid/graphics/fonts/FontUpdateRequest$Family;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    const-string/jumbo v0, "name"

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v0

    .line 261
    .local v0, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Font;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 262
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 263
    .local v3, "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    const-string v4, "font"

    invoke-interface {p0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    invoke-static {p0, v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/graphics/fonts/FontUpdateRequest$Font;)V

    .line 265
    invoke-interface {p0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    .end local v3    # "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 267
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 309
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 310
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 311
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 312
    .local v2, "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    iget-object v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    iget-object v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    .line 310
    .end local v2    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist getFonts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest$Font;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 317
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Family{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFonts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 229
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Family;->mFonts:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 231
    return-void
.end method
