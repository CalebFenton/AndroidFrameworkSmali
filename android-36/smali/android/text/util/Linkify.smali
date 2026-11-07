.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$MatchFilter;,
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$LinkifyMask;
    }
.end annotation


# static fields
.field public static final whitelist ALL:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/text/style/URLSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMAIL_ADDRESSES:I = 0x2

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "Linkify"

.field public static final whitelist MAP_ADDRESSES:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PHONE_NUMBERS:I = 0x4

.field private static final greylist-max-o PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final whitelist WEB_URLS:I = 0x1

.field public static final whitelist sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final whitelist sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final whitelist sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 151
    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 169
    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 192
    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 795
    new-instance v0, Landroid/text/util/Linkify$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/text/util/Linkify$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final greylist-max-o addLinkMovementMethod(Landroid/widget/TextView;)V
    .registers 3
    .param p0, "t"    # Landroid/widget/TextView;

    .line 411
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 413
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_a

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_17

    .line 414
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 415
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 418
    :cond_17
    return-void
.end method

.method public static final whitelist addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 9
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 433
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p0    # "text":Landroid/widget/TextView;
    .end local p1    # "pattern":Ljava/util/regex/Pattern;
    .end local p2    # "scheme":Ljava/lang/String;
    .local v0, "text":Landroid/widget/TextView;
    .local v1, "pattern":Ljava/util/regex/Pattern;
    .local v2, "scheme":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 434
    return-void
.end method

.method public static final whitelist addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 11
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 453
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "text":Landroid/widget/TextView;
    .end local p1    # "pattern":Ljava/util/regex/Pattern;
    .end local p2    # "scheme":Ljava/lang/String;
    .end local p3    # "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    .end local p4    # "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    .local v0, "text":Landroid/widget/TextView;
    .local v1, "pattern":Ljava/util/regex/Pattern;
    .local v2, "scheme":Ljava/lang/String;
    .local v4, "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    .local v5, "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 454
    return-void
.end method

.method public static final whitelist addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 13
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 476
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 478
    .local v1, "spannable":Landroid/text/SpannableString;
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "pattern":Ljava/util/regex/Pattern;
    .end local p2    # "defaultScheme":Ljava/lang/String;
    .end local p3    # "schemes":[Ljava/lang/String;
    .end local p4    # "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    .end local p5    # "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    .local v2, "pattern":Ljava/util/regex/Pattern;
    .local v3, "defaultScheme":Ljava/lang/String;
    .local v4, "schemes":[Ljava/lang/String;
    .local v5, "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    .local v6, "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p1

    .line 480
    .local p1, "linksAdded":Z
    if-eqz p1, :cond_19

    .line 481
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 484
    :cond_19
    return-void
.end method

.method public static final whitelist addLinks(Landroid/text/Spannable;I)Z
    .registers 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .line 262
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;Ljava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method private static blacklist addLinks(Landroid/text/Spannable;ILandroid/content/Context;Ljava/util/function/Function;)Z
    .registers 14
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/text/style/URLSpan;",
            ">;)Z"
        }
    .end annotation

    .line 296
    .local p3, "urlSpanFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/text/style/URLSpan;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 297
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    const-string v3, "116321860"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x534e4554

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 298
    return v0

    .line 301
    :cond_21
    if-nez p1, :cond_24

    .line 302
    return v0

    .line 305
    :cond_24
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 307
    .local v1, "old":[Landroid/text/style/URLSpan;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_33
    if-ltz v2, :cond_3d

    .line 308
    aget-object v4, v1, v2

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 307
    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    .line 311
    .end local v2    # "i":I
    :cond_3d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v2

    .line 313
    .local v4, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_5e

    .line 314
    sget-object v6, Landroid/util/Patterns;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const-string/jumbo v2, "rtsp://"

    const-string v5, "ftp://"

    const-string v7, "http://"

    const-string v8, "https://"

    filled-new-array {v7, v8, v2, v5}, [Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v9, 0x0

    move-object v5, p0

    .end local p0    # "text":Landroid/text/Spannable;
    .local v5, "text":Landroid/text/Spannable;
    invoke-static/range {v4 .. v9}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto :goto_5f

    .line 313
    .end local v5    # "text":Landroid/text/Spannable;
    .restart local p0    # "text":Landroid/text/Spannable;
    :cond_5e
    move-object v5, p0

    .line 319
    .end local p0    # "text":Landroid/text/Spannable;
    .restart local v5    # "text":Landroid/text/Spannable;
    :goto_5f
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_70

    .line 320
    sget-object v6, Landroid/util/Patterns;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string p0, "mailto:"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 325
    :cond_70
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_77

    .line 326
    invoke-static {v4, v5, p2}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V

    .line 329
    :cond_77
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_7e

    .line 330
    invoke-static {v4, v5}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 333
    :cond_7e
    invoke-static {v4}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 335
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_88

    .line 336
    return v0

    .line 339
    :cond_88
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/LinkSpec;

    .line 340
    .local v0, "link":Landroid/text/util/LinkSpec;
    iget-object v2, v0, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v6, v0, Landroid/text/util/LinkSpec;->start:I

    iget v7, v0, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v2, v6, v7, v5, p3}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/util/function/Function;)V

    .line 341
    .end local v0    # "link":Landroid/text/util/LinkSpec;
    goto :goto_8c

    .line 343
    :cond_a2
    return v3
