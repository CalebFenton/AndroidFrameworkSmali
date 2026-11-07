.class Landroid/telephony/gba/GbaService$IGbaServiceWrapper;
.super Landroid/telephony/gba/IGbaService$Stub;
.source "GbaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gba/GbaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IGbaServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/gba/GbaService;


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/gba/GbaService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 219
    iput-object p1, p0, Landroid/telephony/gba/GbaService$IGbaServiceWrapper;->this$0:Landroid/telephony/gba/GbaService;

    invoke-direct {p0}, Landroid/telephony/gba/IGbaService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/gba/GbaService;Landroid/telephony/gba/GbaService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/gba/GbaService$IGbaServiceWrapper;-><init>(Landroid/telephony/gba/GbaService;)V

    return-void
.end method


# virtual methods
.method public blacklist authenticationRequest(Landroid/telephony/gba/GbaAuthRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/telephony/gba/GbaAuthRequest;

    .line 222
    invoke-static {}, Landroid/telephony/gba/GbaService;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GbaService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1f
    iget-object v0, p0, Landroid/telephony/gba/GbaService$IGbaServiceWrapper;->this$0:Landroid/telephony/gba/GbaService;

    invoke-static {v0}, Landroid/telephony/gba/GbaService;->-$$Nest$fgetmHandler(Landroid/telephony/gba/GbaService;)Landroid/telephony/gba/GbaService$GbaServiceHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/telephony/gba/GbaService$GbaServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    return-void
.end method
