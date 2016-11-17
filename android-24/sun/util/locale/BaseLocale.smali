.class public final Lsun/util/locale/BaseLocale;
.super Ljava/lang/Object;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/locale/BaseLocale$Cache;,
        Lsun/util/locale/BaseLocale$Key;
    }
.end annotation


# static fields
.field private static final CACHE:Lsun/util/locale/BaseLocale$Cache;

.field public static final SEP:Ljava/lang/String; = "_"


# instance fields
.field private volatile hash:I

.field private final language:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final script:Ljava/lang/String;

.field private final variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    new-instance v0, Lsun/util/locale/BaseLocale$Cache;

    #@2
    invoke-direct {v0}, Lsun/util/locale/BaseLocale$Cache;-><init>()V

    #@5
    sput-object v0, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    #@7
    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    #@6
    .line 51
    iput-object p1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    #@8
    .line 52
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    #@d
    .line 53
    iput-object p2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    #@f
    .line 54
    const-string/jumbo v0, ""

    #@12
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    #@14
    .line 50
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
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    #@6
    .line 58
    if-eqz p1, :cond_0

    #@8
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    :goto_0
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    #@12
    .line 59
    if-eqz p2, :cond_1

    #@14
    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    :goto_1
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    #@1e
    .line 60
    if-eqz p3, :cond_2

    #@20
    invoke-static {p3}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    :goto_2
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    #@2a
    .line 61
    if-eqz p4, :cond_3

    #@2c
    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    :goto_3
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    #@32
    .line 57
    return-void

    #@33
    .line 58
    :cond_0
    const-string/jumbo v0, ""

    #@36
    goto :goto_0

    #@37
    .line 59
    :cond_1
    const-string/jumbo v0, ""

    #@3a
    goto :goto_1

    #@3b
    .line 60
    :cond_2
    const-string/jumbo v0, ""

    #@3e
    goto :goto_2

    #@3f
    .line 61
    :cond_3
    const-string/jumbo v0, ""

    #@42
    goto :goto_3
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .locals 4
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    new-instance v0, Lsun/util/locale/BaseLocale;

    #@2
    invoke-direct {v0, p0, p1}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 68
    .local v0, "base":Lsun/util/locale/BaseLocale;
    sget-object v1, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    #@7
    new-instance v2, Lsun/util/locale/BaseLocale$Key;

    #@9
    const/4 v3, 0x0

    #@a
    invoke-direct {v2, p0, p1, v3}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale$Key;)V

    #@d
    invoke-virtual {v1, v2, v0}, Lsun/util/locale/BaseLocale$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 69
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .locals 3
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    if-eqz p0, :cond_0

    #@2
    .line 76
    const-string/jumbo v2, "he"

    #@5
    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 77
    const-string/jumbo p0, "iw"

    #@e
    .line 85
    :cond_0
    :goto_0
    new-instance v1, Lsun/util/locale/BaseLocale$Key;

    #@10
    invoke-direct {v1, p0, p1, p2, p3}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 86
    .local v1, "key":Lsun/util/locale/BaseLocale$Key;
    sget-object v2, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    #@15
    invoke-virtual {v2, v1}, Lsun/util/locale/BaseLocale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lsun/util/locale/BaseLocale;

    #@1b
    .line 87
    .local v0, "baseLocale":Lsun/util/locale/BaseLocale;
    return-object v0

    #@1c
    .line 78
    .end local v0    # "baseLocale":Lsun/util/locale/BaseLocale;
    .end local v1    # "key":Lsun/util/locale/BaseLocale$Key;
    :cond_1
    const-string/jumbo v2, "yi"

    #@1f
    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 79
    const-string/jumbo p0, "ji"

    #@28
    goto :goto_0

    #@29
    .line 80
    :cond_2
    const-string/jumbo v2, "id"

    #@2c
    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_0

    #@32
    .line 81
    const-string/jumbo p0, "in"

    #@35
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 108
    if-ne p0, p1, :cond_0

    #@4
    .line 109
    return v1

    #@5
    .line 111
    :cond_0
    instance-of v3, p1, Lsun/util/locale/BaseLocale;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 112
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 114
    check-cast v0, Lsun/util/locale/BaseLocale;

    #@d
    .line 115
    .local v0, "other":Lsun/util/locale/BaseLocale;
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    #@f
    iget-object v4, v0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 116
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    #@15
    iget-object v4, v0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 117
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    #@1b
    iget-object v4, v0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    .line 118
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    #@21
    iget-object v4, v0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    #@23
    if-ne v3, v4, :cond_2

    #@25
    .line 115
    :goto_0
    return v1

    #@26
    :cond_2
    move v1, v2

    #@27
    .line 118
    goto :goto_0

    #@28
    :cond_3
    move v1, v2

    #@29
    .line 115
    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 154
    iget v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    #@2
    .line 155
    .local v0, "h":I
    if-nez v0, :cond_0

    #@4
    .line 157
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    .line 158
    mul-int/lit8 v1, v0, 0x1f

    #@c
    iget-object v2, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    #@e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@11
    move-result v2

    #@12
    add-int v0, v1, v2

    #@14
    .line 159
    mul-int/lit8 v1, v0, 0x1f

    #@16
    iget-object v2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    #@18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@1b
    move-result v2

    #@1c
    add-int v0, v1, v2

    #@1e
    .line 160
    mul-int/lit8 v1, v0, 0x1f

    #@20
    iget-object v2, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    #@22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@25
    move-result v2

    #@26
    add-int v0, v1, v2

    #@28
    .line 161
    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    #@2a
    .line 163
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 124
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    if-lez v1, :cond_0

    #@d
    .line 125
    const-string/jumbo v1, "language="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 126
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 128
    :cond_0
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    #@1a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1d
    move-result v1

    #@1e
    if-lez v1, :cond_2

    #@20
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@23
    move-result v1

    #@24
    if-lez v1, :cond_1

    #@26
    .line 130
    const-string/jumbo v1, ", "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 132
    :cond_1
    const-string/jumbo v1, "script="

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 133
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 135
    :cond_2
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    #@39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@3c
    move-result v1

    #@3d
    if-lez v1, :cond_4

    #@3f
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@42
    move-result v1

    #@43
    if-lez v1, :cond_3

    #@45
    .line 137
    const-string/jumbo v1, ", "

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 139
    :cond_3
    const-string/jumbo v1, "region="

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 140
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 142
    :cond_4
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    #@58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@5b
    move-result v1

    #@5c
    if-lez v1, :cond_6

    #@5e
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@61
    move-result v1

    #@62
    if-lez v1, :cond_5

    #@64
    .line 144
    const-string/jumbo v1, ", "

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 146
    :cond_5
    const-string/jumbo v1, "variant="

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 147
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 149
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    return-object v1
.end method
