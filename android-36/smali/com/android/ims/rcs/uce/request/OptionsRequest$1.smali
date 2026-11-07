.class Lcom/android/ims/rcs/uce/request/OptionsRequest$1;
.super Landroid/telephony/ims/aidl/IOptionsResponseCallback$Stub;
.source "OptionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/OptionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/request/OptionsRequest;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/request/OptionsRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/OptionsRequest;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IOptionsResponseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCommandError(I)V
    .registers 3
    .param p1, "code"    # I

    .line 49
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/OptionsRequest;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->-$$Nest$monCommandError(Lcom/android/ims/rcs/uce/request/OptionsRequest;I)V

    .line 50
    return-void
.end method

.method public blacklist onNetworkResponse(ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "sipCode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p3, "remoteCaps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/OptionsRequest;

    invoke-static {v0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->-$$Nest$monNetworkResponse(Lcom/android/ims/rcs/uce/request/OptionsRequest;ILjava/lang/String;Ljava/util/List;)V

    .line 55
    return-void
.end method
