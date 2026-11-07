.class public Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;
.super Ljava/lang/Object;
.source "DownloadInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/DownloadInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mDataAccessServiceBinder:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->mBuilderFieldsSet:J

    .line 151
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 178
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 182
    return-void

    .line 179
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/DownloadInputParcel;
    .registers 5

    .line 166
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->checkNotUsed()V

    .line 167
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->mBuilderFieldsSet:J

    .line 169
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->mDataAccessServiceBinder:Landroid/os/IBinder;

    .line 172
    :cond_18
    new-instance v0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->mDataAccessServiceBinder:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;-><init>(Landroid/os/IBinder;)V

    .line 174
    .local v0, "o":Landroid/adservices/ondevicepersonalization/DownloadInputParcel;
    return-object v0
.end method

.method public blacklist setDataAccessServiceBinder(Landroid/os/IBinder;)Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/IBinder;

    .line 158
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->checkNotUsed()V

    .line 159
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->mBuilderFieldsSet:J

    .line 160
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;->mDataAccessServiceBinder:Landroid/os/IBinder;

    .line 161
    return-object p0
.end method
