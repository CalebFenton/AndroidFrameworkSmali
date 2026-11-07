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
.field final synthetic blacklist this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->-$$Nest$fgetmVideoCallProvider(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;)Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_e
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_e} :catch_f

    .line 87
    goto :goto_10

    .line 85
    :catch_f
    move-exception v0

    .line 88
    :goto_10
    return-void
.end method
