.class public final Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;
.super Ljava/lang/Object;
.source "AmbientContextEventRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ambientcontext/AmbientContextEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mEventTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOptions:Landroid/os/PersistableBundle;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mBuilderFieldsSet:J

    .line 129
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 172
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 176
    return-void

    .line 173
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 135
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->checkNotUsed()V

    .line 136
    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mEventTypes:Ljava/util/Set;

    if-nez v0, :cond_15

    .line 137
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mBuilderFieldsSet:J

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mEventTypes:Ljava/util/Set;

    .line 140
    :cond_15
    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mEventTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    return-object p0
.end method

.method public whitelist build()Landroid/app/ambientcontext/AmbientContextEventRequest;
    .registers 7

    .line 156
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->checkNotUsed()V

    .line 157
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mBuilderFieldsSet:J

    .line 159
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mEventTypes:Ljava/util/Set;

    .line 162
    :cond_1c
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    .line 163
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mOptions:Landroid/os/PersistableBundle;

    .line 165
    :cond_2c
    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest;

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mEventTypes:Ljava/util/Set;

    iget-object v2, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mOptions:Landroid/os/PersistableBundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ambientcontext/AmbientContextEventRequest;-><init>(Ljava/util/Set;Landroid/os/PersistableBundle;Landroid/app/ambientcontext/AmbientContextEventRequest-IA;)V

    .line 168
    .local v0, "o":Landroid/app/ambientcontext/AmbientContextEventRequest;
    return-object v0
.end method

.method public whitelist setOptions(Landroid/os/PersistableBundle;)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/PersistableBundle;

    .line 148
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->checkNotUsed()V

    .line 149
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mBuilderFieldsSet:J

    .line 150
    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->mOptions:Landroid/os/PersistableBundle;

    .line 151
    return-object p0
.end method
