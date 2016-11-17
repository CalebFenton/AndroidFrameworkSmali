.class final Lsun/util/locale/BaseLocale$Key;
.super Ljava/lang/Object;
.source "BaseLocale.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lsun/util/locale/BaseLocale$Key;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final hash:I

.field private final lang:Ljava/lang/String;

.field private final normalized:Z

.field private final regn:Ljava/lang/String;

.field private final scrt:Ljava/lang/String;

.field private final vart:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/util/locale/BaseLocale$Key;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/util/locale/BaseLocale$Key;->-assertionsDisabled:Z

    #@b
    .line 166
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 179
    sget-boolean v5, Lsun/util/locale/BaseLocale$Key;->-assertionsDisabled:Z

    #@7
    if-nez v5, :cond_1

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    if-ne v5, p1, :cond_0

    #@f
    .line 180
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    if-ne v5, p2, :cond_0

    #@15
    move v3, v4

    #@16
    .line 179
    :cond_0
    if-nez v3, :cond_1

    #@18
    new-instance v3, Ljava/lang/AssertionError;

    #@1a
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@1d
    throw v3

    #@1e
    .line 182
    :cond_1
    iput-object p1, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    #@20
    .line 183
    const-string/jumbo v3, ""

    #@23
    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    #@25
    .line 184
    iput-object p2, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    #@27
    .line 185
    const-string/jumbo v3, ""

    #@2a
    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    #@2c
    .line 186
    iput-boolean v4, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    #@2e
    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@31
    move-result v0

    #@32
    .line 189
    .local v0, "h":I
    const-string/jumbo v3, ""

    #@35
    if-eq p2, v3, :cond_2

    #@37
    .line 190
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3a
    move-result v2

    #@3b
    .line 191
    .local v2, "len":I
    const/4 v1, 0x0

    #@3c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@3e
    .line 192
    mul-int/lit8 v3, v0, 0x1f

    #@40
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@43
    move-result v4

    #@44
    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@47
    move-result v4

    #@48
    add-int v0, v3, v4

    #@4a
    .line 191
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 195
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    iput v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    #@4f
    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@9
    .line 198
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .param p5, "normalized"    # Z

    #@0
    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 204
    const/4 v0, 0x0

    #@4
    .line 205
    .local v0, "h":I
    if-eqz p1, :cond_0

    #@6
    .line 206
    iput-object p1, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    #@8
    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    .line 208
    .local v2, "len":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@f
    .line 209
    mul-int/lit8 v3, v0, 0x1f

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v4

    #@15
    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@18
    move-result v4

    #@19
    add-int v0, v3, v4

    #@1b
    .line 208
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 212
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_0
    const-string/jumbo v3, ""

    #@21
    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    #@23
    .line 214
    :cond_1
    if-eqz p2, :cond_2

    #@25
    .line 215
    iput-object p2, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    #@27
    .line 216
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@2a
    move-result v2

    #@2b
    .line 217
    .restart local v2    # "len":I
    const/4 v1, 0x0

    #@2c
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    #@2e
    .line 218
    mul-int/lit8 v3, v0, 0x1f

    #@30
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v4

    #@34
    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@37
    move-result v4

    #@38
    add-int v0, v3, v4

    #@3a
    .line 217
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 221
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    const-string/jumbo v3, ""

    #@40
    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    #@42
    .line 223
    :cond_3
    if-eqz p3, :cond_4

    #@44
    .line 224
    iput-object p3, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    #@46
    .line 225
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@49
    move-result v2

    #@4a
    .line 226
    .restart local v2    # "len":I
    const/4 v1, 0x0

    #@4b
    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    #@4d
    .line 227
    mul-int/lit8 v3, v0, 0x1f

    #@4f
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    #@52
    move-result v4

    #@53
    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@56
    move-result v4

    #@57
    add-int v0, v3, v4

    #@59
    .line 226
    add-int/lit8 v1, v1, 0x1

    #@5b
    goto :goto_2

    #@5c
    .line 230
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_4
    const-string/jumbo v3, ""

    #@5f
    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    #@61
    .line 232
    :cond_5
    if-eqz p4, :cond_6

    #@63
    .line 233
    iput-object p4, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    #@65
    .line 234
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@68
    move-result v2

    #@69
    .line 235
    .restart local v2    # "len":I
    const/4 v1, 0x0

    #@6a
    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v2, :cond_7

    #@6c
    .line 236
    mul-int/lit8 v3, v0, 0x1f

    #@6e
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    #@71
    move-result v4

    #@72
    add-int v0, v3, v4

    #@74
    .line 235
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_3

    #@77
    .line 239
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_6
    const-string/jumbo v3, ""

    #@7a
    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    #@7c
    .line 241
    :cond_7
    iput v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    #@7e
    .line 242
    iput-boolean p5, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    #@80
    .line 203
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale$Key;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public static normalize(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;
    .locals 6
    .param p0, "key"    # Lsun/util/locale/BaseLocale$Key;

    #@0
    .prologue
    .line 277
    iget-boolean v0, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 278
    return-object p0

    #@5
    .line 281
    :cond_0
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    #@7
    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 282
    .local v1, "lang":Ljava/lang/String;
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    #@11
    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 283
    .local v2, "scrt":Ljava/lang/String;
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    #@1b
    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 284
    .local v3, "regn":Ljava/lang/String;
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    #@25
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 286
    .local v4, "vart":Ljava/lang/String;
    new-instance v0, Lsun/util/locale/BaseLocale$Key;

    #@2b
    const/4 v5, 0x1

    #@2c
    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@2f
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 257
    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Key;->compareTo(Lsun/util/locale/BaseLocale$Key;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Lsun/util/locale/BaseLocale$Key;)I
    .locals 3
    .param p1, "other"    # Lsun/util/locale/BaseLocale$Key;

    #@0
    .prologue
    .line 258
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    #@2
    iget-object v2, p1, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    #@4
    invoke-static {v1, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 259
    .local v0, "res":I
    if-nez v0, :cond_0

    #@a
    .line 260
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    #@c
    iget-object v2, p1, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    #@e
    invoke-static {v1, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    move-result v0

    #@12
    .line 261
    if-nez v0, :cond_0

    #@14
    .line 262
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    #@16
    iget-object v2, p1, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    #@18
    invoke-static {v1, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    .line 263
    if-nez v0, :cond_0

    #@1e
    .line 264
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    #@20
    iget-object v2, p1, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@25
    move-result v0

    #@26
    .line 268
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 247
    if-eq p0, p1, :cond_0

    #@2
    .line 248
    instance-of v0, p1, Lsun/util/locale/BaseLocale$Key;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 249
    iget v1, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    #@8
    move-object v0, p1

    #@9
    check-cast v0, Lsun/util/locale/BaseLocale$Key;

    #@b
    iget v0, v0, Lsun/util/locale/BaseLocale$Key;->hash:I

    #@d
    if-ne v1, v0, :cond_1

    #@f
    move-object v0, p1

    #@10
    .line 250
    check-cast v0, Lsun/util/locale/BaseLocale$Key;

    #@12
    iget-object v0, v0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    #@14
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    #@16
    invoke-static {v0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    .line 248
    if-eqz v0, :cond_1

    #@1c
    move-object v0, p1

    #@1d
    .line 251
    check-cast v0, Lsun/util/locale/BaseLocale$Key;

    #@1f
    iget-object v0, v0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    #@21
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    #@23
    invoke-static {v0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@26
    move-result v0

    #@27
    .line 248
    if-eqz v0, :cond_1

    #@29
    move-object v0, p1

    #@2a
    .line 252
    check-cast v0, Lsun/util/locale/BaseLocale$Key;

    #@2c
    iget-object v0, v0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    #@2e
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    #@30
    invoke-static {v0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@33
    move-result v0

    #@34
    .line 248
    if-eqz v0, :cond_1

    #@36
    .line 253
    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    #@38
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p1, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    #@3a
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v0

    #@40
    .line 247
    :goto_0
    return v0

    #@41
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    #@42
    goto :goto_0

    #@43
    .line 248
    :cond_1
    const/4 v0, 0x0

    #@44
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 273
    iget v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    #@2
    return v0
.end method
