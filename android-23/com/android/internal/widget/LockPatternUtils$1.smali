.class Lcom/android/internal/widget/LockPatternUtils$1;
.super Landroid/os/AsyncTask;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
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
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$service:Landroid/os/IBinder;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "val$service"    # Landroid/os/IBinder;
    .param p3, "val$type"    # I
    .param p4, "val$password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$service:Landroid/os/IBinder;

    #@4
    iput p3, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$type:I

    #@6
    iput-object p4, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$password:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "dummy"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 675
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "dummy":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "dummy"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 676
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$service:Landroid/os/IBinder;

    #@2
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@5
    move-result-object v1

    #@6
    .line 678
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    iget v2, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$type:I

    #@8
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$password:Ljava/lang/String;

    #@a
    invoke-interface {v1, v2, v3}, Landroid/os/storage/IMountService;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 682
    :goto_0
    const/4 v2, 0x0

    #@e
    return-object v2

    #@f
    .line 679
    :catch_0
    move-exception v0

    #@10
    .line 680
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LockPatternUtils"

    #@13
    const-string/jumbo v3, "Error changing encryption password"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method
