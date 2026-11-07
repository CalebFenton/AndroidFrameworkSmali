.class public Lcom/android/internal/telephony/CarrierSmsUtils;
.super Ljava/lang/Object;
.source "CarrierSmsUtils.java"


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "CarrierSmsUtils"

.field protected static final blacklist VDBG:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getImsRcsPackage(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .registers 5

    .line 77
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsResolver;->getInstance()Lcom/android/internal/telephony/ims/ImsResolver;

    move-result-object v0

    if-nez v0, :cond_f

    .line 79
    sget-object p0, Lcom/android/internal/telephony/CarrierSmsUtils;->TAG:Ljava/lang/String;

    const-string v0, "getImsRcsPackage: Device does not support IMS - skipping"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 85
    :try_start_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->getConfiguredImsServicePackageName(II)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_20

    .line 88
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_20
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    throw p0
.end method

.method public static blacklist getImsRcsPackageForIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;
    .registers 7

    .line 50
    invoke-static {p1}, Lcom/android/internal/telephony/CarrierSmsUtils;->getImsRcsPackage(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 56
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 58
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 59
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_3c

    .line 60
    sget-object v1, Lcom/android/internal/telephony/CarrierSmsUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get service information from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 64
    :cond_3c
    iget-object p2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    return-object p1

    :cond_45
    return-object v0
.end method
