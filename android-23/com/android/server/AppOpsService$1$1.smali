.class Lcom/android/server/AppOpsService$1$1;
.super Landroid/os/AsyncTask;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AppOpsService$1;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/AppOpsService$1;

    #@0
    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/AppOpsService$1$1;->this$1:Lcom/android/server/AppOpsService$1;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 96
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/AppOpsService$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/AppOpsService$1$1;->this$1:Lcom/android/server/AppOpsService$1;

    #@2
    iget-object v0, v0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    #@4
    invoke-virtual {v0}, Lcom/android/server/AppOpsService;->writeState()V

    #@7
    .line 98
    const/4 v0, 0x0

    #@8
    return-object v0
.end method
