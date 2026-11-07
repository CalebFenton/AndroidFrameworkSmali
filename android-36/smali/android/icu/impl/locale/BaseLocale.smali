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
.field private static final greylist-max-o CACHE:Landroid/icu/impl/locale/BaseLocale$Cache;

.field private static final greylist-max-o JDKIMPL:Z = false

.field public static final blacklist ROOT:Landroid/icu/impl/locale/BaseLocale;

.field public static final blacklist SEP:Ljava/lang/String; = "_"


# instance fields
.field private volatile transient greylist-max-o _hash:I

.field private greylist-max-o _language:Ljava/lang/String;

.field private greylist-max-o _region:Ljava/lang/String;

.field private greylist-max-o _script:Ljava/lang/String;

.field private greylist-max-o _variant:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Landroid/icu/impl/locale/BaseLocale$Cache;

    invoke-direct {v0}, Landroid/icu/impl/locale/BaseLocale$Cache;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/BaseLocale;->CACHE:Landroid/icu/impl/locale/BaseLocale$Cache;

    .line 24
    const-string v0, ""

    invoke-static {v0, v0, v0, v0}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/BaseLocale;->ROOT:Landroid/icu/impl/locale/BaseLocale;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/locale/BaseLocale;->_hash:I

    .line 34
    if-eqz p1, :cond_1c

    .line 35
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    .line 37
    :cond_1c
    if-eqz p2, :cond_28

    .line 38
    invoke-static {p2}, Landroid/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    .line 40
    :cond_28
    if-eqz p3, :cond_34

    .line 41
    invoke-static {p3}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    .line 43
    :cond_34
    if-eqz p4, :cond_40

    .line 48
    invoke-static {p4}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    .line 51
    :cond_40
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/BaseLocale-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;
    .registers 6
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/icu/impl/locale/BaseLocale$Key;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/icu/impl/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v0, "key":Landroid/icu/impl/locale/BaseLocale$Key;
    sget-object v1, Landroid/icu/impl/locale/BaseLocale;->CACHE:Landroid/icu/impl/locale/BaseLocale$Cache;

    invoke-virtual {v1, v0}, Landroid/icu/impl/locale/BaseLocale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/locale/BaseLocale;

    .line 66
    .local v1, "baseLocale":Landroid/icu/impl/locale/BaseLocale;
    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 88
    return v0

    .line 90
    :cond_4
    instance-of v1, p1, Landroid/icu/impl/locale/BaseLocale;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 91
    return v2

    .line 93
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/locale/BaseLocale;

    .line 94
    .local v1, "other":Landroid/icu/impl/locale/BaseLocale;
    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Landroid/icu/impl/locale/BaseLocale;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v2

    .line 94
    :goto_41
    return v0
.end method

.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRegion()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getScript()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVariant()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 134
    iget v0, p0, Landroid/icu/impl/locale/BaseLocale;->_hash:I

    .line 135
    .local v0, "h":I
    if-nez v0, :cond_5e

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 138
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 140
    .end local v1    # "i":I
    :cond_1a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1b
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 141
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 143
    .end local v1    # "i":I
    :cond_30
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_31
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 144
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 146
    .end local v1    # "i":I
    :cond_46
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_47
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 147
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 149
    .end local v1    # "i":I
    :cond_5c
    iput v0, p0, Landroid/icu/impl/locale/BaseLocale;->_hash:I

    .line 151
    :cond_5e
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    .line 105
    const-string v1, "language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_17
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ", "

    if-lez v1, :cond_34

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2a

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_2a
    const-string v1, "script="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_34
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4f

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_45

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_45
    const-string v1, "region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_4f
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6a

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_60

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_60
    const-string v1, "variant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
