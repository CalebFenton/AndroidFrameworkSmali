.class public final Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;
.super Ljava/lang/Object;
.source "RenderInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/RenderInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mHeight:I

.field private blacklist mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    .line 160
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 218
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 222
    return-void

    .line 219
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/RenderInputParcel;
    .registers 9

    .line 198
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->checkNotUsed()V

    .line 199
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    .line 201
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 202
    iput v1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mWidth:I

    .line 204
    :cond_18
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_23

    .line 205
    iput v1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mHeight:I

    .line 207
    :cond_23
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 210
    :cond_2f
    new-instance v0, Landroid/adservices/ondevicepersonalization/RenderInputParcel;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mWidth:I

    iget v2, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mHeight:I

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/ondevicepersonalization/RenderInputParcel;-><init>(IILandroid/adservices/ondevicepersonalization/RenderingConfig;)V

    .line 214
    .local v0, "o":Landroid/adservices/ondevicepersonalization/RenderInputParcel;
    return-object v0
.end method

.method public blacklist setHeight(I)Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 178
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->checkNotUsed()V

    .line 179
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    .line 180
    iput p1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mHeight:I

    .line 181
    return-object p0
.end method

.method public blacklist setRenderingConfig(Landroid/adservices/ondevicepersonalization/RenderingConfig;)Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;
    .registers 6
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 190
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->checkNotUsed()V

    .line 191
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    .line 192
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 193
    return-object p0
.end method

.method public blacklist setWidth(I)Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 167
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->checkNotUsed()V

    .line 168
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mBuilderFieldsSet:J

    .line 169
    iput p1, p0, Landroid/adservices/ondevicepersonalization/RenderInputParcel$Builder;->mWidth:I

    .line 170
    return-object p0
.end method
