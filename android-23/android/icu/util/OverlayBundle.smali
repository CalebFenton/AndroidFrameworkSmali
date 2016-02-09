.class public Landroid/icu/util/OverlayBundle;
.super Ljava/util/ResourceBundle;
.source "OverlayBundle.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private baseNames:[Ljava/lang/String;

.field private bundles:[Ljava/util/ResourceBundle;

.field private locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "baseNames"    # [Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    #@3
    .line 96
    iput-object p1, p0, Landroid/icu/util/OverlayBundle;->baseNames:[Ljava/lang/String;

    #@5
    .line 97
    iput-object p2, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    #@7
    .line 98
    array-length v0, p1

    #@8
    new-array v0, v0, [Ljava/util/ResourceBundle;

    #@a
    iput-object v0, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@c
    .line 95
    return-void
.end method

.method private load(I)V
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@2
    aget-object v3, v3, p1

    #@4
    if-nez v3, :cond_2

    #@6
    .line 152
    const/4 v1, 0x0

    #@7
    .line 154
    .local v1, "tryWildcard":Z
    :try_start_0
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@9
    iget-object v4, p0, Landroid/icu/util/OverlayBundle;->baseNames:[Ljava/lang/String;

    #@b
    aget-object v4, v4, p1

    #@d
    iget-object v5, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    #@f
    invoke-static {v4, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    #@12
    move-result-object v4

    #@13
    aput-object v4, v3, p1

    #@15
    .line 155
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@17
    aget-object v3, v3, p1

    #@19
    invoke-virtual {v3}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    #@1c
    move-result-object v3

    #@1d
    iget-object v4, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    #@1f
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 156
    return-void

    #@26
    .line 158
    :cond_0
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    #@28
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@34
    array-length v3, v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    add-int/lit8 v3, v3, -0x1

    #@37
    if-eq p1, v3, :cond_1

    #@39
    .line 159
    const/4 v1, 0x1

    #@3a
    .line 167
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    #@3c
    .line 168
    new-instance v2, Ljava/util/Locale;

    #@3e
    const-string/jumbo v3, "xx"

    #@41
    iget-object v4, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    #@43
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    .line 169
    iget-object v5, p0, Landroid/icu/util/OverlayBundle;->locale:Ljava/util/Locale;

    #@49
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    .line 168
    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@50
    .line 171
    .local v2, "wildcard":Ljava/util/Locale;
    :try_start_1
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@52
    iget-object v4, p0, Landroid/icu/util/OverlayBundle;->baseNames:[Ljava/lang/String;

    #@54
    aget-object v4, v4, p1

    #@56
    invoke-static {v4, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    #@59
    move-result-object v4

    #@5a
    aput-object v4, v3, p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@5c
    .line 149
    .end local v1    # "tryWildcard":Z
    .end local v2    # "wildcard":Ljava/util/Locale;
    :cond_2
    return-void

    #@5d
    .line 161
    .restart local v1    # "tryWildcard":Z
    :catch_0
    move-exception v0

    #@5e
    .line 162
    .local v0, "e":Ljava/util/MissingResourceException;
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@60
    array-length v3, v3

    #@61
    add-int/lit8 v3, v3, -0x1

    #@63
    if-ne p1, v3, :cond_3

    #@65
    .line 163
    throw v0

    #@66
    .line 165
    :cond_3
    const/4 v1, 0x1

    #@67
    goto :goto_0

    #@68
    .line 172
    .end local v0    # "e":Ljava/util/MissingResourceException;
    .restart local v2    # "wildcard":Ljava/util/Locale;
    :catch_1
    move-exception v0

    #@69
    .line 173
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@6b
    aget-object v3, v3, p1

    #@6d
    if-nez v3, :cond_2

    #@6f
    .line 174
    throw v0
.end method


# virtual methods
.method public getKeys()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 140
    iget-object v1, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@2
    array-length v1, v1

    #@3
    add-int/lit8 v0, v1, -0x1

    #@5
    .line 141
    .local v0, "i":I
    invoke-direct {p0, v0}, Landroid/icu/util/OverlayBundle;->load(I)V

    #@8
    .line 142
    iget-object v1, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@a
    aget-object v1, v1, v0

    #@c
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 111
    const/4 v2, 0x0

    #@1
    .line 113
    .local v2, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    #@2
    .end local v2    # "o":Ljava/lang/Object;
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@4
    array-length v3, v3

    #@5
    if-ge v1, v3, :cond_1

    #@7
    .line 114
    invoke-direct {p0, v1}, Landroid/icu/util/OverlayBundle;->load(I)V

    #@a
    .line 116
    :try_start_0
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@c
    aget-object v3, v3, v1

    #@e
    invoke-virtual {v3, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    .line 122
    :cond_0
    if-eqz v2, :cond_2

    #@14
    .line 127
    :cond_1
    return-object v2

    #@15
    .line 117
    :catch_0
    move-exception v0

    #@16
    .line 118
    .local v0, "e":Ljava/util/MissingResourceException;
    iget-object v3, p0, Landroid/icu/util/OverlayBundle;->bundles:[Ljava/util/ResourceBundle;

    #@18
    array-length v3, v3

    #@19
    add-int/lit8 v3, v3, -0x1

    #@1b
    if-ne v1, v3, :cond_0

    #@1d
    .line 119
    throw v0

    #@1e
    .line 113
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0
.end method
