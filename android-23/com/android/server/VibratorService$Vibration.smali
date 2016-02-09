.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field private final mOpPkg:Ljava/lang/String;

.field private final mPattern:[J

.field private final mRepeat:I

.field private final mStartTime:J

.field private final mTimeout:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field private final mUsageHint:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService$Vibration;)[J
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/VibratorService$Vibration;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/VibratorService$Vibration;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    #@2
    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    #@2
    return v0
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "usageHint"    # I
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 104
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-wide v4, p3

    #@6
    move/from16 v8, p5

    #@8
    move/from16 v9, p6

    #@a
    move-object/from16 v10, p7

    #@c
    invoke-direct/range {v1 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V

    #@f
    .line 103
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "pattern"    # [J
    .param p6, "repeat"    # I
    .param p7, "usageHint"    # I
    .param p8, "uid"    # I
    .param p9, "opPkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 114
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    #@7
    .line 115
    iput-wide p3, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    #@9
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    #@f
    .line 117
    iput-object p5, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    #@11
    .line 118
    iput p6, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    #@13
    .line 119
    iput p7, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    #@15
    .line 120
    iput p8, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    #@17
    .line 121
    iput-object p9, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    #@19
    .line 113
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    const-wide/16 v4, 0x0

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v6, p3

    #@6
    move v7, p4

    #@7
    move/from16 v8, p5

    #@9
    move/from16 v9, p6

    #@b
    move-object/from16 v10, p7

    #@d
    invoke-direct/range {v1 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V

    #@10
    .line 108
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    #@2
    invoke-static {v0}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    #@9
    invoke-static {v0}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    #@10
    .line 127
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    #@12
    invoke-static {v0}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    #@15
    move-result-object v0

    #@16
    if-ne p0, v0, :cond_0

    #@18
    .line 128
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    #@1a
    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;)V

    #@1d
    .line 129
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    #@1f
    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_0
    monitor-exit v1

    #@23
    .line 124
    return-void

    #@24
    .line 125
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method

.method public hasLongerTimeout(J)Z
    .locals 5
    .param p1, "millis"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 135
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-nez v0, :cond_0

    #@9
    .line 138
    return v4

    #@a
    .line 140
    :cond_0
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    #@c
    iget-wide v2, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    #@e
    add-long/2addr v0, v2

    #@f
    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v2

    #@13
    add-long/2addr v2, p1

    #@14
    .line 140
    cmp-long v0, v0, v2

    #@16
    if-gez v0, :cond_1

    #@18
    .line 144
    return v4

    #@19
    .line 146
    :cond_1
    const/4 v0, 0x1

    #@1a
    return v0
.end method

.method public isSystemHapticFeedback()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 150
    iget v1, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    #@3
    const/16 v2, 0x3e8

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget v1, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    #@9
    if-nez v1, :cond_1

    #@b
    :cond_0
    iget v1, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    #@d
    if-gez v1, :cond_1

    #@f
    const/4 v0, 0x1

    #@10
    :cond_1
    return v0
.end method
