.class public final Landroid/nfc/cardemulation/CardEmulation;
.super Ljava/lang/Object;
.source "CardEmulation.java"


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.nfc.cardemulation.action.ACTION_CHANGE_DEFAULT"

.field public static final CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final CATEGORY_PAYMENT:Ljava/lang/String; = "payment"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final EXTRA_SERVICE_COMPONENT:Ljava/lang/String; = "component"

.field public static final SELECTION_MODE_ALWAYS_ASK:I = 0x1

.field public static final SELECTION_MODE_ASK_IF_CONFLICT:I = 0x2

.field public static final SELECTION_MODE_PREFER_DEFAULT:I = 0x0

.field static final TAG:Ljava/lang/String; = "CardEmulation"

.field static sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/CardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static sIsInitialized:Z

.field static sService:Landroid/nfc/INfcCardEmulation;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    #@3
    .line 129
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    #@a
    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nfc/INfcCardEmulation;

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    #@9
    .line 136
    sput-object p2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@b
    .line 134
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;
    .locals 8
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    #@0
    .prologue
    const-class v6, Landroid/nfc/cardemulation/CardEmulation;

    #@2
    monitor-enter v6

    #@3
    .line 146
    if-nez p0, :cond_0

    #@5
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v7, "NfcAdapter is null"

    #@a
    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v5

    #@f
    monitor-exit v6

    #@10
    throw v5

    #@11
    .line 147
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    .line 148
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    #@17
    .line 149
    const-string/jumbo v5, "CardEmulation"

    #@1a
    const-string/jumbo v7, "NfcAdapter context is null."

    #@1d
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 150
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@22
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@25
    throw v5

    #@26
    .line 152
    :cond_1
    sget-boolean v5, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    #@28
    if-nez v5, :cond_4

    #@2a
    .line 153
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2d
    move-result-object v3

    #@2e
    .line 154
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    if-nez v3, :cond_2

    #@30
    .line 155
    const-string/jumbo v5, "CardEmulation"

    #@33
    const-string/jumbo v7, "Cannot get PackageManager"

    #@36
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 156
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@3b
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@3e
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 159
    :cond_2
    :try_start_2
    const-string/jumbo v5, "android.hardware.nfc.hce"

    #@42
    invoke-interface {v3, v5}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@45
    move-result v5

    #@46
    if-nez v5, :cond_3

    #@48
    .line 160
    const-string/jumbo v5, "CardEmulation"

    #@4b
    const-string/jumbo v7, "This device does not support card emulation"

    #@4e
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 161
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@53
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@56
    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@57
    .line 163
    :catch_0
    move-exception v1

    #@58
    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "CardEmulation"

    #@5b
    const-string/jumbo v7, "PackageManager query failed."

    #@5e
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 165
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@63
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@66
    throw v5

    #@67
    .line 167
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v5, 0x1

    #@68
    sput-boolean v5, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    #@6a
    .line 169
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :cond_4
    sget-object v5, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    #@6c
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    move-result-object v2

    #@70
    check-cast v2, Landroid/nfc/cardemulation/CardEmulation;

    #@72
    .line 170
    .local v2, "manager":Landroid/nfc/cardemulation/CardEmulation;
    if-nez v2, :cond_6

    #@74
    .line 172
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    #@77
    move-result-object v4

    #@78
    .line 173
    .local v4, "service":Landroid/nfc/INfcCardEmulation;
    if-nez v4, :cond_5

    #@7a
    .line 174
    const-string/jumbo v5, "CardEmulation"

    #@7d
    const-string/jumbo v7, "This device does not implement the INfcCardEmulation interface."

    #@80
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 175
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@85
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@88
    throw v5

    #@89
    .line 177
    :cond_5
    new-instance v2, Landroid/nfc/cardemulation/CardEmulation;

    #@8b
    .end local v2    # "manager":Landroid/nfc/cardemulation/CardEmulation;
    invoke-direct {v2, v0, v4}, Landroid/nfc/cardemulation/CardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V

    #@8e
    .line 178
    .restart local v2    # "manager":Landroid/nfc/cardemulation/CardEmulation;
    sget-object v5, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    #@90
    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@93
    .end local v4    # "service":Landroid/nfc/INfcCardEmulation;
    :cond_6
    monitor-exit v6

    #@94
    .line 180
    return-object v2
