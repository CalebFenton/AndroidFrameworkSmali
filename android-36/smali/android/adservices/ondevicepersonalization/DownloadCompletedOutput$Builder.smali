.class public final Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;
.super Ljava/lang/Object;
.source "DownloadCompletedOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mRetainedKeys:Ljava/util/List;
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

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mBuilderFieldsSet:J

    .line 114
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 150
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 154
    return-void

    .line 151
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addRetainedKey(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mRetainedKeys:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->setRetainedKeys(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;

    .line 132
    :cond_c
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mRetainedKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-object p0
.end method

.method public whitelist build()Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;
    .registers 5

    .line 138
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->checkNotUsed()V

    .line 139
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mBuilderFieldsSet:J

    .line 141
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mRetainedKeys:Ljava/util/List;

    .line 144
    :cond_1b
    new-instance v0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mRetainedKeys:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;-><init>(Ljava/util/List;)V

    .line 146
    .local v0, "o":Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput;
    return-object v0
.end method

.method public whitelist setRetainedKeys(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;"
        }
    .end annotation

    .line 122
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->checkNotUsed()V

    .line 123
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mBuilderFieldsSet:J

    .line 124
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/DownloadCompletedOutput$Builder;->mRetainedKeys:Ljava/util/List;

    .line 125
    return-object p0
.end method
