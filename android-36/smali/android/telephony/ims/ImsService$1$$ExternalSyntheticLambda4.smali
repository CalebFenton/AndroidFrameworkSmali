.class public final synthetic Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/ImsService$1;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsService$1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/ims/ImsService$1;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/ims/ImsService$1;

    invoke-static {v0}, Landroid/telephony/ims/ImsService$1;->$r8$lambda$lgkSzYbOW33rDc5JubbM1Tzsk74(Landroid/telephony/ims/ImsService$1;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
