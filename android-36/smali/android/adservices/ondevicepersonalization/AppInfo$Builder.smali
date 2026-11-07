.class public final Landroid/adservices/ondevicepersonalization/AppInfo$Builder;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mInstalled:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->mBuilderFieldsSet:J

    .line 152
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 179
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 183
    return-void

    .line 180
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/AppInfo;
    .registers 5

    .line 167
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->checkNotUsed()V

    .line 168
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->mBuilderFieldsSet:J

    .line 170
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->mInstalled:Z

    .line 173
    :cond_18
    new-instance v0, Landroid/adservices/ondevicepersonalization/AppInfo;

    iget-boolean v1, p0, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->mInstalled:Z

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/AppInfo;-><init>(Z)V

    .line 175
    .local v0, "o":Landroid/adservices/ondevicepersonalization/AppInfo;
    return-object v0
.end method

.method public blacklist setInstalled(Z)Landroid/adservices/ondevicepersonalization/AppInfo$Builder;
    .registers 6
    .param p1, "value"    # Z

    .line 159
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->checkNotUsed()V

    .line 160
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->mBuilderFieldsSet:J

    .line 161
    iput-boolean p1, p0, Landroid/adservices/ondevicepersonalization/AppInfo$Builder;->mInstalled:Z

    .line 162
    return-object p0
.end method
