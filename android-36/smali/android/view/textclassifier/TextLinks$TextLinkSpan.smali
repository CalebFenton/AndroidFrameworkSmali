.class public Landroid/view/textclassifier/TextLinks$TextLinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextLinkSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLinks$TextLinkSpan$InvocationMethod;
    }
.end annotation


# static fields
.field public static final greylist-max-o INVOCATION_METHOD_KEYBOARD:I = 0x1

.field public static final greylist-max-o INVOCATION_METHOD_TOUCH:I = 0x0

.field public static final greylist-max-o INVOCATION_METHOD_UNSPECIFIED:I = -0x1


# instance fields
.field private final greylist-max-o mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;


# direct methods
.method public constructor whitelist <init>(Landroid/view/textclassifier/TextLinks$TextLink;)V
    .registers 2
    .param p1, "textLink"    # Landroid/view/textclassifier/TextLinks$TextLink;

    .line 614
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 615
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    .line 616
    return-void
.end method


# virtual methods
.method public final whitelist getTextLink()Landroid/view/textclassifier/TextLinks$TextLink;
    .registers 2

    .line 650
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    return-object v0
.end method

.method public final greylist-max-o getUrl()Ljava/lang/String;
    .registers 2

    .line 657
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-static {v0}, Landroid/view/textclassifier/TextLinks$TextLink;->-$$Nest$fgetmUrlSpan(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/text/style/URLSpan;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 658
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-static {v0}, Landroid/view/textclassifier/TextLinks$TextLink;->-$$Nest$fgetmUrlSpan(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/text/style/URLSpan;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 660
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "widget"    # Landroid/view/View;

    .line 620
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->onClick(Landroid/view/View;I)V

    .line 621
    return-void
.end method

.method public final greylist-max-o onClick(Landroid/view/View;I)V
    .registers 6
    .param p1, "widget"    # Landroid/view/View;
    .param p2, "invocationMethod"    # I

    .line 625
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_35

    .line 626
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 627
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 628
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 629
    packed-switch p2, :pswitch_data_36

    .line 636
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->handleClick(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z

    .line 637
    goto :goto_35

    .line 631
    :pswitch_1c
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->requestActionMode(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z

    .line 632
    goto :goto_35

    .line 640
    :cond_20
    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-static {v2}, Landroid/view/textclassifier/TextLinks$TextLink;->-$$Nest$fgetmUrlSpan(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/text/style/URLSpan;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 641
    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;->mTextLink:Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-static {v2}, Landroid/view/textclassifier/TextLinks$TextLink;->-$$Nest$fgetmUrlSpan(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/text/style/URLSpan;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    goto :goto_35

    .line 643
    :cond_32
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->handleClick(Landroid/view/textclassifier/TextLinks$TextLinkSpan;)Z

    .line 647
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v1    # "context":Landroid/content/Context;
    :cond_35
    :goto_35
    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method
