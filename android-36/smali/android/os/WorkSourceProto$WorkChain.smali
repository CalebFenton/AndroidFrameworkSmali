.class public final Landroid/os/WorkSourceProto$WorkChain;
.super Ljava/lang/Object;
.source "WorkSourceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/WorkSourceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WorkChain"
.end annotation


# static fields
.field public static final greylist-max-o NODES:J = 0x20b00000001L


# direct methods
.method public constructor blacklist <init>(Landroid/os/WorkSourceProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/WorkSourceProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
