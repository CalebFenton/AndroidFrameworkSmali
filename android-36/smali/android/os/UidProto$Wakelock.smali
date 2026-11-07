.class public final Landroid/os/UidProto$Wakelock;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Wakelock"
.end annotation


# static fields
.field public static final greylist-max-o BACKGROUND_PARTIAL:J = 0x10b00000004L

.field public static final greylist-max-o FULL:J = 0x10b00000002L

.field public static final greylist-max-o NAME:J = 0x10900000001L

.field public static final greylist-max-o PARTIAL:J = 0x10b00000003L

.field public static final greylist-max-o WINDOW:J = 0x10b00000005L


# direct methods
.method public constructor blacklist <init>(Landroid/os/UidProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/UidProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