.end method

.method public static final whitelist addLinks(Landroid/text/Spannable;ILjava/util/function/Function;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/text/style/URLSpan;",
            ">;)Z"
        }
    .end annotation

    .line 279
    .local p2, "urlSpanFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/text/style/URLSpan;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;Ljava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method public static final whitelist addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 9
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 498
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p0    # "text":Landroid/text/Spannable;
    .end local p1    # "pattern":Ljava/util/regex/Pattern;
    .end local p2    # "scheme":Ljava/lang/String;
    .local v0, "text":Landroid/text/Spannable;
    .local v1, "pattern":Ljava/util/regex/Pattern;
    .local v2, "scheme":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p0

    return p0
.end method

.method public static final whitelist addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 11
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 520
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "spannable":Landroid/text/Spannable;
    .end local p1    # "pattern":Ljava/util/regex/Pattern;
    .end local p2    # "scheme":Ljava/lang/String;
    .end local p3    # "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    .end local p4    # "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    .local v0, "spannable":Landroid/text/Spannable;
    .local v1, "pattern":Ljava/util/regex/Pattern;
    .local v2, "scheme":Ljava/lang/String;
    .local v4, "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    .local v5, "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p0

    return p0
.end method

.method public static final whitelist addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 13
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 545
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p0    # "spannable":Landroid/text/Spannable;
    .end local p1    # "pattern":Ljava/util/regex/Pattern;
    .end local p2    # "defaultScheme":Ljava/lang/String;
    .end local p3    # "schemes":[Ljava/lang/String;
    .end local p4    # "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    .end local p5    # "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    .local v0, "spannable":Landroid/text/Spannable;
    .local v1, "pattern":Ljava/util/regex/Pattern;
    .local v2, "defaultScheme":Ljava/lang/String;
    .local v3, "schemes":[Ljava/lang/String;
    .local v4, "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    .local v5, "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    invoke-static/range {v0 .. v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Ljava/util/function/Function;)Z

    move-result p0

    return p0
.end method

.method public static final whitelist addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Ljava/util/function/Function;)Z
    .registers 15
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/text/style/URLSpan;",
            ">;)Z"
        }
    .end annotation

    .line 571
    .local p6, "urlSpanFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/text/style/URLSpan;>;"
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 572
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "116321860"

    filled-new-array {v3, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x534e4554

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 573
    return v1

    .line 577
    :cond_21
    if-nez p2, :cond_25

    const-string p2, ""

    .line 578
    :cond_25
    const/4 v2, 0x1

    if-eqz p3, :cond_2b

    array-length v3, p3

    if-ge v3, v2, :cond_2d

    .line 579
    :cond_2b
    sget-object p3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 582
    :cond_2d
    array-length v3, p3

    add-int/2addr v3, v2

    new-array v2, v3, [Ljava/lang/String;

    .line 583
    .local v2, "schemesCopy":[Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 584
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_3a
    array-length v4, p3

    if-ge v3, v4, :cond_50

    .line 585
    aget-object v4, p3, v3

    .line 586
    .local v4, "scheme":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    if-nez v4, :cond_45

    move-object v6, v0

    goto :goto_4b

    :cond_45
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    :goto_4b
    aput-object v6, v2, v5

    .line 584
    .end local v4    # "scheme":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 589
    .end local v3    # "index":I
    :cond_50
    const/4 v0, 0x0

    .line 590
    .local v0, "hasMatches":Z
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 592
    .local v3, "m":Ljava/util/regex/Matcher;
    :goto_55
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 593
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 594
    .local v4, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 595
    .local v5, "end":I
    const/4 v6, 0x1

    .line 597
    .local v6, "allowed":Z
    if-eqz p4, :cond_6a

    .line 598
    invoke-interface {p4, p0, v4, v5}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v6

    .line 601
    :cond_6a
    if-eqz v6, :cond_78

    .line 602
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2, v3, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7, v4, v5, p0, p6}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/util/function/Function;)V

    .line 605
    const/4 v0, 0x1

    .line 607
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "allowed":Z
    .end local v7    # "url":Ljava/lang/String;
    :cond_78
    goto :goto_55

    .line 609
    :cond_79
    return v0
.end method

.method public static final whitelist addLinks(Landroid/widget/TextView;I)Z
    .registers 8
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .line 383
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 384
    return v0

    .line 387
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 388
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 389
    .local v2, "t":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spannable;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_20

    .line 390
    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, p1, v1, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;Ljava/util/function/Function;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 391
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 392
    return v4

    .line 395
    :cond_1f
    return v0

    .line 397
    :cond_20
    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 399
    .local v3, "s":Landroid/text/SpannableString;
    invoke-static {v3, p1, v1, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;Ljava/util/function/Function;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 400
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 401
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    return v4

    .line 406
    :cond_31
    return v0
.end method

.method private static blacklist applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/util/function/Function;)V
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/text/Spannable;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/text/style/URLSpan;",
            ">;)V"
        }
    .end annotation

    .line 614
    .local p4, "urlSpanFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/text/style/URLSpan;>;"
    if-nez p4, :cond_4

    .line 615
    sget-object p4, Landroid/text/util/Linkify;->DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;

    .line 617
    :cond_4
    invoke-interface {p4, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/URLSpan;

    .line 618
    .local v0, "span":Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 619
    return-void
.end method

.method public static blacklist containsUnsupportedCharacters(Ljava/lang/String;)Z
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .line 354
    const-string/jumbo v0, "\u202c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Linkify"

    if-eqz v0, :cond_12

    .line 355
    const-string v0, "Unsupported character for applying links: u202C"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return v1

    .line 358
    :cond_12
    const-string/jumbo v0, "\u202d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 359
    const-string v0, "Unsupported character for applying links: u202D"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return v1

    .line 362
    :cond_21
    const-string/jumbo v0, "\u202e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 363
    const-string v0, "Unsupported character for applying links: u202E"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return v1

    .line 366
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method private static final greylist-max-o gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 11
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .line 652
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 654
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 655
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 656
    .local v1, "start":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 658
    .local v2, "end":I
    if-eqz p4, :cond_1a

    invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 659
    :cond_1a
    new-instance v3, Landroid/text/util/LinkSpec;

    invoke-direct {v3}, Landroid/text/util/LinkSpec;-><init>()V

    .line 660
    .local v3, "spec":Landroid/text/util/LinkSpec;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3, v0, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 663
    iput v1, v3, Landroid/text/util/LinkSpec;->start:I

    .line 664
    iput v2, v3, Landroid/text/util/LinkSpec;->end:I

    .line 666
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v3    # "spec":Landroid/text/util/LinkSpec;
    .end local v4    # "url":Ljava/lang/String;
    :cond_31
    goto :goto_4

    .line 669
    :cond_32
    return-void
.end method

.method private static final greylist-max-o gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 12
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .line 697
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 702
    .local v1, "base":I
    :goto_5
    :try_start_5
    invoke-static {v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "address":Ljava/lang/String;
    if-eqz v2, :cond_50

    .line 703
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 705
    .local v2, "start":I
    if-gez v2, :cond_13

    .line 706
    goto :goto_50

    .line 709
    :cond_13
    new-instance v4, Landroid/text/util/LinkSpec;

    invoke-direct {v4}, Landroid/text/util/LinkSpec;-><init>()V

    .line 710
    .local v4, "spec":Landroid/text/util/LinkSpec;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 711
    .local v5, "length":I
    add-int v6, v2, v5

    .line 713
    .local v6, "end":I
    add-int v7, v1, v2

    iput v7, v4, Landroid/text/util/LinkSpec;->start:I

    .line 714
    add-int v7, v1, v6

    iput v7, v4, Landroid/text/util/LinkSpec;->end:I

    .line 715
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_2a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_2a} :catch_52

    move-object v0, v7

    .line 716
    add-int/2addr v1, v6

    .line 718
    const/4 v7, 0x0

    .line 721
    .local v7, "encodedAddress":Ljava/lang/String;
    :try_start_2d
    const-string v8, "UTF-8"

    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_33} :catch_4e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2d .. :try_end_33} :catch_52

    .line 724
    .end local v7    # "encodedAddress":Ljava/lang/String;
    .local v8, "encodedAddress":Ljava/lang/String;
    nop

    .line 726
    :try_start_34
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "geo:0,0?q="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 727
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_34 .. :try_end_4c} :catch_52

    .line 728
    nop

    .end local v2    # "start":I
    .end local v4    # "spec":Landroid/text/util/LinkSpec;
    .end local v5    # "length":I
    .end local v6    # "end":I
    .end local v8    # "encodedAddress":Ljava/lang/String;
    goto :goto_5

    .line 722
    .restart local v2    # "start":I
    .restart local v4    # "spec":Landroid/text/util/LinkSpec;
    .restart local v5    # "length":I
    .restart local v6    # "end":I
    .restart local v7    # "encodedAddress":Ljava/lang/String;
    :catch_4e
    move-exception v8

    .line 723
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_5

    .line 734
    .end local v2    # "start":I
    .end local v4    # "spec":Landroid/text/util/LinkSpec;
    .end local v5    # "length":I
    .end local v6    # "end":I
    .end local v7    # "encodedAddress":Ljava/lang/String;
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_50
    :goto_50
    nop

    .line 735
    return-void

    .line 729
    .end local v3    # "address":Ljava/lang/String;
    :catch_52
    move-exception v2

    .line 733
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    return-void
.end method

