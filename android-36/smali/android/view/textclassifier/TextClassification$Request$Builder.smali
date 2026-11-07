.class public final Landroid/view/textclassifier/TextClassification$Request$Builder;
.super Ljava/lang/Object;
.source "TextClassification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mEndIndex:I

.field private blacklist mExtras:Landroid/os/Bundle;

.field private greylist-max-o mReferenceTime:Ljava/time/ZonedDateTime;

.field private final greylist-max-o mStartIndex:I

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;II)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    invoke-static {p1, p2, p3}, Landroid/view/textclassifier/TextClassifier$Utils;->checkArgument(Ljava/lang/CharSequence;II)V

    .line 645
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mText:Ljava/lang/CharSequence;

    .line 646
    iput p2, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mStartIndex:I

    .line 647
    iput p3, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mEndIndex:I

    .line 648
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextClassification$Request;
    .registers 9

    .line 692
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request;

    new-instance v1, Landroid/text/SpannedString;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iget v2, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mStartIndex:I

    iget v3, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mEndIndex:I

    iget-object v4, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    iget-object v5, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 694
    iget-object v6, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v6, :cond_18

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1a

    :cond_18
    iget-object v6, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mExtras:Landroid/os/Bundle;

    :goto_1a
    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/textclassifier/TextClassification$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;Landroid/view/textclassifier/TextClassification-IA;)V

    .line 692
    return-object v0
.end method

.method public whitelist setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;
    .registers 2
    .param p1, "defaultLocales"    # Landroid/os/LocaleList;

    .line 659
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    .line 660
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassification$Request$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 683
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mExtras:Landroid/os/Bundle;

    .line 684
    return-object p0
.end method

.method public whitelist setReferenceTime(Ljava/time/ZonedDateTime;)Landroid/view/textclassifier/TextClassification$Request$Builder;
    .registers 2
    .param p1, "referenceTime"    # Ljava/time/ZonedDateTime;

    .line 672
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 673
    return-object p0
.end method
