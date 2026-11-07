.class public Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
.super Ljava/lang/Object;
.source "DataConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventFrequency"
.end annotation


# instance fields
.field public final blacklist eventNumOccurrence:I

.field public final blacklist timeWindow:J


# direct methods
.method public constructor blacklist <init>(JI)V
    .registers 4

    .line 1326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    iput-wide p1, p0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 1328
    iput p3, p0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1333
    iget-wide v0, p0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 1334
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1333
    const-string v0, "EventFrequency=[timeWindow=%d, eventNumOccurrence=%d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
