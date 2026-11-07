.class public final synthetic Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/ImsService$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsService$1;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/ImsService$1;

    iput p2, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/ImsService$1;

    iget v1, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/ImsService$1;->$r8$lambda$ljMNAWnSiba40AS7d6n5Ar1t5Ms(Landroid/telephony/ims/ImsService$1;II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method
