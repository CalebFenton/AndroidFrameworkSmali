.class public final Landroid/app/ondeviceintelligence/Feature$Builder;
.super Ljava/lang/Object;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ondeviceintelligence/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mFeatureParams:Landroid/os/PersistableBundle;

.field private blacklist mId:I

.field private blacklist mModelName:Ljava/lang/String;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mType:I

.field private blacklist mVariant:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "id"    # I

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    .line 206
    iput p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mId:I

    .line 207
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mFeatureParams:Landroid/os/PersistableBundle;

    .line 208
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 261
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 265
    return-void

    .line 262
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/app/ondeviceintelligence/Feature;
    .registers 10

    .line 247
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    .line 248
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    .line 250
    new-instance v2, Landroid/app/ondeviceintelligence/Feature;

    iget v3, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mId:I

    iget-object v4, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mName:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mModelName:Ljava/lang/String;

    iget v6, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mType:I

    iget v7, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mVariant:I

    iget-object v8, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-direct/range {v2 .. v8}, Landroid/app/ondeviceintelligence/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;IILandroid/os/PersistableBundle;)V

    .line 257
    .local v2, "o":Landroid/app/ondeviceintelligence/Feature;
    return-object v2
.end method

.method public whitelist setFeatureParams(Landroid/os/PersistableBundle;)Landroid/app/ondeviceintelligence/Feature$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/PersistableBundle;

    .line 239
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    .line 240
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    .line 241
    iput-object p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mFeatureParams:Landroid/os/PersistableBundle;

    .line 242
    return-object p0
.end method

.method public whitelist setModelName(Ljava/lang/String;)Landroid/app/ondeviceintelligence/Feature$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    .line 219
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    .line 220
    iput-object p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mModelName:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/app/ondeviceintelligence/Feature$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    .line 212
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    .line 213
    iput-object p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mName:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public whitelist setType(I)Landroid/app/ondeviceintelligence/Feature$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 225
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    .line 226
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    .line 227
    iput p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mType:I

    .line 228
    return-object p0
.end method

.method public whitelist setVariant(I)Landroid/app/ondeviceintelligence/Feature$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 232
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/Feature$Builder;->checkNotUsed()V

    .line 233
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mBuilderFieldsSet:J

    .line 234
    iput p1, p0, Landroid/app/ondeviceintelligence/Feature$Builder;->mVariant:I

    .line 235
    return-object p0
.end method
