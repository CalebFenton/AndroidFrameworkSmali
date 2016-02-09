.class public final Landroid/icu/impl/locale/BaseLocale;
.super Ljava/lang/Object;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/BaseLocale$Key;,
        Landroid/icu/impl/locale/BaseLocale$Cache;
    }
.end annotation


# static fields
.field private static final CACHE:Landroid/icu/impl/locale/BaseLocale$Cache;

.field private static final JDKIMPL:Z = false

.field public static final ROOT:Landroid/icu/impl/locale/BaseLocale;

.field public static final SEP:Ljava/lang/String; = "_"


# instance fields
.field private volatile transient _hash:I

.field private _language:Ljava/lang/String;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 17
    new-instance v0, Landroid/icu/impl/locale/BaseLocale$Cache;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/locale/BaseLocale$Cache;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/locale/BaseLocale;->CACHE:Landroid/icu/impl/locale/BaseLocale$Cache;

    #@7
    .line 18
    const-string/jumbo v0, ""

    #@a
    const-string/jumbo v1, ""

    #@d
    const-string/jumbo v2, ""

    #@10
    const-string/jumbo v3, ""

    #@13
    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    #@16
    move-result-object v0

    #@17
    sput-object v0, Landroid/icu/impl/locale/BaseLocale;->ROOT:Landroid/icu/impl/locale/BaseLocale;

    #@19
    .line 11
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    #@8
    .line 21
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    #@d
    .line 22
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    #@12
    .line 23
    const-string/jumbo v0, ""

    #@15
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    #@17
    .line 25
    const/4 v0, 0x0

    #@18
    iput v0, p0, Landroid/icu/impl/locale/BaseLocale;->_hash:I

    #@1a
    .line 28
    if-eqz p1, :cond_0

    #@1c
    .line 29
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    #@26
    .line 31
    :cond_0
    if-eqz p2, :cond_1

    #@28
    .line 32
    invoke-static {p2}, Landroid/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    #@32
    .line 34
    :cond_1
    if-eqz p3, :cond_2

    #@34
    .line 35
    invoke-static {p3}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    #@3e
    .line 37
    :cond_2
    if-eqz p4, :cond_3

    #@40
    .line 42
    invoke-static {p4}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    #@4a
    .line 27
    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/BaseLocale;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;
    .locals 3
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    new-instance v1, Landroid/icu/impl/locale/BaseLocale$Key;

    #@2
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/icu/impl/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 59
    .local v1, "key":Landroid/icu/impl/locale/BaseLocale$Key;
    sget-object v2, Landroid/icu/impl/locale/BaseLocale;->CACHE:Landroid/icu/impl/locale/BaseLocale$Cache;

    #@7
    invoke-virtual {v2, v1}, Landroid/icu/impl/locale/BaseLocale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/icu/impl/locale/BaseLocale;

    #@d
    .line 60
    .local v0, "baseLocale":Landroid/icu/impl/locale/BaseLocale;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 80
    if-ne p0, p1, :cond_0

    #@3
    .line 81
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 83
    :cond_0
    instance-of v2, p1, Landroid/icu/impl/locale/BaseLocale;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 84
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 86
    check-cast v0, Landroid/icu/impl/locale/BaseLocale;

    #@d
    .line 87
    .local v0, "other":Landroid/icu/impl/locale/BaseLocale;
    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->hashCode()I

    #@10
    move-result v2

    #@11
    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->hashCode()I

    #@14
    move-result v3

    #@15
    if-ne v2, v3, :cond_2

    #@17
    .line 88
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    #@19
    iget-object v3, v0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    .line 87
    if-eqz v2, :cond_2

    #@21
    .line 89
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    #@23
    iget-object v3, v0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    .line 87
    if-eqz v2, :cond_2

    #@2b
    .line 90
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    #@2d
    iget-object v3, v0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    .line 87
    if-eqz v2, :cond_2

    #@35
    .line 91
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    #@37
    iget-object v2, v0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    .line 87
    :cond_2
    return v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 125
    iget v0, p0, Landroid/icu/impl/locale/BaseLocale;->_hash:I

    #@2
    .line 126
    .local v0, "h":I
    if-nez v0, :cond_4

    #@4
    .line 128
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    #@7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 129
    mul-int/lit8 v2, v0, 0x1f

    #@f
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    #@11
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v3

    #@15
    add-int v0, v2, v3

    #@17
    .line 128
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 131
    :cond_0
    const/4 v1, 0x0

    #@1b
    :goto_1
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    #@1d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@20
    move-result v2

    #@21
    if-ge v1, v2, :cond_1

    #@23
    .line 132
    mul-int/lit8 v2, v0, 0x1f

    #@25
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    #@27
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v3

    #@2b
    add-int v0, v2, v3

    #@2d
    .line 131
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 134
    :cond_1
    const/4 v1, 0x0

    #@31
    :goto_2
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    #@33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@36
    move-result v2

    #@37
    if-ge v1, v2, :cond_2

    #@39
    .line 135
    mul-int/lit8 v2, v0, 0x1f

    #@3b
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    #@3d
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v3

    #@41
    add-int v0, v2, v3

    #@43
    .line 134
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_2

    #@46
    .line 137
    :cond_2
    const/4 v1, 0x0

    #@47
    :goto_3
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    #@49
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4c
    move-result v2

    #@4d
    if-ge v1, v2, :cond_3

    #@4f
    .line 138
    mul-int/lit8 v2, v0, 0x1f

    #@51
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    #@53
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@56
    move-result v3

    #@57
    add-int v0, v2, v3

    #@59
    .line 137
    add-int/lit8 v1, v1, 0x1

    #@5b
    goto :goto_3

    #@5c
    .line 140
    :cond_3
    iput v0, p0, Landroid/icu/impl/locale/BaseLocale;->_hash:I

    #@5e
    .line 142
    .end local v1    # "i":I
    :cond_4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 96
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    if-lez v1, :cond_0

    #@d
    .line 97
    const-string/jumbo v1, "language="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 98
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 100
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    #@1a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1d
    move-result v1

    #@1e
    if-lez v1, :cond_2

    #@20
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@23
    move-result v1

    #@24
    if-lez v1, :cond_1

    #@26
    .line 102
    const-string/jumbo v1, ", "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 104
    :cond_1
    const-string/jumbo v1, "script="

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 105
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 107
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    #@39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@3c
    move-result v1

    #@3d
    if-lez v1, :cond_4

    #@3f
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@42
    move-result v1

    #@43
    if-lez v1, :cond_3

    #@45
    .line 109
    const-string/jumbo v1, ", "

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 111
    :cond_3
    const-string/jumbo v1, "region="

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 112
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 114
    :cond_4
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    #@58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@5b
    move-result v1

    #@5c
    if-lez v1, :cond_6

    #@5e
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@61
    move-result v1

    #@62
    if-lez v1, :cond_5

    #@64
    .line 116
    const-string/jumbo v1, ", "

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 118
    :cond_5
    const-string/jumbo v1, "variant="

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 119
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 121
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    return-object v1
.end method
