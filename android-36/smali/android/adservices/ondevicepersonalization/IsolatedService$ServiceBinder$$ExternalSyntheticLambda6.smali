.class public final synthetic Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService$ServiceBinder;->lambda$performOnWebTrigger$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