.end method

.method public static isValidAid(Ljava/lang/String;)Z
    .locals 4
    .param p0, "aid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 614
    if-nez p0, :cond_0

    #@3
    .line 615
    return v3

    #@4
    .line 618
    :cond_0
    const-string/jumbo v0, "*"

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    rem-int/lit8 v0, v0, 0x2

    #@13
    if-nez v0, :cond_1

    #@15
    .line 619
    const-string/jumbo v0, "CardEmulation"

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "AID "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, " is not a valid AID."

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 620
    return v3

    #@37
    .line 624
    :cond_1
    const-string/jumbo v0, "*"

    #@3a
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@3d
    move-result v0

    #@3e
    if-nez v0, :cond_2

    #@40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@43
    move-result v0

    #@44
    rem-int/lit8 v0, v0, 0x2

    #@46
    if-eqz v0, :cond_2

    #@48
    .line 625
    const-string/jumbo v0, "CardEmulation"

    #@4b
    new-instance v1, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v2, "AID "

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v2, " is not a valid AID."

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 626
    return v3

    #@6a
    .line 630
    :cond_2
    const-string/jumbo v0, "[0-9A-Fa-f]{10,32}\\*?"

    #@6d
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@70
    move-result v0

    #@71
    if-nez v0, :cond_3

    #@73
    .line 631
    const-string/jumbo v0, "CardEmulation"

    #@76
    new-instance v1, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v2, "AID "

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    const-string/jumbo v2, " is not a valid AID."

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 632
    return v3

    #@95
    .line 635
    :cond_3
    const/4 v0, 0x1

    #@96
    return v0
.end method


