.class public final Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;
.super Landroid/view/textclassifier/TextClassifierEvent$Builder;
.source "TextClassifierEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/textclassifier/TextClassifierEvent$Builder<",
        "Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "eventType"    # I

    .line 988
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;-><init>(IILandroid/view/textclassifier/TextClassifierEvent-IA;)V

    .line 989
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;
    .registers 3

    .line 1001
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V

    return-object v0
.end method

.method bridge synthetic blacklist self()Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .registers 2

    .line 980
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist self()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;
    .registers 1

    .line 993
    return-object p0
.end method
