.class public final synthetic Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsServiceControllerCompat$MmTelFeatureCompatFactory;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist create(Landroid/content/Context;ILcom/android/internal/telephony/ims/MmTelInterfaceAdapter;)Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
    .registers 4

    .line 0
    new-instance p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/ims/MmTelInterfaceAdapter;)V

    return-object p0
.end method
