.class public final Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
.super Ljava/lang/Object;
.source "ProcfsMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ProcfsMemoryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemorySnapshot"
.end annotation


# instance fields
.field public blacklist anonRssInKilobytes:I

.field public blacklist rssHighWaterMarkInKilobytes:I

.field public blacklist rssInKilobytes:I

.field public blacklist rssShmemKilobytes:I

.field public blacklist swapInKilobytes:I

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
