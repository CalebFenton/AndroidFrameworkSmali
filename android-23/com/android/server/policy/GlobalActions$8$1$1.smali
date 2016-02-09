.class Lcom/android/server/policy/GlobalActions$8$1$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$8$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/policy/GlobalActions$8$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/policy/GlobalActions$8$1;

    #@0
    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$8$1$1;->this$2:Lcom/android/server/policy/GlobalActions$8$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 394
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->requestBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 392
    :goto_0
    return-void

    #@8
    .line 396
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
