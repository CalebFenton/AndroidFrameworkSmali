.class public final Landroid/service/autofill/augmented/FillController;
.super Ljava/lang/Object;
.source "FillController.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-class v0, Landroid/service/autofill/augmented/FillController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/autofill/augmented/FillController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V
    .registers 2
    .param p1, "proxy"    # Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/service/autofill/augmented/FillController;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist autofill(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ">;>;)V"
        }
    .end annotation

    .line 54
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_29

    .line 57
    sget-object v0, Landroid/service/autofill/augmented/FillController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autofill() with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_29
    :try_start_29
    iget-object v0, p0, Landroid/service/autofill/augmented/FillController;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v0, p1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->autofill(Ljava/util/List;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f

    .line 64
    goto :goto_33

    .line 62
    :catch_2f
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_33
    iget-object v0, p0, Landroid/service/autofill/augmented/FillController;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->getFillWindow()Landroid/service/autofill/augmented/FillWindow;

    move-result-object v0

    .line 67
    .local v0, "fillWindow":Landroid/service/autofill/augmented/FillWindow;
    if-eqz v0, :cond_3e

    .line 68
    invoke-virtual {v0}, Landroid/service/autofill/augmented/FillWindow;->destroy()V

    .line 70
    :cond_3e
    return-void
.end method
