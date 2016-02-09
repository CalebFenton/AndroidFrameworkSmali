.class Landroid/icu/impl/locale/BaseLocale$Key;
.super Ljava/lang/Object;
.source "BaseLocale.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/impl/locale/BaseLocale$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile _hash:I

.field private _lang:Ljava/lang/String;

.field private _regn:Ljava/lang/String;

.field private _scrt:Ljava/lang/String;

.field private _vart:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 146
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    #@8
    .line 147
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    #@d
    .line 148
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    #@12
    .line 149
    const-string/jumbo v0, ""

    #@15
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    #@17
    .line 154
    if-eqz p1, :cond_0

    #@19
    .line 155
    iput-object p1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    #@1b
    .line 157
    :cond_0
    if-eqz p2, :cond_1

    #@1d
    .line 158
    iput-object p2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    #@1f
    .line 160
    :cond_1
    if-eqz p3, :cond_2

    #@21
    .line 161
    iput-object p3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    #@23
    .line 163
    :cond_2
    if-eqz p4, :cond_3

    #@25
    .line 164
    iput-object p4, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    #@27
    .line 153
    :cond_3
    return-void
.end method

.method public static normalize(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale$Key;
    .locals 5
    .param p0, "key"    # Landroid/icu/impl/locale/BaseLocale$Key;

    #@0
    .prologue
    .line 229
    iget-object v4, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    #@2
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 230
    .local v0, "lang":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    #@c
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 231
    .local v2, "scrt":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    #@16
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 237
    .local v1, "regn":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    #@20
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 239
    .local v3, "vart":Ljava/lang/String;
    new-instance v4, Landroid/icu/impl/locale/BaseLocale$Key;

    #@2a
    invoke-direct {v4, v0, v2, v1, v3}, Landroid/icu/impl/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    return-object v4
.end method


# virtual methods
.method public compareTo(Landroid/icu/impl/locale/BaseLocale$Key;)I
    .locals 3
    .param p1, "other"    # Landroid/icu/impl/locale/BaseLocale$Key;

    #@0
    .prologue
    .line 186
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    #@2
    iget-object v2, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    #@4
    invoke-static {v1, v2}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 187
    .local v0, "res":I
    if-nez v0, :cond_0

    #@a
    .line 188
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    #@c
    iget-object v2, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    #@e
    invoke-static {v1, v2}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    move-result v0

    #@12
    .line 189
    if-nez v0, :cond_0

    #@14
    .line 190
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    #@16
    iget-object v2, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    #@18
    invoke-static {v1, v2}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    .line 191
    if-nez v0, :cond_0

    #@1e
    .line 195
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    #@20
    iget-object v2, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    #@22
    invoke-static {v1, v2}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    move-result v0

    #@26
    .line 200
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 185
    check-cast p1, Landroid/icu/impl/locale/BaseLocale$Key;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/BaseLocale$Key;->compareTo(Landroid/icu/impl/locale/BaseLocale$Key;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 177
    if-eq p0, p1, :cond_0

    #@2
    .line 178
    instance-of v0, p1, Landroid/icu/impl/locale/BaseLocale$Key;

    #@4
    if-eqz v0, :cond_1

    #@6
    move-object v0, p1

    #@7
    .line 179
    check-cast v0, Landroid/icu/impl/locale/BaseLocale$Key;

    #@9
    iget-object v0, v0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    #@b
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    #@d
    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    .line 178
    if-eqz v0, :cond_1

    #@13
    move-object v0, p1

    #@14
    .line 180
    check-cast v0, Landroid/icu/impl/locale/BaseLocale$Key;

    #@16
    iget-object v0, v0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    #@18
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    #@1a
    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@1d
    move-result v0

    #@1e
    .line 178
    if-eqz v0, :cond_1

    #@20
    move-object v0, p1

    #@21
    .line 181
    check-cast v0, Landroid/icu/impl/locale/BaseLocale$Key;

    #@23
    iget-object v0, v0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    #@25
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    #@27
    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@2a
    move-result v0

    #@2b
    .line 178
    if-eqz v0, :cond_1

    #@2d
    .line 182
    check-cast p1, Landroid/icu/impl/locale/BaseLocale$Key;

    #@2f
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    #@31
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    #@33
    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@36
    move-result v0

    #@37
    .line 177
    :goto_0
    return v0

    #@38
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 178
    :cond_1
    const/4 v0, 0x0

    #@3b
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 204
    iget v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_hash:I

    #@2
    .line 205
    .local v0, "h":I
    if-nez v0, :cond_4

    #@4
    .line 207
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    #@7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 208
    mul-int/lit8 v2, v0, 0x1f

    #@f
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    #@11
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v3

    #@15
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@18
    move-result v3

    #@19
    add-int v0, v2, v3

    #@1b
    .line 207
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 210
    :cond_0
    const/4 v1, 0x0

    #@1f
    :goto_1
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    #@21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@24
    move-result v2

    #@25
    if-ge v1, v2, :cond_1

    #@27
    .line 211
    mul-int/lit8 v2, v0, 0x1f

    #@29
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    #@2b
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v3

    #@2f
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@32
    move-result v3

    #@33
    add-int v0, v2, v3

    #@35
    .line 210
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_1

    #@38
    .line 213
    :cond_1
    const/4 v1, 0x0

    #@39
    :goto_2
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    #@3b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3e
    move-result v2

    #@3f
    if-ge v1, v2, :cond_2

    #@41
    .line 214
    mul-int/lit8 v2, v0, 0x1f

    #@43
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    #@45
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v3

    #@49
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@4c
    move-result v3

    #@4d
    add-int v0, v2, v3

    #@4f
    .line 213
    add-int/lit8 v1, v1, 0x1

    #@51
    goto :goto_2

    #@52
    .line 216
    :cond_2
    const/4 v1, 0x0

    #@53
    :goto_3
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    #@55
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@58
    move-result v2

    #@59
    if-ge v1, v2, :cond_3

    #@5b
    .line 220
    mul-int/lit8 v2, v0, 0x1f

    #@5d
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    #@5f
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@62
    move-result v3

    #@63
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@66
    move-result v3

    #@67
    add-int v0, v2, v3

    #@69
    .line 216
    add-int/lit8 v1, v1, 0x1

    #@6b
    goto :goto_3

    #@6c
    .line 223
    :cond_3
    iput v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_hash:I

    #@6e
    .line 225
    .end local v1    # "i":I
    :cond_4
    return v0
.end method
