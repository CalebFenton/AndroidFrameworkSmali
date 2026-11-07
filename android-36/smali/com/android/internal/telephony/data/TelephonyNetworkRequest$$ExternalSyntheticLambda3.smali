.class public final synthetic Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/data/ApnSetting;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/data/ApnSetting;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/data/ApnSetting;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/data/ApnSetting;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result p0

    return p0
.end method
