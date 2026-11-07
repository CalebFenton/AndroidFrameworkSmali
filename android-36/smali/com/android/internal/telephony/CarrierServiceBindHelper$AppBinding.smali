.class Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBinding"
.end annotation


# instance fields
.field private blacklist bindCount:I

.field private blacklist carrierPackage:Ljava/lang/String;

.field private blacklist carrierServiceClass:Ljava/lang/String;

.field private blacklist connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

.field private blacklist lastBindStartMillis:J

.field private blacklist lastUnbindMillis:J

.field private final blacklist mCarrierServiceChangeCallback:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceChangeCallback;

.field private blacklist mUnbindScheduledUptimeMillis:J

.field private blacklist phoneId:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private blacklist unbindCount:I


# direct methods
.method public static synthetic blacklist $r8$lambda$5FD6HGIG7UdncEZEhwpqGRxXVtM(Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lambda$rebind$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mperformImmediateUnbind(Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->performImmediateUnbind()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 241
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    .line 245
    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    .line 246
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceChangeCallback;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceChangeCallback;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mCarrierServiceChangeCallback:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceChangeCallback;

    .line 247
    invoke-static {p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_2a

    .line 249
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object p1, p1, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p2, v1, v0}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    :cond_2a
    return-void
.end method

.method private blacklist cancelScheduledUnbind()V
    .registers 3

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    const-string v1, "cancelScheduledUnbind"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget-object v0, v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, -0x1

    .line 417
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    return-void
.end method

.method private synthetic blacklist lambda$rebind$0(Ljava/lang/Runnable;)V
    .registers 2

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist performImmediateUnbind()V
    .registers 4

    .line 398
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastUnbindMillis:J

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    .line 403
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    .line 406
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    if-eqz v1, :cond_2d

    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 408
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    const-string v2, "Unbinding from carrier app"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 409
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    const-wide/16 v0, -0x1

    .line 410
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    :cond_2d
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Carrier app binding for phone "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  connection: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  bindCount: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  lastBindStartMillis: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastBindStartMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  unbindCount: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  lastUnbindMillis: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastUnbindMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mUnbindScheduledUptimeMillis: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCarrierServiceChangeCallback: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mCarrierServiceChangeCallback:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceChangeCallback;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPhoneId()I
    .registers 1

    .line 262
    iget p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    return p0
.end method

.method blacklist rebind()V
    .registers 9

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    .line 279
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No carrier app for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    return-void

    .line 288
    :cond_2f
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found carrier app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_51

    .line 291
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    .line 295
    :cond_51
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.service.carrier.CarrierService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_83

    .line 303
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 304
    invoke-static {v4}, Lcom/android/internal/telephony/util/TelephonyUtils;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v4

    .line 305
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    goto :goto_85

    :cond_83
    const/4 v5, 0x0

    move-object v4, v5

    :goto_85
    if-eqz v5, :cond_144

    .line 310
    const-string v6, "android.service.carrier.LONG_LIVED_BINDING"

    .line 311
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_91

    goto/16 :goto_144

    .line 317
    :cond_91
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    const-string v5, "CarrierService class changed, unbind immediately."

    invoke-static {v1, v5}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    goto :goto_b3

    .line 321
    :cond_a4
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    if-eqz v1, :cond_b3

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    const-string v1, "CarrierService class unchanged with connection up, cancelScheduledUnbind"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->cancelScheduledUnbind()V

    return-void

    .line 330
    :cond_b3
    :goto_b3
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    .line 331
    iput-object v4, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for phone "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 336
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastBindStartMillis:J

    .line 339
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPhoneId()I

    move-result v5

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    .line 343
    :try_start_f1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;)V

    iget-object v5, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    const v6, 0x4001001

    invoke-virtual {v0, v2, v6, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    const-string v1, "service bound"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    return-void

    :catch_10f
    move-exception v0

    goto :goto_114

    .line 354
    :cond_111
    const-string v0, "bindService returned false"
    :try_end_113
    .catch Ljava/lang/SecurityException; {:try_start_f1 .. :try_end_113} :catch_10f

    goto :goto_118

    .line 356
    :goto_114
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_118
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    return-void

    .line 312
    :cond_144
    :goto_144
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    const-string v1, "Carrier app does not want a long lived binding"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    return-void
.end method

.method public blacklist tearDown()V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_17

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mCarrierServiceChangeCallback:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceChangeCallback;

    if-eqz p0, :cond_17

    .line 257
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    :cond_17
    return-void
.end method

.method blacklist unbind(Z)V
    .registers 6

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    if-nez v0, :cond_5

    goto :goto_3a

    :cond_5
    if-nez p1, :cond_3b

    .line 382
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->-$$Nest$fgetconnected(Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3b

    .line 386
    :cond_e
    iget-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_3a

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    .line 388
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    .line 389
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    const-string v0, "Scheduling unbind in 30000 millis"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget-object p1, p1, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->mUnbindScheduledUptimeMillis:J

    .line 390
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_3a
    :goto_3a
    return-void

    .line 383
    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    const-string v0, "unbind immediately or with disconnected connection"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->cancelScheduledUnbind()V

    .line 385
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->performImmediateUnbind()V

    return-void
.end method
