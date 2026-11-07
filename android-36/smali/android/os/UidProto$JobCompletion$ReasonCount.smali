.class public final Landroid/os/UidProto$JobCompletion$ReasonCount;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto$JobCompletion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReasonCount"
.end annotation


# static fields
.field public static final greylist-max-o COUNT:J = 0x10500000002L

.field public static final greylist-max-o NAME:J = 0x10e00000001L


# direct methods
.method public constructor blacklist <init>(Landroid/os/UidProto$JobCompletion;)V
    .registers 2
    .param p1, "this$1"    # Landroid/os/UidProto$JobCompletion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
