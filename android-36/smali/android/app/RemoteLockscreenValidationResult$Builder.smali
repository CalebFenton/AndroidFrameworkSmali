.class public final Landroid/app/RemoteLockscreenValidationResult$Builder;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteLockscreenValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mInstance:Landroid/app/RemoteLockscreenValidationResult;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/app/RemoteLockscreenValidationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/RemoteLockscreenValidationResult;-><init>(Landroid/app/RemoteLockscreenValidationResult-IA;)V

    iput-object v0, p0, Landroid/app/RemoteLockscreenValidationResult$Builder;->mInstance:Landroid/app/RemoteLockscreenValidationResult;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/RemoteLockscreenValidationResult;
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/app/RemoteLockscreenValidationResult$Builder;->mInstance:Landroid/app/RemoteLockscreenValidationResult;

    invoke-static {v0}, Landroid/app/RemoteLockscreenValidationResult;->-$$Nest$fgetmResultCode(Landroid/app/RemoteLockscreenValidationResult;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 119
    iget-object v0, p0, Landroid/app/RemoteLockscreenValidationResult$Builder;->mInstance:Landroid/app/RemoteLockscreenValidationResult;

    return-object v0

    .line 117
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result code must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setResultCode(I)Landroid/app/RemoteLockscreenValidationResult$Builder;
    .registers 3
    .param p1, "resultCode"    # I

    .line 97
    iget-object v0, p0, Landroid/app/RemoteLockscreenValidationResult$Builder;->mInstance:Landroid/app/RemoteLockscreenValidationResult;

    invoke-static {v0, p1}, Landroid/app/RemoteLockscreenValidationResult;->-$$Nest$fputmResultCode(Landroid/app/RemoteLockscreenValidationResult;I)V

    .line 98
    return-object p0
.end method

.method public whitelist setTimeoutMillis(J)Landroid/app/RemoteLockscreenValidationResult$Builder;
    .registers 4
    .param p1, "timeoutMillis"    # J

    .line 106
    iget-object v0, p0, Landroid/app/RemoteLockscreenValidationResult$Builder;->mInstance:Landroid/app/RemoteLockscreenValidationResult;

    invoke-static {v0, p1, p2}, Landroid/app/RemoteLockscreenValidationResult;->-$$Nest$fputmTimeoutMillis(Landroid/app/RemoteLockscreenValidationResult;J)V

    .line 107
    return-object p0
.end method
