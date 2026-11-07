.class public final Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;
.super Ljava/lang/Object;
.source "ExecuteInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mBuilderFieldsSet:J

    .line 153
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 197
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 201
    return-void

    .line 198
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;
    .registers 7

    .line 181
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->checkNotUsed()V

    .line 182
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mBuilderFieldsSet:J

    .line 184
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 185
    const-string v0, ""

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mAppPackageName:Ljava/lang/String;

    .line 187
    :cond_19
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 190
    :cond_25
    new-instance v0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    invoke-direct {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;-><init>(Ljava/lang/String;Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;)V

    .line 193
    .local v0, "o":Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;
    return-object v0
.end method

.method public blacklist setAppPackageName(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->checkNotUsed()V

    .line 161
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mBuilderFieldsSet:J

    .line 162
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mAppPackageName:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public blacklist setSerializedAppParams(Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;)Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;
    .registers 6
    .param p1, "value"    # Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 173
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->checkNotUsed()V

    .line 174
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mBuilderFieldsSet:J

    .line 175
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel$Builder;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 176
    return-object p0
.end method
