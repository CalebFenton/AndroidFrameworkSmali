.class public final Lcom/android/internal/widget/ConversationHeaderData;
.super Ljava/lang/Object;
.source "ConversationHeaderData.java"


# instance fields
.field private final blacklist mConversationAvatarData:Lcom/android/internal/widget/ConversationAvatarData;

.field private final blacklist mConversationText:Ljava/lang/CharSequence;


# direct methods
.method constructor blacklist <init>(Ljava/lang/CharSequence;Lcom/android/internal/widget/ConversationAvatarData;)V
    .registers 3
    .param p1, "conversationText"    # Ljava/lang/CharSequence;
    .param p2, "conversationAvatarData"    # Lcom/android/internal/widget/ConversationAvatarData;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/widget/ConversationHeaderData;->mConversationText:Ljava/lang/CharSequence;

    .line 32
    iput-object p2, p0, Lcom/android/internal/widget/ConversationHeaderData;->mConversationAvatarData:Lcom/android/internal/widget/ConversationAvatarData;

    .line 33
    return-void
.end method


# virtual methods
.method public blacklist getConversationAvatar()Lcom/android/internal/widget/ConversationAvatarData;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/internal/widget/ConversationHeaderData;->mConversationAvatarData:Lcom/android/internal/widget/ConversationAvatarData;

    return-object v0
.end method

.method blacklist getConversationText()Ljava/lang/CharSequence;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/android/internal/widget/ConversationHeaderData;->mConversationText:Ljava/lang/CharSequence;

    return-object v0
.end method
