.class public final Landroid/util/EventLogTag$ValueDescriptor;
.super Ljava/lang/Object;
.source "EventLogTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLogTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ValueDescriptor"
.end annotation


# static fields
.field public static final greylist-max-o ALLOCATIONS:I = 0x4

.field public static final greylist-max-o BYTES:I = 0x2

.field public static final greylist-max-o FLOAT:I = 0x5

.field public static final greylist-max-o ID:I = 0x5

.field public static final greylist-max-o INT:I = 0x1

.field public static final greylist-max-o LIST:I = 0x4

.field public static final greylist-max-o LONG:I = 0x2

.field public static final greylist-max-o MILLISECONDS:I = 0x3

.field public static final greylist-max-o NAME:J = 0x10900000001L

.field public static final greylist-max-o OBJECTS:I = 0x1

.field public static final greylist-max-o PERCENT:I = 0x6

.field public static final greylist-max-o SECONDS:I = 0x73

.field public static final greylist-max-o STRING:I = 0x3

.field public static final greylist-max-o TYPE:J = 0x10e00000002L

.field public static final greylist-max-o UNIT:J = 0x10e00000003L

.field public static final greylist-max-o UNKNOWN:I

.field public static final greylist-max-o UNSET:I


# direct methods
.method public constructor blacklist <init>(Landroid/util/EventLogTag;)V
    .registers 2
    .param p1, "this$0"    # Landroid/util/EventLogTag;
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
