.class public Landroid/text/method/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AllCapsTransformationMethod"


# instance fields
.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mLocale:Ljava/util/Locale;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 50
    iget-boolean v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    if-nez v0, :cond_c

    .line 51
    const-string v0, "AllCapsTransformationMethod"

    const-string v1, "Caller did not enable length changes; not transforming text"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-object p1

    .line 55
    :cond_c
    if-nez p1, :cond_10

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_10
    const/4 v0, 0x0

    .line 60
    .local v0, "locale":Ljava/util/Locale;
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    .line 61
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    .line 63
    :cond_1c
    if-nez v0, :cond_20

    .line 64
    iget-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    .line 66
    :cond_20
    instance-of v1, p1, Landroid/text/Spanned;

    .line 67
    .local v1, "copySpans":Z
    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 73
    return-void
.end method

.method public greylist-max-o setLengthChangesAllowed(Z)V
    .registers 2
    .param p1, "allowLengthChanges"    # Z

    .line 77
    iput-boolean p1, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    .line 78
    return-void
.end method
