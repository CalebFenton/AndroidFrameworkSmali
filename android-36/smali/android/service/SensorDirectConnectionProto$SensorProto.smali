.class public final Landroid/service/SensorDirectConnectionProto$SensorProto;
.super Ljava/lang/Object;
.source "SensorDirectConnectionProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/SensorDirectConnectionProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SensorProto"
.end annotation


# static fields
.field public static final blacklist RATE:J = 0x10500000002L

.field public static final blacklist SENSOR:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Landroid/service/SensorDirectConnectionProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/SensorDirectConnectionProto;
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
