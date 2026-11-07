.class public final Landroid/os/IncidentHeaderProto$StatsdConfigKey;
.super Ljava/lang/Object;
.source "IncidentHeaderProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentHeaderProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StatsdConfigKey"
.end annotation


# static fields
.field public static final greylist-max-o ID:J = 0x10300000002L

.field public static final greylist-max-o UID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Landroid/os/IncidentHeaderProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/IncidentHeaderProto;
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
