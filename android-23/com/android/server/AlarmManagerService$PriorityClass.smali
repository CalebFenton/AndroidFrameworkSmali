.class final Lcom/android/server/AlarmManagerService$PriorityClass;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PriorityClass"
.end annotation


# instance fields
.field priority:I

.field seq:I

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PriorityClass;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 299
    iget v0, p1, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    iput v0, p0, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    #@b
    .line 300
    const/4 v0, 0x2

    #@c
    iput v0, p0, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    #@e
    .line 298
    return-void
.end method
