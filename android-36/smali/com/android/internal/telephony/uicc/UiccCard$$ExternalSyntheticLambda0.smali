.class public final synthetic Lcom/android/internal/telephony/uicc/UiccCard$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->$r8$lambda$5Z2xWklsK-3YubuBSBV_M-nHsms(I)[Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    return-object p0
.end method
