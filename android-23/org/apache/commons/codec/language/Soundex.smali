.class public Lorg/apache/commons/codec/language/Soundex;
.super Ljava/lang/Object;
.source "Soundex.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final US_ENGLISH:Lorg/apache/commons/codec/language/Soundex;

.field public static final US_ENGLISH_MAPPING:[C

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01230120022455012623010202"


# instance fields
.field private maxLength:I

.field private soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    new-instance v0, Lorg/apache/commons/codec/language/Soundex;

    #@2
    invoke-direct {v0}, Lorg/apache/commons/codec/language/Soundex;-><init>()V

    #@5
    sput-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH:Lorg/apache/commons/codec/language/Soundex;

    #@7
    .line 61
    const-string/jumbo v0, "01230120022455012623010202"

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    #@10
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 109
    sget-object v0, Lorg/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    #@2
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/Soundex;-><init>([C)V

    #@5
    .line 108
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .param p1, "mapping"    # [C

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    const/4 v0, 0x4

    #@4
    iput v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    #@6
    .line 123
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/Soundex;->setSoundexMapping([C)V

    #@9
    .line 122
    return-void
.end method

.method private getMappingCode(Ljava/lang/String;I)C
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "index"    # I

    #@0
    .prologue
    const/16 v6, 0x57

    #@2
    const/16 v5, 0x48

    #@4
    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v4

    #@8
    invoke-direct {p0, v4}, Lorg/apache/commons/codec/language/Soundex;->map(C)C

    #@b
    move-result v2

    #@c
    .line 175
    .local v2, "mappedChar":C
    const/4 v4, 0x1

    #@d
    if-le p2, v4, :cond_3

    #@f
    const/16 v4, 0x30

    #@11
    if-eq v2, v4, :cond_3

    #@13
    .line 176
    add-int/lit8 v4, p2, -0x1

    #@15
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v1

    #@19
    .line 177
    .local v1, "hwChar":C
    if-eq v5, v1, :cond_0

    #@1b
    if-ne v6, v1, :cond_3

    #@1d
    .line 178
    :cond_0
    add-int/lit8 v4, p2, -0x2

    #@1f
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v3

    #@23
    .line 179
    .local v3, "preHWChar":C
    invoke-direct {p0, v3}, Lorg/apache/commons/codec/language/Soundex;->map(C)C

    #@26
    move-result v0

    #@27
    .line 180
    .local v0, "firstCode":C
    if-eq v0, v2, :cond_1

    #@29
    if-ne v5, v3, :cond_2

    #@2b
    .line 181
    :cond_1
    const/4 v4, 0x0

    #@2c
    return v4

    #@2d
    .line 180
    :cond_2
    if-eq v6, v3, :cond_1

    #@2f
    .line 185
    .end local v0    # "firstCode":C
    .end local v1    # "hwChar":C
    .end local v3    # "preHWChar":C
    :cond_3
    return v2
.end method

.method private getSoundexMapping()[C
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    #@2
    return-object v0
.end method

.method private map(C)C
    .locals 4
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 217
    add-int/lit8 v0, p1, -0x41

    #@2
    .line 218
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@4
    invoke-direct {p0}, Lorg/apache/commons/codec/language/Soundex;->getSoundexMapping()[C

    #@7
    move-result-object v1

    #@8
    array-length v1, v1

    #@9
    if-lt v0, v1, :cond_1

    #@b
    .line 219
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "The character is not mapped: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 221
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/codec/language/Soundex;->getSoundexMapping()[C

    #@28
    move-result-object v1

    #@29
    aget-char v1, v1, v0

    #@2b
    return v1
.end method

.method private setSoundexMapping([C)V
    .locals 0
    .param p1, "soundexMapping"    # [C

    #@0
    .prologue
    .line 242
    iput-object p1, p0, Lorg/apache/commons/codec/language/Soundex;->soundexMapping:[C

    #@2
    .line 241
    return-void
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/SoundexUtils;->difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    instance-of v0, p1, Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 141
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    #@6
    const-string/jumbo v1, "Parameter supplied to Soundex encode is not of type java.lang.String"

    #@9
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 143
    :cond_0
    check-cast p1, Ljava/lang/String;

    #@f
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    #@0
    .prologue
    .line 195
    iget v0, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    #@2
    return v0
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "maxLength"    # I

    #@0
    .prologue
    .line 232
    iput p1, p0, Lorg/apache/commons/codec/language/Soundex;->maxLength:I

    #@2
    .line 231
    return-void
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 255
    if-nez p1, :cond_0

    #@4
    .line 256
    return-object v7

    #@5
    .line 258
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v7

    #@d
    if-nez v7, :cond_1

    #@f
    .line 260
    return-object p1

    #@10
    .line 262
    :cond_1
    const/4 v7, 0x4

    #@11
    new-array v6, v7, [C

    #@13
    .local v6, "out":[C
    fill-array-data v6, :array_0

    #@16
    .line 264
    const/4 v2, 0x1

    #@17
    .local v2, "incount":I
    const/4 v0, 0x1

    #@18
    .line 265
    .local v0, "count":I
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v7

    #@1c
    aput-char v7, v6, v8

    #@1e
    .line 266
    invoke-direct {p0, p1, v8}, Lorg/apache/commons/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    #@21
    move-result v4

    #@22
    .line 267
    .local v4, "last":C
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@25
    move-result v7

    #@26
    if-ge v2, v7, :cond_4

    #@28
    array-length v7, v6

    #@29
    if-ge v0, v7, :cond_4

    #@2b
    .line 268
    add-int/lit8 v3, v2, 0x1

    #@2d
    .end local v2    # "incount":I
    .local v3, "incount":I
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    #@30
    move-result v5

    #@31
    .line 269
    .local v5, "mapped":C
    if-eqz v5, :cond_3

    #@33
    .line 270
    const/16 v7, 0x30

    #@35
    if-eq v5, v7, :cond_2

    #@37
    if-eq v5, v4, :cond_2

    #@39
    .line 271
    add-int/lit8 v1, v0, 0x1

    #@3b
    .end local v0    # "count":I
    .local v1, "count":I
    aput-char v5, v6, v0

    #@3d
    move v0, v1

    #@3e
    .line 273
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_2
    move v4, v5

    #@3f
    :cond_3
    move v2, v3

    #@40
    .end local v3    # "incount":I
    .restart local v2    # "incount":I
    goto :goto_0

    #@41
    .line 276
    .end local v5    # "mapped":C
    :cond_4
    new-instance v7, Ljava/lang/String;

    #@43
    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    #@46
    return-object v7

    #@47
    .line 262
    nop

    #@48
    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method
