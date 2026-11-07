.class public final Landroid/util/quota/CountQuotaTrackerProto$CountLimit;
.super Ljava/lang/Object;
.source "CountQuotaTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/quota/CountQuotaTrackerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CountLimit"
.end annotation


# static fields
.field public static final blacklist CATEGORY:J = 0x10b00000001L

.field public static final blacklist LIMIT:J = 0x10500000002L

.field public static final blacklist WINDOW_SIZE_MS:J = 0x10300000003L


# direct methods
.method public constructor blacklist <init>(Landroid/util/quota/CountQuotaTrackerProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/util/quota/CountQuotaTrackerProto;
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
