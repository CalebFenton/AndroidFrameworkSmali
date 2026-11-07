.class final Lcom/android/internal/widget/MessagingData;
.super Ljava/lang/Object;
.source "MessagingData.java"


# instance fields
.field private blacklist mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

.field private final blacklist mGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mHistoricMessagingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNewMessagingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mShowSpinner:Z

.field private final blacklist mSummarization:Ljava/lang/CharSequence;

.field private final blacklist mUnreadCount:I

.field private final blacklist mUser:Landroid/app/Person;


# direct methods
.method constructor blacklist <init>(Landroid/app/Person;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/internal/widget/ConversationHeaderData;Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "user"    # Landroid/app/Person;
    .param p2, "showSpinner"    # Z
    .param p3, "unreadCount"    # I
    .param p8, "conversationHeaderData"    # Lcom/android/internal/widget/ConversationHeaderData;
    .param p9, "summarization"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Person;",
            "ZI",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;",
            "Lcom/android/internal/widget/ConversationHeaderData;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 55
    .local p4, "historicMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p5, "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p6, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p7, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/widget/MessagingData;->mUser:Landroid/app/Person;

    .line 57
    iput-boolean p2, p0, Lcom/android/internal/widget/MessagingData;->mShowSpinner:Z

    .line 58
    iput p3, p0, Lcom/android/internal/widget/MessagingData;->mUnreadCount:I

    .line 59
    iput-object p4, p0, Lcom/android/internal/widget/MessagingData;->mHistoricMessagingMessages:Ljava/util/List;

    .line 60
    iput-object p5, p0, Lcom/android/internal/widget/MessagingData;->mNewMessagingMessages:Ljava/util/List;

    .line 61
    iput-object p6, p0, Lcom/android/internal/widget/MessagingData;->mGroups:Ljava/util/List;

    .line 62
    iput-object p7, p0, Lcom/android/internal/widget/MessagingData;->mSenders:Ljava/util/List;

    .line 63
    iput-object p8, p0, Lcom/android/internal/widget/MessagingData;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    .line 64
    iput-object p9, p0, Lcom/android/internal/widget/MessagingData;->mSummarization:Ljava/lang/CharSequence;

    .line 65
    return-void
.end method

.method constructor blacklist <init>(Landroid/app/Person;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    .registers 18
    .param p1, "user"    # Landroid/app/Person;
    .param p2, "showSpinner"    # Z
    .param p7, "summarization"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Person;",
            "Z",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 43
    .local p3, "historicMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p4, "newMessagingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p5, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p6, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/MessagingData;-><init>(Landroid/app/Person;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/internal/widget/ConversationHeaderData;Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method


# virtual methods
.method public blacklist getConversationHeaderData()Lcom/android/internal/widget/ConversationHeaderData;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    return-object v0
.end method

.method public blacklist getGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mGroups:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getHistoricMessagingMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mHistoricMessagingMessages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getNewMessagingMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mNewMessagingMessages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSenders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mSenders:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getShowSpinner()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingData;->mShowSpinner:Z

    return v0
.end method

.method public blacklist getSummarization()Ljava/lang/CharSequence;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mSummarization:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getUnreadCount()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/android/internal/widget/MessagingData;->mUnreadCount:I

    return v0
.end method

.method public blacklist getUser()Landroid/app/Person;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mUser:Landroid/app/Person;

    return-object v0
.end method
