.class public Landroid/app/ApplicationErrorReport;
.super Ljava/lang/Object;
.source "ApplicationErrorReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationErrorReport$CrashInfo;,
        Landroid/app/ApplicationErrorReport$AnrInfo;,
        Landroid/app/ApplicationErrorReport$BatteryInfo;,
        Landroid/app/ApplicationErrorReport$RunningServiceInfo;,
        Landroid/app/ApplicationErrorReport$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ApplicationErrorReport;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_ERROR_RECEIVER_PROPERTY:Ljava/lang/String; = "ro.error.receiver.default"

.field static final SYSTEM_APPS_ERROR_RECEIVER_PROPERTY:Ljava/lang/String; = "ro.error.receiver.system.apps"

.field public static final TYPE_ANR:I = 0x2

.field public static final TYPE_BATTERY:I = 0x3

.field public static final TYPE_CRASH:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_RUNNING_SERVICE:I = 0x5


# instance fields
.field public anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

.field public batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

.field public crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public installerPackageName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

.field public systemApp:Z

.field public time:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 591
    new-instance v0, Landroid/app/ApplicationErrorReport$1;

    #@2
    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$1;-><init>()V

    #@5
    .line 590
    sput-object v0, Landroid/app/ApplicationErrorReport;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 156
    invoke-virtual {p0, p1}, Landroid/app/ApplicationErrorReport;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 155
    return-void
.end method

.method public static getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appFlags"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v5

    #@6
    .line 163
    const-string/jumbo v6, "send_action_app_error"

    #@9
    .line 162
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@c
    move-result v2

    #@d
    .line 164
    .local v2, "enabled":I
    if-nez v2, :cond_0

    #@f
    .line 165
    return-object v7

    #@10
    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@13
    move-result-object v3

    #@14
    .line 171
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    #@15
    .line 172
    .local v0, "candidate":Ljava/lang/String;
    const/4 v4, 0x0

    #@16
    .line 175
    .local v4, "result":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v0

    #@1a
    .line 180
    .end local v0    # "candidate":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    #@1c
    .line 181
    invoke-static {v3, p1, v0}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    #@1f
    move-result-object v4

    #@20
    .line 182
    .local v4, "result":Landroid/content/ComponentName;
    if-eqz v4, :cond_1

    #@22
    .line 183
    return-object v4

    #@23
    .line 176
    .restart local v0    # "candidate":Ljava/lang/String;
    .local v4, "result":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    #@24
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@25
    .line 189
    .end local v0    # "candidate":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "result":Landroid/content/ComponentName;
    :cond_1
    and-int/lit8 v5, p2, 0x1

    #@27
    if-eqz v5, :cond_2

    #@29
    .line 190
    const-string/jumbo v5, "ro.error.receiver.system.apps"

    #@2c
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 191
    .local v0, "candidate":Ljava/lang/String;
    invoke-static {v3, p1, v0}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    #@33
    move-result-object v4

    #@34
    .line 192
    .local v4, "result":Landroid/content/ComponentName;
    if-eqz v4, :cond_2

    #@36
    .line 193
    return-object v4

    #@37
    .line 198
    .end local v0    # "candidate":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v5, "ro.error.receiver.default"

    #@3a
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 199
    .restart local v0    # "candidate":Ljava/lang/String;
    invoke-static {v3, p1, v0}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    #@41
    move-result-object v5

    #@42
    return-object v5
.end method

