.class public final Landroid/view/textclassifier/ConversationAction$Builder;
.super Ljava/lang/Object;
.source "ConversationAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ConversationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:Landroid/app/RemoteAction;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mScore:F

.field private blacklist mTextReply:Ljava/lang/CharSequence;

.field private blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "actionType"    # Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mType:Ljava/lang/String;

    .line 233
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/ConversationAction;
    .registers 8

    .line 272
    new-instance v0, Landroid/view/textclassifier/ConversationAction;

    iget-object v1, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mType:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mAction:Landroid/app/RemoteAction;

    iget-object v3, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mTextReply:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mScore:F

    .line 277
    iget-object v5, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v5, :cond_11

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_13

    :cond_11
    iget-object v5, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mExtras:Landroid/os/Bundle;

    :goto_13
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/ConversationAction;-><init>(Ljava/lang/String;Landroid/app/RemoteAction;Ljava/lang/CharSequence;FLandroid/os/Bundle;Landroid/view/textclassifier/ConversationAction-IA;)V

    .line 272
    return-object v0
.end method

.method public whitelist setAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/ConversationAction$Builder;
    .registers 2
    .param p1, "action"    # Landroid/app/RemoteAction;

    .line 240
    iput-object p1, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mAction:Landroid/app/RemoteAction;

    .line 241
    return-object p0
.end method

.method public whitelist setConfidenceScore(F)Landroid/view/textclassifier/ConversationAction$Builder;
    .registers 2
    .param p1, "score"    # F

    .line 256
    iput p1, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mScore:F

    .line 257
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/ConversationAction$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 265
    iput-object p1, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mExtras:Landroid/os/Bundle;

    .line 266
    return-object p0
.end method

.method public whitelist setTextReply(Ljava/lang/CharSequence;)Landroid/view/textclassifier/ConversationAction$Builder;
    .registers 2
    .param p1, "textReply"    # Ljava/lang/CharSequence;

    .line 249
    iput-object p1, p0, Landroid/view/textclassifier/ConversationAction$Builder;->mTextReply:Ljava/lang/CharSequence;

    .line 250
    return-object p0
.end method
