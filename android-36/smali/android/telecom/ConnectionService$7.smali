.class Landroid/telecom/ConnectionService$7;
.super Landroid/telecom/Conference;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;
    .param p2, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3801
    invoke-direct {p0, p2}, Landroid/telecom/Conference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method
