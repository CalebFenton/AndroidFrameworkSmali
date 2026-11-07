.class public final Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;
.super Ljava/lang/Object;
.source "AmbientContextDetectionServiceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mStatusCode:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    .line 127
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iput-object p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mPackageName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 156
    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 160
    return-void

    .line 157
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
    .registers 5

    .line 143
    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->checkNotUsed()V

    .line 144
    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    .line 146
    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mStatusCode:I

    .line 149
    :cond_18
    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    iget v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mStatusCode:I

    iget-object v2, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;-><init>(ILjava/lang/String;)V

    .line 152
    .local v0, "o":Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
    return-object v0
.end method

.method public whitelist setStatusCode(I)Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 135
    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->checkNotUsed()V

    .line 136
    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    .line 137
    iput p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mStatusCode:I

    .line 138
    return-object p0
.end method
