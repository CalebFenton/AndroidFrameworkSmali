.class Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryHistoryParcelContainer"
.end annotation


# instance fields
.field private blacklist mFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

.field private blacklist mMonotonicStartTime:J

.field private blacklist mParcel:Landroid/os/Parcel;

.field private blacklist mParcelReadyForReading:Z

.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsHistory;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory;Landroid/os/Parcel;J)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "monotonicStartTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->this$0:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    .line 272
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mMonotonicStartTime:J

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcelReadyForReading:Z

    .line 274
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p2, "fragment"    # Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->this$0:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 278
    iget-wide v0, p2, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mMonotonicStartTime:J

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcelReadyForReading:Z

    .line 280
    return-void
.end method


# virtual methods
.method blacklist close()V
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    if-eqz v0, :cond_d

    .line 309
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    .line 314
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 315
    return-void
.end method

.method blacklist getMonotonicStartTime()J
    .registers 3

    .line 300
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mMonotonicStartTime:J

    return-wide v0
.end method

.method blacklist getParcel()Landroid/os/Parcel;
    .registers 4

    .line 284
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcelReadyForReading:Z

    if-eqz v0, :cond_7

    .line 285
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    return-object v0

    .line 288
    :cond_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 289
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->this$0:Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->readFragmentToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 291
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    goto :goto_1e

    .line 293
    :cond_1b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    :goto_1e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcelReadyForReading:Z

    .line 296
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    return-object v1
.end method
