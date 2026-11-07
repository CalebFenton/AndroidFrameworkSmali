.class public final Landroid/graphics/Typeface$CustomFallbackBuilder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomFallbackBuilder"
.end annotation


# static fields
.field private static final blacklist MAX_CUSTOM_FALLBACK:I = 0x40


# instance fields
.field private blacklist mFallbackName:Ljava/lang/String;

.field private final blacklist mFamilies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStyle:Landroid/graphics/fonts/FontStyle;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/fonts/FontFamily;)V
    .registers 3
    .param p1, "family"    # Landroid/graphics/fonts/FontFamily;

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    .line 857
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    return-void
.end method

.method public static whitelist getMaxCustomFallbackCount()I
    .registers 1

    .line 848
    const/16 v0, 0x40

    return v0
.end method


# virtual methods
.method public whitelist addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 5
    .param p1, "family"    # Landroid/graphics/fonts/FontFamily;

    .line 905
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Landroid/graphics/Typeface$CustomFallbackBuilder;->getMaxCustomFallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 907
    :goto_12
    invoke-static {}, Landroid/graphics/Typeface$CustomFallbackBuilder;->getMaxCustomFallbackCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 906
    const-string v2, "Custom fallback limit exceeded(%d)"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 908
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    return-object p0
.end method

.method public whitelist build()Landroid/graphics/Typeface;
    .registers 10

    .line 918
    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 919
    .local v0, "userFallbackSize":I
    iget-object v1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->-$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 920
    .local v1, "fallbackTypeface":Landroid/graphics/Typeface;
    new-array v2, v0, [J

    .line 921
    .local v2, "ptrArray":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_22

    .line 922
    iget-object v4, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontFamily;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily;->getNativePtr()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 921
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 924
    .end local v3    # "i":I
    :cond_22
    iget-object v3, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    if-nez v3, :cond_29

    const/16 v3, 0x190

    goto :goto_2f

    :cond_29
    iget-object v3, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v3}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v3

    .line 926
    .local v3, "weight":I
    :goto_2f
    iget-object v4, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    if-eqz v4, :cond_3e

    iget-object v4, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v4

    if-nez v4, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 v4, 0x1

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v4, 0x0

    .line 927
    .local v4, "italic":I
    :goto_3f
    new-instance v5, Landroid/graphics/Typeface;

    iget-wide v6, v1, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v2, v6, v7, v3, v4}, Landroid/graphics/Typeface;->-$$Nest$smnativeCreateFromArray([JJII)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v8}, Landroid/graphics/Typeface;-><init>(JLjava/lang/String;Landroid/graphics/Typeface-IA;)V

    return-object v5
.end method

.method public whitelist setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 2
    .param p1, "style"    # Landroid/graphics/fonts/FontStyle;

    .line 890
    iput-object p1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    .line 891
    return-object p0
.end method

.method public whitelist setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 2
    .param p1, "familyName"    # Ljava/lang/String;

    .line 875
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iput-object p1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    .line 877
    return-object p0
.end method
