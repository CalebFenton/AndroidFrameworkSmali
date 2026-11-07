.class public Lcom/android/internal/telephony/CellBroadcastServiceManager;
.super Ljava/lang/Object;
.source "CellBroadcastServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;
    }
.end annotation


# static fields
.field private static blacklist sServiceConnection:Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;


# instance fields
.field private blacklist mCellBroadcastServicePackage:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEnabled:Z

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mModuleCellBroadcastHandler:Landroid/os/Handler;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCellBroadcastServicePackage(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mCellBroadcastServicePackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnabled(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/LocalLog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsServiceConnection()Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sServiceConnection:Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsServiceConnection(Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;)V
    .registers 1

    .line 0
    sput-object p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sServiceConnection:Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mModuleCellBroadcastHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mEnabled:Z

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellBroadcastServiceManager created for phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellBroadcastServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist cbMessagesDisabledByOem()Z
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 79
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110144

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getCellBroadcastServicePackage()Ljava/lang/String;
    .registers 6

    .line 266
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.CellBroadcastService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x100000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "CellBroadcastServiceManager"

    if-eq v1, v2, :cond_39

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellBroadcastServicePackageName: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " CBS packages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 275
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_4e

    goto :goto_3d

    .line 276
    :cond_4e
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 277
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 278
    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v4, "getCellBroadcastServicePackageName: "

    if-nez v2, :cond_73

    .line 280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 283
    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not have READ_PRIVILEGED_PHONE_STATE permission"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 287
    :cond_8b
    const-string v1, "getCellBroadcastServicePackageName: found a CBS package but packageName is null/empty"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 291
    :cond_91
    const-string p0, "getCellBroadcastServicePackageName: package name not found"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist initCellBroadcastServiceModule()V
    .registers 9

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mEnabled:Z

    .line 167
    sget-object v1, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sServiceConnection:Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 168
    new-instance v1, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;-><init>(Lcom/android/internal/telephony/CellBroadcastServiceManager;Lcom/android/internal/telephony/CellBroadcastServiceManager-IA;)V

    sput-object v1, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sServiceConnection:Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    .line 170
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->getCellBroadcastServicePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mCellBroadcastServicePackage:Ljava/lang/String;

    const/16 v3, 0xf

    const/16 v4, 0xfa

    .line 171
    const-string v5, "CellBroadcastServiceManager"

    if-eqz v1, :cond_70

    .line 172
    new-instance v1, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;-><init>(Lcom/android/internal/telephony/CellBroadcastServiceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mModuleCellBroadcastHandler:Landroid/os/Handler;

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.telephony.CellBroadcastService"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    iget-object v6, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mCellBroadcastServicePackage:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    sget-object v6, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sServiceConnection:Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    iget-object v7, v6, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    if-nez v7, :cond_60

    .line 237
    iget-object v7, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1, v6, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceWasBound="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_65

    .line 242
    const-string v0, "Unable to bind to service"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 244
    invoke-static {v4, v3, v0}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(IILjava/lang/String;)V

    return-void

    .line 250
    :cond_60
    const-string v0, "skipping bindService because connection already exists"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_65
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mModuleCellBroadcastHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    .line 256
    :cond_70
    const-string v0, "Unable to bind service; no cell broadcast service found"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 258
    invoke-static {v4, v3, v0}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist disable()V
    .registers 3

    .line 150
    iget-boolean v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mEnabled:Z

    if-nez v0, :cond_5

    goto :goto_1c

    :cond_5
    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mEnabled:Z

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mModuleCellBroadcastHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 155
    sget-object v0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sServiceConnection:Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    iget-object v1, v0, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v1, :cond_1c

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 325
    const-string v0, "CellBroadcastServiceManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellBroadcastServicePackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mCellBroadcastServicePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    iget-boolean v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mEnabled:Z

    if-eqz v0, :cond_61

    .line 330
    :try_start_35
    sget-object v0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sServiceConnection:Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_43

    .line 331
    invoke-interface {v0, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_61

    :catch_41
    move-exception v0

    goto :goto_49

    .line 333
    :cond_43
    const-string v0, " sServiceConnection is null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_48} :catch_41

    goto :goto_61

    .line 336
    :goto_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mService.dump() threw RemoteException e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    :cond_61
    :goto_61
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist enable()V
    .registers 1

    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->initCellBroadcastServiceModule()V

    return-void
.end method

.method public blacklist sendCdmaMessageToHandler(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .registers 4

    .line 107
    invoke-direct {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->cbMessagesDisabledByOem()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 108
    const-string p0, "CellBroadcastServiceManager"

    const-string p1, "CDMA CB message ignored - CB messages disabled by OEM."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p1, 0x4

    const/16 v0, 0x116

    .line 109
    invoke-static {v0, p0, p1}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(III)V

    return-void

    .line 114
    :cond_15
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 115
    iput v1, v0, Landroid/os/Message;->what:I

    .line 116
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mModuleCellBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist sendCdmaScpMessageToHandler(Lcom/android/internal/telephony/cdma/SmsMessage;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->cbMessagesDisabledByOem()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 126
    const-string p0, "CellBroadcastServiceManager"

    const-string p1, "CDMA SCP CB message ignored - CB messages disabled by OEM."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    const/4 p1, 0x4

    const/16 p2, 0x116

    .line 127
    invoke-static {p2, p0, p1}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(III)V

    return-void

    .line 132
    :cond_15
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 133
    iput v1, v0, Landroid/os/Message;->what:I

    .line 134
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mModuleCellBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist sendGsmMessageToHandler(Landroid/os/Message;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->cbMessagesDisabledByOem()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 92
    const-string p0, "CellBroadcastServiceManager"

    const-string p1, "GSM CB message ignored - CB messages disabled by OEM."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    const/4 p1, 0x4

    const/16 v0, 0x116

    .line 93
    invoke-static {v0, p0, p1}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(III)V

    return-void

    :cond_15
    const/4 v0, 0x0

    .line 98
    iput v0, p1, Landroid/os/Message;->what:I

    .line 99
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager;->mModuleCellBroadcastHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
