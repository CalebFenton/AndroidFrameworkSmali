.class Landroid/adservices/cobalt/AdServicesCobaltUploadService$1;
.super Landroid/adservices/cobalt/IAdServicesCobaltUploadService$Stub;
.source "AdServicesCobaltUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/cobalt/AdServicesCobaltUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/cobalt/AdServicesCobaltUploadService;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/cobalt/AdServicesCobaltUploadService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/adservices/cobalt/AdServicesCobaltUploadService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Landroid/adservices/cobalt/AdServicesCobaltUploadService$1;->this$0:Landroid/adservices/cobalt/AdServicesCobaltUploadService;

    invoke-direct {p0}, Landroid/adservices/cobalt/IAdServicesCobaltUploadService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist uploadEncryptedCobaltEnvelope(Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;)V
    .registers 3
    .param p1, "params"    # Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;

    .line 59
    iget-object v0, p0, Landroid/adservices/cobalt/AdServicesCobaltUploadService$1;->this$0:Landroid/adservices/cobalt/AdServicesCobaltUploadService;

    invoke-virtual {v0, p1}, Landroid/adservices/cobalt/AdServicesCobaltUploadService;->onUploadEncryptedCobaltEnvelope(Landroid/adservices/cobalt/EncryptedCobaltEnvelopeParams;)V

    .line 60
    return-void
.end method