.method static getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "errorPackage"    # Ljava/lang/String;
    .param p2, "receiverPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 213
    if-eqz p2, :cond_0

    #@4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    .line 214
    :cond_0
    return-object v3

    #@b
    .line 218
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 219
    return-object v3

    #@12
    .line 222
    :cond_2
    new-instance v1, Landroid/content/Intent;

    #@14
    const-string/jumbo v2, "android.intent.action.APP_ERROR"

    #@17
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    .line 223
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@1d
    .line 224
    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@20
    move-result-object v0

    #@21
    .line 225
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_3

    #@23
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@25
    if-nez v2, :cond_4

    #@27
    .line 226
    :cond_3
    return-object v3

    #@28
    .line 228
    :cond_4
    new-instance v2, Landroid/content/ComponentName;

    #@2a
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2c
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@2e
    invoke-direct {v2, p2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 602
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "type: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget v1, p0, Landroid/app/ApplicationErrorReport;->type:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1d
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string/jumbo v1, "packageName: "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3a
    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    const-string/jumbo v1, "installerPackageName: "

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@57
    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    const-string/jumbo v1, "processName: "

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@74
    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    const-string/jumbo v1, "time: "

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    iget-wide v2, p0, Landroid/app/ApplicationErrorReport;->time:J

    #@86
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@91
    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    const-string/jumbo v1, "systemApp: "

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    iget-boolean v1, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    #@a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v0

    #@ab
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@ae
    .line 616
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    #@b0
    packed-switch v0, :pswitch_data_0

    #@b3
    .line 608
    :goto_0
    :pswitch_0
    return-void

    #@b4
    .line 618
    :pswitch_1
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@b6
    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@b9
    goto :goto_0

    #@ba
    .line 621
    :pswitch_2
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    #@bc
    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$AnrInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@bf
    goto :goto_0

    #@c0
    .line 624
    :pswitch_3
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    #@c2
    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$BatteryInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@c5
    goto :goto_0

    #@c6
    .line 627
    :pswitch_4
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    #@c8
    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@cb
    goto :goto_0

    #@cc
    .line 616
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v1

    #@6
    iput v1, p0, Landroid/app/ApplicationErrorReport;->type:I

    #@8
    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    #@e
    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    #@14
    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    #@1a
    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1d
    move-result-wide v4

    #@1e
    iput-wide v4, p0, Landroid/app/ApplicationErrorReport;->time:J

    #@20
    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v1

    #@24
    if-ne v1, v2, :cond_0

    #@26
    move v1, v2

    #@27
    :goto_0
    iput-boolean v1, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    #@29
    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v1

    #@2d
    if-ne v1, v2, :cond_1

    #@2f
    const/4 v0, 0x1

    #@30
    .line 267
    .local v0, "hasCrashInfo":Z
    :goto_1
    iget v1, p0, Landroid/app/ApplicationErrorReport;->type:I

    #@32
    packed-switch v1, :pswitch_data_0

    #@35
    .line 258
    :goto_2
    :pswitch_0
    return-void

    #@36
    .line 264
    .end local v0    # "hasCrashInfo":Z
    :cond_0
    const/4 v1, 0x0

    #@37
    goto :goto_0

    #@38
    .line 265
    :cond_1
    const/4 v0, 0x0

    #@39
    .restart local v0    # "hasCrashInfo":Z
    goto :goto_1

    #@3a
    .line 269
    :pswitch_1
    if-eqz v0, :cond_2

    #@3c
    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@3e
    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    #@41
    :goto_3
    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@43
    .line 270
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    #@45
    .line 271
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    #@47
    .line 272
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    #@49
    goto :goto_2

    #@4a
    :cond_2
    move-object v1, v3

    #@4b
    .line 269
    goto :goto_3

    #@4c
    .line 275
    :pswitch_2
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    #@4e
    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>(Landroid/os/Parcel;)V

    #@51
    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    #@53
    .line 276
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@55
    .line 277
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    #@57
    .line 278
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    #@59
    goto :goto_2

    #@5a
    .line 281
    :pswitch_3
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    #@5c
    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>(Landroid/os/Parcel;)V

    #@5f
    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    #@61
    .line 282
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    #@63
    .line 283
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@65
    .line 284
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    #@67
    goto :goto_2

    #@68
    .line 287
    :pswitch_4
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    #@6a
    .line 288
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    #@6c
    .line 289
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@6e
    .line 290
    new-instance v1, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    #@70
    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>(Landroid/os/Parcel;)V

    #@73
    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    #@75
    goto :goto_2

    #@76
    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 232
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 233
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 234
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 235
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 236
    iget-wide v4, p0, Landroid/app/ApplicationErrorReport;->time:J

    #@18
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@1b
    .line 237
    iget-boolean v0, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    #@1d
    if-eqz v0, :cond_1

    #@1f
    move v0, v1

    #@20
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 238
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@25
    if-eqz v0, :cond_2

    #@27
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 240
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    #@2c
    packed-switch v0, :pswitch_data_0

    #@2f
    .line 231
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    #@30
    :cond_1
    move v0, v2

    #@31
    .line 237
    goto :goto_0

    #@32
    :cond_2
    move v1, v2

    #@33
    .line 238
    goto :goto_1

    #@34
    .line 242
    :pswitch_1
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 243
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@3a
    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@3d
    goto :goto_2

    #@3e
    .line 247
    :pswitch_2
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    #@40
    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$AnrInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@43
    goto :goto_2

    #@44
    .line 250
    :pswitch_3
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    #@46
    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$BatteryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@49
    goto :goto_2

    #@4a
    .line 253
    :pswitch_4
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    #@4c
    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@4f
    goto :goto_2

    #@50
    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
