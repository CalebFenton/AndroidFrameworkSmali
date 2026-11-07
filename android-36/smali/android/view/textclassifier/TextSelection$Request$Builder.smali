.class public final Landroid/view/textclassifier/TextSelection$Request$Builder;
.super Ljava/lang/Object;
.source "TextSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mDarkLaunchAllowed:Z

.field private greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mEndIndex:I

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mIncludeTextClassification:Z

.field private final greylist-max-o mStartIndex:I

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;II)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    invoke-static {p1, p2, p3}, Landroid/view/textclassifier/TextClassifier$Utils;->checkArgument(Ljava/lang/CharSequence;II)V

    .line 399
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mText:Ljava/lang/CharSequence;

    .line 400
    iput p2, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mStartIndex:I

    .line 401
    iput p3, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mEndIndex:I

    .line 402
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextSelection$Request;
    .registers 10

    .line 465
    new-instance v0, Landroid/view/textclassifier/TextSelection$Request;

    new-instance v1, Landroid/text/SpannedString;

    iget-object v2, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iget v2, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mStartIndex:I

    iget v3, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mEndIndex:I

    iget-object v4, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    iget-boolean v5, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDarkLaunchAllowed:Z

    iget-boolean v6, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mIncludeTextClassification:Z

    .line 468
    iget-object v7, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v7, :cond_1a

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1c

    :cond_1a
    iget-object v7, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mExtras:Landroid/os/Bundle;

    :goto_1c
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/textclassifier/TextSelection$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZZLandroid/os/Bundle;Landroid/view/textclassifier/TextSelection-IA;)V

    .line 465
    return-object v0
.end method

.method public greylist-max-o setDarkLaunchAllowed(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;
    .registers 2
    .param p1, "allowed"    # Z

    .line 430
    iput-boolean p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDarkLaunchAllowed:Z

    .line 431
    return-object p0
.end method

.method public whitelist setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;
    .registers 2
    .param p1, "defaultLocales"    # Landroid/os/LocaleList;

    .line 413
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    .line 414
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextSelection$Request$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 456
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mExtras:Landroid/os/Bundle;

    .line 457
    return-object p0
.end method

.method public whitelist setIncludeTextClassification(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;
    .registers 2
    .param p1, "includeTextClassification"    # Z

    .line 445
    iput-boolean p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mIncludeTextClassification:Z

    .line 446
    return-object p0
.end method
