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
        "Ljava/lang/Comparable<",
        "Landroid/icu/impl/locale/BaseLocale$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile greylist-max-o _hash:I

.field private greylist-max-o _lang:Ljava/lang/String;

.field private greylist-max-o _regn:Ljava/lang/String;

.field private greylist-max-o _scrt:Ljava/lang/String;

.field private greylist-max-o _vart:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fget_lang(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fget_regn(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fget_scrt(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fget_vart(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    .line 163
    if-eqz p1, :cond_11

    .line 164
    iput-object p1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    .line 166
    :cond_11
    if-eqz p2, :cond_15

    .line 167
    iput-object p2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    .line 169
    :cond_15
    if-eqz p3, :cond_19

    .line 170
    iput-object p3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    .line 172
    :cond_19
    if-eqz p4, :cond_1d

    .line 173
    iput-object p4, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    .line 175
    :cond_1d
    return-void
.end method

.method public static greylist-max-o normalize(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale$Key;
    .registers 6
    .param p0, "key"    # Landroid/icu/impl/locale/BaseLocale$Key;

    .line 241
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "lang":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "scrt":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "regn":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "vart":Ljava/lang/String;
    new-instance v4, Landroid/icu/impl/locale/BaseLocale$Key;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/icu/impl/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/icu/impl/locale/BaseLocale$Key;)I
    .registers 5
    .param p1, "other"    # Landroid/icu/impl/locale/BaseLocale$Key;

    .line 197
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "res":I
    if-nez v0, :cond_26

    .line 199
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 200
    if-nez v0, :cond_26

    .line 201
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 202
    if-nez v0, :cond_26

    .line 206
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 211
    :cond_26
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 154
    check-cast p1, Landroid/icu/impl/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/BaseLocale$Key;->compareTo(Landroid/icu/impl/locale/BaseLocale$Key;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 187
    if-eq p0, p1, :cond_3d

    instance-of v0, p1, Landroid/icu/impl/locale/BaseLocale$Key;

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/locale/BaseLocale$Key;

    iget-object v0, v0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    .line 189
    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/locale/BaseLocale$Key;

    iget-object v0, v0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    .line 190
    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/locale/BaseLocale$Key;

    iget-object v0, v0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    .line 191
    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/locale/BaseLocale$Key;

    iget-object v0, v0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    .line 192
    invoke-static {v0, v1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v0, 0x1

    .line 187
    :goto_3e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 216
    iget v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_hash:I

    .line 217
    .local v0, "h":I
    if-nez v0, :cond_6e

    .line 219
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 220
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    add-int v0, v2, v3

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 222
    .end local v1    # "i":I
    :cond_1e
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1f
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 223
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    add-int v0, v2, v3

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 225
    .end local v1    # "i":I
    :cond_38
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_39
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 226
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    add-int v0, v2, v3

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 228
    .end local v1    # "i":I
    :cond_52
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_53
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6c

    .line 232
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    add-int v0, v2, v3

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 235
    .end local v1    # "i":I
    :cond_6c
    iput v0, p0, Landroid/icu/impl/locale/BaseLocale$Key;->_hash:I

    .line 237
    :cond_6e
    return v0
.end method
