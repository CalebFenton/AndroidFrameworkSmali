.class public final synthetic Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/ImsStateCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    iput-object p2, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/ims/ImsStateCallback;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    iget-object v1, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/ims/ImsStateCallback;

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->$r8$lambda$gZcUzSo65jORl76544EFHfzWxks(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;)V

    return-void
.end method
