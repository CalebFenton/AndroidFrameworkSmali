.class Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;
.super Lcom/android/server/notification/RankingReconsideration;
.source "NotificationIntrusivenessExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationIntrusivenessExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationIntrusivenessExtractor;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationIntrusivenessExtractor;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationIntrusivenessExtractor;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # J

    #@0
    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;->this$0:Lcom/android/server/notification/NotificationIntrusivenessExtractor;

    #@2
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    #@5
    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    #@4
    .line 62
    return-void
.end method

.method public work()V
    .locals 0

    #@0
    .prologue
    .line 57
    return-void
.end method
