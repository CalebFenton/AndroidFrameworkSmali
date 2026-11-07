.class Landroid/media/AudioManager$CallIRedirectionClientInfo;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallIRedirectionClientInfo"
.end annotation


# instance fields
.field public blacklist redirectMode:I

.field public blacklist trackOrRecord:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 9426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
