.class Lcom/android/server/notification/ValidateNotificationPeople$2;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;

.field final synthetic val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

.field final synthetic val$s:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p2, "val$prr"    # Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    .param p3, "val$s"    # Ljava/util/concurrent/Semaphore;

    #@0
    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@2
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    #@4
    iput-object p3, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$s:Ljava/util/concurrent/Semaphore;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    #@2
    invoke-virtual {v0}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->work()V

    #@5
    .line 168
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$s:Ljava/util/concurrent/Semaphore;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    #@a
    .line 166
    return-void
.end method
