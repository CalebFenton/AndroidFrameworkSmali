.class final Lcom/android/server/am/ActivityManagerService$1;
.super Ljava/lang/ThreadLocal;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/android/server/am/ActivityManagerService$PriorityState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 658
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/android/server/am/ActivityManagerService$PriorityState;
    .locals 2

    #@0
    .prologue
    .line 660
    new-instance v0, Lcom/android/server/am/ActivityManagerService$PriorityState;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService$PriorityState;-><init>(Lcom/android/server/am/ActivityManagerService$PriorityState;)V

    #@6
    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$1;->initialValue()Lcom/android/server/am/ActivityManagerService$PriorityState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