.method private static greylist-max-r gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V
    .registers 12
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 674
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 675
    .local v0, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p2, :cond_8

    move-object v1, p2

    goto :goto_c

    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    :goto_c
    move-object v6, v1

    .line 676
    .local v6, "ctx":Landroid/content/Context;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "regionCode":Ljava/lang/String;
    if-eqz v6, :cond_31

    .line 678
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "simCountryIso":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 681
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_32

    .line 685
    .end local v2    # "simCountryIso":Ljava/lang/String;
    :cond_31
    move-object v2, v1

    .end local v1    # "regionCode":Ljava/lang/String;
    .local v2, "regionCode":Ljava/lang/String;
    :goto_32
    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v1

    .line 687
    .local v1, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 688
    .local v4, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    new-instance v5, Landroid/text/util/LinkSpec;

    invoke-direct {v5}, Landroid/text/util/LinkSpec;-><init>()V

    .line 689
    .local v5, "spec":Landroid/text/util/LinkSpec;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 690
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v7

    iput v7, v5, Landroid/text/util/LinkSpec;->start:I

    .line 691
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v7

    iput v7, v5, Landroid/text/util/LinkSpec;->end:I

    .line 692
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    .end local v4    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v5    # "spec":Landroid/text/util/LinkSpec;
    goto :goto_45

    .line 694
    :cond_84
    return-void
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/String;)Landroid/text/style/URLSpan;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 796
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final greylist-max-o makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "matcher"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 623
    if-eqz p3, :cond_8

    .line 624
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_9

    .line 623
    :cond_8
    move-object v0, p0

    .line 627
    .end local p0    # "url":Ljava/lang/String;
    .local v0, "url":Ljava/lang/String;
    :goto_9
    const/4 p0, 0x0

    .line 629
    .local p0, "hasPrefix":Z
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_c
    array-length v1, p1

    if-ge v6, v1, :cond_53

    .line 630
    aget-object v3, p1, v6

    aget-object v1, p1, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 631
    const/4 p0, 0x1

    .line 634
    aget-object v3, p1, v6

    aget-object v1, p1, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_53

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 629
    :cond_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 642
    .end local v6    # "i":I
    :cond_53
    :goto_53
    if-nez p0, :cond_6c

    array-length v1, p1

    if-lez v1, :cond_6c

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    :cond_6c
    return-object v0
