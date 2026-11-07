.class public final Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;
.super Ljava/lang/Object;
.source "ConversationAvatarData.java"

# interfaces
.implements Lcom/android/internal/widget/ConversationAvatarData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ConversationAvatarData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupConversationAvatarData"
.end annotation


# instance fields
.field final blacklist mLastIcon:Landroid/graphics/drawable/Drawable;

.field final blacklist mSecondLastIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "lastIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "secondLastIcon"    # Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;->mLastIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object p2, p0, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;->mSecondLastIcon:Landroid/graphics/drawable/Drawable;

    .line 40
    return-void
.end method
