.class public final Landroid/graphics/GraphicsProtos;
.super Ljava/lang/Object;
.source "GraphicsProtos.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p0, "point"    # Landroid/graphics/Point;
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 43
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 44
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 45
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 47
    return-void
.end method
