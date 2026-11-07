.class public final Landroid/security/ConfirmationPrompt$Builder;
.super Ljava/lang/Object;
.source "ConfirmationPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/ConfirmationPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mExtraData:[B

.field private greylist-max-o mPromptText:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Landroid/security/ConfirmationPrompt$Builder;->mContext:Landroid/content/Context;

    .line 169
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/security/ConfirmationPrompt;
    .registers 6

    .line 200
    iget-object v0, p0, Landroid/security/ConfirmationPrompt$Builder;->mPromptText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 203
    iget-object v0, p0, Landroid/security/ConfirmationPrompt$Builder;->mExtraData:[B

    if-eqz v0, :cond_19

    .line 206
    new-instance v0, Landroid/security/ConfirmationPrompt;

    iget-object v1, p0, Landroid/security/ConfirmationPrompt$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/security/ConfirmationPrompt$Builder;->mPromptText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/security/ConfirmationPrompt$Builder;->mExtraData:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/security/ConfirmationPrompt;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[BLandroid/security/ConfirmationPrompt-IA;)V

    return-object v0

    .line 204
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extraData must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "prompt text must be set and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setExtraData([B)Landroid/security/ConfirmationPrompt$Builder;
    .registers 2
    .param p1, "extraData"    # [B

    .line 189
    iput-object p1, p0, Landroid/security/ConfirmationPrompt$Builder;->mExtraData:[B

    .line 190
    return-object p0
.end method

.method public whitelist setPromptText(Ljava/lang/CharSequence;)Landroid/security/ConfirmationPrompt$Builder;
    .registers 2
    .param p1, "promptText"    # Ljava/lang/CharSequence;

    .line 178
    iput-object p1, p0, Landroid/security/ConfirmationPrompt$Builder;->mPromptText:Ljava/lang/CharSequence;

    .line 179
    return-object p0
.end method
