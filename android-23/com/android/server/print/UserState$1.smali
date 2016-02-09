.class Lcom/android/server/print/UserState$1;
.super Landroid/os/AsyncTask;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
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
.field final synthetic this$0:Lcom/android/server/print/UserState;

.field final synthetic val$printJob:Landroid/print/PrintJobInfo;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/UserState;
    .param p2, "val$printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/server/print/UserState$1;->this$0:Lcom/android/server/print/UserState;

    #@2
    iput-object p2, p0, Lcom/android/server/print/UserState$1;->val$printJob:Landroid/print/PrintJobInfo;

    #@4
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 191
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/print/UserState$1;->this$0:Lcom/android/server/print/UserState;

    #@2
    invoke-static {v0}, Lcom/android/server/print/UserState;->-get4(Lcom/android/server/print/UserState;)Lcom/android/server/print/RemotePrintSpooler;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/print/UserState$1;->val$printJob:Landroid/print/PrintJobInfo;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/print/RemotePrintSpooler;->createPrintJob(Landroid/print/PrintJobInfo;)V

    #@b
    .line 193
    const/4 v0, 0x0

    #@c
    return-object v0
.end method
