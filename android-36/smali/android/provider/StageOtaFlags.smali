.class public final Landroid/provider/StageOtaFlags;
.super Ljava/lang/Object;
.source "StageOtaFlags.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/StageOtaFlags$StageStatus;
    }
.end annotation


# static fields
.field private static blacklist LOG_TAG:Ljava/lang/String; = null

.field private static final blacklist SOCKET_ADDRESS:Ljava/lang/String; = "aconfigd_system"

.field public static final blacklist STATUS_STAGE_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist STATUS_STORAGE_NOT_ENABLED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist STORAGE_MARKER_FILE_PATH:Ljava/lang/String; = "/metadata/aconfig/boot/enable_only_new_storage"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    const-string v0, "StageOtaFlags"

    sput-object v0, Landroid/provider/StageOtaFlags;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist stageBooleanAconfigFlagsForBuild(Ljava/util/Map;Ljava/lang/String;)I
    .registers 6
    .param p1, "buildId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 80
    .local p0, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 81
    .local v0, "flagCount":I
    sget-object v1, Landroid/provider/StageOtaFlags;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stageFlagsForBuild invoked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flags"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_22
    new-instance v1, Landroid/os/flagging/AconfigdProtoStreamer;

    invoke-direct {v1}, Landroid/os/flagging/AconfigdProtoStreamer;-><init>()V

    invoke-virtual {v1, p0, p1}, Landroid/os/flagging/AconfigdProtoStreamer;->sendOtaFlagOverrideRequests(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2d

    .line 86
    nop

    .line 87
    const/4 v1, 0x0

    return v1

    .line 84
    :catch_2d
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/util/AndroidRuntimeException;

    invoke-direct {v2, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
