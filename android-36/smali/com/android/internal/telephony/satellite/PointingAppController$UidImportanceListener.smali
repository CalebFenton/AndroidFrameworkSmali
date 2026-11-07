.class public Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;
.super Ljava/lang/Object;
.source "PointingAppController.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/PointingAppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UidImportanceListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/PointingAppController;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/satellite/PointingAppController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;->this$0:Lcom/android/internal/telephony/satellite/PointingAppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onUidImportance(II)V
    .registers 4

    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_5

    goto :goto_49

    .line 159
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;->this$0:Lcom/android/internal/telephony/satellite/PointingAppController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/satellite/PointingAppController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 160
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 161
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;->this$0:Lcom/android/internal/telephony/satellite/PointingAppController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$mgetPointingUiPackageName(Lcom/android/internal/telephony/satellite/PointingAppController;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_49

    .line 164
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 165
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;->this$0:Lcom/android/internal/telephony/satellite/PointingAppController;

    const-string p2, "Restarting pointingUI"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/PointingAppController;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;->this$0:Lcom/android/internal/telephony/satellite/PointingAppController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$fgetmLastNeedFullScreenPointingUI(Lcom/android/internal/telephony/satellite/PointingAppController;)Z

    move-result p2

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;->this$0:Lcom/android/internal/telephony/satellite/PointingAppController;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$fgetmLastIsDemoMode(Lcom/android/internal/telephony/satellite/PointingAppController;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$UidImportanceListener;->this$0:Lcom/android/internal/telephony/satellite/PointingAppController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$fgetmLastIsEmergency(Lcom/android/internal/telephony/satellite/PointingAppController;)Z

    move-result p0

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->startPointingUI(ZZZ)V

    :cond_49
    :goto_49
    return-void
.end method
