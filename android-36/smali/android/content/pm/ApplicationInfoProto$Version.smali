.class public final Landroid/content/pm/ApplicationInfoProto$Version;
.super Ljava/lang/Object;
.source "ApplicationInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ApplicationInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Version"
.end annotation


# static fields
.field public static final greylist-max-o ENABLED:J = 0x10800000001L

.field public static final greylist-max-o MIN_SDK_VERSION:J = 0x10500000002L

.field public static final greylist-max-o TARGET_SANDBOX_VERSION:J = 0x10500000005L

.field public static final greylist-max-o TARGET_SDK_VERSION:J = 0x10500000003L

.field public static final greylist-max-o VERSION_CODE:J = 0x10500000004L


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfoProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/content/pm/ApplicationInfoProto;
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
