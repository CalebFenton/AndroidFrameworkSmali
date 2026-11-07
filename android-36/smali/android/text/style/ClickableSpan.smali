.class public abstract Landroid/text/style/ClickableSpan;
.super Landroid/text/style/CharacterStyle;
.source "ClickableSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# static fields
.field private static greylist-max-o sIdCounter:I


# instance fields
.field private greylist-max-o mId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x0

    sput v0, Landroid/text/style/ClickableSpan;->sIdCounter:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 43
    sget v0, Landroid/text/style/ClickableSpan;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/text/style/ClickableSpan;->sIdCounter:I

    iput v0, p0, Landroid/text/style/ClickableSpan;->mId:I

    return-void
.end method


# virtual methods
.method public greylist-max-o getId()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/text/style/ClickableSpan;->mId:I

    return v0
.end method

.method public abstract whitelist onClick(Landroid/view/View;)V
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 71
    const-string v0, "ClickableSpan{}"

    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 55
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 57
    return-void
.end method
