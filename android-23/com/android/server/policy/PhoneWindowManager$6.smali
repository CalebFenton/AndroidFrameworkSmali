.class Lcom/android/server/policy/PhoneWindowManager$6;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    #@0
    .prologue
    .line 1295
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

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
    .line 1298
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1299
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@8
    const/4 v1, 0x0

    #@9
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    #@b
    .line 1300
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@d
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap9(Lcom/android/server/policy/PhoneWindowManager;)V

    #@10
    .line 1297
    :cond_0
    return-void
.end method
