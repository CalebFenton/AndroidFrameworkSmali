.class public Lorg/apache/commons/codec/language/RefinedSoundex;
.super Ljava/lang/Object;
.source "RefinedSoundex.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final US_ENGLISH:Lorg/apache/commons/codec/language/RefinedSoundex;

.field public static final US_ENGLISH_MAPPING:[C


# instance fields
.field private soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    new-instance v0, Lorg/apache/commons/codec/language/RefinedSoundex;

    #@2
    invoke-direct {v0}, Lorg/apache/commons/codec/language/RefinedSoundex;-><init>()V

    #@5
    sput-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH:Lorg/apache/commons/codec/language/RefinedSoundex;

    #@7
    .line 48
    const-string/jumbo v0, "01360240043788015936020505"

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    #@10
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    sget-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    #@2
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/RefinedSoundex;-><init>([C)V

    #@5
    .line 61
    return-void
.end method

.method public constructor <init>([C)V
    .locals 0
    .param p1, "mapping"    # [C

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput-object p1, p0, Lorg/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    #@5
    .line 74
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
    .line 104
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
    .line 121
    instance-of v0, p1, Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 122
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    #@6
    const-string/jumbo v1, "Parameter supplied to RefinedSoundex encode is not of type java.lang.String"

    #@9
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 124
    :cond_0
    check-cast p1, Ljava/lang/String;

    #@f
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

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
    .line 135
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getMappingCode(C)C
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 148
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 149
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 151
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    #@a
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    #@d
    move-result v1

    #@e
    add-int/lit8 v1, v1, -0x41

    #@10
    aget-char v0, v0, v1

    #@12
    return v0
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 162
    if-nez p1, :cond_0

    #@4
    .line 163
    return-object v4

    #@5
    .line 165
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_1

    #@f
    .line 167
    return-object p1

    #@10
    .line 170
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@15
    .line 171
    .local v3, "sBuf":Ljava/lang/StringBuffer;
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v4

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1c
    .line 174
    const/16 v2, 0x2a

    #@1e
    .line 176
    .local v2, "last":C
    const/4 v1, 0x0

    #@1f
    .end local v2    # "last":C
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@22
    move-result v4

    #@23
    if-ge v1, v4, :cond_4

    #@25
    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v4

    #@29
    invoke-virtual {p0, v4}, Lorg/apache/commons/codec/language/RefinedSoundex;->getMappingCode(C)C

    #@2c
    move-result v0

    #@2d
    .line 179
    .local v0, "current":C
    if-ne v0, v2, :cond_2

    #@2f
    .line 176
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 181
    :cond_2
    if-eqz v0, :cond_3

    #@34
    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@37
    .line 185
    :cond_3
    move v2, v0

    #@38
    .local v2, "last":C
    goto :goto_1

    #@39
    .line 189
    .end local v0    # "current":C
    .end local v2    # "last":C
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    return-object v4
.end method
