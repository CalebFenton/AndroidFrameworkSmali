.class public final Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;
.super Ljava/lang/Object;
.source "RenderingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/RenderingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mBuilderFieldsSet:J

    .line 164
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 201
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 205
    return-void

    .line 202
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addKey(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mKeys:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->setKeys(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;

    .line 183
    :cond_c
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-object p0
.end method

.method public whitelist build()Landroid/adservices/ondevicepersonalization/RenderingConfig;
    .registers 5

    .line 189
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->checkNotUsed()V

    .line 190
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mBuilderFieldsSet:J

    .line 192
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mKeys:Ljava/util/List;

    .line 195
    :cond_1b
    new-instance v0, Landroid/adservices/ondevicepersonalization/RenderingConfig;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mKeys:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/RenderingConfig;-><init>(Ljava/util/List;)V

    .line 197
    .local v0, "o":Landroid/adservices/ondevicepersonalization/RenderingConfig;
    return-object v0
.end method

.method public whitelist setKeys(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;"
        }
    .end annotation

    .line 173
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->checkNotUsed()V

    .line 174
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mBuilderFieldsSet:J

    .line 175
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/RenderingConfig$Builder;->mKeys:Ljava/util/List;

    .line 176
    return-object p0
.end method
