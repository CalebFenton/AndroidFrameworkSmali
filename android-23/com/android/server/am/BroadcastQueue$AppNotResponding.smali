.class final Lcom/android/server/am/BroadcastQueue$AppNotResponding;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppNotResponding"
.end annotation


# instance fields
.field private final mAnnotation:Ljava/lang/String;

.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "annotation"    # Ljava/lang/String;

    #@0
    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->this$0:Lcom/android/server/am/BroadcastQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 190
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mApp:Lcom/android/server/am/ProcessRecord;

    #@7
    .line 191
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mAnnotation:Ljava/lang/String;

    #@9
    .line 189
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 196
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->this$0:Lcom/android/server/am/BroadcastQueue;

    #@3
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mApp:Lcom/android/server/am/ProcessRecord;

    #@7
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue$AppNotResponding;->mAnnotation:Ljava/lang/String;

    #@9
    const/4 v4, 0x0

    #@a
    move-object v3, v2

    #@b
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    #@e
    .line 195
    return-void
.end method
