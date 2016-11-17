.class public Lcom/android/server/soundtrigger/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final INVALID_VALUE:I = -0x80000000

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "SoundTriggerHelper"


# instance fields
.field private mCallActive:Z

.field private final mContext:Landroid/content/Context;

.field private mIsPowerSaveMode:Z

.field private mKeyphraseUuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mModelDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;",
            ">;"
        }
    .end annotation
.end field

.field private mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field final mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

.field private mRecognitionRunning:Z

.field private mServiceDisabled:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/PowerManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    .locals 0
    .param p1, "callActive"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onCallStateChangedLocked(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    .locals 0
    .param p1, "isPowerSaveMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onPowerSaveModeChangedLocked(Z)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 81
    new-instance v2, Ljava/lang/Object;

    #@7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@c
    .line 97
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    #@e
    .line 98
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@10
    .line 101
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    #@12
    .line 104
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    #@14
    .line 109
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 110
    .local v0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    #@1c
    move-result v1

    #@1d
    .line 111
    .local v1, "status":I
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@1f
    .line 112
    const-string/jumbo v2, "phone"

    #@22
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@28
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@2a
    .line 113
    const-string/jumbo v2, "power"

    #@2d
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/os/PowerManager;

    #@33
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    #@35
    .line 114
    new-instance v2, Ljava/util/HashMap;

    #@37
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@3a
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@3c
    .line 115
    new-instance v2, Ljava/util/HashMap;

    #@3e
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@41
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    #@43
    .line 116
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;

    #@45
    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    #@48
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@4a
    .line 117
    if-nez v1, :cond_0

    #@4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@4f
    move-result v2

    #@50
    if-nez v2, :cond_1

    #@52
    .line 118
    :cond_0
    const-string/jumbo v2, "SoundTriggerHelper"

    #@55
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v4, "listModules status="

    #@5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    const-string/jumbo v4, ", # of modules="

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6f
    move-result v4

    #@70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 119
    iput-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@7d
    .line 120
    iput-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@7f
    .line 108
    :goto_0
    return-void

    #@80
    .line 123
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@83
    move-result-object v2

    #@84
    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@86
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@88
    goto :goto_0
.end method

.method private cleanUpExistingKeyphraseModel(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I
    .locals 4
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 214
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    #@4
    move-result v0

    #@5
    .line 215
    .local v0, "status":I
    if-eqz v0, :cond_0

    #@7
    .line 216
    const-string/jumbo v1, "SoundTriggerHelper"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Unable to stop or unload previous model: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 217
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 219
    :cond_0
    return v0
.end method

.method private computeRecognitionRunningLocked()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1042
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 1043
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    #@b
    .line 1044
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    #@d
    return v2

    #@e
    .line 1046
    :cond_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@10
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "modelData$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_3

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@24
    .line 1047
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 1048
    const/4 v2, 0x1

    #@2b
    iput-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    #@2d
    .line 1049
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    #@2f
    return v2

    #@30
    .line 1052
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    #@32
    .line 1053
    iget-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    #@34
    return v2
.end method

.method private createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 3
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "keyphraseId"    # I

    #@0
    .prologue
    .line 917
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 918
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 919
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    #@10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 920
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@1a
    move-result-object v0

    #@1b
    .line 921
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 922
    return-object v0
.end method

.method private dumpModelStateLocked()V
    .locals 6

    #@0
    .prologue
    .line 1033
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "modelId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/UUID;

    #@16
    .line 1034
    .local v1, "modelId":Ljava/util/UUID;
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@18
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@1e
    .line 1035
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    const-string/jumbo v3, "SoundTriggerHelper"

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "Model :"

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    goto :goto_0

    #@3d
    .line 1032
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v1    # "modelId":Ljava/util/UUID;
    :cond_0
    return-void
.end method

.method private getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I
    .locals 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/high16 v3, -0x80000000

    #@3
    .line 718
    if-nez p1, :cond_0

    #@5
    .line 719
    const-string/jumbo v1, "SoundTriggerHelper"

    #@8
    const-string/jumbo v2, "Null RecognitionEvent received."

    #@b
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 720
    return v3

    #@f
    .line 722
    :cond_0
    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@11
    .line 724
    .local v0, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    if-eqz v0, :cond_1

    #@13
    array-length v1, v0

    #@14
    if-nez v1, :cond_2

    #@16
    .line 725
    :cond_1
    const-string/jumbo v1, "SoundTriggerHelper"

    #@19
    const-string/jumbo v2, "Invalid keyphrase recognition event!"

    #@1c
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 726
    return v3

    #@20
    .line 729
    :cond_2
    aget-object v1, v0, v2

    #@22
    iget v1, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    #@24
    return v1
.end method

.method private getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 4
    .param p1, "keyphraseId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 907
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/UUID;

    #@d
    .line 908
    .local v0, "uuid":Ljava/util/UUID;
    if-nez v0, :cond_0

    #@f
    .line 909
    return-object v3

    #@10
    .line 911
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@18
    return-object v1
.end method

.method private getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 3
    .param p1, "modelHandle"    # I

    #@0
    .prologue
    .line 930
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "model$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@16
    .line 931
    .local v0, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    #@19
    move-result v2

    #@1a
    if-ne v2, p1, :cond_0

    #@1c
    .line 932
    return-object v0

    #@1d
    .line 935
    .end local v0    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_1
    const/4 v2, 0x0

    #@1e
    return-object v2
.end method

.method private getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .locals 4
    .param p1, "modelId"    # Ljava/util/UUID;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 886
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@9
    .line 887
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-nez v0, :cond_1

    #@b
    .line 888
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@e
    move-result-object v0

    #@f
    .line 889
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@11
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 894
    :cond_0
    return-object v0

    #@15
    .line 890
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_0

    #@1b
    .line 891
    const-string/jumbo v1, "SoundTriggerHelper"

    #@1e
    const-string/jumbo v2, "UUID already used for non-generic model."

    #@21
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 892
    return-object v3
.end method

.method private initializeTelephonyAndPowerStateListeners()V
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 860
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    #@c
    .line 863
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@e
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@10
    const/16 v2, 0x20

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@15
    .line 867
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    #@17
    if-nez v0, :cond_1

    #@19
    .line 868
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    #@1b
    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    #@1e
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    #@20
    .line 869
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@22
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    #@24
    .line 870
    new-instance v2, Landroid/content/IntentFilter;

    #@26
    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    #@29
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@2c
    .line 869
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@2f
    .line 872
    :cond_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    #@31
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    #@34
    move-result v0

    #@35
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@37
    .line 858
    return-void
.end method

.method private internalClearGlobalStateLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 807
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@9
    .line 810
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 811
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@f
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@14
    .line 812
    iput-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    #@16
    .line 805
    :cond_0
    return-void
.end method

.method private internalClearModelStateLocked()V
    .locals 3

    #@0
    .prologue
    .line 818
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "modelData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@16
    .line 819
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    #@19
    goto :goto_0

    #@1a
    .line 817
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_0
    return-void
.end method

.method private isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    #@0
    .prologue
    .line 591
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@2
    return v0
.end method

.method private isRecognitionAllowed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 942
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private onCallStateChangedLocked(Z)V
    .locals 1
    .param p1, "callActive"    # Z

    #@0
    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 669
    return-void

    #@5
    .line 671
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    #@7
    .line 672
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    #@b
    .line 665
    return-void
.end method

.method private onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 595
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v5, "sth_generic_recognition_event"

    #@6
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@9
    .line 596
    iget v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->status:I

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 597
    return-void

    #@e
    .line 599
    :cond_0
    iget v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    #@10
    invoke-direct {p0, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@13
    move-result-object v3

    #@14
    .line 600
    .local v3, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v3, :cond_1

    #@16
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 606
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@1f
    move-result-object v0

    #@20
    .line 607
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-nez v0, :cond_2

    #@22
    .line 608
    const-string/jumbo v4, "SoundTriggerHelper"

    #@25
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v6, "Generic recognition event: Null callback for model handle: "

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    .line 609
    iget v6, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    #@33
    .line 608
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 610
    return-void

    #@3f
    .line 601
    .end local v0    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_1
    const-string/jumbo v4, "SoundTriggerHelper"

    #@42
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v6, "Generic recognition event: Model does not exist for handle: "

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    .line 602
    iget v6, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    #@50
    .line 601
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 603
    return-void

    #@5c
    .line 614
    .restart local v0    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    .line 619
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    #@62
    .line 620
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@65
    move-result-object v1

    #@66
    .line 621
    .local v1, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    if-nez v1, :cond_3

    #@68
    .line 622
    const-string/jumbo v4, "SoundTriggerHelper"

    #@6b
    new-instance v5, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v6, "Generic recognition event: Null RecognitionConfig for model handle: "

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    .line 623
    iget v6, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    #@79
    .line 622
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 624
    return-void

    #@85
    .line 615
    .end local v1    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catch_0
    move-exception v2

    #@86
    .line 616
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SoundTriggerHelper"

    #@89
    const-string/jumbo v5, "RemoteException in onGenericSoundTriggerDetected"

    #@8c
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8f
    goto :goto_0

    #@90
    .line 627
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :cond_3
    iget-boolean v4, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    #@92
    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    #@95
    .line 629
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    #@98
    move-result v4

    #@99
    if-eqz v4, :cond_4

    #@9b
    .line 630
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    #@9e
    move-result v4

    #@9f
    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    #@a2
    .line 594
    :cond_4
    return-void
.end method

.method private onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 733
    const-string/jumbo v4, "SoundTriggerHelper"

    #@4
    const-string/jumbo v5, "Recognition success"

    #@7
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 734
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@c
    const-string/jumbo v5, "sth_keyphrase_recognition_event"

    #@f
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@12
    .line 735
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I

    #@15
    move-result v2

    #@16
    .line 736
    .local v2, "keyphraseId":I
    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@19
    move-result-object v3

    #@1a
    .line 738
    .local v3, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v3, :cond_0

    #@1c
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_0

    #@22
    .line 743
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@25
    move-result-object v4

    #@26
    if-nez v4, :cond_1

    #@28
    .line 744
    const-string/jumbo v4, "SoundTriggerHelper"

    #@2b
    const-string/jumbo v5, "Received onRecognition event without callback for keyphrase model."

    #@2e
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 745
    return-void

    #@32
    .line 739
    :cond_0
    const-string/jumbo v4, "SoundTriggerHelper"

    #@35
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v6, "Keyphase model data does not exist for ID:"

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 740
    return-void

    #@4d
    .line 749
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@50
    move-result-object v4

    #@51
    invoke-interface {v4, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 754
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    #@57
    .line 756
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@5a
    move-result-object v0

    #@5b
    .line 757
    .local v0, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    if-eqz v0, :cond_2

    #@5d
    .line 759
    iget-boolean v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    #@5f
    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    #@62
    .line 762
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_3

    #@68
    .line 763
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    #@6b
    move-result v4

    #@6c
    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    #@6f
    .line 732
    :cond_3
    return-void

    #@70
    .line 750
    .end local v0    # "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :catch_0
    move-exception v1

    #@71
    .line 751
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SoundTriggerHelper"

    #@74
    const-string/jumbo v5, "RemoteException in onKeyphraseDetected"

    #@77
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7a
    goto :goto_0
.end method

.method private onPowerSaveModeChangedLocked(Z)V
    .locals 1
    .param p1, "isPowerSaveMode"    # Z

    #@0
    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 677
    return-void

    #@5
    .line 679
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@7
    .line 680
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    #@b
    .line 675
    return-void
.end method

.method private onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    #@0
    .prologue
    .line 696
    const-string/jumbo v1, "SoundTriggerHelper"

    #@3
    const-string/jumbo v2, "Recognition aborted"

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 697
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v2, "sth_recognition_aborted"

    #@e
    const/4 v3, 0x1

    #@f
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@12
    .line 698
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    #@14
    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@17
    move-result-object v0

    #@18
    .line 699
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v0, :cond_0

    #@1a
    .line 700
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    #@1d
    .line 695
    :cond_0
    return-void
.end method

.method private onRecognitionFailureLocked()V
    .locals 4

    #@0
    .prologue
    .line 705
    const-string/jumbo v1, "SoundTriggerHelper"

    #@3
    const-string/jumbo v2, "Recognition failure"

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 706
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v2, "sth_recognition_failure_event"

    #@e
    const/4 v3, 0x1

    #@f
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@12
    .line 708
    const/high16 v1, -0x80000000

    #@14
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 712
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    #@1a
    .line 713
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    #@1d
    .line 704
    :goto_0
    return-void

    #@1e
    .line 709
    :catch_0
    move-exception v0

    #@1f
    .line 710
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "SoundTriggerHelper"

    #@22
    const-string/jumbo v2, "RemoteException in onError"

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 712
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    #@2b
    .line 713
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    #@2e
    goto :goto_0

    #@2f
    .line 711
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@30
    .line 712
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    #@33
    .line 713
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    #@36
    .line 711
    throw v1
.end method

.method private onServiceDiedLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "sth_service_died"

    #@6
    const/4 v3, 0x1

    #@7
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@a
    .line 791
    sget v1, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    #@c
    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 795
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    #@12
    .line 796
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    #@15
    .line 797
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 798
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@1b
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    #@1e
    .line 799
    :goto_0
    iput-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@20
    .line 788
    :cond_0
    return-void

    #@21
    .line 792
    :catch_0
    move-exception v0

    #@22
    .line 793
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "SoundTriggerHelper"

    #@25
    const-string/jumbo v2, "RemoteException in onError"

    #@28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 795
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    #@2e
    .line 796
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    #@31
    .line 797
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@33
    if-eqz v1, :cond_0

    #@35
    .line 798
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@37
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    #@3a
    goto :goto_0

    #@3b
    .line 794
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@3c
    .line 795
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    #@3f
    .line 796
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    #@42
    .line 797
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@44
    if-eqz v2, :cond_1

    #@46
    .line 798
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@48
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    #@4b
    .line 799
    iput-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@4d
    .line 794
    :cond_1
    throw v1
.end method

.method private onServiceStateChangedLocked(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    #@0
    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 689
    return-void

    #@5
    .line 691
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    #@7
    .line 692
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked(Z)V

    #@b
    .line 687
    return-void
.end method

.method private onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    #@0
    .prologue
    .line 683
    return-void
.end method

.method private removeKeyphraseModelLocked(I)V
    .locals 3
    .param p1, "keyphraseId"    # I

    #@0
    .prologue
    .line 898
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/UUID;

    #@c
    .line 899
    .local v0, "uuid":Ljava/util/UUID;
    if-nez v0, :cond_0

    #@e
    .line 900
    return-void

    #@f
    .line 902
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@11
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 903
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    #@16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 897
    return-void
.end method

.method private sendErrorCallbacksToAll(I)V
    .locals 4
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 877
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "modelData$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@16
    .line 878
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@19
    move-result-object v0

    #@1a
    .line 879
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz v0, :cond_0

    #@1c
    .line 880
    const/high16 v3, -0x80000000

    #@1e
    invoke-interface {v0, v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V

    #@21
    goto :goto_0

    #@22
    .line 876
    .end local v0    # "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_1
    return-void
.end method

.method private startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .locals 10
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "notify"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/high16 v7, -0x80000000

    #@3
    const/4 v8, 0x1

    #@4
    .line 948
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@7
    move-result-object v0

    #@8
    .line 949
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    #@b
    move-result v3

    #@c
    .line 950
    .local v3, "handle":I
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@f
    move-result-object v1

    #@10
    .line 951
    .local v1, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    if-eqz v0, :cond_0

    #@12
    if-ne v3, v7, :cond_1

    #@14
    .line 953
    :cond_0
    const-string/jumbo v5, "SoundTriggerHelper"

    #@17
    const-string/jumbo v6, "startRecognition: Bad data passed in."

    #@1a
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 954
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@1f
    const-string/jumbo v6, "sth_start_recognition_error"

    #@22
    invoke-static {v5, v6, v8}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@25
    .line 955
    return v7

    #@26
    .line 951
    :cond_1
    if-eqz v1, :cond_0

    #@28
    .line 958
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_2

    #@2e
    .line 960
    const-string/jumbo v5, "SoundTriggerHelper"

    #@31
    const-string/jumbo v6, "startRecognition requested but not allowed."

    #@34
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 961
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@39
    const-string/jumbo v6, "sth_start_recognition_not_allowed"

    #@3c
    invoke-static {v5, v6, v8}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@3f
    .line 962
    return v9

    #@40
    .line 965
    :cond_2
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@42
    invoke-virtual {v5, v3, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    #@45
    move-result v4

    #@46
    .line 966
    .local v4, "status":I
    if-eqz v4, :cond_4

    #@48
    .line 967
    const-string/jumbo v5, "SoundTriggerHelper"

    #@4b
    new-instance v6, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v7, "startRecognition failed with "

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 968
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@64
    const-string/jumbo v6, "sth_start_recognition_error"

    #@67
    invoke-static {v5, v6, v8}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@6a
    .line 970
    if-eqz p2, :cond_3

    #@6c
    .line 972
    :try_start_0
    invoke-interface {v0, v4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 993
    :cond_3
    :goto_0
    return v4

    #@70
    .line 973
    :catch_0
    move-exception v2

    #@71
    .line 974
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SoundTriggerHelper"

    #@74
    const-string/jumbo v6, "RemoteException in onError"

    #@77
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7a
    goto :goto_0

    #@7b
    .line 978
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v5, "SoundTriggerHelper"

    #@7e
    const-string/jumbo v6, "startRecognition successful."

    #@81
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 979
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@86
    const-string/jumbo v6, "sth_start_recognition_success"

    #@89
    invoke-static {v5, v6, v8}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@8c
    .line 980
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStarted()V

    #@8f
    .line 982
    if-eqz p2, :cond_3

    #@91
    .line 984
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@94
    goto :goto_0

    #@95
    .line 985
    :catch_1
    move-exception v2

    #@96
    .line 986
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SoundTriggerHelper"

    #@99
    const-string/jumbo v6, "RemoteException in onRecognitionResumed"

    #@9c
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9f
    goto :goto_0
.end method

.method private stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 6
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@0
    .prologue
    const/high16 v5, -0x80000000

    #@2
    .line 407
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 408
    if-nez p2, :cond_0

    #@7
    monitor-exit v3

    #@8
    .line 409
    return v5

    #@9
    .line 411
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@b
    if-eqz v2, :cond_1

    #@d
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@f
    if-nez v2, :cond_2

    #@11
    .line 412
    :cond_1
    const-string/jumbo v2, "SoundTriggerHelper"

    #@14
    const-string/jumbo v4, "Attempting stopRecognition without the capability"

    #@17
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v3

    #@1b
    .line 413
    return v5

    #@1c
    .line 416
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@1f
    move-result-object v0

    #@20
    .line 417
    .local v0, "currentCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz p1, :cond_3

    #@22
    if-nez v0, :cond_4

    #@24
    .line 420
    :cond_3
    const-string/jumbo v2, "SoundTriggerHelper"

    #@27
    const-string/jumbo v4, "Attempting stopRecognition without a successful startRecognition"

    #@2a
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    monitor-exit v3

    #@2e
    .line 421
    return v5

    #@2f
    .line 418
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_5

    #@35
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_3

    #@3b
    .line 424
    :cond_5
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@3e
    move-result-object v2

    #@3f
    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@42
    move-result-object v4

    #@43
    if-eq v2, v4, :cond_6

    #@45
    .line 427
    const-string/jumbo v2, "SoundTriggerHelper"

    #@48
    const-string/jumbo v4, "Attempting stopRecognition for another recognition"

    #@4b
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4e
    monitor-exit v3

    #@4f
    .line 428
    return v5

    #@50
    .line 432
    :cond_6
    const/4 v2, 0x0

    #@51
    :try_start_3
    invoke-virtual {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    #@54
    .line 433
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    #@57
    move-result v2

    #@58
    .line 434
    const/4 v4, 0x0

    #@59
    .line 433
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5c
    move-result v1

    #@5d
    .line 435
    .local v1, "status":I
    if-eqz v1, :cond_7

    #@5f
    monitor-exit v3

    #@60
    .line 436
    return v1

    #@61
    .line 441
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    #@64
    .line 442
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    #@67
    .line 443
    const/4 v2, 0x0

    #@68
    invoke-virtual {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    #@6b
    .line 445
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->computeRecognitionRunningLocked()Z

    #@6e
    move-result v2

    #@6f
    if-nez v2, :cond_8

    #@71
    .line 446
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@74
    :cond_8
    monitor-exit v3

    #@75
    .line 449
    return v1

    #@76
    .line 407
    .end local v0    # "currentCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    #@77
    monitor-exit v3

    #@78
    throw v2
.end method

.method private stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .locals 7
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "notify"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 997
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@4
    move-result-object v0

    #@5
    .line 1000
    .local v0, "callback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    const/4 v2, 0x0

    #@6
    .line 1002
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@8
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    #@b
    move-result v4

    #@c
    invoke-virtual {v3, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    #@f
    move-result v2

    #@10
    .line 1004
    if-eqz v2, :cond_1

    #@12
    .line 1005
    const-string/jumbo v3, "SoundTriggerHelper"

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "stopRecognition call failed with "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 1006
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@2e
    const-string/jumbo v4, "sth_stop_recognition_error"

    #@31
    invoke-static {v3, v4, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@34
    .line 1007
    if-eqz p2, :cond_0

    #@36
    .line 1009
    :try_start_0
    invoke-interface {v0, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 1029
    :cond_0
    :goto_0
    return v2

    #@3a
    .line 1010
    :catch_0
    move-exception v1

    #@3b
    .line 1011
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    #@3e
    const-string/jumbo v4, "RemoteException in onError"

    #@41
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    goto :goto_0

    #@45
    .line 1015
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    #@48
    .line 1016
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@4a
    const-string/jumbo v4, "sth_stop_recognition_success"

    #@4d
    invoke-static {v3, v4, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@50
    .line 1018
    if-eqz p2, :cond_0

    #@52
    .line 1020
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@55
    goto :goto_0

    #@56
    .line 1021
    :catch_1
    move-exception v1

    #@57
    .line 1022
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    #@5a
    const-string/jumbo v4, "RemoteException in onRecognitionPaused"

    #@5d
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@60
    goto :goto_0
.end method

.method private tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .locals 4
    .param p1, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "stopModel"    # Z
    .param p3, "unloadModel"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 458
    const/4 v0, 0x0

    #@2
    .line 459
    .local v0, "status":I
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelNotLoaded()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 460
    return v0

    #@9
    .line 462
    :cond_0
    if-eqz p2, :cond_1

    #@b
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 463
    invoke-direct {p0, p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    #@14
    move-result v0

    #@15
    .line 465
    if-eqz v0, :cond_1

    #@17
    .line 466
    const-string/jumbo v1, "SoundTriggerHelper"

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "stopRecognition failed: "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 467
    return v0

    #@32
    .line 471
    :cond_1
    if-eqz p3, :cond_2

    #@34
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_2

    #@3a
    .line 472
    const-string/jumbo v1, "SoundTriggerHelper"

    #@3d
    const-string/jumbo v2, "Unloading previously loaded stale model."

    #@40
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 473
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@45
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    #@48
    move-result v2

    #@49
    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    #@4c
    move-result v0

    #@4d
    .line 474
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@4f
    const-string/jumbo v2, "sth_unloading_stale_model"

    #@52
    const/4 v3, 0x1

    #@53
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@56
    .line 475
    if-eqz v0, :cond_3

    #@58
    .line 476
    const-string/jumbo v1, "SoundTriggerHelper"

    #@5b
    new-instance v2, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v3, "unloadSoundModel call failed with "

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 482
    :cond_2
    :goto_0
    return v0

    #@73
    .line 479
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    #@76
    goto :goto_0
.end method

.method private updateAllRecognitionsLocked(Z)V
    .locals 4
    .param p1, "notify"    # Z

    #@0
    .prologue
    .line 768
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    #@3
    move-result v0

    #@4
    .line 769
    .local v0, "isAllowed":Z
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "modelData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@1a
    .line 770
    .local v1, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    #@1d
    goto :goto_0

    #@1e
    .line 767
    .end local v1    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_0
    return-void
.end method

.method private updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .locals 2
    .param p1, "model"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p2, "isAllowed"    # Z
    .param p3, "notify"    # Z

    #@0
    .prologue
    .line 776
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    move v0, p2

    #@7
    .line 777
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    #@a
    move-result v1

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 779
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 776
    :cond_0
    const/4 v0, 0x0

    #@10
    .local v0, "start":Z
    goto :goto_0

    #@11
    .line 781
    .end local v0    # "start":Z
    :cond_1
    if-eqz v0, :cond_2

    #@13
    .line 782
    invoke-direct {p0, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 784
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    #@1b
    move-result v1

    #@1c
    return v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 848
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 849
    :try_start_0
    const-string/jumbo v0, "  module properties="

    #@6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 850
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@b
    if-nez v0, :cond_0

    #@d
    const-string/jumbo v0, "null"

    #@10
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@13
    .line 852
    const-string/jumbo v0, "  call active="

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    #@1b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1e
    .line 853
    const-string/jumbo v0, "  power save mode active="

    #@21
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@26
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@29
    .line 854
    const-string/jumbo v0, "  service disabled="

    #@2c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mServiceDisabled:Z

    #@31
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit v1

    #@35
    .line 847
    return-void

    #@36
    .line 850
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 848
    :catchall_0
    move-exception v0

    #@3a
    monitor-exit v1

    #@3b
    throw v0
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 1

    #@0
    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@2
    return-object v0
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    #@0
    .prologue
    .line 558
    if-nez p1, :cond_0

    #@2
    .line 559
    const-string/jumbo v0, "SoundTriggerHelper"

    #@5
    const-string/jumbo v1, "Null recognition event!"

    #@8
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 560
    return-void

    #@c
    .line 563
    :cond_0
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@e
    if-nez v0, :cond_1

    #@10
    .line 564
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 570
    :cond_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v1

    #@17
    .line 571
    :try_start_0
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    packed-switch v0, :pswitch_data_0

    #@1c
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :goto_0
    monitor-exit v1

    #@1d
    .line 557
    return-void

    #@1e
    .line 565
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :cond_2
    const-string/jumbo v0, "SoundTriggerHelper"

    #@21
    const-string/jumbo v1, "Invalid recognition event type (not one of generic or keyphrase)!"

    #@24
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 566
    return-void

    #@28
    .line 573
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 570
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0

    #@2f
    .line 577
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionFailureLocked()V

    #@32
    goto :goto_0

    #@33
    .line 580
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_3

    #@39
    .line 581
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@3b
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    #@3e
    goto :goto_0

    #@3f
    .line 583
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :cond_3
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    #@41
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 571
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceDied()V
    .locals 3

    #@0
    .prologue
    .line 658
    const-string/jumbo v0, "SoundTriggerHelper"

    #@3
    const-string/jumbo v1, "onServiceDied!!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 659
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v1, "sth_service_died"

    #@e
    const/4 v2, 0x1

    #@f
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@12
    .line 660
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@14
    monitor-enter v0

    #@15
    .line 661
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceDiedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v0

    #@19
    .line 657
    return-void

    #@1a
    .line 660
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v0

    #@1c
    throw v1
.end method

.method public onServiceStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 651
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 652
    if-ne v0, p1, :cond_0

    #@6
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceStateChangedLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 649
    return-void

    #@b
    .line 652
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0

    #@d
    .line 651
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    #@0
    .prologue
    .line 637
    if-nez p1, :cond_0

    #@2
    .line 638
    const-string/jumbo v0, "SoundTriggerHelper"

    #@5
    const-string/jumbo v1, "Invalid sound model event!"

    #@8
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 639
    return-void

    #@c
    .line 642
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v1

    #@f
    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@11
    const-string/jumbo v2, "sth_sound_model_updated"

    #@14
    const/4 v3, 0x1

    #@15
    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@18
    .line 644
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 636
    return-void

    #@1d
    .line 642
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 7
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@0
    .prologue
    const/high16 v4, -0x80000000

    #@2
    .line 140
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v1, "sth_start_recognition"

    #@7
    const/4 v3, 0x1

    #@8
    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@b
    .line 141
    if-eqz p1, :cond_0

    #@d
    if-nez p2, :cond_1

    #@f
    .line 143
    :cond_0
    const-string/jumbo v0, "SoundTriggerHelper"

    #@12
    const-string/jumbo v1, "Passed in bad data to startGenericRecognition()."

    #@15
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 144
    return v4

    #@19
    .line 141
    :cond_1
    if-eqz p3, :cond_0

    #@1b
    .line 142
    if-eqz p4, :cond_0

    #@1d
    .line 147
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@1f
    monitor-enter v6

    #@20
    .line 148
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@23
    move-result-object v2

    #@24
    .line 149
    .local v2, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-nez v2, :cond_2

    #@26
    .line 150
    const-string/jumbo v0, "SoundTriggerHelper"

    #@29
    const-string/jumbo v1, "Irrecoverable error occurred, check UUID / sound model data."

    #@2c
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v6

    #@30
    .line 151
    return v4

    #@31
    .line 154
    :cond_2
    const/high16 v5, -0x80000000

    #@33
    move-object v0, p0

    #@34
    move-object v1, p2

    #@35
    move-object v3, p3

    #@36
    move-object v4, p4

    #@37
    .line 153
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    move-result v0

    #@3b
    monitor-exit v6

    #@3c
    return v0

    #@3d
    .line 147
    .end local v2    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_0
    move-exception v0

    #@3e
    monitor-exit v6

    #@3f
    throw v0
.end method

.method startKeyphraseRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 8
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@0
    .prologue
    const/high16 v4, -0x80000000

    #@2
    .line 169
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v7

    #@5
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v1, "sth_start_recognition"

    #@a
    const/4 v3, 0x1

    #@b
    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 171
    if-eqz p2, :cond_0

    #@10
    if-nez p3, :cond_1

    #@12
    :cond_0
    monitor-exit v7

    #@13
    .line 172
    return v4

    #@14
    .line 171
    :cond_1
    if-eqz p4, :cond_0

    #@16
    .line 183
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@19
    move-result-object v2

    #@1a
    .line 184
    .local v2, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v2, :cond_2

    #@1c
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_5

    #@22
    .line 190
    :cond_2
    if-eqz v2, :cond_3

    #@24
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    #@2a
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_6

    #@30
    .line 202
    .end local v2    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    #@32
    .line 203
    iget-object v0, p2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    #@34
    invoke-direct {p0, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@37
    move-result-object v2

    #@38
    :cond_4
    move-object v0, p0

    #@39
    move-object v1, p2

    #@3a
    move-object v3, p3

    #@3b
    move-object v4, p4

    #@3c
    move v5, p1

    #@3d
    .line 206
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    move-result v0

    #@41
    monitor-exit v7

    #@42
    return v0

    #@43
    .line 185
    .restart local v2    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :cond_5
    :try_start_2
    const-string/jumbo v0, "SoundTriggerHelper"

    #@46
    const-string/jumbo v1, "Generic model with same UUID exists."

    #@49
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    monitor-exit v7

    #@4d
    .line 186
    return v4

    #@4e
    .line 192
    :cond_6
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->cleanUpExistingKeyphraseModel(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@51
    move-result v6

    #@52
    .line 193
    .local v6, "status":I
    if-eqz v6, :cond_7

    #@54
    monitor-exit v7

    #@55
    .line 194
    return v6

    #@56
    .line 196
    :cond_7
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@59
    .line 197
    const/4 v2, 0x0

    #@5a
    .local v2, "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    goto :goto_0

    #@5b
    .line 169
    .end local v2    # "model":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v6    # "status":I
    :catchall_0
    move-exception v0

    #@5c
    monitor-exit v7

    #@5d
    throw v0
.end method

.method startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;I)I
    .locals 10
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    .param p2, "modelData"    # Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .param p5, "keyphraseId"    # I

    #@0
    .prologue
    .line 238
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 239
    :try_start_0
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@5
    if-nez v6, :cond_0

    #@7
    .line 240
    const-string/jumbo v6, "SoundTriggerHelper"

    #@a
    const-string/jumbo v8, "Attempting startRecognition without the capability"

    #@d
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 241
    const/high16 v6, -0x80000000

    #@12
    monitor-exit v7

    #@13
    return v6

    #@14
    .line 243
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@16
    if-nez v6, :cond_1

    #@18
    .line 244
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@1a
    iget v6, v6, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    #@1c
    const/4 v8, 0x0

    #@1d
    invoke-static {v6, p0, v8}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@20
    move-result-object v6

    #@21
    iput-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@23
    .line 245
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@25
    if-nez v6, :cond_1

    #@27
    .line 246
    const-string/jumbo v6, "SoundTriggerHelper"

    #@2a
    const-string/jumbo v8, "startRecognition cannot attach to sound trigger module"

    #@2d
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 247
    const/high16 v6, -0x80000000

    #@32
    monitor-exit v7

    #@33
    return v6

    #@34
    .line 252
    :cond_1
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRunning:Z

    #@36
    if-nez v6, :cond_2

    #@38
    .line 253
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->initializeTelephonyAndPowerStateListeners()V

    #@3b
    .line 263
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    #@3e
    move-result-object v6

    #@3f
    if-eqz v6, :cond_6

    #@41
    .line 264
    const/4 v4, 0x0

    #@42
    .line 265
    .local v4, "stopModel":Z
    const/4 v5, 0x0

    #@43
    .line 266
    .local v5, "unloadModel":Z
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_5

    #@4d
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    #@50
    move-result v6

    #@51
    if-eqz v6, :cond_5

    #@53
    .line 269
    const/4 v4, 0x1

    #@54
    .line 270
    const/4 v5, 0x0

    #@55
    .line 277
    .end local v4    # "stopModel":Z
    .end local v5    # "unloadModel":Z
    :cond_3
    :goto_0
    if-nez v4, :cond_4

    #@57
    if-eqz v5, :cond_6

    #@59
    .line 278
    :cond_4
    invoke-direct {p0, p2, v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    #@5c
    move-result v3

    #@5d
    .line 279
    .local v3, "status":I
    if-eqz v3, :cond_6

    #@5f
    .line 280
    const-string/jumbo v6, "SoundTriggerHelper"

    #@62
    new-instance v8, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v9, "Unable to stop or unload previous model: "

    #@6a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v8

    #@6e
    .line 281
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    .line 280
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v8

    #@76
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v8

    #@7a
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7d
    monitor-exit v7

    #@7e
    .line 282
    return v3

    #@7f
    .line 271
    .end local v3    # "status":I
    .restart local v4    # "stopModel":Z
    .restart local v5    # "unloadModel":Z
    :cond_5
    :try_start_3
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    #@82
    move-result-object v6

    #@83
    invoke-virtual {v6, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v6

    #@87
    if-nez v6, :cond_3

    #@89
    .line 274
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    #@8c
    move-result v4

    #@8d
    .line 275
    .local v4, "stopModel":Z
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    #@90
    move-result v5

    #@91
    .local v5, "unloadModel":Z
    goto :goto_0

    #@92
    .line 287
    .end local v4    # "stopModel":Z
    .end local v5    # "unloadModel":Z
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@95
    move-result-object v2

    #@96
    .line 288
    .local v2, "oldCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    if-eqz v2, :cond_7

    #@98
    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@9b
    move-result-object v6

    #@9c
    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@9f
    move-result-object v8

    #@a0
    if-eq v6, v8, :cond_7

    #@a2
    .line 289
    const-string/jumbo v6, "SoundTriggerHelper"

    #@a5
    new-instance v8, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v9, "Canceling previous recognition for model id: "

    #@ad
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v8

    #@b1
    .line 290
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    #@b4
    move-result-object v9

    #@b5
    .line 289
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v8

    #@b9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v8

    #@bd
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c0
    .line 292
    const/high16 v6, -0x80000000

    #@c2
    :try_start_4
    invoke-interface {v2, v6}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c5
    .line 296
    :goto_1
    :try_start_5
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    #@c8
    .line 300
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    #@cb
    move-result v6

    #@cc
    if-nez v6, :cond_a

    #@ce
    .line 302
    const/4 v6, 0x1

    #@cf
    new-array v1, v6, [I

    #@d1
    const/high16 v6, -0x80000000

    #@d3
    const/4 v8, 0x0

    #@d4
    aput v6, v1, v8

    #@d6
    .line 303
    .local v1, "handle":[I
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@d8
    invoke-virtual {v6, p1, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    #@db
    move-result v3

    #@dc
    .line 304
    .restart local v3    # "status":I
    if-eqz v3, :cond_8

    #@de
    .line 305
    const-string/jumbo v6, "SoundTriggerHelper"

    #@e1
    new-instance v8, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v9, "loadSoundModel call failed with "

    #@e9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v8

    #@ed
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v8

    #@f1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v8

    #@f5
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@f8
    monitor-exit v7

    #@f9
    .line 306
    return v3

    #@fa
    .line 293
    .end local v1    # "handle":[I
    .end local v3    # "status":I
    :catch_0
    move-exception v0

    #@fb
    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v6, "SoundTriggerHelper"

    #@fe
    const-string/jumbo v8, "RemoteException in onDetectionStopped"

    #@101
    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@104
    goto :goto_1

    #@105
    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "oldCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :catchall_0
    move-exception v6

    #@106
    monitor-exit v7

    #@107
    throw v6

    #@108
    .line 308
    .restart local v1    # "handle":[I
    .restart local v2    # "oldCallback":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .restart local v3    # "status":I
    :cond_8
    const/4 v6, 0x0

    #@109
    :try_start_7
    aget v6, v1, v6

    #@10b
    const/high16 v8, -0x80000000

    #@10d
    if-ne v6, v8, :cond_9

    #@10f
    .line 309
    const-string/jumbo v6, "SoundTriggerHelper"

    #@112
    const-string/jumbo v8, "loadSoundModel call returned invalid sound model handle"

    #@115
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@118
    .line 310
    const/high16 v6, -0x80000000

    #@11a
    monitor-exit v7

    #@11b
    return v6

    #@11c
    .line 312
    :cond_9
    const/4 v6, 0x0

    #@11d
    :try_start_8
    aget v6, v1, v6

    #@11f
    invoke-virtual {p2, v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setHandle(I)V

    #@122
    .line 313
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    #@125
    .line 314
    const-string/jumbo v6, "SoundTriggerHelper"

    #@128
    new-instance v8, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v9, "Sound model loaded with handle:"

    #@130
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v8

    #@134
    const/4 v9, 0x0

    #@135
    aget v9, v1, v9

    #@137
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v8

    #@13b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v8

    #@13f
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@142
    .line 316
    .end local v1    # "handle":[I
    .end local v3    # "status":I
    :cond_a
    invoke-virtual {p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V

    #@145
    .line 317
    const/4 v6, 0x1

    #@146
    invoke-virtual {p2, v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    #@149
    .line 318
    invoke-virtual {p2, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    #@14c
    .line 319
    invoke-virtual {p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V

    #@14f
    .line 322
    const/4 v6, 0x0

    #@150
    .line 321
    invoke-direct {p0, p2, v6}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@153
    move-result v6

    #@154
    monitor-exit v7

    #@155
    return v6
.end method

.method stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 7
    .param p1, "modelId"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@0
    .prologue
    const/high16 v6, -0x80000000

    #@2
    .line 337
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v4, "sth_stop_recognition"

    #@a
    const/4 v5, 0x1

    #@b
    invoke-static {v2, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@e
    .line 339
    if-eqz p2, :cond_0

    #@10
    if-nez p1, :cond_1

    #@12
    .line 340
    :cond_0
    const-string/jumbo v2, "SoundTriggerHelper"

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "Null callbackreceived for stopGenericRecognition() for modelid:"

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v3

    #@2d
    .line 342
    return v6

    #@2e
    .line 345
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@30
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@36
    .line 346
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v0, :cond_3

    #@38
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_3

    #@3e
    .line 351
    invoke-direct {p0, v0, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    #@41
    move-result v1

    #@42
    .line 352
    .local v1, "status":I
    if-eqz v1, :cond_2

    #@44
    .line 353
    const-string/jumbo v2, "SoundTriggerHelper"

    #@47
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v5, "stopGenericRecognition failed: "

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    :cond_2
    monitor-exit v3

    #@5f
    .line 355
    return v1

    #@60
    .line 347
    .end local v1    # "status":I
    :cond_3
    :try_start_2
    const-string/jumbo v2, "SoundTriggerHelper"

    #@63
    new-instance v4, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v5, "Attempting stopRecognition on invalid model with id:"

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7a
    monitor-exit v3

    #@7b
    .line 348
    return v6

    #@7c
    .line 337
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    :catchall_0
    move-exception v2

    #@7d
    monitor-exit v3

    #@7e
    throw v2
.end method

.method stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 7
    .param p1, "keyphraseId"    # I
    .param p2, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@0
    .prologue
    const/high16 v6, -0x80000000

    #@2
    .line 370
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 371
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v4, "sth_stop_recognition"

    #@a
    const/4 v5, 0x1

    #@b
    invoke-static {v2, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@e
    .line 372
    if-nez p2, :cond_0

    #@10
    .line 373
    const-string/jumbo v2, "SoundTriggerHelper"

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "Null callback received for stopKeyphraseRecognition() for keyphraseId:"

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v3

    #@2b
    .line 375
    return v6

    #@2c
    .line 378
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@2f
    move-result-object v0

    #@30
    .line 379
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v0, :cond_1

    #@32
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 390
    invoke-direct {p0, v0, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    move-result v1

    #@3c
    .line 391
    .local v1, "status":I
    if-eqz v1, :cond_2

    #@3e
    monitor-exit v3

    #@3f
    .line 392
    return v1

    #@40
    .line 380
    .end local v1    # "status":I
    :cond_1
    :try_start_2
    const-string/jumbo v2, "SoundTriggerHelper"

    #@43
    const-string/jumbo v4, "No model exists for given keyphrase Id."

    #@46
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    monitor-exit v3

    #@4a
    .line 381
    return v6

    #@4b
    .restart local v1    # "status":I
    :cond_2
    monitor-exit v3

    #@4c
    .line 395
    return v1

    #@4d
    .line 370
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    #@4e
    monitor-exit v3

    #@4f
    throw v2
.end method

.method unloadGenericSoundModel(Ljava/util/UUID;)I
    .locals 8
    .param p1, "modelId"    # Ljava/util/UUID;

    #@0
    .prologue
    const/high16 v7, -0x80000000

    #@2
    const/4 v6, 0x0

    #@3
    .line 518
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 519
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v4, "sth_unload_generic_sound_model"

    #@b
    const/4 v5, 0x1

    #@c
    invoke-static {v2, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@f
    .line 520
    if-eqz p1, :cond_0

    #@11
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    if-nez v2, :cond_1

    #@15
    :cond_0
    monitor-exit v3

    #@16
    .line 521
    return v7

    #@17
    .line 523
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@19
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@1f
    .line 524
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    if-eqz v0, :cond_2

    #@21
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 529
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_3

    #@2d
    .line 531
    const-string/jumbo v2, "SoundTriggerHelper"

    #@30
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v5, "Unload: Given generic model is not loaded:"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    monitor-exit v3

    #@48
    .line 532
    return v6

    #@49
    .line 525
    :cond_2
    :try_start_2
    const-string/jumbo v2, "SoundTriggerHelper"

    #@4c
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "Unload error: Attempting unload invalid generic model with id:"

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    monitor-exit v3

    #@64
    .line 527
    return v7

    #@65
    .line 534
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    #@68
    move-result v2

    #@69
    if-eqz v2, :cond_4

    #@6b
    .line 536
    const/4 v2, 0x0

    #@6c
    .line 535
    invoke-direct {p0, v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    #@6f
    move-result v1

    #@70
    .line 537
    .local v1, "status":I
    if-eqz v1, :cond_4

    #@72
    .line 538
    const-string/jumbo v2, "SoundTriggerHelper"

    #@75
    new-instance v4, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v5, "stopGenericRecognition failed: "

    #@7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    .line 542
    .end local v1    # "status":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@8e
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    #@91
    move-result v4

    #@92
    invoke-virtual {v2, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    #@95
    move-result v1

    #@96
    .line 543
    .restart local v1    # "status":I
    if-eqz v1, :cond_5

    #@98
    .line 544
    const-string/jumbo v2, "SoundTriggerHelper"

    #@9b
    new-instance v4, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v5, "unloadGenericSoundModel() call failed with "

    #@a3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 545
    const-string/jumbo v2, "SoundTriggerHelper"

    #@b5
    const-string/jumbo v4, "unloadGenericSoundModel() force-marking model as unloaded."

    #@b8
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    .line 549
    :cond_5
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    #@bd
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c0
    monitor-exit v3

    #@c1
    .line 551
    return v1

    #@c2
    .line 518
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    #@c3
    monitor-exit v3

    #@c4
    throw v2
.end method

.method unloadKeyphraseSoundModel(I)I
    .locals 7
    .param p1, "keyphraseId"    # I

    #@0
    .prologue
    const/high16 v6, -0x80000000

    #@2
    .line 490
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 491
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v4, "sth_unload_keyphrase_sound_model"

    #@a
    const/4 v5, 0x1

    #@b
    invoke-static {v2, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@e
    .line 492
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    #@11
    move-result-object v0

    #@12
    .line 493
    .local v0, "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    if-eqz v2, :cond_0

    #@16
    if-nez v0, :cond_1

    #@18
    :cond_0
    monitor-exit v3

    #@19
    .line 495
    return v6

    #@1a
    .line 493
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    #@1d
    move-result v2

    #@1e
    if-eq v2, v6, :cond_0

    #@20
    .line 494
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_0

    #@26
    .line 499
    const/4 v2, 0x0

    #@27
    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    #@2a
    .line 500
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowed()Z

    #@2d
    move-result v2

    #@2e
    .line 501
    const/4 v4, 0x0

    #@2f
    .line 500
    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    #@32
    move-result v1

    #@33
    .line 502
    .local v1, "status":I
    if-eqz v1, :cond_2

    #@35
    .line 503
    const-string/jumbo v2, "SoundTriggerHelper"

    #@38
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v5, "Stop recognition failed for keyphrase ID:"

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 506
    :cond_2
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@51
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    #@54
    move-result v4

    #@55
    invoke-virtual {v2, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    #@58
    move-result v1

    #@59
    .line 507
    if-eqz v1, :cond_3

    #@5b
    .line 508
    const-string/jumbo v2, "SoundTriggerHelper"

    #@5e
    new-instance v4, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v5, "unloadKeyphraseSoundModel call failed with "

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 512
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@78
    monitor-exit v3

    #@79
    .line 513
    return v1

    #@7a
    .line 490
    .end local v0    # "modelData":Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    #@7b
    monitor-exit v3

    #@7c
    throw v2
.end method
