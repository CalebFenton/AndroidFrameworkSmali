.class public final Lcom/android/internal/app/procstats/Processstats$ProcessStatsProto;
.super Ljava/lang/Object;
.source "Processstats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/Processstats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProcessStatsProto"
.end annotation


# static fields
.field public static final blacklist MEM_FACTOR_CRITICAL:I = 0x3

.field public static final blacklist MEM_FACTOR_LOW:I = 0x2

.field public static final blacklist MEM_FACTOR_MODERATE:I = 0x1

.field public static final blacklist MEM_FACTOR_NORMAL:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/Processstats;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/procstats/Processstats;
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
