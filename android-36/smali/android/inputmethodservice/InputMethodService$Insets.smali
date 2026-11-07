.class public final Landroid/inputmethodservice/InputMethodService$Insets;
.super Ljava/lang/Object;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Insets"
.end annotation


# static fields
.field public static final whitelist TOUCHABLE_INSETS_CONTENT:I = 0x1

.field public static final whitelist TOUCHABLE_INSETS_FRAME:I = 0x0

.field public static final whitelist TOUCHABLE_INSETS_REGION:I = 0x3

.field public static final whitelist TOUCHABLE_INSETS_VISIBLE:I = 0x2


# instance fields
.field public whitelist contentTopInsets:I

.field public whitelist touchableInsets:I

.field public final whitelist touchableRegion:Landroid/graphics/Region;

.field public whitelist visibleTopInsets:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdumpDebug(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService$Insets;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1603
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    return-void
.end method

.method private blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1642
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1643
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1644
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1645
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1646
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1647
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1648
    return-void
.end method
