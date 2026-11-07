.class Landroid/telecom/PhoneAccountSuggestionService$1;
.super Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub;
.source "PhoneAccountSuggestionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/PhoneAccountSuggestionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/PhoneAccountSuggestionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/PhoneAccountSuggestionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telecom/PhoneAccountSuggestionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Landroid/telecom/PhoneAccountSuggestionService$1;->this$0:Landroid/telecom/PhoneAccountSuggestionService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAccountSuggestionRequest(Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;
    .param p2, "number"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Landroid/telecom/PhoneAccountSuggestionService$1;->this$0:Landroid/telecom/PhoneAccountSuggestionService;

    invoke-static {v0}, Landroid/telecom/PhoneAccountSuggestionService;->-$$Nest$fgetmCallbackMap(Landroid/telecom/PhoneAccountSuggestionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Landroid/telecom/PhoneAccountSuggestionService$1;->this$0:Landroid/telecom/PhoneAccountSuggestionService;

    invoke-virtual {v0, p2}, Landroid/telecom/PhoneAccountSuggestionService;->onAccountSuggestionRequest(Ljava/lang/String;)V

    .line 73
    return-void
.end method
