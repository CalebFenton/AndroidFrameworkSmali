.class public Landroid/telephony/mbms/vendor/VendorUtils;
.super Ljava/lang/Object;
.source "VendorUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_CLEANUP:Ljava/lang/String; = "android.telephony.mbms.action.CLEANUP"

.field public static final whitelist ACTION_DOWNLOAD_RESULT_INTERNAL:Ljava/lang/String; = "android.telephony.mbms.action.DOWNLOAD_RESULT_INTERNAL"

.field public static final whitelist ACTION_FILE_DESCRIPTOR_REQUEST:Ljava/lang/String; = "android.telephony.mbms.action.FILE_DESCRIPTOR_REQUEST"

.field public static final whitelist EXTRA_FD_COUNT:Ljava/lang/String; = "android.telephony.mbms.extra.FD_COUNT"

.field public static final whitelist EXTRA_FINAL_URI:Ljava/lang/String; = "android.telephony.mbms.extra.FINAL_URI"

.field public static final whitelist EXTRA_FREE_URI_LIST:Ljava/lang/String; = "android.telephony.mbms.extra.FREE_URI_LIST"

.field public static final whitelist EXTRA_PAUSED_LIST:Ljava/lang/String; = "android.telephony.mbms.extra.PAUSED_LIST"

.field public static final whitelist EXTRA_PAUSED_URI_LIST:Ljava/lang/String; = "android.telephony.mbms.extra.PAUSED_URI_LIST"

.field public static final whitelist EXTRA_SERVICE_ID:Ljava/lang/String; = "android.telephony.mbms.extra.SERVICE_ID"

.field public static final whitelist EXTRA_TEMP_FILES_IN_USE:Ljava/lang/String; = "android.telephony.mbms.extra.TEMP_FILES_IN_USE"

.field public static final whitelist EXTRA_TEMP_FILE_ROOT:Ljava/lang/String; = "android.telephony.mbms.extra.TEMP_FILE_ROOT"

.field public static final whitelist EXTRA_TEMP_LIST:Ljava/lang/String; = "android.telephony.mbms.extra.TEMP_LIST"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getAppReceiverFromPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 146
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Landroid/telephony/mbms/MbmsDownloadReceiver;

    .line 147
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v0, "candidate":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 150
    nop

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 152
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_26

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_26

    .line 153
    return-object v0

    .line 155
    :cond_26
    const/4 v3, 0x0

    return-object v3
.end method
