.class public final Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;
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
    name = "OneToOneConversationAvatarData"
.end annotation


# instance fields
.field public final blacklist mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    return-void
.end method
