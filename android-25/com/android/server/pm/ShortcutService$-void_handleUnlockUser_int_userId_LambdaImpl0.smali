.class final synthetic Lcom/android/server/pm/ShortcutService$-void_handleUnlockUser_int_userId_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_handleUnlockUser_int_userId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$start:J

.field private synthetic val$this:Lcom/android/server/pm/ShortcutService;

.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;JI)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$-void_handleUnlockUser_int_userId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    #@5
    iput-wide p2, p0, Lcom/android/server/pm/ShortcutService$-void_handleUnlockUser_int_userId_LambdaImpl0;->val$start:J

    #@7
    iput p4, p0, Lcom/android/server/pm/ShortcutService$-void_handleUnlockUser_int_userId_LambdaImpl0;->val$userId:I

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$-void_handleUnlockUser_int_userId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    #@2
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService$-void_handleUnlockUser_int_userId_LambdaImpl0;->val$start:J

    #@4
    iget v1, p0, Lcom/android/server/pm/ShortcutService$-void_handleUnlockUser_int_userId_LambdaImpl0;->val$userId:I

    #@6
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService_lambda$7(JI)V

    #@9
    return-void
.end method
