.class public final Landroid/companion/Telecom$Request$ControlAction;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/Telecom$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ControlAction"
.end annotation


# static fields
.field public static final blacklist CONTROL:J = 0x10e00000002L

.field public static final blacklist ID:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Landroid/companion/Telecom$Request;)V
    .registers 2
    .param p1, "this$1"    # Landroid/companion/Telecom$Request;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
