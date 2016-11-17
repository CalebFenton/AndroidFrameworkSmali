.class Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;
.super Ljava/lang/Object;
.source "ImsVideoCallProviderWrapper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;


# direct methods
.method constructor <init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@0
    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-get1(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/internal/IImsVideoCallProvider;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x0

    #@b
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@e
    .line 57
    return-void
.end method
