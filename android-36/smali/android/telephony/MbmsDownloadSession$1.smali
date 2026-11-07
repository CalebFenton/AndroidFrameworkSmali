.class Landroid/telephony/MbmsDownloadSession$1;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MbmsDownloadSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/MbmsDownloadSession;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/MbmsDownloadSession;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/MbmsDownloadSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 240
    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession$1;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 243
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$1;->this$0:Landroid/telephony/MbmsDownloadSession;

    const/4 v1, 0x3

    const-string v2, "Received death notification"

    invoke-static {v0, v1, v2}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 244
    return-void
.end method
