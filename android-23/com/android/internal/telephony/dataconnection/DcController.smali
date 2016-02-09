.class Lcom/android/internal/telephony/dataconnection/DcController;
.super Lcom/android/internal/util/StateMachine;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;
    }
.end annotation


# static fields
.field static final DATA_CONNECTION_ACTIVE_PH_LINK_DORMANT:I = 0x1

.field static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field static final DATA_CONNECTION_ACTIVE_UNKNOWN:I = 0x7fffffff

.field private static final DBG:Z = true

.field private static final VDBG:Z


# instance fields
.field private mDcListActiveByCid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field mDcListAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

.field private mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

.field private mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field private volatile mExecutingCarrierChange:Z

.field mOverallDataConnectionActiveState:I

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/dataconnection/DcController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mExecutingCarrierChange:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->lr(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p4, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 96
    invoke-direct {p0, p1, p4}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    #@4
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    #@b
    .line 61
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    #@12
    .line 75
    const v0, 0x7fffffff

    #@15
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mOverallDataConnectionActiveState:I

    #@17
    .line 77
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    #@19
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;)V

    #@1c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    #@1e
    .line 97
    const/16 v0, 0x12c

    #@20
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->setLogRecSize(I)V

    #@23
    .line 98
    const-string/jumbo v0, "E ctor"

    #@26
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@29
    .line 99
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2b
    .line 100
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2d
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    #@2f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->addState(Lcom/android/internal/util/State;)V

    #@32
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    #@34
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->setInitialState(Lcom/android/internal/util/State;)V

    #@37
    .line 103
    const-string/jumbo v0, "X ctor"

    #@3a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@3d
    .line 105
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcController$1;

    #@3f
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Looper;)V

    #@46
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@48
    .line 112
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@4b
    move-result-object v0

    #@4c
    const-string/jumbo v1, "phone"

    #@4f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@55
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@57
    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@59
    if-eqz v0, :cond_0

    #@5b
    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@5d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@5f
    .line 115
    const/high16 v2, 0x10000

    #@61
    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@64
    .line 95
    :cond_0
    return-void
.end method

.method private lr(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->logAndAddLogRec(Ljava/lang/String;)V

    #@3
    .line 429
    return-void
.end method

.method static makeDcc(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 120
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcController;

    #@2
    const-string/jumbo v1, "Dcc"

    #@5
    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcController;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)V

    #@8
    .line 121
    .local v0, "dcc":Lcom/android/internal/telephony/dataconnection/DcController;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->start()V

    #@b
    .line 122
    return-object v0
.end method


# virtual methods
.method addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 141
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "addActiveDcByCid dc.mCid < 0 dc="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@1b
    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    #@1d
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@1f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 140
    return-void
.end method

.method addDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 1
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 131
    return-void
.end method

.method dispose()V
    .locals 3

    #@0
    .prologue
    .line 126
    const-string/jumbo v0, "dispose: call quiteNow()"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@6
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@12
    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->quitNow()V

    #@15
    .line 125
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 463
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, " mPhone="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v1, " mDcListAll="

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v1, " mDcListActiveByCid="

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 462
    return-void
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 448
    const/4 v0, 0x0

    #@1
    .line 449
    .local v0, "info":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 450
    .local v0, "info":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 451
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->cmdToString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 453
    :cond_0
    return-object v0
.end method

.method isExecutingCarrierChange()Z
    .locals 1

    #@0
    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mExecutingCarrierChange:Z

    #@2
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 434
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 439
    return-void
.end method

.method removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 3
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    #@2
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e
    .line 149
    .local v0, "removedDc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v0, :cond_0

    #@10
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "removeActiveDcByCid removedDc=null dc="

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    #@27
    .line 147
    :cond_0
    return-void
.end method

.method removeDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    #@2
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@10
    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mDcListAll="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " mDcListActiveByCid="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
