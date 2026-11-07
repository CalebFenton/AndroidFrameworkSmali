.class public final Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;
.super Ljava/lang/Object;
.source "ProcfsMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ProcfsMemoryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VmStat"
.end annotation


# instance fields
.field public blacklist oomKillCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
