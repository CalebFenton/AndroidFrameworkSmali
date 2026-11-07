.class public final Landroid/graphics/text/LineBreakConfig$Builder;
.super Ljava/lang/Object;
.source "LineBreakConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreakConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHyphenation:I

.field private blacklist mLineBreakStyle:I

.field private blacklist mLineBreakWordStyle:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 281
    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 284
    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/text/LineBreakConfig$Builder;->reset(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    .line 291
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/text/LineBreakConfig;
    .registers 5

    .line 426
    new-instance v0, Landroid/graphics/text/LineBreakConfig;

    iget v1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    iget v2, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    iget v3, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/text/LineBreakConfig;-><init>(III)V

    return-object v0
.end method

.method public whitelist merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;
    .registers 4
    .param p1, "config"    # Landroid/graphics/text/LineBreakConfig;

    .line 323
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 324
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 326
    :cond_d
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    if-eq v0, v1, :cond_19

    .line 327
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 329
    :cond_19
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmHyphenation(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    if-eq v0, v1, :cond_25

    .line 330
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmHyphenation(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    .line 332
    :cond_25
    return-object p0
.end method

.method public blacklist reset(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;
    .registers 3
    .param p1, "config"    # Landroid/graphics/text/LineBreakConfig;

    .line 344
    if-nez p1, :cond_a

    .line 345
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 346
    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 347
    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    goto :goto_1c

    .line 349
    :cond_a
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 350
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 351
    invoke-static {p1}, Landroid/graphics/text/LineBreakConfig;->-$$Nest$fgetmHyphenation(Landroid/graphics/text/LineBreakConfig;)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    .line 353
    :goto_1c
    return-object p0
.end method

.method public whitelist setHyphenation(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .registers 2
    .param p1, "hyphenation"    # I

    .line 413
    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mHyphenation:I

    .line 414
    return-object p0
.end method

.method public whitelist setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .registers 2
    .param p1, "lineBreakStyle"    # I

    .line 372
    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 373
    return-object p0
.end method

.method public whitelist setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .registers 2
    .param p1, "lineBreakWordStyle"    # I

    .line 392
    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 393
    return-object p0
.end method
