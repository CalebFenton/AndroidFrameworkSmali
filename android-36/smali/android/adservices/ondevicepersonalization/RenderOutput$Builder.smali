.class public final Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;
.super Ljava/lang/Object;
.source "RenderOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/RenderOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mContent:Ljava/lang/String;

.field private blacklist mTemplateId:Ljava/lang/String;

.field private blacklist mTemplateParams:Landroid/os/PersistableBundle;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    .line 160
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 222
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 226
    return-void

    .line 223
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/ondevicepersonalization/RenderOutput;
    .registers 9

    .line 202
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->checkNotUsed()V

    .line 203
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    .line 205
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 206
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mContent:Ljava/lang/String;

    .line 208
    :cond_18
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_23

    .line 209
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mTemplateId:Ljava/lang/String;

    .line 211
    :cond_23
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    .line 212
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mTemplateParams:Landroid/os/PersistableBundle;

    .line 214
    :cond_30
    new-instance v0, Landroid/adservices/ondevicepersonalization/RenderOutput;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mContent:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mTemplateId:Ljava/lang/String;

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mTemplateParams:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/ondevicepersonalization/RenderOutput;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 218
    .local v0, "o":Landroid/adservices/ondevicepersonalization/RenderOutput;
    return-object v0
.end method

.method public whitelist setContent(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->checkNotUsed()V

    .line 170
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    .line 171
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mContent:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public whitelist setTemplateId(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->checkNotUsed()V

    .line 183
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    .line 184
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mTemplateId:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public whitelist setTemplateParams(Landroid/os/PersistableBundle;)Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/PersistableBundle;

    .line 194
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->checkNotUsed()V

    .line 195
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mBuilderFieldsSet:J

    .line 196
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;->mTemplateParams:Landroid/os/PersistableBundle;

    .line 197
    return-object p0
.end method
