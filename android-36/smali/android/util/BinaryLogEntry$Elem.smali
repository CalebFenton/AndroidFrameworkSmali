.class public final Landroid/util/BinaryLogEntry$Elem;
.super Ljava/lang/Object;
.source "BinaryLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/BinaryLogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Elem"
.end annotation


# static fields
.field public static final greylist-max-o EVENT_TYPE_FLOAT:I = 0x4

.field public static final greylist-max-o EVENT_TYPE_INT:I = 0x0

.field public static final greylist-max-o EVENT_TYPE_LIST:I = 0x3

.field public static final greylist-max-o EVENT_TYPE_LIST_STOP:I = 0xa

.field public static final greylist-max-o EVENT_TYPE_LONG:I = 0x1

.field public static final greylist-max-o EVENT_TYPE_STRING:I = 0x2

.field public static final greylist-max-o EVENT_TYPE_UNKNOWN:I = 0x3f

.field public static final greylist-max-o TYPE:J = 0x10e00000001L

.field public static final greylist-max-o VAL_FLOAT:J = 0x10200000005L

.field public static final greylist-max-o VAL_INT32:J = 0x10500000002L

.field public static final greylist-max-o VAL_INT64:J = 0x10300000003L

.field public static final greylist-max-o VAL_STRING:J = 0x10900000004L


# direct methods
.method public constructor blacklist <init>(Landroid/util/BinaryLogEntry;)V
    .registers 2
    .param p1, "this$0"    # Landroid/util/BinaryLogEntry;
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
