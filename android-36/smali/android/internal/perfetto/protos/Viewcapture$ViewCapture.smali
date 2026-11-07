.class public final Landroid/internal/perfetto/protos/Viewcapture$ViewCapture;
.super Ljava/lang/Object;
.source "Viewcapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Viewcapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewCapture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/perfetto/protos/Viewcapture$ViewCapture$View;
    }
.end annotation


# static fields
.field public static final blacklist PACKAGE_NAME_IID:J = 0x10500000001L

.field public static final blacklist VIEWS:J = 0x20b00000003L

.field public static final blacklist WINDOW_NAME_IID:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Viewcapture;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/perfetto/protos/Viewcapture;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
