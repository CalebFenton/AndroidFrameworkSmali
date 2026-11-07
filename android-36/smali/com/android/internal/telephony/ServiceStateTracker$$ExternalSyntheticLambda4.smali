.class public final synthetic Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->$r8$lambda$wcoCea4YecTjWLfBsINTsxVnHak(Landroid/telephony/NetworkRegistrationInfo;)Landroid/telephony/CellIdentity;

    move-result-object p0

    return-object p0
.end method
