.class public final synthetic Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->$r8$lambda$pxAH1E7VMNvECbKeYO6NwPcgISM(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
