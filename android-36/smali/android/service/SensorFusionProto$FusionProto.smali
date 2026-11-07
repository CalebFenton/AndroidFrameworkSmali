.class public final Landroid/service/SensorFusionProto$FusionProto;
.super Ljava/lang/Object;
.source "SensorFusionProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/SensorFusionProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FusionProto"
.end annotation


# static fields
.field public static final blacklist ATTITUDE_LENGTH:J = 0x10200000008L

.field public static final blacklist ATTITUDE_W:J = 0x10200000007L

.field public static final blacklist ATTITUDE_X:J = 0x10200000004L

.field public static final blacklist ATTITUDE_Y:J = 0x10200000005L

.field public static final blacklist ATTITUDE_Z:J = 0x10200000006L

.field public static final blacklist BIAS_X:J = 0x10200000009L

.field public static final blacklist BIAS_Y:J = 0x1020000000aL

.field public static final blacklist BIAS_Z:J = 0x1020000000bL

.field public static final blacklist ENABLED:J = 0x10800000001L

.field public static final blacklist ESTIMATED_GYRO_RATE:J = 0x10200000003L

.field public static final blacklist NUM_CLIENTS:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Landroid/service/SensorFusionProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/SensorFusionProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
