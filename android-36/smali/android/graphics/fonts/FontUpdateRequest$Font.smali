.class public final Landroid/graphics/fonts/FontUpdateRequest$Font;
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
    name = "Font"
.end annotation


# static fields
.field private static final blacklist ATTR_AXIS:Ljava/lang/String; = "axis"

.field private static final blacklist ATTR_INDEX:Ljava/lang/String; = "index"

.field private static final blacklist ATTR_POSTSCRIPT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist ATTR_SLANT:Ljava/lang/String; = "slant"

.field private static final blacklist ATTR_WEIGHT:Ljava/lang/String; = "weight"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/fonts/FontUpdateRequest$Font;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFontStyle:Landroid/graphics/fonts/FontStyle;

.field private final blacklist mFontVariationSettings:Ljava/lang/String;

.field private final blacklist mIndex:I

.field private final blacklist mPostScriptName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 106
    new-instance v0, Landroid/graphics/fonts/FontUpdateRequest$Font$1;

    invoke-direct {v0}, Landroid/graphics/fonts/FontUpdateRequest$Font$1;-><init>()V

    sput-object v0, Landroid/graphics/fonts/FontUpdateRequest$Font;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;)V
    .registers 5
    .param p1, "postScriptName"    # Ljava/lang/String;
    .param p2, "fontStyle"    # Landroid/graphics/fonts/FontStyle;
    .param p3, "index"    # I
    .param p4, "fontVariationSettings"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    .line 88
    iput p3, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    .line 89
    iput-object p4, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static blacklist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Font;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "psName":Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 153
    const-string/jumbo v2, "index"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/graphics/fonts/FontUpdateRequest;->-$$Nest$smgetAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 154
    .local v2, "index":I
    const-string/jumbo v4, "weight"

    const/16 v5, 0x190

    invoke-static {p0, v4, v5}, Landroid/graphics/fonts/FontUpdateRequest;->-$$Nest$smgetAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 155
    .local v4, "weight":I
    const-string/jumbo v5, "slant"

    invoke-static {p0, v5, v3}, Landroid/graphics/fonts/FontUpdateRequest;->-$$Nest$smgetAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 156
    .local v3, "slant":I
    const-string v5, "axis"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "varSettings":Ljava/lang/String;
    if-nez v1, :cond_2c

    .line 158
    const-string v1, ""

    .line 160
    :cond_2c
    new-instance v5, Landroid/graphics/fonts/FontUpdateRequest$Font;

    new-instance v6, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v6, v4, v3}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-direct {v5, v0, v6, v2, v1}, Landroid/graphics/fonts/FontUpdateRequest$Font;-><init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;)V

    return-object v5

    .line 151
    .end local v1    # "varSettings":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "slant":I
    .end local v4    # "weight":I
    :cond_37
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "name attribute is missing in font tag."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/graphics/fonts/FontUpdateRequest$Font;)V
    .registers 5
    .param p0, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p1, "font"    # Landroid/graphics/fonts/FontUpdateRequest$Font;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const-string/jumbo v0, "name"

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    const-string/jumbo v0, "index"

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getIndex()I

    move-result v1

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    const-string/jumbo v1, "weight"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    const-string/jumbo v1, "slant"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const-string v0, "axis"

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 182
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    .line 183
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 184
    .local v2, "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    iget v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    iget v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    iget-object v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    iget-object v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    .line 186
    invoke-virtual {v3, v4}, Landroid/graphics/fonts/FontStyle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    iget-object v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 184
    :goto_3b
    return v0

    .line 182
    .end local v2    # "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public blacklist getFontStyle()Landroid/graphics/fonts/FontStyle;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    return-object v0
.end method

.method public blacklist getFontVariationSettings()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIndex()I
    .registers 2

    .line 172
    iget v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    return v0
.end method

.method public blacklist getPostScriptName()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 192
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    iget v2, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font{mPostScriptName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFontStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFontVariationSettings=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    .line 99
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 104
    return-void
.end method
