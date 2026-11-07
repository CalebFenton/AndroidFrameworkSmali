.class public final Landroid/view/textclassifier/TextLanguage$Request$Builder;
.super Ljava/lang/Object;
.source "TextLanguage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLanguage$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;

.field private final blacklist mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request$Builder;->mText:Ljava/lang/CharSequence;

    .line 320
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextLanguage$Request;
    .registers 5

    .line 338
    new-instance v0, Landroid/view/textclassifier/TextLanguage$Request;

    iget-object v1, p0, Landroid/view/textclassifier/TextLanguage$Request$Builder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextLanguage$Request$Builder;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_f

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_11

    :cond_f
    iget-object v2, p0, Landroid/view/textclassifier/TextLanguage$Request$Builder;->mBundle:Landroid/os/Bundle;

    :goto_11
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/textclassifier/TextLanguage$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/view/textclassifier/TextLanguage-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextLanguage$Request$Builder;
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 327
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request$Builder;->mBundle:Landroid/os/Bundle;

    .line 328
    return-object p0
.end method
