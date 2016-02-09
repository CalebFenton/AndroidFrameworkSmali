.class Lcom/android/server/LockSettingsService$4;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsService$CredentialUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;

    #@0
    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/server/LockSettingsService$4;->this$0:Lcom/android/server/LockSettingsService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 585
    return-object p1
.end method

.method public setCredential(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/server/LockSettingsService$4;->this$0:Lcom/android/server/LockSettingsService;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    #@5
    .line 574
    return-void
.end method

.method public toHash(Ljava/lang/String;I)[B
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/server/LockSettingsService$4;->this$0:Lcom/android/server/LockSettingsService;

    #@2
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->-get2(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