# virtual methods
.method public categoryAllowsForegroundPreference(Ljava/lang/String;)Z
    .locals 4
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 265
    const-string/jumbo v2, "payment"

    #@3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 266
    const/4 v1, 0x0

    #@a
    .line 268
    .local v1, "preferForeground":Z
    :try_start_0
    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v2

    #@10
    .line 269
    const-string/jumbo v3, "nfc_payment_foreground"

    #@13
    .line 268
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    const/4 v1, 0x1

    #@1a
    .line 272
    :goto_0
    return v1

    #@1b
    .line 268
    :cond_0
    const/4 v1, 0x0

    #@1c
    goto :goto_0

    #@1d
    .line 275
    .end local v1    # "preferForeground":Z
    :cond_1
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 270
    .restart local v1    # "preferForeground":Z
    :catch_0
    move-exception v0

    #@20
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 363
    :try_start_0
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6
    move-result v5

    #@7
    invoke-interface {v4, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    #@a
    move-result-object v2

    #@b
    .line 365
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v2, :cond_0

    #@d
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v3

    #@11
    :cond_0
    return-object v3

    #@12
    .line 366
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :catch_0
    move-exception v0

    #@13
    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    #@16
    .line 368
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@18
    if-nez v4, :cond_1

    #@1a
    .line 369
    const-string/jumbo v4, "CardEmulation"

    #@1d
    const-string/jumbo v5, "Failed to recover CardEmulationService."

    #@20
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 370
    return-object v3

    #@24
    .line 373
    :cond_1
    :try_start_1
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@26
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@29
    move-result v5

    #@2a
    invoke-interface {v4, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    #@2d
    move-result-object v2

    #@2e
    .line 375
    .restart local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v2, :cond_2

    #@30
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@33
    move-result-object v3

    #@34
    :cond_2
    return-object v3

    #@35
    .line 376
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :catch_1
    move-exception v1

    #@36
    .line 377
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v4, "CardEmulation"

    #@39
    const-string/jumbo v5, "Failed to recover CardEmulationService."

    #@3c
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 378
    return-object v3
.end method

.method public getSelectionModeForCategory(Ljava/lang/String;)I
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 292
    const-string/jumbo v1, "payment"

    #@3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 293
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v1

    #@f
    .line 294
    const-string/jumbo v2, "nfc_payment_default_component"

    #@12
    .line 293
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 295
    .local v0, "defaultComponent":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@18
    .line 296
    const/4 v1, 0x0

    #@19
    return v1

    #@1a
    .line 298
    :cond_0
    const/4 v1, 0x1

    #@1b
    return v1

    #@1c
    .line 301
    .end local v0    # "defaultComponent":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    #@1d
    return v1
.end method

.method public getServices(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 585
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6
    move-result v3

    #@7
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 586
    :catch_0
    move-exception v0

    #@d
    .line 588
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    #@10
    .line 589
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 590
    const-string/jumbo v2, "CardEmulation"

    #@17
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@1a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 591
    return-object v4

    #@1e
    .line 594
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@20
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@23
    move-result v3

    #@24
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    move-result-object v2

    #@28
    return-object v2

    #@29
    .line 595
    :catch_1
    move-exception v1

    #@2a
    .line 596
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    #@2d
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@30
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 597
    return-object v4
.end method

.method public isDefaultServiceForAid(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "aid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 235
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6
    move-result v3

    #@7
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v2

    #@b
    return v2

    #@c
    .line 236
    :catch_0
    move-exception v0

    #@d
    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    #@10
    .line 239
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 240
    const-string/jumbo v2, "CardEmulation"

    #@17
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@1a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 241
    return v4

    #@1e
    .line 244
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@20
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@23
    move-result v3

    #@24
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 245
    :catch_1
    move-exception v1

    #@2a
    .line 246
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    #@2d
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@30
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 247
    return v4
.end method

.method public isDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 204
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6
    move-result v3

    #@7
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v2

    #@b
    return v2

    #@c
    .line 205
    :catch_0
    move-exception v0

    #@d
    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    #@10
    .line 208
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 209
    const-string/jumbo v2, "CardEmulation"

    #@17
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@1a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 210
    return v4

    #@1e
    .line 213
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@20
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@23
    move-result v3

    #@24
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 215
    :catch_1
    move-exception v1

    #@2a
    .line 216
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    #@2d
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@30
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 217
    return v4
.end method

.method recoverService()V
    .locals 2

    #@0
    .prologue
    .line 639
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    #@5
    move-result-object v0

    #@6
    .line 640
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    #@9
    move-result-object v1

    #@a
    sput-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@c
    .line 638
    return-void
.end method

.method public registerAidsForService(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 327
    new-instance v0, Landroid/nfc/cardemulation/AidGroup;

    #@3
    invoke-direct {v0, p3, p2}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    #@6
    .line 329
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@b
    move-result v4

    #@c
    invoke-interface {v3, v4, p1, v0}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v3

    #@10
    return v3

    #@11
    .line 330
    :catch_0
    move-exception v1

    #@12
    .line 332
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    #@15
    .line 333
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@17
    if-nez v3, :cond_0

    #@19
    .line 334
    const-string/jumbo v3, "CardEmulation"

    #@1c
    const-string/jumbo v4, "Failed to recover CardEmulationService."

    #@1f
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 335
    return v5

    #@23
    .line 338
    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@25
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@28
    move-result v4

    #@29
    invoke-interface {v3, v4, p1, v0}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@2c
    move-result v3

    #@2d
    return v3

    #@2e
    .line 340
    :catch_1
    move-exception v2

    #@2f
    .line 341
    .local v2, "ee":Landroid/os/RemoteException;
    const-string/jumbo v3, "CardEmulation"

    #@32
    const-string/jumbo v4, "Failed to reach CardEmulationService."

    #@35
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 342
    return v5
.end method

.method public removeAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 400
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6
    move-result v3

    #@7
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v2

    #@b
    return v2

    #@c
    .line 401
    :catch_0
    move-exception v0

    #@d
    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    #@10
    .line 404
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 405
    const-string/jumbo v2, "CardEmulation"

    #@17
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@1a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 406
    return v4

    #@1e
    .line 409
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@20
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@23
    move-result v3

    #@24
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 410
    :catch_1
    move-exception v1

    #@2a
    .line 411
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    #@2d
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@30
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 412
    return v4
.end method

.method public setDefaultForNextTap(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 563
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6
    move-result v3

    #@7
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v2

    #@b
    return v2

    #@c
    .line 564
    :catch_0
    move-exception v0

    #@d
    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    #@10
    .line 567
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 568
    const-string/jumbo v2, "CardEmulation"

    #@17
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@1a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 569
    return v4

    #@1e
    .line 572
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@20
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@23
    move-result v3

    #@24
    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 573
    :catch_1
    move-exception v1

    #@2a
    .line 574
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    #@2d
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@30
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 575
    return v4
.end method

.method public setDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 540
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6
    move-result v3

    #@7
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v2

    #@b
    return v2

    #@c
    .line 541
    :catch_0
    move-exception v0

    #@d
    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    #@10
    .line 544
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@12
    if-nez v2, :cond_0

    #@14
    .line 545
    const-string/jumbo v2, "CardEmulation"

    #@17
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@1a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 546
    return v4

    #@1e
    .line 549
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@20
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@23
    move-result v3

    #@24
    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 551
    :catch_1
    move-exception v1

    #@2a
    .line 552
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    #@2d
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@30
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 553
    return v4
.end method

.method public setPreferredService(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 448
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 449
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v3, "activity or service or category is null"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 451
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_2

    #@14
    .line 452
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v3, "Activity must be resumed."

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 455
    :cond_2
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@1f
    invoke-interface {v2, p2}, Landroid/nfc/INfcCardEmulation;->setPreferredService(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 456
    :catch_0
    move-exception v0

    #@25
    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    #@28
    .line 459
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@2a
    if-nez v2, :cond_3

    #@2c
    .line 460
    const-string/jumbo v2, "CardEmulation"

    #@2f
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@32
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 461
    return v4

    #@36
    .line 464
    :cond_3
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@38
    invoke-interface {v2, p2}, Landroid/nfc/INfcCardEmulation;->setPreferredService(Landroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@3b
    move-result v2

    #@3c
    return v2

    #@3d
    .line 465
    :catch_1
    move-exception v1

    #@3e
    .line 466
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    #@41
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@44
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 467
    return v4
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 519
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@3
    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->supportsAidPrefixRegistration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 520
    :catch_0
    move-exception v0

    #@9
    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    #@c
    .line 522
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@e
    if-nez v2, :cond_0

    #@10
    .line 523
    const-string/jumbo v2, "CardEmulation"

    #@13
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 524
    return v4

    #@1a
    .line 527
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@1c
    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->supportsAidPrefixRegistration()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@1f
    move-result v2

    #@20
    return v2

    #@21
    .line 528
    :catch_1
    move-exception v1

    #@22
    .line 529
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    #@25
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@28
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 530
    return v4
.end method

.method public unsetPreferredService(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 483
    if-nez p1, :cond_0

    #@3
    .line 484
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "activity is null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 486
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 487
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v3, "Activity must be resumed."

    #@17
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 490
    :cond_1
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@1d
    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->unsetPreferredService()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v2

    #@21
    return v2

    #@22
    .line 491
    :catch_0
    move-exception v0

    #@23
    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    #@26
    .line 494
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@28
    if-nez v2, :cond_2

    #@2a
    .line 495
    const-string/jumbo v2, "CardEmulation"

    #@2d
    const-string/jumbo v3, "Failed to recover CardEmulationService."

    #@30
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 496
    return v4

    #@34
    .line 499
    :cond_2
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    #@36
    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->unsetPreferredService()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@39
    move-result v2

    #@3a
    return v2

    #@3b
    .line 500
    :catch_1
    move-exception v1

    #@3c
    .line 501
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    #@3f
    const-string/jumbo v3, "Failed to reach CardEmulationService."

    #@42
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 502
    return v4
.end method
