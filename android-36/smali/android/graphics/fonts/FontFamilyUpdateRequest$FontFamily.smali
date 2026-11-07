.class public final Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;
.super Ljava/lang/Object;
.source "FontFamilyUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontFamilyUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFamily"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily$Builder;
    }
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
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
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

    .line 135
    .local p2, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;->mName:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;->mFonts:Ljava/util/List;

    .line 138
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;Landroid/graphics/fonts/FontFamilyUpdateRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist getFonts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;->mFonts:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;->mName:Ljava/lang/String;

    return-object v0
.end method
