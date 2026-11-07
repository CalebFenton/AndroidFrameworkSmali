.class public Landroid/graphics/fonts/FontCustomizationParser$Result;
.super Ljava/lang/Object;
.source "FontCustomizationParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontCustomizationParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final blacklist mAdditionalAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAdditionalNamedFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocaleFamilyCustomizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalNamedFamilies:Ljava/util/Map;

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mLocaleFamilyCustomizations:Ljava/util/List;

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalAliases:Ljava/util/List;

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "additionalNamedFamilies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/FontConfig$NamedFamilyList;>;"
    .local p2, "localeFamilyCustomizations":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Customization$LocaleFallback;>;"
    .local p3, "additionalAliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalNamedFamilies:Ljava/util/Map;

    .line 70
    iput-object p2, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mLocaleFamilyCustomizations:Ljava/util/List;

    .line 71
    iput-object p3, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalAliases:Ljava/util/List;

    .line 72
    return-void
.end method


# virtual methods
.method public blacklist getAdditionalAliases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalAliases:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAdditionalNamedFamilies()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mAdditionalNamedFamilies:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getLocaleFamilyCustomizations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/graphics/fonts/FontCustomizationParser$Result;->mLocaleFamilyCustomizations:Ljava/util/List;

    return-object v0
.end method
