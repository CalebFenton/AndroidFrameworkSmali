.class Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;
.super Landroid/os/AsyncTask;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MasterClearReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WipeAdoptableDisksTask"
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
.field private final mChainedTask:Ljava/lang/Thread;

.field private final mContext:Landroid/content/Context;

.field private final mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/MasterClearReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "chainedTask"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->this$0:Lcom/android/server/MasterClearReceiver;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    .line 81
    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mContext:Landroid/content/Context;

    #@7
    .line 82
    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mChainedTask:Ljava/lang/Thread;

    #@9
    .line 83
    new-instance v0, Landroid/app/ProgressDialog;

    #@b
    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #@e
    iput-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    #@10
    .line 80
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 95
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 96
    const-string/jumbo v1, "MasterClear"

    #@3
    const-string/jumbo v2, "Wiping adoptable disks"

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 97
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mContext:Landroid/content/Context;

    #@b
    .line 98
    const-string/jumbo v2, "storage"

    #@e
    .line 97
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/os/storage/StorageManager;

    #@14
    .line 99
    .local v0, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    #@17
    .line 100
    const/4 v1, 0x0

    #@18
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 104
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->onPostExecute(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    #@2
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    #@5
    .line 106
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mChainedTask:Ljava/lang/Thread;

    #@7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@a
    .line 104
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@6
    .line 89
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    #@8
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@b
    move-result-object v0

    #@c
    const/16 v1, 0x7d3

    #@e
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    #@11
    .line 90
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    #@13
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mContext:Landroid/content/Context;

    #@15
    const v2, 0x1040447

    #@18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@1f
    .line 91
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    #@21
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    #@24
    .line 87
    return-void
.end method
