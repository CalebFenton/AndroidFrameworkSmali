.class public final Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;
.super Ljava/lang/Object;
.source "RotationResolverService.java"

# interfaces
.implements Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/rotationresolver/RotationResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RotationResolverCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/rotationresolver/IRotationResolverCallback;

.field private final blacklist mExpirationTime:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mService:Landroid/service/rotationresolver/RotationResolverService;


# direct methods
.method public static synthetic blacklist $r8$lambda$1d32z1-andrKyg0gIz4kwSuXV-Y(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/rotationresolver/RotationResolverService;->-$$Nest$msendFailureResult(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SQ9hul0UlKaktj7QAVmbULaZovs(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/rotationresolver/RotationResolverService;->-$$Nest$msendRotationResult(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;)Landroid/service/rotationresolver/IRotationResolverCallback;
    .registers 1

    iget-object p0, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mCallback:Landroid/service/rotationresolver/IRotationResolverCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpirationTime(Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;)J
    .registers 3

    iget-wide v0, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mExpirationTime:J

    return-wide v0
.end method

.method private constructor blacklist <init>(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolverService;J)V
    .registers 6
    .param p1, "callback"    # Landroid/service/rotationresolver/IRotationResolverCallback;
    .param p2, "service"    # Landroid/service/rotationresolver/RotationResolverService;
    .param p3, "expirationTime"    # J

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mCallback:Landroid/service/rotationresolver/IRotationResolverCallback;

    .line 238
    iput-object p2, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mService:Landroid/service/rotationresolver/RotationResolverService;

    .line 239
    invoke-static {p2}, Landroid/service/rotationresolver/RotationResolverService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/rotationresolver/RotationResolverService;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mHandler:Landroid/os/Handler;

    .line 240
    iput-wide p3, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mExpirationTime:J

    .line 241
    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolverService;JLandroid/service/rotationresolver/RotationResolverService-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;-><init>(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolverService;J)V

    return-void
.end method


# virtual methods
.method public whitelist onFailure(I)V
    .registers 7
    .param p1, "error"    # I

    .line 254
    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mService:Landroid/service/rotationresolver/RotationResolverService;

    iget-object v3, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mCallback:Landroid/service/rotationresolver/IRotationResolverCallback;

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 255
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    return-void
.end method

.method public whitelist onSuccess(I)V
    .registers 7
    .param p1, "result"    # I

    .line 247
    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mService:Landroid/service/rotationresolver/RotationResolverService;

    iget-object v3, p0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->mCallback:Landroid/service/rotationresolver/IRotationResolverCallback;

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 248
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    return-void
.end method
