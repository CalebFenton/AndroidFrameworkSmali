.class Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScheduleDestroyArgs"
.end annotation


# instance fields
.field final mOwner:Lcom/android/server/am/ProcessRecord;

.field final mReason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 262
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/am/ProcessRecord;

    #@5
    .line 263
    iput-object p2, p0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    #@7
    .line 261
    return-void
.end method
