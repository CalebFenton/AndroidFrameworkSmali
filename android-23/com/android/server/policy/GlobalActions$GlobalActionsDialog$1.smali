.class Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@0
    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;->this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;->this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    #@2
    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    #@5
    .line 1165
    return-void
.end method
