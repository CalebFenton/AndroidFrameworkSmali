.class Lcom/android/server/am/UserController$6;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->startUser(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;

    #@0
    .prologue
    .line 884
    iput-object p1, p0, Lcom/android/server/am/UserController$6;->this$0:Lcom/android/server/am/UserController;

    #@2
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 888
    return-void
.end method
