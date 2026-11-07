.class final Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;
.super Landroid/service/assist/classification/IFieldClassificationService$Stub;
.source "FieldClassificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/assist/classification/FieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FieldClassificationServiceImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/assist/classification/FieldClassificationService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/assist/classification/FieldClassificationService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;->this$0:Landroid/service/assist/classification/FieldClassificationService;

    invoke-direct {p0}, Landroid/service/assist/classification/IFieldClassificationService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/assist/classification/FieldClassificationService;Landroid/service/assist/classification/FieldClassificationService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;-><init>(Landroid/service/assist/classification/FieldClassificationService;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnected(ZZ)V
    .registers 4
    .param p1, "debug"    # Z
    .param p2, "verbose"    # Z

    .line 74
    iget-object v0, p0, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;->this$0:Landroid/service/assist/classification/FieldClassificationService;

    invoke-static {v0, p1, p2}, Landroid/service/assist/classification/FieldClassificationService;->-$$Nest$mhandleOnConnected(Landroid/service/assist/classification/FieldClassificationService;ZZ)V

    .line 75
    return-void
.end method

.method public blacklist onDisconnected()V
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;->this$0:Landroid/service/assist/classification/FieldClassificationService;

    invoke-static {v0}, Landroid/service/assist/classification/FieldClassificationService;->-$$Nest$mhandleOnDisconnected(Landroid/service/assist/classification/FieldClassificationService;)V

    .line 80
    return-void
.end method

.method public blacklist onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V
    .registers 4
    .param p1, "request"    # Landroid/service/assist/classification/FieldClassificationRequest;
    .param p2, "callback"    # Landroid/service/assist/classification/IFieldClassificationCallback;

    .line 85
    iget-object v0, p0, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;->this$0:Landroid/service/assist/classification/FieldClassificationService;

    invoke-static {v0, p1, p2}, Landroid/service/assist/classification/FieldClassificationService;->-$$Nest$mhandleOnClassificationRequest(Landroid/service/assist/classification/FieldClassificationService;Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V

    .line 86
    return-void
.end method
