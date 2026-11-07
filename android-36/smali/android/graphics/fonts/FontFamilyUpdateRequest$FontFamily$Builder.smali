.class public final Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily$Builder;
.super Ljava/lang/Object;
.source "FontFamilyUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p2, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 92
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "fonts"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 94
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 95
    iput-object p1, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily$Builder;->mName:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily$Builder;->mFonts:Ljava/util/List;

    .line 97
    return-void
.end method


# virtual methods
.method public whitelist addFont(Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;)Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily$Builder;
    .registers 3
    .param p1, "font"    # Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;

    .line 105
    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily$Builder;->mFonts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object p0
.end method

.method public whitelist build()Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;
    .registers 5

    .line 113
    new-instance v0, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;

    iget-object v1, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily$Builder;->mFonts:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/graphics/fonts/FontFamilyUpdateRequest-IA;)V

    return-object v0
.end method
