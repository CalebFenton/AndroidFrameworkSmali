.class public final Landroid/service/procstats/ProcessStatsProto$Kill;
.super Ljava/lang/Object;
.source "ProcessStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/procstats/ProcessStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Kill"
.end annotation


# static fields
.field public static final blacklist CACHED:J = 0x10500000002L

.field public static final blacklist CACHED_PSS:J = 0x10b00000003L

.field public static final blacklist CPU:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Landroid/service/procstats/ProcessStatsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/procstats/ProcessStatsProto;
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
