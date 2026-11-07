.class public final Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
.super Ljava/lang/Object;
.source "AmbientContextDetectionResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ambientcontext/AmbientContextDetectionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    .line 132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iput-object p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mPackageName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 188
    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 192
    return-void

    .line 189
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addEvent(Landroid/app/ambientcontext/AmbientContextEvent;)Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
    .registers 6
    .param p1, "value"    # Landroid/app/ambientcontext/AmbientContextEvent;

    .line 140
    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    .line 141
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 142
    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    .line 145
    :cond_15
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-object p0
.end method

.method public whitelist addEvents(Ljava/util/List;)Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;)",
            "Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;"
        }
    .end annotation

    .line 153
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/app/ambientcontext/AmbientContextEvent;>;"
    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    .line 154
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 155
    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    .line 158
    :cond_15
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    return-object p0
.end method

.method public whitelist build()Landroid/service/ambientcontext/AmbientContextDetectionResult;
    .registers 5

    .line 175
    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    .line 176
    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    .line 178
    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    .line 181
    :cond_1c
    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionResult;

    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/service/ambientcontext/AmbientContextDetectionResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 184
    .local v0, "o":Landroid/service/ambientcontext/AmbientContextDetectionResult;
    return-object v0
.end method

.method public whitelist clearEvents()Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
    .registers 2

    .line 166
    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    .line 167
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 168
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    :cond_c
    return-object p0
.end method
