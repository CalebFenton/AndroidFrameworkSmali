.class Lcom/android/server/am/FactoryErrorDialog$1;
.super Landroid/os/Handler;
.source "FactoryErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FactoryErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/FactoryErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/FactoryErrorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/FactoryErrorDialog;

    #@0
    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/am/FactoryErrorDialog$1;->this$0:Lcom/android/server/am/FactoryErrorDialog;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Rebooting from failed factory test"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
