.class public final synthetic Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ims/rcs/uce/UceController$RequestManagerFactory;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist createRequestManager(Landroid/content/Context;ILandroid/os/Looper;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/ims/rcs/uce/request/UceRequestManager;
    .registers 6

    .line 0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/ims/rcs/uce/UceController;->lambda$new$0(Landroid/content/Context;ILandroid/os/Looper;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/ims/rcs/uce/request/UceRequestManager;

    move-result-object p1

    return-object p1
.end method
