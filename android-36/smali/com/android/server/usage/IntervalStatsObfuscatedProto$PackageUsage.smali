.class public final Lcom/android/server/usage/IntervalStatsObfuscatedProto$PackageUsage;
.super Ljava/lang/Object;
.source "IntervalStatsObfuscatedProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsObfuscatedProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageUsage"
.end annotation


# static fields
.field public static final blacklist PACKAGE_NAME:J = 0x10900000001L

.field public static final blacklist TIME_MS:J = 0x10300000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/IntervalStatsObfuscatedProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usage/IntervalStatsObfuscatedProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
