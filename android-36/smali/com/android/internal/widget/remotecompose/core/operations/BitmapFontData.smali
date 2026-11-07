.class public Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "BitmapFontData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    }
.end annotation


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "BitmapFontData"

.field private static final blacklist OP_CODE:I = 0xa7


# instance fields
.field blacklist mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

.field blacklist mId:I


# direct methods
.method public constructor blacklist <init>(I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "fontGlyphs"    # [Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    .line 99
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 100
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mId:I

    .line 101
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 105
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)V
    .registers 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "glyphs"    # [Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    .line 145
    const/16 v0, 0xa7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 147
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 148
    array-length v0, p2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_3d

    aget-object v2, p2, v1

    .line 149
    .local v2, "element":Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    iget-object v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 150
    iget v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 151
    iget-short v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 152
    iget-short v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 153
    iget-short v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 154
    iget-short v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginBottom:S

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 155
    iget-short v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 156
    iget-short v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapHeight:S

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 148
    .end local v2    # "element":Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 158
    :cond_3d
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 191
    const/16 v0, 0xa7

    const-string v1, "BitmapFontData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 192
    const-string v1, "Bitmap font data"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of bitmap font data"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 194
    const/16 v1, 0xb

    const-string v2, "glyphNodes"

    const-string v3, "list used to greedily convert strings into glyphs"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 195
    const-string v2, "glyphElements"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 196
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 134
    const/16 v0, 0xa7

    return v0
.end method

.method static synthetic blacklist lambda$new$0(Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)I
    .registers 4
    .param p0, "o1"    # Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    .param p1, "o2"    # Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    .line 104
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 125
    const-string v0, "BitmapFontData"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 8
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 168
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 169
    .local v1, "numGlyphElements":I
    new-array v2, v1, [Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    .line 170
    .local v2, "glyphs":[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_5d

    .line 171
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    invoke-direct {v4}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;-><init>()V

    aput-object v4, v2, v3

    .line 172
    aget-object v4, v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    .line 173
    aget-object v4, v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    iput v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    .line 174
    aget-object v4, v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    .line 175
    aget-object v4, v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    .line 176
    aget-object v4, v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    .line 177
    aget-object v4, v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginBottom:S

    .line 178
    aget-object v4, v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    .line 179
    aget-object v4, v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapHeight:S

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 182
    .end local v3    # "i":I
    :cond_5d
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;-><init>(I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 200
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist lookupGlyph(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    .registers 8
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 215
    .local v3, "glyph":Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    iget-object v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 216
    return-object v3

    .line 214
    .end local v3    # "glyph":Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 219
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 224
    const-string v0, "BitmapFontData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 225
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BITMAP FONT DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 109
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)V

    .line 110
    return-void
.end method
