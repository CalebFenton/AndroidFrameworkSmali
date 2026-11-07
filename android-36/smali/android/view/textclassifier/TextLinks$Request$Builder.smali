.class public final Landroid/view/textclassifier/TextLinks$Request$Builder;
.super Ljava/lang/Object;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private greylist-max-o mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private greylist-max-o mLegacyFallback:Z

.field private blacklist mReferenceTime:Ljava/time/ZonedDateTime;

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    .line 460
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mText:Ljava/lang/CharSequence;

    .line 461
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextLinks$Request;
    .registers 9

    .line 537
    new-instance v0, Landroid/view/textclassifier/TextLinks$Request;

    iget-object v1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    iget-object v3, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    iget-boolean v4, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    iget-object v5, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 540
    iget-object v6, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v6, :cond_13

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_15

    :cond_13
    iget-object v6, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mExtras:Landroid/os/Bundle;

    :goto_15
    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;Landroid/view/textclassifier/TextLinks-IA;)V

    .line 537
    return-object v0
.end method

.method public whitelist setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .registers 2
    .param p1, "defaultLocales"    # Landroid/os/LocaleList;

    .line 474
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    .line 475
    return-object p0
.end method

.method public whitelist setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .registers 2
    .param p1, "entityConfig"    # Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 488
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 489
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 513
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mExtras:Landroid/os/Bundle;

    .line 514
    return-object p0
.end method

.method public greylist-max-o setLegacyFallback(Z)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .registers 2
    .param p1, "legacyFallback"    # Z

    .line 503
    iput-boolean p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    .line 504
    return-object p0
.end method

.method public whitelist setReferenceTime(Ljava/time/ZonedDateTime;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .registers 2
    .param p1, "referenceTime"    # Ljava/time/ZonedDateTime;

    .line 528
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 529
    return-object p0
.end method
