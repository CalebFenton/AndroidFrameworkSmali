.class public final Landroid/internal/perfetto/protos/Viewcapture$ViewCapture$View;
.super Ljava/lang/Object;
.source "Viewcapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Viewcapture$ViewCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "View"
.end annotation


# static fields
.field public static final blacklist ALPHA:J = 0x10200000010L

.field public static final blacklist CLASS_NAME_IID:J = 0x10500000005L

.field public static final blacklist CLIP_CHILDREN:J = 0x10800000012L

.field public static final blacklist ELEVATION:J = 0x10200000014L

.field public static final blacklist HASHCODE:J = 0x10500000003L

.field public static final blacklist HEIGHT:J = 0x10500000009L

.field public static final blacklist ID:J = 0x10500000001L

.field public static final blacklist LEFT:J = 0x10500000006L

.field public static final blacklist PARENT_ID:J = 0x10500000002L

.field public static final blacklist SCALE_X:J = 0x1020000000eL

.field public static final blacklist SCALE_Y:J = 0x1020000000fL

.field public static final blacklist SCROLL_X:J = 0x1050000000aL

.field public static final blacklist SCROLL_Y:J = 0x1050000000bL

.field public static final blacklist TOP:J = 0x10500000007L

.field public static final blacklist TRANSLATION_X:J = 0x1020000000cL

.field public static final blacklist TRANSLATION_Y:J = 0x1020000000dL

.field public static final blacklist VIEW_ID_IID:J = 0x10500000004L

.field public static final blacklist VISIBILITY:J = 0x10500000013L

.field public static final blacklist WIDTH:J = 0x10500000008L

.field public static final blacklist WILL_NOT_DRAW:J = 0x10800000011L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Viewcapture$ViewCapture;)V
    .registers 2
    .param p1, "this$1"    # Landroid/internal/perfetto/protos/Viewcapture$ViewCapture;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