.end method

.method private static final greylist-max-o pruneOverlaps(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .line 738
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    new-instance v0, Landroid/text/util/Linkify$4;

    invoke-direct {v0}, Landroid/text/util/Linkify$4;-><init>()V

    .line 760
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/text/util/LinkSpec;>;"
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 762
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 763
    .local v1, "len":I
    const/4 v2, 0x0

    .line 765
    .local v2, "i":I
    :goto_d
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_5e

    .line 766
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/util/LinkSpec;

    .line 767
    .local v3, "a":Landroid/text/util/LinkSpec;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/util/LinkSpec;

    .line 768
    .local v4, "b":Landroid/text/util/LinkSpec;
    const/4 v5, -0x1

    .line 770
    .local v5, "remove":I
    iget v6, v3, Landroid/text/util/LinkSpec;->start:I

    iget v7, v4, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_5a

    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v4, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_5a

    .line 771
    iget v6, v4, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_35

    .line 772
    add-int/lit8 v5, v2, 0x1

    goto :goto_51

    .line 773
    :cond_35
    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    iget v8, v4, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_44

    .line 774
    add-int/lit8 v5, v2, 0x1

    goto :goto_51

    .line 775
    :cond_44
    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    iget v8, v4, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_51

    .line 776
    move v5, v2

    .line 779
    :cond_51
    :goto_51
    const/4 v6, -0x1

    if-eq v5, v6, :cond_5a

    .line 780
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 781
    add-int/lit8 v1, v1, -0x1

    .line 782
    goto :goto_d

    .line 787
    :cond_5a
    nop

    .end local v3    # "a":Landroid/text/util/LinkSpec;
    .end local v4    # "b":Landroid/text/util/LinkSpec;
    .end local v5    # "remove":I
    add-int/lit8 v2, v2, 0x1

    .line 788
    goto :goto_d

    .line 789
    :cond_5e
    return-void
.end method
