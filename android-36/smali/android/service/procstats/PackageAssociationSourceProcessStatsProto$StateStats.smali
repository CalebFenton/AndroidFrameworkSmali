.class public final Landroid/service/procstats/PackageAssociationSourceProcessStatsProto$StateStats;
.super Ljava/lang/Object;
.source "PackageAssociationSourceProcessStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/procstats/PackageAssociationSourceProcessStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StateStats"
.end annotation


# static fields
.field public static final blacklist DURATION_MS:J = 0x10300000002L

.field public static final blacklist PROCESS_STATE:J = 0x10e00000001L

.field public static final blacklist REALTIME_DURATION_MS:J = 0x10300000003L


# direct methods
.method public constructor blacklist <init>(Landroid/service/procstats/PackageAssociationSourceProcessStatsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/procstats/PackageAssociationSourceProcessStatsProto;
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
